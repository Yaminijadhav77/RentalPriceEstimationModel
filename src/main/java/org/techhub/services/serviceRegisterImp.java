//package org.techhub.services;
//
//import java.util.List;
//import java.util.UUID;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.stereotype.Service;
//import org.techhhub.model.RegisterModel;
//import org.techhhub.model.StateModel;
//import org.techhub.repsitory.RegisterRepo;
//
//@Service
//public class serviceRegisterImp implements serviceRegister {
//
//    @Autowired
//    RegisterRepo repository;
//
//    @Autowired
//    PasswordEncoder passwordEncoder;
//
//    @Override
//    public boolean saveUser(RegisterModel user) {
//
//        // password encode
//        user.setPassword(passwordEncoder.encode(user.getPassword()));
//
//        return repository.insertUser(user);
//    }
//
//    @Override
//    public boolean checkLogin(String name, String password) {
//
//        String dbPassword = repository.getPasswordByName(name);
//
//        if(dbPassword != null){
//
//            if(passwordEncoder.matches(password, dbPassword)){
//                return true;
//            }
//        }
//
//        return false;
//    }
//	@Override
//	public boolean isAddState(StateModel state) {
//		return repository. isAddState(state);
//	
//	}
//
//	@Override
//	public List<StateModel> getAllStates() {
//		return repository.getAllStates();
//	}
//	// Get state by ID
////    public StateModel getStateById(String stateId) {
////        return repository.getAllStates(stateId).orElse(null);
////    
//	public StateModel getStateById(String stateId) {
//	    UUID uuid = UUID.fromString(stateId);
//	    return repository.getAllStates()
//	            .stream()
//	            .filter(s -> s.getState_id().equals(uuid))
//	            .findFirst()
//	            .orElse(null);
//	}
//
//    @Override
//    public void toggleStatus(UUID stateId) {
//        // Find state in DB
//        List<StateModel> states = repository.getAllStates();
//        StateModel state = states.stream()
//                .filter(s -> s.getState_id().equals(stateId))
//                .findFirst()
//                .orElse(null);
//
//        if (state != null) {
//            // Flip the status
//            String newStatus = state.getStatus().equals("Active") ? "Inactive" : "Active";
//
//            // Call repository to update
//            ((RegisterRepoImpl) repository).updateStatus(stateId, newStatus);
//        }
//    }
//}

package org.techhub.services;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.techhhub.model.RegisterModel;
import org.techhhub.model.StateModel;
import org.techhub.repsitory.CityRepo;
import org.techhub.repsitory.RegisterRepo;


@Service
public class serviceRegisterImp implements serviceRegister {

    @Autowired
    RegisterRepo repository;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Override
    public boolean saveUser(RegisterModel user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        return repository.insertUser(user);
    }

    @Override
    public boolean checkLogin(String name, String password) {

        String dbPassword = repository.getPasswordByName(name);

        return dbPassword != null && passwordEncoder.matches(password, dbPassword);
    }

    @Override
    public boolean isAddState(StateModel state) {

        if(state.getStatus() == null)
            state.setStatus("Active");

        state.setCreated_at(java.time.LocalDateTime.now());
        state.setUpdatedAt(java.time.LocalDateTime.now());

        return repository.isAddState(state);
    }

    @Override
    public List<StateModel> getAllStates() {

        return repository.getAllStates();
    }

	

/*	@Override
	public StateModel getStateById(String stateId) {
	     UUID uuid = UUID.fromString(stateId);

	        Optional<StateModel> state = repository.getStateById(uuid);

	        return state.orElse(null);
	}*/
@Autowired
CityRepo cityRepo;
	@Override
	public boolean toggleStatus(UUID stateId) {
		/*  Optional<StateModel> optional = repository.getStateById(stateId);
		if(optional.isEmpty())
            return false;

        StateModel state = optional.get();

        String newStatus = state.getStatus().equals("Active") ? "Inactive" : "Active";

        return repository.updateStatus(stateId, newStatus);
        */
		 Optional<StateModel> optional = repository.getStateById(stateId);

	        if(optional.isEmpty())
	            return false;

	        StateModel state = optional.get();

	        String newStatus = state.getStatus().equals("Active") ? "Inactive" : "Active";

	        boolean stateUpdated = repository.updateStatus(stateId, newStatus);

	        // 🔴 State change zhala ki cities update kara
	        if(stateUpdated){
	            cityRepo.updateCityStatusByState(stateId,newStatus);
	        }

	        return stateUpdated;
	}

	@Override
    public boolean updateState(StateModel state) {

        return repository.updateState(state);
    }

    @Override
    public boolean deleteState(UUID stateId) {

        return repository.deleteState(stateId);
    }

	@Override
	public StateModel getStateById(UUID stateId) {
	    Optional<StateModel> state = repository.getStateById(stateId);
		return  state.orElse(null);
	}

	
	
}
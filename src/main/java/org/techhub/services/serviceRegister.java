//package org.techhub.services;
//
//import java.util.List;
//import java.util.UUID;
//
//import org.techhhub.model.RegisterModel;
//import org.techhhub.model.StateModel;
//
//public interface serviceRegister {
//
//    boolean saveUser(RegisterModel user);
//
//    boolean checkLogin(String name,String password);
//    boolean isAddState(StateModel state);
//   public List<StateModel> getAllStates();
//	   
//   
//   void toggleStatus(UUID stateId);  
//}


package org.techhub.services;

import java.util.List;
import java.util.UUID;

import org.techhhub.model.RegisterModel;
import org.techhhub.model.StateModel;

public interface serviceRegister {

    boolean saveUser(RegisterModel user);

    boolean checkLogin(String name, String password);
    boolean isAddState(StateModel state);

    List<StateModel> getAllStates();
  //  StateModel getStateById(String stateId);

    boolean toggleStatus(UUID stateId);
    
    boolean updateState(StateModel state);

    boolean deleteState(UUID stateId);

    StateModel getStateById(UUID stateId);
    
    
   
}
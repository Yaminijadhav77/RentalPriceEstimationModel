//package org.techhub.repsitory;
//
//import java.util.List;
//
//import org.techhhub.model.RegisterModel;
//import org.techhhub.model.StateModel;
//
//public interface RegisterRepo {
//
//    boolean insertUser(RegisterModel user);
//
//    String getPasswordByName(String name);
//    boolean isAddState(StateModel state);
//    public List<StateModel> getAllStates();
//}

package org.techhub.repsitory;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.techhhub.model.RegisterModel;
import org.techhhub.model.StateModel;
import org.techhhub.model.StateUpdate;

public interface RegisterRepo {

    boolean insertUser(RegisterModel user);

    String getPasswordByName(String name);

    boolean isAddState(StateModel state);

    List<StateModel> getAllStates();
    boolean updateStatus(UUID stateId, String newStatus);

    Optional<StateModel> getStateById(UUID stateId);
    boolean updateState(StateModel state);

    boolean deleteState(UUID stateId);
 

}
   
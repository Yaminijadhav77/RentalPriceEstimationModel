package org.techhub.repsitory;

import java.util.List;

import org.techhhub.model.RegisterModel;
import org.techhhub.model.StateModel;

public interface RegisterRepo {

    boolean insertUser(RegisterModel user);

    String getPasswordByName(String name);
    boolean isAddState(StateModel state);
    public List<StateModel> getAllStates();
}
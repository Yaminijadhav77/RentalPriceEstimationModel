package org.techhub.services;

import java.util.List;

import org.techhhub.model.RegisterModel;
import org.techhhub.model.StateModel;

public interface serviceRegister {

    boolean saveUser(RegisterModel user);

    boolean checkLogin(String name,String password);
    boolean isAddState(StateModel state);
   public List<StateModel> getAllStates();
	   
}
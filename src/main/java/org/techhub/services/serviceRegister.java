package org.techhub.services;

import org.techhhub.model.RegisterModel;

public interface serviceRegister {

    boolean saveUser(RegisterModel user);

    boolean checkLogin(String name,String password);
}
package org.techhub.repsitory;

import org.techhhub.model.RegisterModel;

public interface RegisterRepo {

    boolean insertUser(RegisterModel user);

    String getPasswordByName(String name);
}
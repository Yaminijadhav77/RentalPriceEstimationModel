package org.techhub.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.techhhub.model.RegisterModel;
import org.techhub.repsitory.RegisterRepo;

@Service
public class serviceRegisterImp implements serviceRegister {

    @Autowired
    RegisterRepo repository;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Override
    public boolean saveUser(RegisterModel user) {

        // password encode
        user.setPassword(passwordEncoder.encode(user.getPassword()));

        return repository.insertUser(user);
    }

    @Override
    public boolean checkLogin(String name, String password) {

        String dbPassword = repository.getPasswordByName(name);

        if(dbPassword != null){

            if(passwordEncoder.matches(password, dbPassword)){
                return true;
            }
        }

        return false;
    }
}
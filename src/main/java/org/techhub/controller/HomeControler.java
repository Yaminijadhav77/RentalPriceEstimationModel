package org.techhub.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.techhhub.model.RegisterModel;
import org.techhub.services.serviceRegister;

@Controller
public class HomeControler {

    @Autowired
    serviceRegister service;

    private static final String ADMIN_NAME="Rentol";
    private static final String ADMIN_PASSWORD="Rentol@123";

    // Login Page
    @GetMapping("/")
    public String showLoginPage(){
        return "Login";
    }

    // Login check
    @PostMapping("/login")
    public String loginUser(@RequestParam("username") String username,
                            @RequestParam("password") String password){

        // Admin login
        if(username.equals(ADMIN_NAME) && password.equals(ADMIN_PASSWORD)){
            return "AdminDashboard";
        }

        // Existing user login
        boolean status = service.checkLogin(username,password);

        if(status){
            return "Home";
        }else{
            return "Login";   // wrong login → login page
        }
    }

    // Register Page Open
    @GetMapping("/register")
    public String showRegisterPage(){
        return "Register";
    }

    // Register User
    @PostMapping("/registerUser")
    public String registerUser(RegisterModel user){

        user.setRole("ROLE_USER");

        boolean status = service.saveUser(user);

        if(status){
            return "Login";   // register success → login
        }else{
            return "Register";
        }
    }
}
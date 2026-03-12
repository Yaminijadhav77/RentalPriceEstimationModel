package org.techhub.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.techhhub.model.RegisterModel;
import org.techhhub.model.StateModel;
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
    
    @GetMapping("/adminDashboard")
    public String showAdminDashboard() {
    	return "AdminDashboard";
    }
    @GetMapping("/addstates")
    public String openStatepage() {
    	return "state";
    }
    
    @PostMapping("/states")
	public String addState(@RequestParam("name") String name,
	                       @RequestParam("code") String code) {

	    StateModel state = new StateModel();

	    state.setState_id(UUID.randomUUID());
	    state.setName(name);
	    state.setStateCode(code);

	    service.isAddState(state);

	    return "state";
	}
    
    @GetMapping("/viewStates")
    public String viewStates(Model model) {
    	List<StateModel> states=service.getAllStates();
    	model.addAttribute("states",states);
		return "stateView";
    	
    }
}
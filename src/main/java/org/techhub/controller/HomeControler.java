/*
 * package org.techhub.controller;
 * 
 * import org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.*; import
 * org.springframework.web.servlet.view.RedirectView;
 * 
 * import java.util.List; import java.util.UUID;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.techhhub.model.CityModel; import org.techhhub.model.RegisterModel; import
 * org.techhhub.model.StateModel; import org.techhhub.model.StateUpdate; import
 * org.techhub.services.CityService; import
 * org.techhub.services.serviceRegister;
 * 
 * @Controller public class HomeControler {
 * 
 * @Autowired serviceRegister service;
 * 
 * @Autowired CityService cityService;
 * 
 * @Autowired serviceRegister serviceRegister;
 * 
 * private static final String ADMIN_NAME = "Rentol"; private static final
 * String ADMIN_PASSWORD = "Rentol@123";
 * 
 * // Home Page
 * 
 * @GetMapping("/") public String showHomePage() { return "Home"; }
 * 
 * // Login Page
 * 
 * @GetMapping("/login") public String showLoginPage() { return "Login"; }
 * 
 * // Login Check
 * 
 * @PostMapping("/login") public String loginUser(@RequestParam("username")
 * String username,
 * 
 * @RequestParam("password") String password) {
 * 
 * // Admin Login if (username.equals(ADMIN_NAME) &&
 * password.equals(ADMIN_PASSWORD)) { return "AdminDashboard"; }
 * 
 * boolean status = service.checkLogin(username, password);
 * 
 * if (status) { return "Spring"; // LOGIN SUCCESS → SPRING PAGE } else { return
 * "Login"; } }
 * 
 * // Register Page
 * 
 * @GetMapping("/register") public String showRegisterPage() { return
 * "Register"; }
 * 
 * // Register User
 * 
 * @PostMapping("/registerUser") public String registerUser(RegisterModel user)
 * {
 * 
 * user.setRole("ROLE_USER");
 * 
 * boolean status = service.saveUser(user);
 * 
 * if (status) { return "Login"; } else { return "Register"; } }
 * 
 * // Apartment Page
 * 
 * @GetMapping("/apartment") public String showApartmentPage() { return
 * "Apartment"; }
 * 
 * @GetMapping("/villa") public String showVillaPage() { return "Villa"; }
 * 
 * @GetMapping("/house") public String showHousePage() { return "House"; }
 * 
 * // Spring Result Page
 * 
 * @GetMapping("/spring") public String showSpringPage() { return "Spring"; }
 * 
 * // Admin Dashboard
 * 
 * @GetMapping("/adminDashboard") public String showAdminDashboard() { return
 * "AdminDashboard"; }
 * 
 * // Open Add State Page
 * 
 * @GetMapping("/addstates") public String openStatepage() { return "state"; }
 * 
 * // Add new state
 * 
 * @PostMapping("/states") public String addState(@RequestParam("name") String
 * name,
 * 
 * @RequestParam("code") String code) {
 * 
 * StateModel state = new StateModel(); state.setState_id(UUID.randomUUID());
 * state.setName(name); state.setStateCode(code); state.setStatus("Active"); //
 * default
 * 
 * service.isAddState(state);
 * 
 * return "redirect:/viewStates"; }
 * 
 * // View all states
 * 
 * @GetMapping("/viewStates") public String viewStates(Model model) {
 * List<StateModel> states = service.getAllStates();
 * model.addAttribute("states", states); return "stateView"; }
 * 
 * @GetMapping("/toggleState/{stateId}") public String
 * toggleState(@PathVariable("stateId") UUID stateId) {
 * 
 * service.toggleStatus(stateId);
 * 
 * return "redirect:/viewStates"; }
 * 
 * //update
 * 
 * @GetMapping("/UpdateView") public String editState(@RequestParam("id") String
 * stateId, Model model) { StateModel state = service.getStateById(stateId); if
 * (state == null) { return "redirect:/state/view"; // If not found }
 * model.addAttribute("state", state); return "stateUpdate"; // New JSP page for
 * editing }
 * 
 * // @PostMapping("/Update") // public String
 * updateState(@ModelAttribute("state") StateUpdate state) { //
 * service.updateState(state); // return "redirect:/stateView"; // }
 * 
 * @GetMapping("/addcity") public String openCityPage(Model model){
 * 
 * List<StateModel> states = serviceRegister.getAllStates();
 * 
 * model.addAttribute("states", states);
 * 
 * return "Addcity"; }
 * 
 * 
 * // Save City
 * 
 * @PostMapping("/saveCity") public String addCity(@RequestParam("city_name")
 * String name,
 * 
 * @RequestParam("pincode") String pincode,
 * 
 * @RequestParam("state_id") String stateId){
 * 
 * CityModel city = new CityModel();
 * 
 * city.setCity_name(name); city.setPincode(pincode);
 * city.setState_id(UUID.fromString(stateId));
 * 
 * boolean result = cityService.addCity(city);
 * 
 * if(!result){ return "redirect:/addcity?error=StateInactive"; }
 * 
 * return "redirect:/viewCities"; }
 * 
 * 
 * // View All Cities
 * 
 * @GetMapping("/viewCities") public String viewCities(Model model){
 * 
 * List<CityModel> cities = cityService.getAllCities();
 * 
 * model.addAttribute("cities", cities);
 * 
 * return "Viewcity"; }
 * 
 * 
 * // Open Update Page
 * 
 * @GetMapping("/editCity") public String editCity(@RequestParam("id") String
 * id, Model model){
 * 
 * CityModel city = cityService.getCityById(UUID.fromString(id));
 * 
 * model.addAttribute("city", city);
 * 
 * return "EditCity"; }
 * 
 * 
 * // Update City
 * 
 * @PostMapping("/updateCity") public String updateCity(@RequestParam("city_id")
 * String id,
 * 
 * @RequestParam("city_name") String name,
 * 
 * @RequestParam("pincode") String pincode){
 * 
 * CityModel city = new CityModel();
 * 
 * city.setCity_id(UUID.fromString(id)); city.setCity_name(name);
 * city.setPincode(pincode);
 * 
 * boolean result = cityService.updateCity(city);
 * 
 * if(!result){ return "redirect:/viewCities?error=StateInactive"; }
 * 
 * return "redirect:/viewCities"; }
 * 
 * 
 * // Delete City
 * 
 * @GetMapping("/deleteCity") public String deleteCity(@RequestParam("id")
 * String id){
 * 
 * boolean result = cityService.deleteCity(UUID.fromString(id));
 * 
 * if(!result){ return "redirect:/viewCities?error=StateInactive"; }
 * 
 * return "redirect:/viewCities"; }
 * 
 * }
 * 
 */

package org.techhub.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.techhhub.model.CityModel;
import org.techhhub.model.RegisterModel;
import org.techhhub.model.StateModel;
import org.techhub.services.CityService;
import org.techhub.services.serviceRegister;

@Controller
public class HomeControler {

    @Autowired
    serviceRegister service;
    @Autowired
    CityService cityService;
    @Autowired
    serviceRegister serviceRegister;
    
    
    private static final String ADMIN_NAME = "Rentol";
    private static final String ADMIN_PASSWORD = "Rentol@123";

    @GetMapping("/")
    public String showHomePage() {
        return "Home";
    }

    @GetMapping("/login")
    public String showLoginPage() {
        return "Login";
    }

    @PostMapping("/login")
    public String loginUser(@RequestParam("username") String username,
                            @RequestParam("password") String password) {

        if (username.equals(ADMIN_NAME) && password.equals(ADMIN_PASSWORD)) {
            return "AdminDashboard";
        }

        boolean status = service.checkLogin(username, password);

        if (status) {
            return "Home";
        } else {
            return "Login";
        }
    }

    @GetMapping("/register")
    public String showRegisterPage() {
        return "Register";
    }

    @PostMapping("/registerUser")
    public String registerUser(RegisterModel user) {

        user.setRole("ROLE_USER");

        boolean status = service.saveUser(user);

        if (status) {
            return "Login";
        } else {
            return "Register";
        }
    }
    
    @GetMapping("/about")
    public String aboutPage() {
        return "about";
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
        state.setStatus("Active");

        service.isAddState(state);
        return "redirect:/viewStates";
    }

    @GetMapping("/viewStates")
    public String viewStates(Model model) {

        List<StateModel> states = service.getAllStates();
        model.addAttribute("states", states);

        return "stateView";
    }

    @GetMapping("/toggleState/{stateId}")
    public String toggleState(@PathVariable("stateId") UUID stateId) {
        service.toggleStatus(stateId);
        return "redirect:/viewStates";
    }
    // PROPERTY PAGES

    @GetMapping("/Apartment")
    public String showApartmentPage() {
        return "Apartment";
    }
    
    @GetMapping("/apartment")
    public String loadApartmentPage(Model model){

        List<StateModel> states = service.getAllStates();
        model.addAttribute("states", states);

        return "apartment";
    }
    
  /*  @PostMapping("/viewStates")
    public String viewState(@RequestParam("stateId") UUID stateId, Model model)
    {
        List<StateModel> states = service.getAllStates();
        model.addAttribute("states", states);

        return "viewState";
   }*/
  

    @GetMapping("/villa")
    public String showVillaPage() {
        return "Villa";
    }

    @GetMapping("/house")
    public String showHousePage() {
        return "House";
    }
    
    @GetMapping("/loginn")
    public String showLoginPageNext() {
        return "loginn";
    }

    @PostMapping("/loginApartment")
    public String loginUserr(@RequestParam("username") String username,
                             @RequestParam("password") String password) {
        boolean status = service.checkLogin(username, password);
        if (status) {
            return "Spring";
        } else {
            return "loginn";
        }
    }
    
  /*  @PostMapping("/viewStates")
    public String viewStates(@RequestParam("state_Id") UUID stateId, Model model)
    {
        List<StateModel> states = serviceRegister.getAllStates();
        model.addAttribute("states", states);
        return "stateView";
    }*/
    
 // Open Add City Page
    @GetMapping("/addcity")
    public String openCityPage(Model model){
        List<StateModel> states = serviceRegister.getAllStates();
        model.addAttribute("states", states);
        return "Addcity";
    }

    // Save City
    @PostMapping("/saveCity")
    public String addCity(@RequestParam("city_name") String name,
                          @RequestParam("pincode") String pincode,
                          @RequestParam("state_id") String stateId){
        CityModel city = new CityModel();
        city.setCity_name(name);
        city.setPincode(pincode);
        city.setState_id(UUID.fromString(stateId));
        boolean result = cityService.addCity(city);
        if(!result){
            return "redirect:/addcity?error=StateInactive";
        }
        return "redirect:/viewCities";
    }
    

   
  


    // Open Update Page
    @GetMapping("/editCity")
    public String editCity(@RequestParam("id") String id, Model model){
        CityModel city = cityService.getCityById(UUID.fromString(id));
        model.addAttribute("city", city);
        return "updateCity";
    }


    // Update City
    @PostMapping("/updateCity")
    public String updateCity(@RequestParam("city_id") String id,
                             @RequestParam("city_name") String name,
                             @RequestParam("pincode") String pincode){

        CityModel city = new CityModel();

        city.setCity_id(UUID.fromString(id));
        city.setCity_name(name);
        city.setPincode(pincode);

        boolean result = cityService.updateCity(city);

        if(!result){
            return "redirect:/viewCities?error=StateInactive";
        }

        return "redirect:/viewCities";
    }


    // Delete City
    @GetMapping("/deleteCity")
    public String deleteCity(@RequestParam("id") String id){

        boolean result = cityService.deleteCity(UUID.fromString(id));

        if(!result){
            return "redirect:/viewCities?error=StateInactive";
        }

        return "redirect:/viewCities";
    }
   // Open Update Page
    @GetMapping("/editState")
    public String editState(@RequestParam("id") String id, Model model){

        StateModel state = service.getStateById(UUID.fromString(id));

        model.addAttribute("state", state);

        return "updateState";   // JSP page name
    }
    @PostMapping("/updateState")
    public String updateState(@RequestParam("state_id") String id,
                              @RequestParam("name") String name,
                              @RequestParam("stateCode") String code){

        if(id == null || id.isBlank()){
            throw new RuntimeException("State ID missing");
        }

        StateModel state = new StateModel();

        state.setState_id(UUID.fromString(id));
        state.setName(name);
        state.setStateCode(code);

        service.updateState(state);

        return "redirect:/viewStates";
        
        
    }   
    
    @GetMapping("/viewCities")
    public String viewCities(Model model){

        List<CityModel> cities = cityService.getAllCities();

        model.addAttribute("cities", cities);

        return "Viewcity";   // JSP name
    }
    @GetMapping("/deleteState")
    public String deleteState(@RequestParam("id") String id){

        service.deleteState(UUID.fromString(id));

        return "redirect:/viewStates";
    }
    
    @GetMapping("/toggleCityStatus")
    public String toggleCityStatus(@RequestParam("id") String id,
                                   @RequestParam("status") String status) {

        CityModel city = new CityModel();
        city.setCity_id(UUID.fromString(id));
        city.setStatus(status);

        cityService.updateCityStatus(city);

        // Redirect back to city list → page refresh
        return "redirect:/viewCities";
    }
}
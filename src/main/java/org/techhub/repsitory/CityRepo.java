package org.techhub.repsitory;


import org.techhhub.model.CityModel;



import java.util.List;
import java.util.UUID;


public interface CityRepo {

    boolean addCity(CityModel city);

    List<CityModel> getAllCities();

    CityModel getCityById(UUID cityId);

    boolean updateCity(CityModel city);

    boolean deleteCity(UUID cityId);

    String getStateStatus(UUID stateId);
    boolean updateCityStatus(CityModel city);
    boolean isStateActive(UUID cityId);

	
    boolean updateCityStatusByState(UUID stateId, String status);
    
}
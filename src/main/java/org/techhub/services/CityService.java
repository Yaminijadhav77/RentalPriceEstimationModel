
package org.techhub.services;

import java.util.List;
import java.util.UUID;

import org.techhhub.model.CityModel;

public interface CityService {

    boolean addCity(CityModel city);

    List<CityModel> getAllCities();

    CityModel getCityById(UUID cityId);

    boolean updateCity(CityModel city);

    boolean deleteCity(UUID cityId);
    
    boolean updateCityStatus(CityModel city);
   
}
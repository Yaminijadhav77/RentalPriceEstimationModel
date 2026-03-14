package org.techhub.services;

import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.techhhub.model.CityModel;
import org.techhub.repsitory.CityRepo;


@Service
public class CityServiceImpl implements CityService {

    @Autowired
    CityRepo repo;

    @Override
    public boolean addCity(CityModel city) {

        String stateStatus = repo.getStateStatus(city.getState_id());

        if ("Inactive".equals(stateStatus)) {
            return false;
        }

        city.setCity_id(UUID.randomUUID());
        city.setStatus("Active");
        city.setCreated_at(LocalDateTime.now());
        city.setUpdated_at(LocalDateTime.now());

        return repo.addCity(city);
    }

    @Override
    public List<CityModel> getAllCities() {
        return repo.getAllCities();
    }

    @Override
    public CityModel getCityById(UUID cityId) {
        return repo.getCityById(cityId);
    }

    @Override
    public boolean updateCity(CityModel city) {

        city.setUpdated_at(LocalDateTime.now());

        return repo.updateCity(city);
    }

    @Override
    public boolean deleteCity(UUID cityId) {
        return repo.deleteCity(cityId);
    }

	@Override
	public boolean updateCityStatus(CityModel city) {
		city.setUpdated_at(LocalDateTime.now());
		 // Jar city Active karaychi asel tar state check kara
	    if(city.getStatus().equalsIgnoreCase("Active")) {

	        boolean stateActive = repo.isStateActive(city.getCity_id());

	        if(!stateActive) {
	            System.out.println("State is inactive. City cannot be activated.");
	            return false;
	        }
	    }
        return repo.updateCityStatus(city);
	}

	
}
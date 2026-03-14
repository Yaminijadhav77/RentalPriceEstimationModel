package org.techhub.repsitory;

import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.techhhub.model.CityModel;

@Repository
public class CityRepolmpl implements CityRepo {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public boolean addCity(CityModel city) {

        String sql = "insert into city(city_id, city_name, pincode, state_id, status, created_at, updated_at) values(?,?,?,?,?,?,?)";

        int value = jdbcTemplate.update(sql,
                city.getCity_id().toString(),
                city.getCity_name(),
                city.getPincode(),
                city.getState_id().toString(),
                city.getStatus(),
                city.getCreated_at(),
                city.getUpdated_at());

        return value > 0;
    }

    @Override
    public List<CityModel> getAllCities() {

        String sql = "select * from city";

        return jdbcTemplate.query(sql,(rs,rowNum)->{

            CityModel city = new CityModel();

            city.setCity_id(UUID.fromString(rs.getString("city_id")));
            city.setCity_name(rs.getString("city_name"));
            city.setPincode(rs.getString("pincode"));
            city.setState_id(UUID.fromString(rs.getString("state_id")));
            city.setStatus(rs.getString("status"));

            return city;

        });
    }

    @Override
    public CityModel getCityById(UUID cityId) {

        String sql="select * from city where city_id=?";

        return jdbcTemplate.queryForObject(sql,(rs,rowNum)->{

            CityModel city=new CityModel();

            city.setCity_id(UUID.fromString(rs.getString("city_id")));
            city.setCity_name(rs.getString("city_name"));
            city.setPincode(rs.getString("pincode"));
            city.setState_id(UUID.fromString(rs.getString("state_id")));
            city.setStatus(rs.getString("status"));

            return city;

        },cityId.toString());
    }

    @Override
    public boolean updateCity(CityModel city) {

        String sql="update city set city_name=?,pincode=?,updated_at=? where city_id=?";

        int value=jdbcTemplate.update(sql,
                city.getCity_name(),
                city.getPincode(),
                city.getUpdated_at(),
                city.getCity_id().toString());

        return value>0;
    }

    @Override
    public boolean deleteCity(UUID cityId) {

        String sql="delete from city where city_id=?";

        int value=jdbcTemplate.update(sql,cityId.toString());

        return value>0;
    }

    @Override
    public String getStateStatus(UUID stateId) {

        String sql="select status from state where state_id=?";

        return jdbcTemplate.queryForObject(sql,String.class,stateId.toString());
    }

	@Override
	public boolean updateCityStatus(CityModel city) {
		   String sql = "UPDATE city SET status=?, updated_at=? WHERE city_id=?";
		    int value = jdbcTemplate.update(sql,
		            city.getStatus(),
		            LocalDateTime.now(),
		            city.getCity_id().toString());
		    return value > 0; // boolean
		}

	@Override
	public boolean isStateActive(UUID cityId) {
		 String sql = "SELECT s.status FROM state s " +
                 "JOIN city c ON s.state_id = c.state_id " +
                 "WHERE c.city_id=?";

    String status = jdbcTemplate.queryForObject(
            sql,
            new Object[]{cityId.toString()},
            String.class
    );

    return status.equalsIgnoreCase("Active");
	}

	@Override
	public boolean updateCityStatusByState(UUID stateId, String Status) {
		 String sql = "UPDATE city SET status=? WHERE state_id=?";

	        int value = jdbcTemplate.update(sql,
	                Status,
	                stateId.toString());

	        return value > 0;
	}

	
}
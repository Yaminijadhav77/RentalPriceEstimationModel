package org.techhhub.model;

import java.time.LocalDateTime;
import java.util.UUID;

public class CityModel {

    private UUID city_id;
    private String city_name;
    private String pincode;
    private UUID state_id;
    private String status;
    private LocalDateTime created_at;
    private LocalDateTime updated_at;

    public UUID getCity_id() {
        return city_id;
    }

    public void setCity_id(UUID city_id) {
        this.city_id = city_id;
    }

    public String getCity_name() {
        return city_name;
    }

    public void setCity_name(String city_name) {
        this.city_name = city_name;
    }

    public String getPincode() {
        return pincode;
    }

    public void setPincode(String pincode) {
        this.pincode = pincode;
    }

    public UUID getState_id() {
        return state_id;
    }

    public void setState_id(UUID state_id) {
        this.state_id = state_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public LocalDateTime getCreated_at() {
        return created_at;
    }

    public void setCreated_at(LocalDateTime created_at) {
        this.created_at = created_at;
    }

    public LocalDateTime getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(LocalDateTime updated_at) {
        this.updated_at = updated_at;
    }
}
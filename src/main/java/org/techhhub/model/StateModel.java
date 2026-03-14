package org.techhhub.model;

import java.time.LocalDateTime;
import java.util.UUID;

public class StateModel {

    private UUID State_id;
    private String name;
    private String stateCode;
    private String status = "Active";  // default Active
    private LocalDateTime Created_at;
    private LocalDateTime updatedAt;

    // Getters and Setters
    public UUID getState_id() {
        return State_id;
    }
    public void setState_id(UUID state_id) {
        this.State_id = state_id;
    }

    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getStateCode() {
        return stateCode;
    }
    public void setStateCode(String stateCode) {
        this.stateCode = stateCode;
    }

    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }

    public LocalDateTime getCreated_at() {
        return Created_at;
    }
    public void setCreated_at(LocalDateTime created_at) {
        this.Created_at = created_at;
    }

    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }
    public void setUpdatedAt(LocalDateTime updatedAt) {
        this.updatedAt = updatedAt;
    }

    // Constructors
    public StateModel() {}

    public StateModel(UUID State_id, String name, String stateCode, String status) {
        this.State_id = State_id;
        this.name = name;
        this.stateCode = stateCode;
        this.status = status;
    }

    @Override
    public String toString() {
        return "StateModel{" +
                "State_id=" + State_id +
                ", name='" + name + '\'' +
                ", stateCode='" + stateCode + '\'' +
                ", status='" + status + '\'' +
                ", Created_at=" + Created_at +
                ", updatedAt=" + updatedAt +
                '}';
    }
}
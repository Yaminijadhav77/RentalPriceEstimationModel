package org.techhhub.model;

import java.time.LocalDateTime;
import java.util.UUID;

public class StateModel {


   private UUID State_id;
   private String name;
   private String stateCode;
   private String status;
   private LocalDateTime Created_at;
   public LocalDateTime getCreated_at() {
	return Created_at;
}
   public void setCreated_at(LocalDateTime created_at) {
	Created_at = created_at;
   }
   public LocalDateTime getUpdatedAt() {
	return updatedAt;
   }
   public void setUpdatedAt(LocalDateTime updatedAt) {
	this.updatedAt = updatedAt;
   }
   private LocalDateTime updatedAt;
   
   public String getStatus() {
	return status;
}
   public void setStatus(String status) {
	this.status = status;
   }
   public UUID getState_id() {
	return State_id;
}
   public void setState_id(UUID state_id) {
	State_id = state_id;
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
   public StateModel() {
	   
   }
   public StateModel(UUID State_id, String name, String stateCode, String status) {
       this.State_id = State_id;
       this.name = name;
       this.stateCode = stateCode;
       this.status=status;
   }
   
}
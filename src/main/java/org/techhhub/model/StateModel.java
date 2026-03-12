package org.techhhub.model;

import java.util.UUID;

public class StateModel {


   private UUID State_id;
   private String name;
   private String stateCode;
   
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
   public StateModel(UUID State_id, String name, String stateCode) {
       this.State_id = State_id;
       this.name = name;
       this.stateCode = stateCode;
   }
   
}
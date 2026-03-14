package org.techhhub.model;

import java.util.UUID;

public class StateUpdate {
	private UUID stateId;
	private String name;
	private String status;
	public UUID getStateId() {
		return stateId;
	}
	public void setStateId(UUID stateId) {
		this.stateId = stateId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}

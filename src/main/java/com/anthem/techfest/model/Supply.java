package com.anthem.techfest.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * Entity bean with JPA annotations
 * Hibernate provides JPA implementation
 * @author Mounika
 *
 */
@Entity
@Table(name="supply")


public class Supply {
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private  String resourceName;
	private  String sourcingType;
	private  String sourcingStage;
	private boolean profileSourced;
	private boolean profileShortlisted;
	private boolean profileRejected;
	private String feedback;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public String getSourcingType() {
		return sourcingType;
	}
	public void setSourcingType(String sourcingType) {
		this.sourcingType = sourcingType;
	}
	public boolean isProfileSourced() {
		return profileSourced;
	}
	public void setProfileSourced(boolean profileSourced) {
		this.profileSourced = profileSourced;
	}
	public String getSourcingStage() {
		return sourcingStage;
	}
	public void setSourcingStage(String sourcingStage) {
		this.sourcingStage = sourcingStage;
	}
	public boolean isProfileShortlisted() {
		return profileShortlisted;
	}
	public void setProfileShortlisted(boolean profileShortlisted) {
		this.profileShortlisted = profileShortlisted;
	}
	public boolean isProfileRejected() {
		return profileRejected;
	}
	public void setProfileRejected(boolean profileRejected) {
		this.profileRejected = profileRejected;
	}

	public String getResourceName() {
		return resourceName;
	}

	public void setResourceName(String resourceName) {
		this.resourceName = resourceName;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
}

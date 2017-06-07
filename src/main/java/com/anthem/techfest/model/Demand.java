package com.anthem.techfest.model;

import java.util.Date;

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
@Table(name="demand")
public class Demand {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String projectName;
	private String location;
	private String careerLevel;
	private boolean chargeable;
	private String primarySkill;
	private String demandStatus;
	private String reasonForReplacement;
	private Date demandCreatedDate;
	private Date demandClosedDate;
	private boolean resourceLocked;
	private String billingRate;
	private String team;
	private String rrdNo;
	private String sold;
	private boolean flexCareerLevel;
	private String addSkill;
	private String priority;
	private String replacement;
	private Date roleStartDate;
	private boolean clientInterview;
	private String comments;
	private String billCode;
	private String deliveryCentre;
	private String mysID;
	private String readyToLook;
	private String roleTitle;
	private String jobDescription;
	private String demandType;
	private String clientManager;
	private Date roleEndDate;
	private boolean profileSharedClient;
	private String roleID;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
	public String getCareerLevel() {
		return careerLevel;
	}

	public void setCareerLeveln(String careerLevel) {
		this.careerLevel = careerLevel;
	}
	public boolean isChargeable() {
		return chargeable;
	}

	public void setChargeable(boolean chargeable) {
		this.chargeable = chargeable;
	}

	public String getPrimarySkill() {
		return primarySkill;
	}

	public void setPrimarySkill(String primarySkill) {
		this.primarySkill = primarySkill;
	}

	public String getDemandStatus() {
		return demandStatus;
	}

	public void setDemandStatus(String demandStatus) {
		this.demandStatus = demandStatus;
	}

	public String getReasonForReplacement() {
		return reasonForReplacement;
	}

	public void setReasonForReplacement(String reasonForReplacement) {
		this.reasonForReplacement = reasonForReplacement;
	}

	public Date getDemandCreatedDate() {
		return demandCreatedDate;
	}

	public void setDemandCreatedDate(Date demandCreatedDate) {
		this.demandCreatedDate = demandCreatedDate;
	}

	public Date getDemandClosedDate() {
		return demandClosedDate;
	}

	public void setDemandClosedDate(Date demandClosedDate) {
		this.demandClosedDate = demandClosedDate;
	}

	public boolean isResourceLocked() {
		return resourceLocked;
	}

	public void setResourceLocked(boolean resourceLocked) {
		this.resourceLocked = resourceLocked;
	}

	public String getBillingRate() {
		return billingRate;
	}

	public void setBillingRate(String billingRate) {
		this.billingRate = billingRate;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public String getRrdNo() {
		return rrdNo;
	}

	public void setRrdNo(String rrdNo) {
		this.rrdNo = rrdNo;
	}

	public String getSold() {
		return sold;
	}

	public void setSold(String sold) {
		this.sold = sold;
	}

	public String getAddSkill() {
		return addSkill;
	}

	public void setAddSkill(String addSkill) {
		this.addSkill = addSkill;
	}

	public String getPriority() {
		return priority;
	}

	public void setPriority(String priority) {
		this.priority = priority;
	}

	public String getReplacement() {
		return replacement;
	}

	public void setReplacement(String replacement) {
		this.replacement = replacement;
	}

	public Date getRoleStartDate() {
		return roleStartDate;
	}

	public void setRoleStartDate(Date roleStartDate) {
		this.roleStartDate = roleStartDate;
	}

	public boolean isClientInterview() {
		return clientInterview;
	}

	public void setClientInterview(boolean clientInterview) {
		this.clientInterview = clientInterview;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getBillCode() {
		return billCode;
	}

	public void setBillCode(String billCode) {
		this.billCode = billCode;
	}

	public String getDeliveryCentre() {
		return deliveryCentre;
	}

	public void setDeliveryCentre(String deliveryCentre) {
		this.deliveryCentre = deliveryCentre;
	}

	public String getMysID() {
		return mysID;
	}

	public void setMysID(String mysID) {
		this.mysID = mysID;
	}

	public String getReadyToLook() {
		return readyToLook;
	}

	public void setReadyToLook(String readyToLook) {
		this.readyToLook = readyToLook;
	}

	public String getRoleTitle() {
		return roleTitle;
	}

	public void setRoleTitle(String roleTitle) {
		this.roleTitle = roleTitle;
	}

	public String getDemandType() {
		return demandType;
	}

	public void setDemandType(String demandType) {
		this.demandType = demandType;
	}

	public String getClientManager() {
		return clientManager;
	}

	public void setClientManager(String clientManager) {
		this.clientManager = clientManager;
	}

	public Date getRoleEndDate() {
		return roleEndDate;
	}

	public void setRoleEndDate(Date roleEndDate) {
		this.roleEndDate = roleEndDate;
	}

	public boolean isProfileSharedClient() {
		return profileSharedClient;
	}

	public void setProfileSharedClient(boolean profileSharedClient) {
		this.profileSharedClient = profileSharedClient;
	}

	public String getRoleID() {
		return roleID;
	}

	public void setRoleID(String roleID) {
		this.roleID = roleID;
	}

	public boolean isFlexCareerLevel() {
		return flexCareerLevel;
	}

	public void setFlexCareerLevel(boolean flexCareerLevel) {
		this.flexCareerLevel = flexCareerLevel;
	}

	public String getJobDescription() {
		return jobDescription;
	}

	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}

	
	
	/*@Override
	public String toString(){
		return "id="+id+", name="+name+", country="+country;
	}*/
}

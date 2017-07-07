package com.anthem.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Entity bean with JPA annotations Hibernate provides JPA implementation
 * 
 * @author pankaj
 *
 */
@Entity
@Table(name = "app_users")
public class AppUser {

	@Id
	@Column(name = "enterpriseid")
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String enterpriseid;

	private String password;
	private String teamname;
	private String dulead;
	private int pmoapproval;
	private int enabled;
	private String role;
	
	
	public String getEnterpriseid() {
		return enterpriseid;
	}
	public void setEnterpriseid(String enterpriseid) {
		this.enterpriseid = enterpriseid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTeamname() {
		return teamname;
	}
	public void setTeamname(String teamname) {
		this.teamname = teamname;
	}
	public String getDulead() {
		return dulead;
	}
	public void setDulead(String dulead) {
		this.dulead = dulead;
	}
	public int getPmoapproval() {
		return pmoapproval;
	}
	public void setPmoapproval(int pmoapproval) {
		this.pmoapproval = pmoapproval;
	}
	public int getEnabled() {
		return enabled;
	}
	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}
	
	
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "AppUser [enterpriseid=" + enterpriseid + ", password=" + password + ", teamname=" + teamname
				+ ", dulead=" + dulead + ", pmoapproval=" + pmoapproval + ", enabled=" + enabled + ", role=" + role
				+ "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((dulead == null) ? 0 : dulead.hashCode());
		result = prime * result + enabled;
		result = prime * result + ((enterpriseid == null) ? 0 : enterpriseid.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + pmoapproval;
		result = prime * result + ((role == null) ? 0 : role.hashCode());
		result = prime * result + ((teamname == null) ? 0 : teamname.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		AppUser other = (AppUser) obj;
		if (dulead == null) {
			if (other.dulead != null)
				return false;
		} else if (!dulead.equals(other.dulead))
			return false;
		if (enabled != other.enabled)
			return false;
		if (enterpriseid == null) {
			if (other.enterpriseid != null)
				return false;
		} else if (!enterpriseid.equals(other.enterpriseid))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (pmoapproval != other.pmoapproval)
			return false;
		if (role == null) {
			if (other.role != null)
				return false;
		} else if (!role.equals(other.role))
			return false;
		if (teamname == null) {
			if (other.teamname != null)
				return false;
		} else if (!teamname.equals(other.teamname))
			return false;
		return true;
	}
	
	
	
}

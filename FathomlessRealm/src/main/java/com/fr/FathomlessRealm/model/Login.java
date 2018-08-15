package com.fr.FathomlessRealm.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Login {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int loginId;
	private String userName;
	private String passWord;
	private Date logInTime,logOutTime;
	private boolean loggedIn=true;
	public boolean isLoggedIn() {
		return loggedIn;
	}
	public void setLoggedIn(boolean loggedIn) {
		this.loggedIn = loggedIn;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}
	public Date getLogInTime() {
		return logInTime;
	}
	public void setLogInTime() {
		this.logInTime = new Date();
	}
	public int getLoginId() {
		return loginId;
	}
	public void setLoginId(int loginId) {
		this.loginId = loginId;
	}
	public Date getLogOutTime() {
		return logOutTime;
	}
	public void setLogOutTime() {
		this.logOutTime = new Date();
	}
	
	
	

}

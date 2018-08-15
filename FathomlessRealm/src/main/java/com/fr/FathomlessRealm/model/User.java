package com.fr.FathomlessRealm.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class User {
		@Id
		private String userName;
		private String email;
		private String password;
		private long contactNo;
		private Date userRegisterDate;
		public String getUserName() {
			return userName;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public long getContactNo() {
			return contactNo;
		}
		public void setContactNo(long contactNo) {
			this.contactNo = contactNo;
		}
		public Date getUserRegisterDate() {
			return userRegisterDate;
		}
		public void setUserRegisterDate() {
			this.userRegisterDate = new Date();
		}
}

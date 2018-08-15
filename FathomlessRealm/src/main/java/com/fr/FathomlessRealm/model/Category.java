package com.fr.FathomlessRealm.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Category {
		@Id 
		@GeneratedValue(strategy=GenerationType.SEQUENCE)
		private int categoryId;
		private String categoryName;
		private Date categoryRegisterDate;
		public int getCategoryId() {
			return categoryId;
		}
		public void setCategoryId(int categoryId) {
			this.categoryId = categoryId;
		}
		public String getCategoryName() {
			return categoryName;
		}
		public void setCategoryName(String categoryName) {
			this.categoryName = categoryName;
		}
		public Date getCategoryRegisterDate() {
			return categoryRegisterDate;
		}
		public void setCategoryRegisterDate() {
			this.categoryRegisterDate = new Date();
		}
}

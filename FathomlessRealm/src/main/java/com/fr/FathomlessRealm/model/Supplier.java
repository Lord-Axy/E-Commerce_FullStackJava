package com.fr.FathomlessRealm.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Supplier {
	@Id @GeneratedValue(strategy=GenerationType.SEQUENCE)
		private int supplierId;
		private String supplierName;
		private long supplierContactNo;
		private String supplierAddress;
		private String supplierEmail;
		private Date supplierRegisterDate;
		public int getSupplierId() {
			return supplierId;
		}
		public void setSupplierId(int supplierId) {
			this.supplierId = supplierId;
		}
		public String getSupplierName() {
			return supplierName;
		}
		public void setSupplierName(String supplierName) {
			this.supplierName = supplierName;
		}
		public long getSupplierContactNo() {
			return supplierContactNo;
		}
		public void setSupplierContactNo(long supplierContactNo) {
			this.supplierContactNo = supplierContactNo;
		}
		public String getSupplierAddress() {
			return supplierAddress;
		}
		public void setSupplierAddress(String supplierAddress) {
			this.supplierAddress = supplierAddress;
		}
		public String getSupplierEmail() {
			return supplierEmail;
		}
		public void setSupplierEmail(String supplierEmail) {
			this.supplierEmail = supplierEmail;
		}
		public Date getSupplierRegisterDate() {
			return supplierRegisterDate;
		}
		public void setSupplierRegisterDate() {
			this.supplierRegisterDate = new Date();
		}
		
}

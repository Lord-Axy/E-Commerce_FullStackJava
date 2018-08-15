package com.fr.FathomlessRealm.model;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product {
	@Id 
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
		private int productId;
		private String productName,productDescription , productCategoryName, productSupplierName;
		private int productQuantity ;
		private float productPrice;
		private Date productRegisterDate;
		@Transient
		private MultipartFile productImage;
		
		
		public MultipartFile getProductImage() {
			return productImage;
		}
		public void setProductImage(MultipartFile productImage) {
			this.productImage = productImage;
		}
		public int getProductId() {
			return productId;
		}
		public void setProductId(int productId) {
			this.productId = productId;
		}
		public String getProductName() {
			return productName;
		}
		public void setProductName(String productName) {
			this.productName = productName;
		}
		public String getProductDescription() {
			return productDescription;
		}
		public void setProductDescription(String productDescription) {
			this.productDescription = productDescription;
		}
		public int getProductQuantity() {
			return productQuantity;
		}
		public void setProductQuantity(int productQuantity) {
			this.productQuantity = productQuantity;
		}
		public float getProductPrice() {
			return productPrice;
		}
		public void setProductPrice(float productPrice) {
			this.productPrice = productPrice;
		}
		
		public String getProductCategoryName() {
			return productCategoryName;
		}
		public void setProductCategoryName(String productCategoryName) {
			this.productCategoryName = productCategoryName;
		}
		public String getProductSupplierName() {
			return productSupplierName;
		}
		public void setProductSupplierName(String productSupplierName) {
			this.productSupplierName = productSupplierName;
		}
		public void setProductRegisterDate(Date productRegisterDate) {
			this.productRegisterDate = productRegisterDate;
		}
		public Date getProductRegisterDate() {
			return productRegisterDate;
		}
		public void setProductRegisterDate() {
			this.productRegisterDate = new Date();
		}
		public float getunitPrice() {
			// TODO Auto-generated method stub
			return 0;
		}
		
}

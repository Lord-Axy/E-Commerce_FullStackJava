package com.fr.FathomlessRealm.dao;

import java.util.List;

import com.fr.FathomlessRealm.model.Product;

public interface ProductDAO {

	public boolean addProduct(Product product);
	public Product getProduct(int productId);
	public boolean UpdateProduct(Product product);
	public boolean DeleteProduct(int cproductId);
	public List<Product> allProduct();
}

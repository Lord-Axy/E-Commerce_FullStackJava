package com.fr.FathomlessRealm.dao;

import java.util.List;

import com.fr.FathomlessRealm.model.Cart;

public interface CartDAO {
      
	public boolean addTocart(Cart cart);
	
	public boolean removeFromCart(int cartId);
	
	public List<Cart> getUserCart(String userName);
	
	public Cart singleProductFromCart(int productId,String userName);
}

package com.fr.Raven.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fr.FathomlessRealm.dao.CartDAO;
import com.fr.FathomlessRealm.dao.ProductDAO;
import com.fr.FathomlessRealm.model.Cart;
import com.fr.FathomlessRealm.model.Product;

@Controller
public class CartController {

	@Autowired
	ProductDAO proddao;

	@Autowired
	CartDAO cartdao;
	
	@RequestMapping("/cart")
	public ModelAndView cart(HttpServletRequest request) {
		try {
		Cookie[] cs = request.getCookies();
		for(Cookie c : cs) {
			if(c.getName().equals("username")) {
				ModelAndView m = new ModelAndView("cart");
				m.addObject("cartlist",cartdao.getUserCart(c.getValue()));
				return m;
			}
		}
		}catch(Exception e) {
			return new ModelAndView("index");
		}
		return new ModelAndView("index");
	}
	
	@RequestMapping("/addtocart")
	public String addToCart(@RequestParam("prodid") int prodid, @RequestParam("username") String username) {
		ModelAndView m;
		Product prod = proddao.getProduct(prodid);
		Cart cart = new Cart();
		try {
			cart = cartdao.singleProductFromCart(prodid, username);

			cart.setProductQuantity(cart.getProductQuantity() + 1);
			cart.setProductPrice(cart.getProductQuantity() * cart.getUnitprice());
			
			if (cartdao.addTocart(cart)) {
				return "redirect:/cart";
			}else
				return "index";

		} catch (Exception e) {
			cart = new Cart();
			cart.setProductName(prod.getProductName());
			cart.setProductId(prod.getProductId());
			cart.setProductPrice(prod.getProductPrice());
			cart.setUnitprice(prod.getProductPrice());
			cart.setUserName(username);
			if (cartdao.addTocart(cart)) {
				return "redirect:/cart";
			}else
				return null;
		}
	}
	
	@RequestMapping("/deccart")
	public String decrement(@RequestParam("pid") int pid ,HttpServletRequest request){
		String uname="";
		Cart cart=null;
		try {
			Cookie[] s = request.getCookies();
			for(Cookie c : s)
			{
				if(c.getName().equals("username")) {
					uname=c.getValue();
				}
			}
			cart = cartdao.singleProductFromCart(pid, uname);
			if(cart.getProductQuantity()>1) {
			cart.setProductQuantity(cart.getProductQuantity() - 1);
			cart.setProductPrice(cart.getProductQuantity() * cart.getUnitprice());
			cartdao.addTocart(cart);
			}
			}catch(Exception e) {
			return "index";
			}
		return "redirect:/cart";
	}
	@RequestMapping("/inccart")
	public String incprod(@RequestParam("pid") int pid ,HttpServletRequest request){
		String uname="";
		Cart cart=null;
		try {
			Cookie[] s = request.getCookies();
			for(Cookie c : s)
			{
				if(c.getName().equals("username")) {
					uname=c.getValue();
				}
			}
			cart = cartdao.singleProductFromCart(pid, uname);
			Product prod = proddao.getProduct(pid);
			if(cart.getProductQuantity()<prod.getProductQuantity()) {
			cart.setProductQuantity(cart.getProductQuantity() + 1);
			cart.setProductPrice(cart.getProductQuantity() * cart.getUnitprice());
			cartdao.addTocart(cart);
			}
			}catch(Exception e) {
			return "index";
			}
		return "redirect:/cart";
	}
}

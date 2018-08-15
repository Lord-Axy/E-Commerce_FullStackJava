package com.fr.Raven.controller;

import java.io.BufferedOutputStream;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fr.FathomlessRealm.dao.CategoryDAO;
import com.fr.FathomlessRealm.dao.ProductDAO;
import com.fr.FathomlessRealm.dao.SupplierDAO;
import com.fr.FathomlessRealm.model.Product;

@Controller
public class ProductController extends Thread {

		@Autowired
		ProductDAO productDAO;
		
		@Autowired
		CategoryDAO categoryDAO;
		
		@Autowired
		SupplierDAO supplierDAO;
		
		@RequestMapping("/allprod")
		public ModelAndView page(){
			ModelAndView m = new ModelAndView("allproduct");
			m.addObject("prodlist",productDAO.allProduct());
			return m;
		}
		
		@RequestMapping("/proddetail")
		public ModelAndView detail(@RequestParam("getprodid") int prodid){
			ModelAndView m = new ModelAndView("productdetails");
			m.addObject("thisprod",productDAO.getProduct(prodid));
			return m;
		}
		
		@RequestMapping("/product")
		public ModelAndView register(){
		ModelAndView m=new ModelAndView("product");
		m.addObject("productAgent", new Product());
		m.addObject("catlist", categoryDAO.allCategory());
		m.addObject("suplist", supplierDAO.allSupplier());
		m.addObject("prodlist", productDAO.allProduct());
		m.addObject("check",true);
			return m;	
		}
		
		@RequestMapping(value="productRegister",params="add product")
		public String AddCategory(@ModelAttribute("productAgent") Product product)
		{
			if(productDAO.addProduct(product))
			{	
				try {
					MultipartFile productImage=product.getProductImage();
					String imagePath="D:\\Ecommerce\\Raven\\src\\main\\webapp\\WEB-INF\\resources\\productImages\\"+String.valueOf(product.getProductId())+".jpg";
					byte[] myImage=productImage.getBytes();
					BufferedOutputStream bos=new BufferedOutputStream(new FileOutputStream(new File(imagePath)));
					bos.write(myImage);
					bos.flush();
					bos.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				try {
					new RefreshmentController();
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return "redirect:/product";
			}
			else
			{
				return "login";
			}
			
		}
		@RequestMapping("/editproduct")
		public ModelAndView editproductregister(@RequestParam("getprodid") int prodId){
		ModelAndView m=new ModelAndView("product");
		m.addObject("productAgent", productDAO.getProduct(prodId));
		m.addObject("catlist", categoryDAO.allCategory());
		m.addObject("suplist", supplierDAO.allSupplier());
		m.addObject("prodlist", productDAO.allProduct());
		m.addObject("check",false);
			return m;	
		}
		
		@RequestMapping(value="productRegister",params="update product")
		public String UpdateProduct(@ModelAttribute("productAgent") Product product)
		{
			if(productDAO.UpdateProduct(product))
			{
				try{
		    		File file = new File("D:\\Ecommerce\\Raven\\src\\main\\webapp\\WEB-INF\\resources\\productImages\\"+String.valueOf(product.getProductId())+".jpg");
		        	
		    		if(file.delete()){
		    			System.out.println(file.getName() + " is deleted!");
		    			try {
							MultipartFile productImage=product.getProductImage();
							if(productImage!=null) {
							String imagePath="D:\\Ecommerce\\Raven\\src\\main\\webapp\\WEB-INF\\resources\\productImages\\"+String.valueOf(product.getProductId())+".jpg";
							byte[] myImage=productImage.getBytes();
							BufferedOutputStream bos=new BufferedOutputStream(new FileOutputStream(new File(imagePath)));
							bos.write(myImage);
							bos.flush();
							bos.close();
							}
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						new RefreshmentController();
						return "redirect:/product";
		    		}
		    		
				}catch(Exception e) {
		    		e.printStackTrace();	
		    		}
		    		
				return "redirect:/product";
			}else
			{
				return "redirect:/login";
			}
			
		}
		@RequestMapping("/deleteproduct")
		public String delproduct(@RequestParam("getprodid") int prodId) {
			if(productDAO.DeleteProduct(prodId)) {
				try{
		    		File file = new File("D:\\Ecommerce\\Raven\\src\\main\\webapp\\WEB-INF\\resources\\productImages\\"+String.valueOf(prodId)+".jpg");
		        	
		    		if(file.delete()){
		    			System.out.println(file.getName() + " is deleted!");
		    		}
				}catch(Exception e) {
		    		e.printStackTrace();	
		    		}
		    		
				return "redirect:/product";
			}
			else {
				return "redirect:/allprod";
			}
		}
		
}


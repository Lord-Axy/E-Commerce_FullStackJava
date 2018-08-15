package com.fr.Raven.controller;

import java.nio.file.Paths;

public class RefreshmentController extends Thread{
	
	
	@SuppressWarnings("static-access")
	public RefreshmentController() throws Exception {
		this.sleep(10);
	}
	
	public void run()
	{
		try {
			Paths.get("D:\\Ecommerce\\Raven\\src\\main\\webapp\\WEB-INF\\resources\\");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}

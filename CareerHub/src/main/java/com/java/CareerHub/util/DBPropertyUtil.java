package com.java.CareerHub.util;

import java.util.ResourceBundle;

public class DBPropertyUtil {

//	public static String connectionString(String propertyFile) {
//		ResourceBundle rb= ResourceBundle.getBundle(propertyFile);
//		return rb.getString("url");
//	}
		public static String getConnectionString(String fileName) {
		
		String conString = "jdbc:mysql://127.0.0.1:3306/"+fileName;
		return conString;
	}

}



	
	

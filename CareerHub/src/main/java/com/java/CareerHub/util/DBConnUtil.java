package com.java.CareerHub.util;
	
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;
public class DBConnUtil {

//		public static Connection getConnection(String connString) throws ClassNotFoundException, SQLException {
//			ResourceBundle rb = ResourceBundle.getBundle("db");
//			String driver = rb.getString("driver");
//			String user = rb.getString("user");
//			String pwd = rb.getString("password");
//			Class.forName(driver);
//			Connection connection = DriverManager.getConnection(connString, user, pwd);
//			return connection;
//		}
		
		static Connection con;
		
		public static Connection getDBConn() {
			try {
				con = DriverManager.getConnection(DBPropertyUtil.getConnectionString("careerhub"),"root","root");
			} catch (SQLException e) {
		
				e.printStackTrace();
			}

			return con;
		}
		
		public static void main(String[] args) {
			
			getDBConn();
		
		}
	}

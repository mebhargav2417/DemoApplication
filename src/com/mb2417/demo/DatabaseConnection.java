package com.mb2417.demo;

import java.util.*;
import java.sql.*;


public class DatabaseConnection {
	Connection conn = null;
	
	
	public Connection getConnection(){
		
		try{
			ResourceBundle bundle = ResourceBundle.getBundle("resources.jdbc", Locale.US);
			String driverName = bundle.getString("driverName");
			String pgURL = bundle.getString("pgUrl");
			String user = bundle.getString("user");
			String pwd = bundle.getString("pwd");
			Class.forName(driverName);
			conn = DriverManager.getConnection(pgURL,user,pwd);
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return conn;
	}
	
	public void closeConnection(){
		try{
			conn.close();
		}catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	
	public void getValues(){
		ResourceBundle bundleValues = ResourceBundle.getBundle("resources.jdbc", Locale.US);
		System.out.println(bundleValues.getString("pgUrl"));
	}

}

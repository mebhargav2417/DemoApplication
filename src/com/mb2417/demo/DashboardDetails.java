package com.mb2417.demo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import org.json.simple.JSONObject;

public class DashboardDetails {
	
	JSONObject response = new JSONObject();
	Connection connect = null;
	Statement stmt = null;
	String query = "";
	
	public JSONObject getDashboardDetails(){
		try{
			DatabaseConnection db = new DatabaseConnection();
			connect = db.getConnection();
			stmt = connect.createStatement();
			query = "select count(*) from tbl_details";
			ResultSet rs = stmt.executeQuery(query);
			
			while(rs.next()){
				response.put("countDetails", rs.getInt(1));
			}
			query = "select count(*) from tbl_login where available_login = 'yes' AND empId_login != 'admin'";
			rs = stmt.executeQuery(query);
			while(rs.next()){
				response.put("countEmpAvailable", rs.getInt(1));
			}
			query = "select count(*) from tbl_login where available_login != 'yes' AND empId_login != 'admin'";
			rs = stmt.executeQuery(query);
			while(rs.next()){
				response.put("countEmpNotAvailable", rs.getInt(1));
			}
			query = "select count(*) from tbl_login where empId_login != 'admin'";
			rs = stmt.executeQuery(query);
			while(rs.next()){
				response.put("countEmp", rs.getInt(1));
			}
			
			stmt.close();
			connect.close();
		}catch(Exception e){
			response.put("exception", e.toString());
		}
		return response;
	}

}

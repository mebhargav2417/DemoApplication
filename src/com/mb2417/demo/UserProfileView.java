package com.mb2417.demo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import org.json.simple.JSONObject;

public class UserProfileView {
	
	public JSONObject getUserDetails(){
		JSONObject jsonRes = new JSONObject();
		Connection connect = null;
		Statement stmt = null;
		String query = "", startDate = "", returnDate = "";
		String result = "";
		try{
			DatabaseConnection db = new DatabaseConnection();
			Parameters parameters = new Parameters();
			EncryptDecrypt encrypt = new EncryptDecrypt();
			connect = db.getConnection();
			stmt = connect.createStatement();
			query = "select * from tbl_login where empName_login != 'admin' && available_login = 'yes'";
			ResultSet rs = stmt.executeQuery(query);
			while(rs.next()){
				jsonRes.put("id", rs.getString("userid_login"));
				jsonRes.put("empName", rs.getString("empName_login"));
				jsonRes.put("dob", rs.getDate("dob_login"));
			}
			//jsonRes.put("success","Insertion Success");
			//response.getWriter().write(jsonRes.toString());
			stmt.close();
			connect.close();
		}catch(Exception e){
			jsonRes.put("fail", "Retreive Failed");
			System.out.println("Error: " + e.toString());
		}
		return jsonRes;
	}

}

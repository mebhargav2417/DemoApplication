package com.mb2417.demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

/**
 * Servlet implementation class AddUser
 */
@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/json;charset=UTF-8");
		PrintWriter out = response.getWriter();
		JSONObject jsonRes = new JSONObject();
		Connection connect = null;
		Statement stmt = null;
		String query = "";
		String result = "";
		try{
			DatabaseConnection db = new DatabaseConnection();
			EncryptDecrypt encrypt = new EncryptDecrypt();
			connect = db.getConnection();
			stmt = connect.createStatement();
			query = "insert into pwd_login values (NULL,'" + request.getParameter("empMail") + "',"
					+ "'"+ request.getParameter("empPwd") + "',"
					+ "'"+ request.getParameter("empName") + "',"
					+ "'"+ request.getParameter("empId") + "',"
					+ "'"+ request.getParameter("dobDate") + "',"
					+ " now(),"
					+ "'yes'";
			stmt.executeUpdate(query);
			jsonRes.put("success","Insertion Success");
			//response.getWriter().write(jsonRes.toString());
			out.close();
			stmt.close();
			connect.close();
		}catch(Exception e){
			jsonRes.put("fail", "Insertion Failed");
		}
		out.println(jsonRes.toString());
	}

}

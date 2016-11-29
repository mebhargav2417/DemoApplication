package com.mb2417.demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(description = "To validate Login Credentials", urlPatterns = { "/LoginServlet" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String response = "";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
		
		/*response.setContentType("text/json");
		
	    PrintWriter out = response.getWriter();
	    
	    Enumeration e = request.getHeaderNames();       // gets all headers information
	 
	    out.println("<H3>Following are the Headers coming from the Client<BR></H3>");
	 
	    out.println("<table border=2 bordercolor=blue>");
	 
	    out.println("<tr><th>Header Name</th><th>Header Value</th></tr>");
	 
	    while(e.hasMoreElements())
	    {
	      String name = (String) e.nextElement();
	      String value = request.getHeader(name);       // gets each header information separately
	      out.println("<tr><th>"+name + "</th><th>" + value + "</th></tr>");
	    }
	    out.println("</table>");			
	    out.close();*/
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
		Parameters parameters = new Parameters();
		String query = "";
		String result = "";
		try{
			DatabaseConnection db = new DatabaseConnection();
			EncryptDecrypt encrypt = new EncryptDecrypt();
			connect = db.getConnection();
			stmt = connect.createStatement();
			RequestDispatcher rd;
			query = "select pwd_login from tbl_login where userid_login = '" + request.getParameter("user") + "'";
			ResultSet rs = stmt.executeQuery(query);
			while(rs.next()){
				result = rs.getString("pwd_login");
			}
			parameters.setLoginUser(request.getParameter("user"));
			if(encrypt.encryptDecrypt("demoapp123456789", "demoApplication1", request.getParameter("pwd")).contentEquals(result) ){
				jsonRes.put("success",request.getParameter("user"));
				parameters.setSuccessLogin(request.getParameter("user"));
				parameters.setLoginedUser(request.getParameter("user"));
				
			} else {
				jsonRes.put("fail", "Authentication Failed");
				
			}
			out.println(jsonRes.toString());
			//response.getWriter().write(jsonRes.toString());
			out.close();
			rs.close();
			stmt.close();
			connect.close();
		}catch(Exception e){
			
		}
		
	}

}

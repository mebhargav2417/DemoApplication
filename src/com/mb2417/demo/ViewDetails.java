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

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 * Servlet implementation class ViewDetails
 */
@WebServlet("/ViewDetails")
public class ViewDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewDetails() {
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
		JSONObject mainJson = new JSONObject();
		JSONArray jsonArray = new JSONArray();
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
			query = "select count(*) from tbl_details";
			ResultSet rs = stmt.executeQuery(query);
			while(rs.next()){
				mainJson.put("count", rs.getString(0));
			}
			
			query = "select * from tbl_login where empName_login != 'admin' && available_login == 'yes'";
			rs = stmt.executeQuery(query);
			while(rs.next()){
				jsonRes.put("sno", rs.getInt("sno_details"));
				jsonRes.put("lrno", rs.getString("lrno_details"));
				jsonRes.put("customer", rs.getString("customer_details"));
				jsonRes.put("from", rs.getString("from_details"));
				jsonRes.put("to", rs.getString("to_details"));
				jsonRes.put("commodity", rs.getString("commodity_details"));
				jsonRes.put("type", rs.getString("type_details"));
				jsonRes.put("vehicleno", rs.getString("vehicleno_details"));
				jsonRes.put("driver", rs.getString("driver_details"));
				jsonRes.put("startdate", rs.getDate("startdate_details"));
				jsonRes.put("returndate", rs.getDate("returndate_details"));
				jsonRes.put("dieatport", rs.getString("dieselatport_details"));
				jsonRes.put("starting", rs.getString("starting_details"));
				jsonRes.put("ending", rs.getString("ending_details"));
				jsonRes.put("tripkms", rs.getString("tripkms_details"));
				jsonRes.put("avg", rs.getString("avg_details"));
				jsonRes.put("dieatoutside", rs.getString("dieselatoutside_details"));
				jsonRes.put("toll", rs.getString("toll_details"));
				jsonRes.put("rtopc", rs.getString("rtopc_details"));
				jsonRes.put("act", rs.getString("act_details"));
				jsonRes.put("lun", rs.getString("lun_details"));
				jsonRes.put("weighmen", rs.getString("weighmen_details"));
				jsonRes.put("others", rs.getString("others_details"));
				jsonRes.put("act", rs.getString("tripexpenses_details"));
				jsonRes.put("act", rs.getString("advance_details"));
				jsonRes.put("act", rs.getString("balfromadv_details"));
				jsonRes.put("act", rs.getString("advreturened_details"));
				jsonRes.put("totalexp", rs.getString("totalexp_details"));
				jsonRes.put("enteredby", rs.getString("dataenteredby_details"));
				
				
			}
			//jsonRes.put("success","Insertion Success");
			//response.getWriter().write(jsonRes.toString());
			out.close();
			stmt.close();
			connect.close();
		}catch(Exception e){
			jsonRes.put("fail", "Retreive Failed");
			System.out.println("Error: " + e.toString());
		}
		out.println(jsonRes.toString());
	}

}

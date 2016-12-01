package com.mb2417.demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

/**
 * Servlet implementation class AddDetails
 */
@WebServlet("/AddDetails")
public class AddDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDetails() {
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
		String query = "", startDate = "", returnDate = "";
		String result = "";
		try{
			DatabaseConnection db = new DatabaseConnection();
			Parameters parameters = new Parameters();
			EncryptDecrypt encrypt = new EncryptDecrypt();
			connect = db.getConnection();
			stmt = connect.createStatement();
			if(request.getParameter("outDate").contains("-") ){
				startDate = request.getParameter("outDate").split("-")[2] + "-" + request.getParameter("outDate").split("-")[1] + "-" + request.getParameter("outDate").split("-")[0];
	
			}
			if(request.getParameter("inDate").contains("-")){
				returnDate = request.getParameter("inDate").split("-")[2] + "-" + request.getParameter("inDate").split("-")[1] + "-" + request.getParameter("inDate").split("-")[0];
			}
			if(request.getParameter("outDate").contains("/")){
				startDate = request.getParameter("outDate").split("/")[2] + "-" + request.getParameter("outDate").split("/")[1] + "-" + request.getParameter("outDate").split("/")[0];
			}
			if(request.getParameter("inDate").contains("/")){
				returnDate = request.getParameter("inDate").split("/")[2] + "-" + request.getParameter("inDate").split("/")[1] + "-" + request.getParameter("inDate").split("/")[0];
			}
			query = "insert into tbl_details values (null,"
							+ "'"+  request.getParameter("lrno") + "',"
							+ "'"+  request.getParameter("customer") + "',"
							+ "'"+  request.getParameter("from") + "',"
							+ "'"+  request.getParameter("to") + "',"
							+ "'"+  request.getParameter("commodity") + "',"
							+ "'"+  request.getParameter("type") + "',"
							+ "'"+  request.getParameter("vehicleno") + "',"
							+ "'"+  request.getParameter("driver") + "',"
							+ "'"+  startDate + "',"
							+ "'"+  returnDate + "',"
							+ "'"+  request.getParameter("dAtPort") + "',"
							+ "'"+  request.getParameter("starting") + "',"
							+ "'"+  request.getParameter("ending") + "',"
							+ "'"+  request.getParameter("tripKMS") + "',"
							+ "'"+  request.getParameter("avg") + "',"
							+ "'"+  request.getParameter("dOutside") + "',"
							+ "'"+  request.getParameter("toll") + "',"
							+ "'"+  request.getParameter("rtopc") + "',"
							+ "'"+  request.getParameter("act") + "',"
							+ "'"+  request.getParameter("lun") + "',"
							+ "'"+  request.getParameter("weighmen") + "',"
							+ "'"+  request.getParameter("others") + "',"
							+ "'"+  request.getParameter("tripExp") + "',"
							+ "'"+  request.getParameter("advance") + "',"
							+ "'"+  request.getParameter("balFromAdv") + "',"
							+ "'"+  request.getParameter("advReturned") + "',"
							+ "'"+  parameters.getLoginedUser() + "',"
							+ "now(),"
							+ "now(),"
							+ "'',"
							+ "'"+  request.getParameter("totExp") + "')";
			stmt.executeUpdate(query);
			jsonRes.put("success","Insertion Success");
			//response.getWriter().write(jsonRes.toString());
			out.close();
			stmt.close();
			connect.close();
			jsonRes.put("success", "Data Successfully Stored");
		}catch(Exception e){
			jsonRes.put("fail", "Insertion Failed");
			System.out.println("Error: " + e.toString());
		}
		out.println(jsonRes.toString());
	}

}

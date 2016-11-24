package com.mb2417.demo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(description = "To validate Login Credentials", urlPatterns = { "/LoginServlet" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
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
		response.setContentType("text/html");
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
	    out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package com.madan.blogapp;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ResetManager extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Details of the reset page 
		
		String email = request.getParameter("Uemail");
		String password = request.getParameter("upwd");
		String cPass = request.getParameter("cupwd");
		
		//DB info
		
		String url = "jdbc:mysql://localhost:3306/madandb";
		String pass = "Madanmohan#2000";
		String user = "root";
		
		// Request dispatcher object--> it is responsible for dispatch the request to the respective web page-->
		
		RequestDispatcher rd = null;
	
		
		//creating db connection
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			//creating connection between java program to db
			con  = DriverManager.getConnection(url, user, pass);
			
			//Creating statement object
			
			PreparedStatement pst = con.prepareStatement("update blogApp set password = ? where email=?");
			
			if(password.equals(cPass))
			{
				pst.setString(1, password);
				pst.setString(2, email);
				
				int res = pst.executeUpdate();
				PrintWriter out= response.getWriter();
				
				if(res>0)
				{
					
					out.println("Reset password successfuly");
					
					rd = request.getRequestDispatcher("sign.html");
					rd.forward(request, response);
					
					
				}
				else {
					out.println("<h2 style='color:red;'>Some error occur please try again</h2> ");
					rd = request.getRequestDispatcher("reset.jsp");
					rd.forward(request, response);
					
				}
				
			}
			else {
//				rd = request.getRequestDispatcher("reset.jsp");
//				rd.forward(request, response);
				PrintWriter out = response.getWriter();
				
				
				
				out.println("<h1 style='color:red; text-align='center'>Password does not matched</h1>");
			}
		} catch (Exception e) {
			try {
				con.close();
			} catch (SQLException e1) {
				
				e1.printStackTrace();
			}
			
			e.printStackTrace();
		}
		
		
		
	}

}

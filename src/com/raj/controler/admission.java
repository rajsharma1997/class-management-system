package com.raj.controler;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.raj.util.DbConnect;

/**
 * Servlet implementation class admission
 */
public class admission extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String ph_no = request.getParameter("ph_no");
		
		 DbConnect db = new DbConnect();
	        Connection con = db.getCon();
	         Statement stmt = null;
	         DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
	         Date dateobj = new Date();
	         String date = dateobj.toString();
	         System.out.println(df.format(dateobj));
	         
	         System.out.println(name);
	         try{
	        	
	        	 stmt = con.createStatement();
	         stmt.executeUpdate("insert into admission(name, age, gender, email, ph_no,date) values ('"+name+"','"+age+"','"+gender+"','"+email+"','"+ph_no+"','"+date+"')");
	         request.setAttribute("name1",name);
	         request.setAttribute("age1",age);
	         request.setAttribute("gender1", gender);
	         request.setAttribute("email1", email);
	         request.setAttribute("ph_no1", ph_no);
	         request.setAttribute("date1", date);
	         RequestDispatcher dispatcher = request.getRequestDispatcher("/letter.jsp");
				dispatcher.forward(request, response);

	         }catch(SQLException e)
	         {
	        	 System.out.println(e);
	         }
	}
}


package com.raj.controler;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.raj.util.DbConnect;

/**
 * Servlet implementation class vote
 */
public class vote extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int count = 0;
		String leader = null;
		
		int id = Integer.parseInt(request.getParameter("id"));
 DbConnect db = new DbConnect();
 HttpSession session  = request.getSession();
 String voter = (String) session.getAttribute("username");
        String department = (String) session.getAttribute("branch");
        System.out.println(department);
         Connection con = db.getCon();
         Statement stmt = null;
        
         
         try {
			stmt = con.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
         
		 try{
	
		 ResultSet rs = stmt.executeQuery("select * from leaders where id = '"+id+"'");
		 while(rs.next()) {
			  count = rs.getInt("vote");
			   leader = rs.getString("name");
			  
		 }
		 
		 count = count+1;
		 
		 stmt.executeUpdate("update leaders set vote = '"+count+"' where id='"+id+"'");
		 System.out.println("updated");
		 System.out.println(count);
		 String voted = leader;
		   
			 session.setAttribute("voted", voted);
		
		System.out.println(voter);
		stmt.executeUpdate("insert into voters (username, branch) values ('"+voter+"', '"+department+"')");
		 }catch(SQLException e) {
			 System.out.println(e);
		 }
		 request.setAttribute("leader",leader);
		 
		 RequestDispatcher dispatcher = request.getRequestDispatcher("/welcome.jsp");
			dispatcher.forward(request, response);
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
}
package com.raj.controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.raj.model.candidates;
import com.raj.model.voters;
import com.raj.util.DbConnect;

/**
 * Servlet implementation class votenow
 */
public class votenow extends HttpServlet  {
	private static final long serialVersionUID = 1L;
      
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String branch = request.getParameter("branch");
		request.setAttribute("branch",branch);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/vote.jsp");
		dispatcher.forward(request, response);
	}

}

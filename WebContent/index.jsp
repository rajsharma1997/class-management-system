<%@ page import="javax.servlet.http.HttpSession" %>
<%@page import="java.sql.*" %>

<%@page import="com.raj.util.DbConnect" %>
<%@page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html lang="en">
<head>
  
  <title>Online Voting System</title>
  <%@ include file="effects.jsp" %>
</head>

<body>

  <%@ include file="header1.jsp" %>
  <!--==========================
    Intro Section
  ============================-->
 
  <section id="intro" class="clearfix">
    <div class="container">

     

      <div class="intro-info">
        <h2>Vote for<br><span>change</span><br>Vote for better future!</h2>
        <div>
       
            <%
        
        
        DbConnect db = new DbConnect();
        Connection con = db.getCon();
         Statement stmt = null;
        
         String voter = (String)session.getAttribute("username");
         String department = (String) session.getAttribute("branch");
         try{
        	 stmt = con.createStatement();
         ResultSet rs = stmt.executeQuery("select * from voters where username = '"+voter+"' and branch = '"+department+"'");
         
    	if(rs.next())
    	{
        %>
           
           <%
    	}else{
    		%>
    		<li>
    		 <form action="votenow" method="post">
           <input type="submit" class="btn-get-started scrollto" value="Vote Now!" />
           </form>
           <li>
    		<% 
    	}con.close();
    	}catch(SQLException e)
    	{
    		System.out.println();
    	}
    		%>
    		
          
        </div>
      </div>

    </div>
  </section><!-- #intro -->

 
      
  

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
 

 
</body>
</html>

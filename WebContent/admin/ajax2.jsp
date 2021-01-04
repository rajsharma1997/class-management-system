<%@page import="java.sql.*" %>

<%@page import="com.raj.util.DbConnect" %>
<%@page import="java.io.PrintWriter" %>
  <section class="wow fadeIn">
      <div class="container">
        <header class="section-header">
          <h3>Candidate list</h3>
       
        </header>

        <div class="row row-eq-height justify-content-center">
 
       
<%
PrintWriter writer = response.getWriter();
String q = request.getParameter("q");

DbConnect db = new DbConnect();
Connection con = db.getCon();
 Statement stmt = null;
 try{
	 stmt = con.createStatement();
 ResultSet rs = stmt.executeQuery("select id, name, party_name, vote from leaders where department = '"+q+"'");
 while(rs.next()){
	 %>
	<div class="col-lg-4 mb-4">
            <div class="card wow bounceInUp">
              <div class="panel-body text-center">
                <div class="card" >
                <form action="vote" method="post">
  				
 				 <div class="card-body">
    			<h5 class="card-title">Candidate Name : <%=rs.getString("name") %></h5>
    			<p class="card-text">Party Name : <%=rs.getString("party_name") %></p>
    			<p class="card-text">No. of votes: <%=rs.getInt("vote") %> </p>
    			</div>
    			</form>
    			
  				</div>
				</div>
		</div>
		</div>


	<%
	
 }
 try{
 con.close();
 }catch(SQLException e)
 {
	 System.out.println(e);
 }
 }catch(SQLException e)
 {
	 e.printStackTrace();
 }

 %>

 </div>
 </div>
 </section>

 

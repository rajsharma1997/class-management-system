<%@page import="java.sql.*" %>

<%@page import="com.raj.util.DbConnect" %>
<%@page import="java.io.PrintWriter" %>
 <select name="student">
       
<%
PrintWriter writer = response.getWriter();
String year = request.getParameter("year");
String branch = request.getParameter("branch");
DbConnect db = new DbConnect();
Connection con = db.getCon();
 Statement stmt = null;
 if(branch.equalsIgnoreCase("it"))
 {
	 branch="voter_register_it";
 }else if(branch.equalsIgnoreCase("comps"))
 {
	 branch="voter_register_comps";
 }else if(branch.equalsIgnoreCase("mech"))
 {
	 branch="voter_register_mech";
 }else if(branch.equalsIgnoreCase("ele"))
 {
	 branch ="voter_register_ele";
 }else 
 {
	 branch ="voter_register_extc";
 }
 try{
	 stmt = con.createStatement();
	System.out.println(branch);
	System.out.println(year);
 ResultSet rs = stmt.executeQuery("select * from "+branch+" where year ="+year+"");
 while(rs.next()){
	 System.out.println(rs.getString("fname"));
	 %>
	<option value="<%=rs.getInt("v_id") %>" ><%=rs.getString("fname") %>
	

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

 </select>

<%@page import="java.sql.*" %>

<%@page import="com.raj.util.DbConnect" %>
<%@page import="java.io.PrintWriter" %>
<thead>
 <tr><th>First name</th>
 <th>Last name</th>
 <th>choose</th></tr>
 </thead>

<%
PrintWriter writer = response.getWriter();
String q = request.getParameter("q");
String branch = null;
if(q.contentEquals("6"))
{
	 branch = "voter_register_it";
}else if(q.contentEquals("2"))
{
	branch = "voter_register_comps";
}else if(q.contentEquals("3"))
{
	branch = "voter_register_mech";
}else if(q.contentEquals("4"))
{
	branch = "voter_register_ele";
}else if(q.contentEquals("5"))
{
	branch = "voter_register_extc";
}else{
	writer.println("Error while fetching");
}


DbConnect db = new DbConnect();
Connection con = db.getCon();
 Statement stmt = null;
 try{
	 stmt = con.createStatement();
 ResultSet rs = stmt.executeQuery("select * from "+branch+"");
 while(rs.next()){
	 %>
	 <tbody>
	<tr>
		<td> <%=rs.getString("fname") %></td>
		<td> <%=rs.getString("lname")%></td>
		<td><input type="checkbox" value="<%=rs.getString("v_id")%>"/></td>
	</tr> 
	</tbody>
	<%
 }
 }catch(SQLException e)
 {
	 e.printStackTrace();
 }
 %>
 
 
 
 

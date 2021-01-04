<%@page import="java.sql.*" %>

<%@page import="com.raj.util.DbConnect" %>
<%@page import="java.io.PrintWriter" %>

 <tr><th>Full name</th>
 <th>Age</th>
 <th>gender</th>
 <th>email</th>
 <th>contact number</th>
 <th>TimeStamp</th>
 
 </tr>
<%
PrintWriter writer = response.getWriter();
DbConnect db = new DbConnect();
Connection con = db.getCon();
 Statement stmt = null;
 try{
	 stmt = con.createStatement();
 ResultSet rs = stmt.executeQuery("select name,age,gender,email,ph_no,date from admission");
 while(rs.next()){
	 %>
	<tr>
		<td> <%=rs.getString("name") %></td>
		<td> <%=rs.getInt("age")%></td>
		<td> <%=rs.getString("gender")%></td>
		<td> <%=rs.getString("email")%></td>
		<td> <%=rs.getString("ph_no")%></td>
		<td> <%=rs.getString("date")%></td>
		
	</tr> 
	<%
 }
 }catch(SQLException e)
 {
	 e.printStackTrace();
 }
 %>
 
 
 
 

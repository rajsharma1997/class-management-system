<%@ page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>My First Servlet Example... </title>
 <%@ include file="effects.jsp" %>
</head>

<body>
<%@ include file="adminheader.jsp" %>
<%@ include file="sidebar.jsp" %>
<section id="main-content">
<%@ include file="admin_panel.jsp" %>
<section class="panel">


<h1><font size="6" color="red">Student WOW Sheet</font></h1>
<form action="servlet/Register" method="post">
<!-- 
Name:<input type="text" name="userName"/><br/><br/>
-->
<table>

<tr>
<td>
<font size="5" color="indigo">Branch:</font>
</td>
<td>
<select id="branch">
<option value="it" selected>I.T</option>
<option value="comps">Comps</option>
<option value="mech">Mechanical</option>
<option value="ele">Electrical</option>
<option value="extc">EXTC</option>
</select>
</td>
</tr>

<tr>
<td>
<font size="5" color="indigo">Year:</font>
</td>
<td>
<select id="year" onchange="studentlist(value)" >
<option selected>..............</option>
<option  value="1">First year</option>
<option value="2">Second year</option>
<option value="3">Third year</option>
<option value="4">Fourth year</option>
</select>
</td>
</tr>

<tr>
<td>
<font size="5" color="indigo">Student Name:</font>
</td>
<td>
<div id="studentname"></div>

</td>
</tr>
<tr>
<td>
<font size="5" color="indigo">Wins:</font>
</td>
<td>
<select name="studentWins">
<option>Good Potential</option>
<option>Hardworking</option>
<option>Obidient</option>
<option>Tech Expert</option>
<option>Quick Learner</option>


<option>other</option>
</select>
<br></br>

</td>
</tr>

<tr>
<td>
<font size="5" color="indigo">Obstacles</font>
</td>
<td>
<select name="studentObstacle">
<option>Disturbs in the class</option>
<option>Never Completes the Home Work</option>
<option>Pay less attention in the Class</option>
<option>Never takes the Notes in the Class</option>
<option>United States</option>
<option>other</option>
</select>
<br></br>
</td>
</tr>
<tr>
<td>
<font size="5" color="purple">Wondering:</font>
</td>
<td>
<textarea rows = "5" cols = "50" name="studentWondering">
enter here wonderings...

</textarea>
</td>
</tr>

<tr>
<td align="center">
<input type="submit" value="Submit"/>
</td>
</tr>
</table>
</form>


<a href="http://www.arcadoom.com/servlet/DisplayUsers">Display All Records1</a>

</section>
</section>
 
</body>


  <!--Ajax---------------------------------->
  <script type="text/javascript">
  function studentlist(year)
{
	  var branch;
  var xmlRequest = new XMLHttpRequest();
  branch = document.getElementById("branch").value;
  if (year == "") {
        document.getElementById("studentname").innerHTML = "";
        
        return;
      }
      else
      {
         if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
  xmlRequest.onreadystatechange = function()
  {
    if(this.readyState == 4 && this.status == 200)
    {
      document.getElementById("studentname").innerHTML=this.responseText;
      
    }
  };
  xmlRequest.open("GET","ajax4.jsp?year="+year+"&branch="+branch,false);
  xmlRequest.send();
}
}
</script>

</html>
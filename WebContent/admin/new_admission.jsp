<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Admissions</title>
<%@ include file="effects.jsp" %>
</head>
<body onLoad="list()">
<%@ include file="adminheader.jsp" %>
<%@ include file="sidebar.jsp" %>
 <section id="main-content">
<%@ include file="admin_panel.jsp" %>
<section class="panel">
<H2 Style="text-align:center; color:green"><b>List of new admitted Students</b></H2>
<table id="list" class="table">
</table>
</div>
</section>
</section>
</body>
<script type="text/javascript">
function list()
{
  var xmlRequest = new XMLHttpRequest();
 
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
      document.getElementById("list").innerHTML=this.responseText;
      
    }
  };
  xmlRequest.open("GET","ajax3.jsp?q=",true);
  xmlRequest.send();
}

</script>
</html>
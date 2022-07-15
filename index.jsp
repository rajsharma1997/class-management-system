<%-- 
    Document   : index
    Created on : Sep 28, 2016, 4:20:14 PM
    Author     : Oops
--%>



<html>
<head>
<title>Online Voating System</title>
<%@ include file="header.jsp"%>
<link href="css/home.css" rel="stylesheet" type="text/css">


</head>
<body>
   
    
    <div class="back_image">
        
        <div class="reg">
              <pre>
            <form action="Login" method="post">
            <input name="AdharNumber"  placeholder="Enter your Adhar Card Number" type="text">
           
                     
            <input name="password"  placeholder="Enter your password" type="text">
            
         
            
            
            <input value="Login"   type="submit" class="btn" style="padding-bottom: 30px;"> 
            
            
            <a href="http://localhost:8080/OnlineVoatingSystem/reg.jsp">New User Register</a>
            </form>
            </pre>
             
        </div>
    </div>
   
    
    
    

</body>

<%@ include file="footer.jsp"%>
</html> 
<%-- 
    Document   : reg
    Created on : Sep 29, 2016, 12:18:57 AM
    Author     : Oops
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link href="css/home.css" rel="stylesheet" type="text/css">
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="header.jsp" %>
        <title>JSP Page</title>
    </head>
   <body>
   
    
    <div class="back_image">
        
        <div class="reg">
              <pre>
            <form action="Register" method="get">
            <input name="name"  placeholder="Enter your name" type="text">
                                
            <input name="contact"  placeholder="Contact" type="text">
            
            <input name="adhar"  placeholder="Adhar Card Number" type="text">
                     
            <input name="email"  placeholder="Email" type="text"> 
            
            <input name="password"  placeholder="Password" type="password"> 
                        
                        
            <input value="Registration"   type="submit" class="btn" style="padding-bottom: 30px;"> 
            </form>
            </pre>
             
        </div>
    </div>
   
    
    
    

</body>

<%@ include file="footer.jsp"%>
</html>

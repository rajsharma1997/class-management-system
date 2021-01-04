  <header  class="fixed-top">
 
<nav class="navbar navbar-expand-lg navbar-light bg-white">
    
        <a href="http://localhost:8000/project/admin/admin_login.jsp" class="scrollto"><img src="img/gyan.jpg" alt="" style="max-width:40%"></a>
      
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="admission.jsp">New admission</a>
      </li>
   
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          My Account
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">Profile</a>
          
        </div>
      </li>
      
       <%
          if(session.getAttribute("username") == null){
        	  %>
        	 <li class="nav-item active"><a class="nav-link"  href="http://localhost:8000/project/login.jsp">Login</a></li>
        	  <% 
        	  }else
        	  {
        	  %>
        	<li class="nav-item active"> <a class="nav-link"> <form action="logout" method="post">
           <input type="submit" class="btn btn-outline-primary " value="logout" />
           </form></a></li>
          <%
          }
          %>
      
    </ul>
  </div>
</nav>

</header>
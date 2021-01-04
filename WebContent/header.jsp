<!--==========================
  Header
  ============================-->
  <header id="header" class="fixed-top">
    <div class="container">

      <div class="logo float-left">
        
     <!--  <h1 class="text-light"><a href="#header"><span>Gyan Classes</span></a></h1> -->
        <a href="http://localhost:8000/project/admin/admin_login.jsp" class="scrollto"><img src="img/gyan.jpg" alt="" class="img-fluid logo"></a>
      </div>

      <nav class="main-nav float-right d-none d-lg-block">
        <ul>
          <li class="active"><a href="index.jsp">Home</a></li>
          <li class= "active"><a href = "admission.jsp">New Admission</a></li>
          <li class="drop-down active"><a href="#">My Account</a>
            <ul>
              <li><a href="#">Profile</a></li>
              <li><a href="#">Contact</a></li>
            </ul>
          </li>
          
          <%
          if(session.getAttribute("username") == null){
        	  %>
        	 <li class="active"><a href="http://localhost:8000/project/login.jsp">Login</a></li>
        	  <% 
        	  }else
        	  {
        	  %>
        	<li class="active">  <form action="logout" method="post">
           <input type="submit" class="btn btn-outline-primary " value="logout" />
           </form></li>
          <%
          }
          %>
        
      
      
        </ul>
      </nav><!-- .main-nav -->
   
    </div>
        
  <marquee id="marquee" direction="left" behavior="alternate" bgcolor="yellow">Admissions open</marquee>
  
  </header><!-- #header -->

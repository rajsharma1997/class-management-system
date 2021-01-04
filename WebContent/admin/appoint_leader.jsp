<%@page import="java.io.PrintWriter" %>
<% PrintWriter writer = response.getWriter();%>





<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>Appoint leader</title>
<%@ include file="effects.jsp" %>
 
</head>

<body>
  <!-- container section start -->
  <section id="container" class="">


  <%@ include file="adminheader.jsp" %>

 <%@ include file="sidebar.jsp" %>

    <!--main content start-->
    <section id="main-content">
      <%@include file="admin_panel.jsp" %>
       <section class="panel">
              <div class="panel-body">
                <form class="form" action="http://localhost:8000/project/appoint_leader" method="post">
                  <div class="form-group">
                  <label>Name:</label>
              		<input type="text" class="form-control" placeholder="Candidate Name" name="name" required>
                    <label class="follow-info">Choose Branch:</label>
                      <select class="form-control input-lg m-bot15" name="branch">
                                              <option selected default>.....</option>
                                              <option value="6">Information Technology</option>
                                              <option value="2">Computer Science</option>
                                              <option value="3">Mechnical</option>
                                              <option value="4">Electrical</option>
                                              <option value="5">Extc</option>
                                          </select>
                 <label class="follow-info">Choose Party:</label>
                      <select class="form-control input-lg m-bot15" name="party">
                                              <option selected default>.....</option>
                                              <option value="1">Yuva party</option>
                                              <option value="2">Student union</option>
                                              <option value="3">VP</option>
                                              <option value="4">Student party</option>
                                              
                                          </select>
                 
                  <input type="submit" class=" btn btn-primary btn-md" name="finish" value="Appoint"/>
               
                </form>
                 </div>
              </div>
              
            </section>
            
    </section>
    <!--main content end-->
  </section>
  
<!--ajax-------------------------------------->
  
    <script>
      //knob
      $(function() {
        $(".knob").knob({
          'draw': function() {
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
        $("#owl-slider").owlCarousel({
          navigation: true,
          slideSpeed: 300,
          paginationSpeed: 400,
          singleItem: true

        });
      });

      //custom select box

      $(function() {
        $('select.styled').customSelect();
      });

      /* ---------- Map ---------- */
    
    </script>

</body>

</html>

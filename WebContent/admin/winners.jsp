
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">

  <title>Winners</title>

 <%@ include file="effects.jsp" %>
</head>

<body>
  <!-- container section start -->
  <section id="container" class="">


    <%@ include file="adminheader.jsp" %>

 <%@ include file="sidebar.jsp" %>
    <!--main content start-->
    <section id="main-content">
      <%@ include file="admin_panel.jsp" %>
       <section class="panel">
              <div class="panel-body">
                
                  <div class="form-group">
                    <label class="follow-info">Choose Branch:</label>
                      <select class="form-control input-lg m-bot15" onchange="list_student(this.value)">
                                              <option selected default>.....</option>
                                              <option value="it">Information Technology</option>
                                              <option value="cs">Computer Science</option>
                                              <option value="mech">Mechanical</option>
                                              <option value="ele">Electrical</option>
                                              <option value="extc">Extc</option>
                                          </select>
                  
              
            </section>
            
               <div id="studentlist" class="text-center panel"></div>
            
    </section>
    <!--main content end-->
    
 
    
    
  </section>
  
  
  
  
  <!--Ajax---------------------------------->
  <script type="text/javascript">
  function list_student(branch)
{
  var xmlRequest = new XMLHttpRequest();
  if (branch == "") {
        document.getElementById("studentlist").innerHTML = "";
        
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
      document.getElementById("studentlist").innerHTML=this.responseText;
      
    }
  };
  xmlRequest.open("GET","ajax2.jsp?q="+branch,true);
  xmlRequest.send();
}
}
</script>



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

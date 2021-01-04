
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
  <meta name="author" content="GeeksLabs">
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
  <link rel="shortcut icon" href="img/favicon.png">
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.css"/>


  <title>leader</title>

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
                <form class="form" action="appoint.php" method="get">
                  <div class="form-group">
                    <label class="follow-info">Choose Branch:</label>
                      <select class="form-control input-lg m-bot15" onchange="list_student(this.value)">
                                              <option selected default>.....</option>
                                              <option value="6">Information Technology</option>
                                              <option value="2">Computer Science</option>
                                              <option value="3">Mechnical</option>
                                              <option value="4">Electrical</option>
                                              <option value="5">Extc</option>
                                          </select>
                     <div class="row">
           
          <div class="col-sm-6">
            <section class="panel">
              <header class="panel-heading">
                List of students
              </header>
              <table class="table" id="studentlist">
                </table>
                <input type="hidden" name="hide" id="lead"/>
              </section>
              </div>                    
                    
                  </div>
                  <button type="submit" class="btn btn-primary btn-lg" name="finish" value="Finish"/>
                </form>
              </div>
              
            </section>
            
    </section>
    <!--main content end-->
  </section>
  
  <script src="https://unpkg.com/jquery@3.3.1/dist/jquery.min.js" type="text/javascript"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.js"></script>
  <script type="text/javascript">
  $(document).ready( function () {
	    $('#studentlist').DataTable();
	} );
  </script>
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
  xmlRequest.open("GET","ajax.jsp?q="+branch,true);
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

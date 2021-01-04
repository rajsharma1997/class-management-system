<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Admission Letter </title>
 <%@ include file="effects.jsp" %>
<style type="text/css">
.card1
{
	margin-left:20%;
	margin-right:20%;
	margin-top:5%;
	border-style:solid;
}
</style>
</head>
    <body>
   <div>
  <div class="card1">
    <img class="card-img-top" src="img/gyan1.jpeg" alt="Card image cap">
    <div class="card-body">
      <h2 class="card-title" style="text-align:center">Admission letter</h2>
      <form>
          <div class="form-group">
          <div Style="text-align:right">
          <p>date and time : ${date1}</p>
          </div>
          
          <div class="form-group row">
          <div class="col col-form -label">
    <label >Full Name</label> <label>${name1}</label>
    </div>
  </div>
          <div class="form-group row">  
          <div class="col col-form -label">
  <label >Age</label> <label>${age1}</label>
   </div>  
  <div class="col col-form -label">
    <label >Gender</label> <label>${gender1}</label>
    </div>
</div>

  <div class="form-group row">
  <div class="col">
    <label >Email address</label> <label>${email1}</label>
    </div>
  </div>
          
          <div class="form-group row">
          <div class="col">
    <label >Contact Number</label>  <label>${ph_no1 }</label>
  </div>
  </div>
        </form>
      
    </div>
  
  <div class="row">
  <div class="col">
  <p Style="text-align:center">College copy</p></div>
  </div>
  
 <hr>
 <p Style="text-align:center">Student copy</p>
 
    <img class="card-img-top" src="img/gyan1.jpeg" alt="Card image cap">
    <div class="card-body">
      <h2 class="card-title" style="text-align:center">Admission letter</h2>
      <form>
          <div class="form-group">
          <div Style="text-align:right">
          <p>date and time : ${date1}</p>
          </div> 
          
          <div class="form-group row">
          <div class="col col-form -label">
    <label >Full Name:</label> <label>${name1}</label>
    </div>
  </div>
          <div class="form-group row">  
          <div class="col col-form -label">
  <label >Age:</label> <label>${age1}</label>
   </div>  
  <div class="col col-form -label">
    <label >Gender:</label> <label>${gender1}</label>
    </div>
</div>

  <div class="form-group row">
  <div class="col">
    <label >Email address:</label> <label>${email1}</label>
    </div>
  </div>
          
          <div class="form-group row">
          <div class="col">
    <label >Contact Number:</label>  <label>${ph_no1 }</label>
  </div>
  </div>
        </form>
      
    </div>
  </div>
</div>


  <div style="text-align:center">
  <button onclick="window.print()" Style="align:center">Print</button> | <a href="http://localhost:8000/project/index.jsp">Home</a>
</div>

</body>
</html>
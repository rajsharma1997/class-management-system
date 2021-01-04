<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Admission</title>
<%@ include file="effects.jsp"%>
</head>

<div>
<%@ include file="header1.jsp" %>
</div>
<section  id="intro1" class="clearfix">
<div class="container">
<form action="http://localhost:8000/project/admission" method="post">
  <div class="form-group row">
    <label for="inputText3" class="col-sm-2 col-form-label">Name</label>
    <div class="col-sm-10">
      <input type="Text" class="form-control" name="name" id="inputText3" placeholder="Full name">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputNumber3" class="col-sm-2 col-form-label">age</label>
    <div class="col-sm-10">
      <input type="Number" class="form-control" id="inputNumber3" placeholder="Age"  name="age">
    </div>
  </div>
 <fieldset class="form-group">
    <div class="row">
      <legend class="col-form-label col-sm-2 pt-0">Gender</legend>
      <div class="col-sm-10">
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios1" value="male" checked>
          <label class="form-check-label" for="gridRadios1">
            Male
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios2" value="female">
          <label class="form-check-label" for="gridRadios2">
            Female
          </label>
        </div>
        <div class="form-check disabled">
          <input class="form-check-input" type="radio" name="gender" id="gridRadios3" value="others" >
          <label class="form-check-label" for="gridRadios3">
            Others
          </label>
        </div>
      </div>
    </div>
  </fieldset>
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-2 col-form-label">Email id</label>
    <div class="col-sm-10">
      <input type="Email" class="form-control" name="email" id="inputEmail3" placeholder="Email id" onChange="validateemail()">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputNumber3" class="col-sm-2 col-form-label">Contact number</label>
    <div class="col-sm-10">
      <input type="Tel" class="form-control" name="ph_no" id="inputnumber3" placeholder="Contact number" onChange="validatephone()">
    </div>
  </div>
 
  
 
  <div class="form-group row">
    <div class="col-sm-10">
      <button type="submit" class="btn btn-primary">Submit</button>
    </div>
  </div>
</form>
</div>
</section>
</body>

	<!--form Validation
============================================================================================-->
<script type="text/javascript">
	

	function validatephone()
	{
		var fld1 = document.getElementById('phone_fld');
    var error = "";
    var stripped = fld1.value.replace(/[\(\)\.\-\ ]/g, '');
 
   if (fld1.value == "") {
        error = "You didn't enter a phone number.\n";
        fld1.style.background = 'Yellow';
        alert(error);
		return false;
 
    } else if (isNaN(parseInt(stripped))) {
        error = "The phone number contains illegal characters. Don't include dash (-)\n";
        fld1.style.background = 'Yellow';
        alert(error);
		return false;
    } else if (!(stripped.length == 10)) {
        error = "The phone number is the wrong length.\n";
        fld1.style.background = 'Yellow';
        alert(error);
		return false;
    }
    return true;
	}

	function validateemail()
	{
		var fld3 = document.getElementById('email_fld');
		var error = "";
		if (fld3.value == "") {
        error = "You didn't enter a phone number.\n";
        fld1.style.background = 'Yellow';
        alert(error);
		return false;
 
    }else if(fld3.value.indexOf("@", 0) < 0)
    {
    	error = "Enter valid email id. It should be inform of abc@example.com.\n";
        fld3.style.background = 'Yellow';
        alert(error);
		return false;
    }else if(fld3.value.indexOf(".", 0) < 0)
    {
    	error = "Enter valid email id. It should be inform of abc@example.com.\n";
        fld3.style.background = 'Yellow';
        alert(error);
		return false;
    }
    return true;
}

	
</script>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Register Form </title>
	<%@ include file="effects.jsp" %>
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-50 p-r-50 p-t-77 p-b-30">
				<form class="login100-form validate-form" action="RegisterForm" method="POST" onsubmit="return validatepass()" >
					<span class="login100-form-title p-b-55" >
						Register Now
					</span>
			<p Style="background-color:yellow"><c:if test="${not empty alreadymsg}">
  						 <c:out value="${alreadymsg}"/>
							</c:if>
					</p>
					<div class="wrap-input100 validate-input m-b-16" >
						<input class="input100" type="text" name="fname" placeholder="First Name" required="yes">
					</div>

					<div class="wrap-input100 validate-input m-b-16" >
						<input class="input100" type="text" name="lname" placeholder="Second name" required="yes" >
					</div>
					
					<div class="wrap-input100 validate-input m-b-16" >
						<input class="input100" type="text" name="user_name" placeholder="Username" id="username-fld" onchange="validateusername()">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-envelope"></span>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email" placeholder="Email" id="email_fld" onchange="validateemail()">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-envelope"></span>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Phone number is required">
						<input class="input100" type="number" name="user_ph" placeholder="Phone number" id="phone_fld" onchange="validatephone()">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-lock"></span>
						</span>
					</div>

					<div class="wrap-input100 input100 validate-input m-b-16" >
						<label >Select Branch</label>
						<select class="custom-select custom-select-xlg mb-3" name="branch" required>
  						<option selected  >Open this select menu</option>
  						<option value="it">Information Technology</option>
  						<option value="comps">Computer Science</option>
 						<option value="mech">Mechanical</option>
 						<option value="ele">Electrical</option>
 						<option value="extc">EXTC</option>
						</select>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-lock"></span>
						</span>
					</div>

					<div class="wrap-input100 input100 validate-input m-b-16" >
						<label>Select year</label>
						<select class="custom-select custom-select-xlg mb-3" selected name="year" required>
 						 <option >Open this select menu</option>
  						<option value="1">First year</option>
  						<option value="2">Second year</option>
  						<option value="3">Third year</option>
  						<option value="4">Second year</option>
						</select>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-lock"></span>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "enrollment number is required">
						<input class="input100" type="number" name="enroll_no" placeholder="Enrollment number" required="yes">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-lock"></span>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
						<input class="input100" type="password" name="user_pass" placeholder="Password" id="pass" >
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-lock"></span>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
						<input class="input100" type="password" name="user_repass" placeholder="Confirm Password" id="repass" >
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-lock"></span>
						</span>
					</div>

				

					<div class="contact100-form-checkbox m-l-4">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
						<label class="label-checkbox100" for="ckb1">
							Remember me
						</label>
					</div>
					
					<div class="container-login100-form-btn p-t-25">
						<button class="login100-form-btn" name="signup">
							Register
						</button>
					</div>

					<p>Already have an account. <a href="http://localhost:8000/project/login.jsp">Login</a></p>
				
				</form>
			</div>
		</div>
	</div>
	
	<!--form Validation
============================================================================================-->
<script type="text/javascript">
	function validateusername()
	{
	var fld = document.getElementById('username-fld');
    var error = "";
    var illegalChars = /\W/; // allow letters, numbers, and underscores
 
    if (fld.value == "") {
        fld.style.background = 'Yellow';
        error = "You didn't enter a username.\n";
        alert(error);
        return false;
 
    } else if ((fld.value.length < 5) || (fld.value.length > 15)) {
        fld.style.background = 'Yellow';
        error = "The username should be within 5-15 characters.\n";
		alert(error);
		return false;
 
    } else if (illegalChars.test(fld.value)) {
        fld.style.background = 'Yellow';
        error = "The username contains illegal characters.\n";
		alert(error);
		return false;
 
    } else {
        fld.style.background = 'White';
    }
    return true;

}

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

	function validatepass()
	{
		var pass = document.getElementById('pass');
		var repass = document.getElementById('repass');
		var error = "";
		if(pass.value == "" || repass.value == "")
		{
			error = "password cannot be empty\n";
        	pass.style.background = 'Yellow';
        	alert(error);
			return false;
		}else if(pass.value != repass.value)
		{
			error = "password and confirm password doesn't match.\n";
        	pass.style.background = 'Yellow';
        	repass.style.background = 'yellow';
        	alert(error);
			return false;
		}else if(pass.value.length<6 || repass.value.length<6)
		{
			error = "password and confirm password must be greater than 6 characters.\n";
        	pass.style.background = 'Yellow';
        	repass.style.background = 'yellow';
        	alert(error);
			return false;
		}else
		{
			return true;
		}

	}
</script>
<!-- 	      f o r m              v a l i d a t i o n
============================================================================================-->

</body>
</html>
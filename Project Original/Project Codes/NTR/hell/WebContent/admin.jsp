<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>The Login-Animated Website Template | Home :: w3layouts</title>
		<meta charset="utf-8">
		<link href="css1/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!--webfonts-->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700' rel='stylesheet' type='text/css'>
		<!--//webfonts-->
</head>
<body>
	
				 
				<div class="login-form">
					<div class="head">
						<img src="images/mem2.jpg" alt=""/>
						
					</div>
				<form action="loginprocess.jsp" method="post">
					<li>
						<input type="text" class="text" name="adminid" value="ID" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'USERNAME';}" ><a href="#" class=" icon user"></a>
					</li>
					<li>
						<input type="password" name="adminpass" value="********"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"><a href="#" class=" icon lock"></a>
					</li>
					<div class="p-container">
								<label class="checkbox"><input type="checkbox" name="checkbox" checked><i></i>Remember Me</label><br><br><br>

							<br><input type="submit" onclick="myFunction()" value="SIGN IN" >
									
							
							<div class="clear"> </div>
					</div>
				</form>
			</div>
	
		 		
</body>
</html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Welcome!</title>
    
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"></head>
<body>
<div class="container">
	<div class="row">
		<div class="jumbotron" style="margin-top: 50px">
			<h3>Simple Spring Security App</h3>
			<p>This is example of simple application secured by Spring Security. <br/>
			Application allow you to sign up, sign in and save data in embedded h2 database.
			</p>
		</div>
		<div style="margin-top: 20px;" class="col-lg-6">
		<div class="alert alert-info">
			Welcome, <security:authentication property="principal.username"/>! 
		  </div> 
		  <div class="mt-2">
		  	<a href="${pageContext.request.contextPath}/logout" class="btn btn-secondary">Logout</a>
		  </div>
		</div>
	</div>
</div>
<!-- /container -->
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</body>
</html>
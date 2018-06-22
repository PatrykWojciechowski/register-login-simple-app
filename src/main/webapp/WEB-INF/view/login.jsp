<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Log in to your account</title>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

</head>

<body>
<div class="container">
	<div class="row">
	<div style="margin-top: 50px;" class="col-lg-5 col-md-6 col-sm-8 col-xs-10" >
	<div class="card">
  		<div class="card-header">Sign In</div>
  		<div class="card-body">
  		<form:form method="POST" action="${contextPath}/login" >
        <c:if test="${param.error != null}">
	        <div class="alert alert-danger col-xs-offset-1 col-xs-10">
				Invalid username and password.
			</div>
		</c:if>
		<c:if test="${param.logout != null}">										            
			<div class="alert alert-success col-xs-offset-1 col-xs-10">
				You have been logged out.
			</div>								    
		</c:if>
        	<!-- User name -->
			<div style="margin-bottom: 25px" class="form-group">
				<input type="text" name="username" placeholder="username" class="form-control">
			</div>
			<!-- Password -->
			<div style="margin-bottom: 25px" class="form-group">
				<input type="password" name="password" placeholder="password" class="form-control">
			</div>
			<!-- Login/Submit Button -->					
			<div class="mt-2">
				<button type="submit" class="btn btn-primary">Log In</button>
			</div>
    </form:form>
	    <div class="mt-2">
			<a href="${pageContext.request.contextPath}/registration" class="btn btn-secondary">Sign Up</a>
		</div>
  	</div> <!-- /.card-body -->
	</div> <!-- /.card -->
   	</div> <!-- /.col --> 
   	</div> <!-- /.row --> 
</div>
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</body>
</html>
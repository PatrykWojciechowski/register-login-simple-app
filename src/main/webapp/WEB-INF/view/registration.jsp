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

    <title>Create an account</title>
    
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

</head>

<body>
<div class="container">
	<div class="row">
	<div style="margin-top: 50px;" class="col-lg-5 col-md-6 col-sm-8 col-xs-10" >
	<div class="card">
  		<div class="card-header">Sign Up</div>
  		<div class="card-body">
    	<form:form method="POST" action="${pageContext.request.contextPath}/registration" modelAttribute="userForm" >
        <div style="margin-bottom: 25px" class="form-group" >
	        <form:input path="username" placeholder="username" class="form-control" />
	        <form:errors path="username" class="alert alert-danger my-2" element="div"/>
		</div>

		<div style="margin-bottom: 25px" class="form-group" >
			<form:password path="password" placeholder="password" class="form-control" />
			<form:errors path="password"  class="alert alert-danger my-2" element="div"/>
		</div>

     	<div style="margin-bottom: 25px" class="form-group" >
			<form:password path="passwordConfirm" placeholder="Confirm your password" class="form-control" />
			<form:errors path="passwordConfirm"  class="alert alert-danger my-2" element="div"/>
		</div>
		
		<div class="mt-2">
        	<button class="btn btn-primary" type="submit">Submit</button>
        </div>
    </form:form>
	    <div class="mt-2">
	        <a href="${pageContext.request.contextPath}/login" class="btn btn-secondary">Back to Log In</a>
	    </div>
    </div> <!-- /.card-body -->
	</div> <!-- /.card -->
   	</div> <!-- /.col --> 
   	</div> <!-- /.row --> 

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
<%@include file="Header.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<title>Welcome</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">Cart</a>
			</div>
			<ul class="nav navbar-nav">
					<li class="active"><a href="Home">AdminHome</a></li>
						<li><a href="Category">Category</a></li>
						<li><a href="Supplier">Supplier</a></li>
						<li><a href="Product">Product</a></li>
			</ul>
			
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${!sessionScope.loggedIn}">
					<li><a href="Register"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="<c:url value="/Login"/>"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</c:if>
				<c:if test="${sessionScope.loggedIn}">

					<li><a href="#"><span class="glyphicon glyphicon-user"></span>${username}</a></li>
					<li><a href="<c:url value="/perform_logout"/>"><span
							class="glyphicon glyphicon-log-in"></span> Logout</a></li>
				</c:if>
			</ul>
		</div>
		</div>
	</nav>
	<%@include file="Footer.jsp"%>
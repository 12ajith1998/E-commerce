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

</head>
<body>

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">

		<div class="container-fluid">
			<div class="navbar-header">

				<a class="navbar-brand" href="#">Ajith</a>

			</div>

			<ul class="nav navbar-nav">
				<c:if test="${!sessionScope.loggedIn}">
					<li class="active"><a href="index.jsp">Home</a></li>
					<li><a href="AboutUs" class="glyphicon glyphicon-user"> About Us</a></li>
				    <li><a href="ContactUs" class="glyphicon glyphicon-earphone"> Contact Us</a></li>
				</c:if>
				<c:if test="${sessionScope.loggedIn}">
				<c:if test="${sessionScope.role=='ROLE_ADMIN'}">
					<li class="active"><a href="Home">AdminHome</a></li>
				</c:if>
				</c:if>
				<c:if test="${sessionScope.loggedIn}">
				<c:if test="${sessionScope.role=='ROLE_USER'}">
					<li class="active"><a href="HomeUs">UserHome</a></li>
				</c:if>
				</c:if>

			</ul>

			<ul class="nav navbar-nav navbar-right">
				<c:if test="${!sessionScope.loggedIn}">
					<li><a href="Register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="<c:url value="/Login"/>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
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



</body>
</html>

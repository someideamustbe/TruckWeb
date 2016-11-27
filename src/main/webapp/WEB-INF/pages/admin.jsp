<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>

<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.1.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Trucking Company</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="dropdown active"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Equipment <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Cars </a></li>
							<li><a href="#">Pieces</a></li>
							<li role="separator" class="divider"></li>
							
							<li><a href="#">Deals</a></li>
							
						</ul></li>
					<li class="dropdown active"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Partners <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">New Partner</a></li>
							<li><a href="#">New Deal</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="#">Partners</a></li>
							<li><a href="#">Deals</a></li>
							
						</ul></li>
					<li class="dropdown active"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Employees<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">New Employee</a></li>
						</ul></li>
						<li class="dropdown active"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Accounting <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">Income</a></li>
							<li><a href="#">Expenses</a></li>
							<li role="separator" class="divider"></li>
							
						</ul></li>
				
				</ul>
				<form class="navbar-form navbar-left">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Set Text">
					</div>
					<button type="submit" class="btn btn-default">Search</button>
				</form>
				<c:if test="${pageContext.request.userPrincipal.name != null}">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">${pageContext.request.userPrincipal.name} <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="javascript:formSubmit()">Logout</a></li>
						</ul></li>
				</ul>
				</c:if>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<c:url value="/j_spring_security_logout" var="logoutUrl" />
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
	</script>
</body>
</html>
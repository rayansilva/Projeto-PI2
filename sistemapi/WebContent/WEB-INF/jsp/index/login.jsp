<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<head>
		<title>P&aacute;gina de Login</title>

		<link rel="stylesheet" href="<c:url value="/bootstrap/css/bootstrap.min.css" />" />
		<link rel="stylesheet" href="<c:url value="/bootstrap/css/bootstrap-theme.min.css" />" />
		
		<script type="text/javascript" src="<c:url value="/bootstrap/js/jquery-1.11.1.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/bootstrap/js/bootstrap.min.js" />"></script>
		
	</head>
	<body>

	<div class="container-fluid" >
	
	<div class="row">
	 <nav class="navbar navbar-inverse navbar-fixed-top">
	        <div class="navbar-header">
	          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	            <span class="sr-only">Sistema PI</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <a class="navbar-brand" href="menu">Sistema PI</a>
	        </div>
	        <div id="navbar" class="navbar-collapse collapse">
	          <ul class="nav navbar-nav">
	            <li class="active"><a href="menu">Home</a></li>
	            <li><a href="#about">About</a></li>
	            <li><a href="#contact">Contact</a></li>
	            <li class="dropdown">
	              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
	              <ul class="dropdown-menu">
	                <li><a href="#">Action</a></li>
	                <li><a href="#">Another action</a></li>
	                <li><a href="#">Something else here</a></li>
	                <li role="separator" class="divider"></li>
	                <li class="dropdown-header">Nav header</li>
	                <li><a href="#">Separated link</a></li>
	                <li><a href="#">One more separated link</a></li>
	              </ul>
	            </li>
	          </ul>
	        </div>
		</nav>
	</div>
      <div class="row" >
         <div class="col-md-4 col-md-offset-4 ">
		    <form class="form-signin" action="<c:url value="/validaLogin" />" method="post">
		      	<h2 class="form-signin-heading">Login</h2>
		        <label for="inputEmail" class="sr-only">Email address</label>
		        <input type="text" name="user.login" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
		        <label for="inputPassword" class="sr-only">Password</label>
		        <input type="password" name="user.senha" id="inputPassword" class="form-control" placeholder="Password" required>
		        <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
			</form>
		</div>
    </div>
  </div>
	</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<head>
		<title>P&aacute;gina de Login</title>

		<link rel="stylesheet" href="<c:url value="/bootstrap/css/bootstrap.min.css" />" />
		<link rel="stylesheet" href="<c:url value="/bootstrap/css/bootstrap-theme.min.css" />" />
		<link rel="stylesheet" href="<c:url value="/bootstrap/css/navbar.css" />" />
		
		<script type="text/javascript" src="<c:url value="/bootstrap/js/jquery-1.11.1.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/bootstrap/js/bootstrap.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/bootstrap/js/ie-emulation-modes-warning.js" />"></script>
		
	</head>
	<body>

	<div class="container">
		<div class="row col-md-12">	
		    <nav class="navbar navbar-inverse navbar-fixed-top">
		      <div class="container-fluid">
		        <div class="navbar-header">
		          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
		            <span class="sr-only">Toggle navigation</span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		          </button>
		          <a class="navbar-brand" href="#">Project name</a>
		        </div>
		        <div id="navbar" class="navbar-collapse collapse">
		          <ul class="nav navbar-nav navbar-right">
		            <li><a href="#">Dashboard</a></li>
		            <li><a href="#">Settings</a></li>
		            <li><a href="#">Profile</a></li>
		            <li><a href="#">Help</a></li>
		          </ul>
		          <form class="navbar-form navbar-right">
		            <input type="text" class="form-control" placeholder="Search...">
		          </form>
		        </div>
		      </div>
		    </nav>
		</div>
 	</div>
 	<br />
 	<div class="container" >
     	<div class="row col-md-12">

         	<div class="col-md-4 col-md-offset-4 ">
		    	<form class="form-signin" action="<c:url value="/validaLogin" />" method="post">
		      		<h2 class="form-signin-heading">Login</h2>
		        	<label for="inputEmail" class="sr-only">Email address</label>
		        	<input type="text" name="user.login" id="inputEmail" class="form-control" placeholder="Email address" required autofocus><br />
		        	<label for="inputPassword" class="sr-only">Password</label>
		        	<input type="password" name="user.senha" id="inputPassword" class="form-control" placeholder="Password" required><br />
		        	<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
		        	<a class="pull-right" href="#cadastro">registre-se</a><br/>
				</form>
			</div>
		</div>
	</div>
	</body>
</html>
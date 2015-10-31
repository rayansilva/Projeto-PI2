<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<title>Menu</title>
		<link rel="stylesheet" href="<c:url value="/bootstrap/css/bootstrap.min.css" />" />
		<link rel="stylesheet" href="<c:url value="/bootstrap/css/bootstrap-theme.min.css" />" />
		
		<script type="text/javascript" src="<c:url value="/bootstrap/js/jquery-1.11.1.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/bootstrap/js/bootstrap.min.js" />"></script>
	</head>

	<body>
	<!-- Fixed navbar -->
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
		          <a class="navbar-brand" href="#">Sistema PI2</a>
		        </div>
		        <div id="navbar" class="navbar-collapse collapse">
		          <ul class="nav navbar-nav navbar-right">
		            <li><a href="/login">Home</a></li>
		            <li><a href="#">Pesquisa</a></li>
		            <li><a href="#">Sobre</a></li>
		            <li><a href="#">Ajuda</a></li>
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

		<h1>Menu</h1>
		<hr>
		<br>
		<ul class="nav navbar-nav">
			<li>
				<a href="cliente/acessar">
					Cadastro de Cliente
				</a>
			</li>
			<br>
			<li>
				<a href="produto/acessar">
					Cadastro de Produto
				</a>
			</li>
			<br>
			<li>
				<a href="#">Realizar Venda</a>
			</li>
			<br><br><br>
			<li>
				<a href="usuario/acessar">
					Cadastrar Usu&aacute;rio
				</a>
			</li>
		</ul>
		
		
		
	</body>
</html>
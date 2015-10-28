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
<nav class="navbar navbar-inverse navbar-fixed-top">
     <div class="container-fluid">
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
           <li><a href="cliente/cadastrar">Cadastrar</a></li>
           <li><a href="cliente/consultar">Pesquisar</a></li>
           <li><a href="about">About</a></li>
           <li><a href="contact">Contact</a></li>
           <li class="dropdown">
             <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Cliente <span class="caret"></span></a>
             <ul class="dropdown-menu">
              
               <li><a href="#">Something else here</a></li>
               <li role="separator" class="divider"></li>
               <li class="dropdown-header">Nav header</li>
               <li><a href="#">Separated link</a></li>
               <li><a href="#">One more separated link</a></li>
             </ul>
           </li>
         </ul>
       </div><!--/.nav-collapse -->
      </div>
</nav>
		<h1>Menu</h1>
		<hr>
		<br>
		<ul>
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
				Realizar Venda
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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
		<link rel="stylesheet" href="<c:url value="/bootstrap/css/bootstrap.min.css" />" />
		<link rel="stylesheet" href="<c:url value="/bootstrap/css/bootstrap-theme.min.css" />" />
		<link rel="stylesheet" href="<c:url value="/bootstrap/css/navbar.css" />" />
		
		<script type="text/javascript" src="<c:url value="/bootstrap/js/jquery-1.11.1.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/bootstrap/js/bootstrap.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/bootstrap/js/ie-emulation-modes-warning.js" />"></script>
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
		<h1>Dados Usu&aacute;rio</h1>
		<br>
		<center><a href="../menu">Menu</a></center>
		<div style="background-color: red; color: white">
			<c:forEach var="error" items="${errors}">
			    ${error.category} - ${error.message}<br />
			</c:forEach>
		</div>
		<hr>
		<br>
		
		<c:choose>
			<c:when test="${not empty usuarioUnico}">
				<c:forEach var="usuarioUnico" items="${usuarioUnico}">
					<form action='alterar'>
						<input type="text" name="usuario.login" value="${usuarioUnico.login}" placeholder="Login">
						<br>
						<input type="text" name="usuario.senha" value="${usuarioUnico.senha}" placeholder="Senha">
						<input type="hidden" name="usuario.id" value="${usuarioUnico.id}">
						<br>
						<input type="submit" value="Alterar">
					</form>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<form action='usuario/salvar'>
					<input type="text" name="usuario.login" placeholder="Login">
					<br>
					<input type="password" name="usuario.senha" placeholder="Senha">
					<input type="hidden" name="usuario.id" >
					<br>
					<input type="submit" value="Inserir">
				</form>
			</c:otherwise>
		</c:choose>

		<br>
		<table border="1">
			<tr>
				
				<td>Login</td>
				<td>Senha</td>
				<td>Alterar</td>
				<td>Excluir</td>
			</tr>
		<c:forEach var="usuario" items="${usuario}">
			<tr>
				<td>	
					${usuario.login}
				</td>
				<td>
					${usuario.senha}
				</td>
				<td>
					<form action='buscaDados'>
						<input type="hidden" name="usuario.id" value="${usuario.id}">
						<input type="hidden" name="usuario.login" value="${usuario.login}">
						<input type="hidden" name="usuario.senha" value="${usuario.senha}">
						<input type="submit" value="Alterar">
					</form>
				</td>
				<td>
					<form action='deletar'>
						<input type="hidden" name="usuario.id" value="${usuario.id}">
						<input type="submit" value="Apagar">
					</form>
				</td>
			</tr>
		</c:forEach>
		</table>
	    <br>
		
	</body>
</html>
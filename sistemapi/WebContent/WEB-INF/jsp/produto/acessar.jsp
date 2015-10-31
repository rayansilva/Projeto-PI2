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
		<h1>Dados Produto</h1>
		<br>
		<center><a href="../menu">Menu</a></center>
		<div style="background-color: red; color: white">
			<c:forEach var="error" items="${errors}">
			    ${error.category} - ${error.message}<br />
			</c:forEach>
		</div>
		<form action='pesquisar'>
		
			<input type="text" name="pesquisa" placeholder="Pesquisa">
			
			<input type="submit" value="Pesquisar">
		
		</form>
		<hr>
		<br>

		<c:choose>
			<c:when test="${not empty produtoUnico}">
				<c:forEach var="produtoUnico" items="${produtoUnico}">
					<form action='alterar'>
						<input type="hidden" name="produto.id" value="${produtoUnico.id}">
						<input type="text" name="produto.nome" value="${produtoUnico.nome}" placeholder="Nome">
						<br>
						<input type="number" name="produto.preco" value="${produtoUnico.preco}" placeholder="Pre&ccedil;o">
						<br>
						<input type="text" name="produto.detalhe" value="${produtoUnico.detalhe}" placeholder="Detalhe">			
						<br>
						<input type="text" name="produto.cor" value="${produtoUnico.cor}" placeholder="Cor">
						<br>
						<input type="text" name="produto.tamanho" value="${produtoUnico.tamanho}" placeholder="Tamanho">
						<br>
						<input type="text" name="produto.situacaoProduto" value="${produtoUnico.situacaoProduto}" placeholder="Situa&ccedil;&atilde;o Produto">
						<br>
						<input type="submit" value="Alterar">
					</form>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<form method="post" action='salvar'>
					<input type="text" name="produto.nome" placeholder="Nome">
					<br>
					<input type="number" name="produto.preco" placeholder="Pre&ccedil;o">
					<br>
					<input type="text" name="produto.detalhe" placeholder="Detalhe">			
					<br>
					<input type="text" name="produto.cor" placeholder="Cor">
					<br>
					<input type="text" name="produto.tamanho" placeholder="Tamanho">
					<br>
					<input type="text" name="produto.situacaoProduto" placeholder="Situa&ccedil;&atilde;o Produto">
					<br>
					<input type="submit" value="Inserir">
				</form>
			</c:otherwise>
		</c:choose>
		
		
		
		
		<br>
		<br>
		<table border="1">
			<tr>
				<td>Nome</td>
				<td>Pre&ccedil;o</td>
				<td>Detalhe</td>
				<td>Cor</td>
				<td>Tamanho</td>
				<td>Situa&ccedil;&atilde;o Produto</td>
				<td>Alterar</td>
				<td>Excluir</td>
			</tr>
		<c:forEach var="produto" items="${produtos}">
			<tr>
				<td>	
					${produto.nome}
				</td>
				<td>
					${produto.preco}
				</td>
				<td>
					${produto.detalhe}
				</td>
				<td>
					${produto.cor}
				</td>
				<td>
					${produto.tamanho}
				</td>
				<td>
					${produto.situacaoProduto}
				</td>
				<td>
					<form action='buscaDados'>
						<input type="hidden" name="produto.id" value="${produto.id}">
						<input type="hidden" name="produto.nome" value="${produto.nome}">
						<input type="hidden" name="produto.preco" value="${produto.preco}">
						<input type="hidden" name="produto.detalhe" value="${produto.detalhe}">
						<input type="hidden" name="produto.cor" value="${produto.cor}">
						<input type="hidden" name="produto.tamanho" value="${produto.tamanho}">
						<input type="hidden" name="produto.situacaoProduto" value="${produto.situacaoProduto}">
						<input type="submit" value="Alterar">
					</form>
				</td>
				<td>
					<form action='deletar'>
						<input type="hidden" name="produto.id" value="${produto.id}">
						<input type="submit" value="Apagar">
					</form>
				</td>
			</tr>
		</c:forEach>
		</table>
	    <br>
	</body>
</html>
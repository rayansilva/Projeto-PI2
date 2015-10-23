<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<body>
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
				<form action='salvar'>
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
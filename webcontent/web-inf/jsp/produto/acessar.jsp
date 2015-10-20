<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<body>
		<h1>Dados Produto</h1>
		<br>
		<center><a href="http://localhost:8080/vraptor-blank-project/menu.jsp">Menu</a></center>
		<div style="background-color: red; color: white">
			<c:forEach var="error" items="${errors}">
			    ${error.category} - ${error.message}<br />
			</c:forEach>
		</div>
		<form action='http://localhost:8080/vraptor-blank-project/produto/pesquisar'>
		
			<input type="text" name="pesquisa" placeholder="Pesquisa">
			
			<input type="submit" value="Pesquisar">
		
		</form>
		<hr>
		<br>

		
		<form action='http://localhost:8080/vraptor-blank-project/produto/salvar'>
		
			<input type="text" name="produto.nome" placeholder="Nome">
			<br>
			<input type="number" name="produto.preco" placeholder="Preço">
			<br>
			<input type="text" name="produto.detalhe" placeholder="Detalhe">			
			<br>
			<input type="text" name="produto.cor" placeholder="Cor">
			<br>
			<input type="text" name="produto.tamanho" placeholder="Tamanho">
			<br>
			<input type="text" name="produto.situacaoProduto" placeholder="Situação Produto">
			<br>
			<input type="submit" value="Salvar">
		</form>
		<br>
		<br>
		<table border="1">
			<tr>
				<td>Nome</td>
				<td>Preço</td>
				<td>Detalhe</td>
				<td>Cor</td>
				<td>Tamanho</td>
				<td>Situação Produto</td>
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
					<a href="#">
						<img src="../imagens/b_edit.png">
					</a>
				</td>
				<td>
					<form action='http://localhost:8080/vraptor-blank-project/produto/deletar'>
						<input type="hidden" name="produto.idProduto" value="${produto.idProduto}">
						<input type="submit" value="Apagar">
					</form>
				</td>
			</tr>
		</c:forEach>
		</table>
	    <br>
	</body>
</html>
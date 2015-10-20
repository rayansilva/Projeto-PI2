<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<body>
		<h1>Dados Cliente</h1>
		<br>
		<center><a href="http://localhost:8080/vraptor-blank-project/menu.jsp">Menu</a></center>
		<div style="background-color: red; color: white">
			<c:forEach var="error" items="${errors}">
			    ${error.category} - ${error.message}<br />
			</c:forEach>
		</div>
		<form action='http://localhost:8080/vraptor-blank-project/cliente/pesquisar'>
		
			<input type="text" name="pesquisa" placeholder="Pesquisa">
			
			<input type="submit" value="Pesquisar">
		
		</form>
		<hr>
		<br>

		
		<form action='http://localhost:8080/vraptor-blank-project/cliente/salvar'>
		
			<input type="text" name="cliente.nome" placeholder="Nome">
			<br>
			<input type="text" name="cliente.cpf_cnpj" placeholder="CPF/CNPJ">
			<br>
			<input type="text" name="cliente.telefoneFixo" placeholder="Telefone Fixo">			
			<br>
			<input type="text" name="cliente.telefoneCelular" placeholder="Telefone Celular">
			<br>
			<input type="text" name="cliente.email" placeholder="Email">
			<br>
			<input type="text" name="cliente.endereco" placeholder="Endereço">
			<br>
			<input type="text" name="cliente.cep" placeholder="CEP">
			<br>
			<input type="text" name="cliente.cidade" placeholder="Cidade">
			<br>
			<input type="text" name="cliente.uf" placeholder="UF">
			<br>
			<input type="text" name="cliente.rua" placeholder="Rua">
			<br>
			<input type="text" name="cliente.complemento" placeholder="Complemento">
			<br>
			<input type="text" name="cliente.bairro" placeholder="Bairro">
			<br>
			<input type="number" name="cliente.tipoCliente" placeholder="Tipo Cliente">
			<br>
			<input type="submit" value="Salvar">
		
		</form>
		
		<br>
		
		
		
		<br>
		
		
		<table border="1">
			<tr>
				
				<td>Nome</td>
				<td>CPF/CNPJ</td>
				<td>Telefone Fixo</td>
				<td>Telefone Celular</td>
				<td>E-mail</td>
				<td>Endereço</td>
				<td>CEP</td>
				<td>Cidade</td>
				<td>UF</td>
				<td>Rua</td>
				<td>Complemento</td>
				<td>Bairro</td>
				<td>Tipo Cliente</td>
				<td>Alterar</td>
				<td>Excluir</td>
			</tr>
		<c:forEach var="cliente" items="${cliente}">
			<tr>
				<td>	
					${cliente.nome}
				</td>
				<td>
					${cliente.cpf_cnpj}
				</td>
				<td>
					${cliente.telefoneFixo}
				</td>
				<td>
					${cliente.telefoneCelular}
				</td>
				<td>
					${cliente.email}
				</td>
				<td>
					${cliente.endereco}
				</td>
				<td>
					${cliente.cep}
				</td>
				<td>
					${cliente.cidade}
				</td>
				<td>
					${cliente.uf}
				</td>
				<td>
					${cliente.rua}
				</td>
				<td>
					${cliente.complemento}
				</td>
				<td>
					${cliente.bairro}
				</td>
				<td>
					${cliente.tipoCliente}
				</td>
				<td>
					<a href="#">
						<img src="../imagens/b_edit.png">
					</a>
				</td>
				<td>
					<form action='http://localhost:8080/vraptor-blank-project/cliente/deletar'>
						<input type="hidden" name="cliente.idCliente" value="${cliente.idCliente}">
						<input type="submit" value="Apagar">
					</form>
				</td>
			</tr>
		</c:forEach>
		</table>
	    <br>
		
	</body>
</html>
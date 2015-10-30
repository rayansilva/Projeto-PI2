<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<body>
		<h1>Dados Cliente</h1>
		<br>
		<center><a href="/sistemapi/menu">Menu</a></center>
		<div style="background-color: red; color: white">
			<c:forEach var="error" items="${errors}">
			    ${error.category} - ${error.message}<br/>
			</c:forEach>
		</div>
		<form action='pesquisar'>
		
			<input type="text" name="pesquisa" placeholder="Pesquisa">
			
			<input type="submit" value="Pesquisar">
		
		</form>
		<hr>
		<br>

		
		<c:choose>
			<c:when test="${not empty clienteUnico}">
				<c:forEach var="clienteUnico" items="${clienteUnico}">
					<form action='alterar'>
						<input type="hidden" name="cliente.id" value="${clienteUnico.id}" />
						<br/>
						<input type="text" name="cliente.nome" value="${clienteUnico.nome}" placeholder="Nome"/>
						<br/>
						<input type="number" name="cliente.cpf_cnpj"  value="${clienteUnico.cpf_cnpj}" placeholder="CPF/CNPJ"/>
						<br/>
						<input type="text" name="cliente.telefoneFixo"  value="${clienteUnico.telefoneFixo}" placeholder="TelefoneFixo"/>			
						<br/>
						<input type="text" name="cliente.telefoneCelular"  value="${clienteUnico.telefoneCelular}" placeholder="Telefone Celular"/>
						<br/>
						<input type="text" name="cliente.email"  value="${clienteUnico.email}" placeholder="Email"/>
						<br/>
						<input type="text" name="cliente.endereco"  value="${clienteUnico.endereco}" placeholder="Endereco"/>
						<br/>
						<input type="text" name="cliente.cep"  value="${clienteUnico.cep}" placeholder="CEP"/>
						<br/>
						<input type="text" name="cliente.cidade"  value="${clienteUnico.cidade}" placeholder="Cidade"/>
						<br/>
						<input type="text" name="cliente.uf"  value="${clienteUnico.uf}" placeholder="UF"/>
						<br/>
						<input type="text" name="cliente.rua"  value="${clienteUnico.rua}" placeholder="Rua"/>
						<br/>
						<input type="text" name="cliente.complemento" value="${clienteUnico.complemento}" placeholder="Complemento"/>
						<br/>
						<input type="text" name="cliente.bairro" value="${clienteUnico.bairro}" placeholder="Bairro"/>
						<br/>
						
						<input type="submit" value="Alterar"/>
					</form>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<form action='cadastrar' method="post">
					<input type="text" name="cliente.nome" placeholder="Nome">
					<br>
					<input type="number" name="cliente.cpf_cnpj" placeholder="CPF/CNPJ">
					<br>
					<input type="text" name="cliente.telefoneFixo" placeholder="Telefone Fixo">			
					<br>
					<input type="text" name="cliente.telefoneCelular" placeholder="Telefone Celular">
					<br>
					<input type="text" name="cliente.email" placeholder="Email">
					<br>
					<input type="text" name="cliente.endereco" placeholder="Endere&ccedil;o">
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
					<input type ="hidden" name="cliente.tipoCliente" value="1">
					
					<input type="submit" value="Inserir">
				</form>
			</c:otherwise>
		</c:choose>

		<br>
		
		<table border="1">
			<tr>
				
				<td>Nome</td>
				<td>CPF/CNPJ</td>
				<td>Telefone Fixo</td>
				<td>Telefone Celular</td>
				<td>E-mail</td>
				<td>Endere&ccedil;o</td>
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
					<form action='buscaDados'>
						<input type="hidden" name="cliente.id" value="${cliente.id}"/>
						<input type="hidden" name="cliente.nome" value="${cliente.nome}"/>
						<input type="hidden" name="cliente.cpf_cnpj" value="${cliente.cpf_cnpj}"/>
						<input type="hidden" name="cliente.telefoneFixo" value="${cliente.telefoneFixo}"/>			
						<input type="hidden" name="cliente.telefoneCelular" value="${cliente.telefoneCelular}"/>
						<input type="hidden" name="cliente.email" value="${cliente.email}"/>
						<input type="hidden" name="cliente.endereco" value="${cliente.endereco}"/>
						<input type="hidden" name="cliente.cep" value="${cliente.cep}"/>
						<input type="hidden" name="cliente.cidade" value="${cliente.cidade}"/>
						<input type="hidden" name="cliente.uf" value="${cliente.uf}"/>
						<input type="hidden" name="cliente.rua" value="${cliente.rua}"/>
						<input type="hidden" name="cliente.complemento" value="${cliente.complemento}"/>
						<input type="hidden" name="cliente.bairro" value="${cliente.bairro}"/>
						
						<input type="submit" value="Alterar">
					</form>
				</td>
				<td>
					<form action='deletar'>
						<input type="hidden" name="cliente.id" value="${cliente.id}">
						<input type="submit" value="Apagar">
					</form>
				</td>
			</tr>
		</c:forEach>
		</table>
	    <br>
		
	</body>
</html>
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
		            <li><a href="../menu">Home</a></li>
		            <li><a href="#">Pesquisa</a></li>
		            <li><a href="#">Sobre</a></li>
		            <li><a href="#">Ajuda</a></li>
		            <li><a href="../login">Sair</a></li>
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
 	
	<div class="container-fluid" >
		<h1>Dados Cliente</h1>
		<br>
		<form class="form-inline" action='pesquisar'>
			<div class="form-group"><input class="form-control" type="text" name="pesquisa" placeholder="Pesquisa"></div>
			<input class="btn btn-default" type="submit" value="Pesquisar">
		
		</form>
		<hr>
		<br>

		<div class="form-group col-md-3">
		<c:choose>
			<c:when test="${not empty clienteUnico}">
				<c:forEach var="clienteUnico" items="${clienteUnico}">
					<form action='alterarCliente'>
						<input type="hidden" class="form-control" name="cliente.id" value="${clienteUnico.id}" />
						<br/>
						<input type="text" class="form-control" name="cliente.nome" value="${clienteUnico.nome}" placeholder="Nome"/>
						<br/>
						<input type="text" class="form-control" name="cliente.cpf_cnpj"  value="${clienteUnico.cpf_cnpj}" placeholder="CPF/CNPJ"/>
						<br/>
						<input type="text" class="form-control" name="cliente.telefoneFixo"  value="${clienteUnico.telefoneFixo}" placeholder="TelefoneFixo"/>			
						<br/>
						<input type="text" class="form-control" name="cliente.telefoneCelular"  value="${clienteUnico.telefoneCelular}" placeholder="Telefone Celular"/>
						<br/>
						<input type="text" class="form-control" name="cliente.email"  value="${clienteUnico.email}" placeholder="Email"/>
						<br/>
						<input type="text" class="form-control" name="cliente.endereco"  value="${clienteUnico.endereco}" placeholder="Endereco"/>
						<br/>
						<input type="text" class="form-control" name="cliente.cep"  value="${clienteUnico.cep}" placeholder="CEP"/>
						<br/>
						<input type="text" class="form-control" name="cliente.cidade"  value="${clienteUnico.cidade}" placeholder="Cidade"/>
						<br/>
						<input type="text" class="form-control" name="cliente.uf"  value="${clienteUnico.uf}" placeholder="UF"/>
						<br/>
						<input type="text" class="form-control" name="cliente.rua"  value="${clienteUnico.rua}" placeholder="Rua"/>
						<br/>
						<input type="text" class="form-control" name="cliente.complemento" value="${clienteUnico.complemento}" placeholder="Complemento"/>
						<br/>
						<input type="text" class="form-control" name="cliente.bairro" value="${clienteUnico.bairro}" placeholder="Bairro"/>
						<br/>
						<input type ="hidden" name="cliente.tipoCliente" value="1">
						<select name="cliente.tpCliente.descricao" class="form-control">
					  		<option>Fornecedor</option>
					  		<option>Cliente</option>
						</select>
						<br/>
						<input type="submit" class="btn btn-default" value="Alterar">
					</form>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<h4 class="">Cadastrar Clientes</h4>
				<form class="form-group" action='cadastrar' method="post">
					<input type="text" required="true" class="form-control" name="cliente.nome" placeholder="Nome">
					<br>
					<input type="number" class="form-control" name="cliente.cpf_cnpj" placeholder="CPF/CNPJ">
					<br>
					<input type="text" class="form-control" name="cliente.telefoneFixo" placeholder="Telefone Fixo">			
					<br>
					<input type="text" class="form-control" name="cliente.telefoneCelular" placeholder="Telefone Celular">
					<br>
					<input type="text" class="form-control" name="cliente.email" placeholder="Email">
					<br>
					<input type="text" class="form-control" name="cliente.endereco" placeholder="Endere&ccedil;o">
					<br>
					<input type="text" class="form-control" name="cliente.cep" placeholder="CEP">
					<br>
					<input type="text" class="form-control" name="cliente.cidade" placeholder="Cidade">
					<br>
					<input type="text" class="form-control" name="cliente.uf" placeholder="UF">
					<br>
					<input type="text" class="form-control" name="cliente.rua" placeholder="Rua">
					<br>
					<input type="text" class="form-control" name="cliente.complemento" placeholder="Complemento">
					<br>
					<input type="text" class="form-control" name="cliente.bairro" placeholder="Bairro">
					<br>
					<input type ="hidden" name="cliente.tipoCliente.descricao" value="1">
					<select name="cliente.tpCliente.descricao" class="form-control">
					  <option >Fornecedor</option>
					  <option >Cliente</option>
					</select>
					<br>
					<input type="submit" class="btn btn-default" value="Cadastrar">
				</form>
			</c:otherwise>
		</c:choose>
		</div>
		<br>
		<div class="container-fluid col-md-9 table-responsive">
		<table class="table">
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
				<td>Tipo</td>
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
					${cliente.tpCliente.descricao}
				</td>
				<td>
					<form action='buscarCliente'>
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
						<input type="hidden" name="cliente.tpCliente.descricao" value="${cliente.tpCliente.descricao}"/>
						
						<input type="submit" class="btn btn-default" value="Alterar">
					</form>
				</td>
				<td>
					<form action='deletar'>
						<input type="hidden" name="cliente.id" value="${cliente.id}">
						<input type="submit" class="btn btn-default" value="Apagar">
					</form>
				</td>
			</tr>
		</c:forEach>
		</table>
		</div>
	    <br>
		</div>
	</body>
</html>
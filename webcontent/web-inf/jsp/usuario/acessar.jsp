<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<body>
		<h1>Dados Usuario</h1>
		<br>
		<center><a href="http://localhost:8080/vraptor-blank-project/menu.jsp">Menu</a></center>
		<div style="background-color: red; color: white">
			<c:forEach var="error" items="${errors}">
			    ${error.category} - ${error.message}<br />
			</c:forEach>
		</div>
		<hr>
		<br>

		
		<form action='http://localhost:8080/vraptor-blank-project/usuario/salvar'>
		
			<input type="text" name="usuario.login" placeholder="Login">
			<br>
			<input type="text" name="usuario.senha" placeholder="Senha">
			<br>
			
			<input type="submit" value="Salvar">
		
		</form>
		
		<br>
		
		
		
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
					<a href="#">
						<img src="../imagens/b_edit.png">
					</a>
				</td>
				<td>
					<form action='http://localhost:8080/vraptor-blank-project/usuario/deletar'>
						<input type="hidden" name="usuario.idUsuario" value="${usuario.idUsuario}">
						<input type="submit" value="Apagar">
					</form>
				</td>
			</tr>
		</c:forEach>
		</table>
	    <br>
		
	</body>
</html>
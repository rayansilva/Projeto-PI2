<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<body>
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
				<form action='salvar'>
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
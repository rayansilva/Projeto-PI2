<%@ page session="false" %>
<%@ page import="java.sql.*" %>
<%
	try	{
		Class.forName ("com.mysql.jdbc.Driver");
		System.out.println("Driver do mysql carregado");
	} catch (ClassNotFoundException e){
		System.out.println("Erro ao carregar o driver " + e.toString());
	}
%>
<HTML>
	<HEAD>
		<TITLE>P&aacute;gina de Login</TITLE>
		
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		
		<!-- Optional theme -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
		
		<!-- Latest compiled and minified JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
		
		<link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet">
	</HEAD>
	<BODY>
	<div class="container">

      <form class="form-signin" action="" method="post">
        <h2 class="form-signin-heading"></h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="text" name="usuario" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="senha" id="inputPassword" class="form-control" placeholder="Password" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
			<%
			try{
				Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/projetoPI2","root","root");
				System.out.println("Conexao com sucesso...");
				Statement st = con.createStatement();
				String usr = request.getParameter("usuario");
				String pas = request.getParameter("senha");
				if (usr != null && pas != null){
					String sql = "SELECT COUNT(*) FROM Usuario" +
					" WHERE login = '" + usr +
					"' AND senha ='" + pas + "'";
					ResultSet rs = st.executeQuery(sql);
					rs.next();
					int qtd = rs.getInt(1);
					if (qtd == 0)
						out.print("<script type=\"text/javascript\">alert('Usuário ou Senha Inválidos!');</script>");
					else
						response.sendRedirect("menu");
					
					rs.close();
				}
				st.close();
				con.close();
			} catch (SQLException e){
				e.printStackTrace();
				System.out.println(" Erro na conexao com o banco...");
			}
			%>
			</form>
	    </div> <!-- /container -->
	</BODY>
	 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</HTML>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

		<link rel="stylesheet" href="<c:url value="/bootstrap/css/bootstrap.min.css" />" />
		<link rel="stylesheet" href="<c:url value="/bootstrap/css/bootstrap-theme.min.css" />" />
		
		<script type="text/javascript" src="<c:url value="/bootstrap/js/jquery-1.11.1.min.js" />"></script>
		<script type="text/javascript" src="<c:url value="/bootstrap/js/bootstrap.min.js" />"></script>
		
	</HEAD>
	<BODY>
	    <!-- Fixed navbar -->
 <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Sistema PI</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="menu">Sistema PI</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="menu">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li class="dropdown-header">Nav header</li>
                <li><a href="#">Separated link</a></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
</nav>
    <br/>
    <br/>
    <br/>
	<div class="container-fluid" >
		<div class="col-md-4 col-md-offset-4 ">
	      <form class="form-signin" action="<c:url value="/login" />" method="post">
	      	<h2 class="form-signin-heading">Login</h2>
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
			</div>
	    </div> <!-- /container -->
	</BODY>
</HTML>
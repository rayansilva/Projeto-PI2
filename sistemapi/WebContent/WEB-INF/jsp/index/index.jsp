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
	</HEAD>
	<BODY>
			<FORM METHOD="POST" ACTION="login.jsp">
				<BR>
				<H2>LOGIN</H2>
				<BR>
				<TABLE>
					<TR>
						<TD>Usu&aacute;rio:</TD>
						<TD>
							<INPUT TYPE=TEXT NAME=usuario>
						</TD>
					</TR>
					<TR>
						<TD>Senha:</TD>
						<TD>
							<INPUT TYPE=PASSWORD NAME=senha>
						</TD>
					</TR>
					<TR>
						<TD>
							<INPUT TYPE=RESET VALUE="limpa">
						</TD>
						<TD>
							<INPUT TYPE=SUBMIT VALUE="Login">
						</TD>
					</TR>
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
								out.print("<span style='color:red'>Usuario/Senha invalidos</span>");
							else
								response.sendRedirect("http://127.0.0.1:8080/sistempi/menu");
							
							rs.close();
						}
						st.close();
						con.close();
					} catch (SQLException e){
						e.printStackTrace();
						System.out.println(" Erro na conexao com o banco...");
					}
					%>
				</TABLE>
			</FORM>
			<a href="http://localhost:8080/sistemapi/menu" >menu</a>
	</BODY>
</HTML>
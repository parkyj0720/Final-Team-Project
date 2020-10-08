<html>
<head>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, javax.naming.InitialContext, javax.naming.Context" %>
</head>
<body>
	<%
		InitialContext initCtx = new InitialContext();
		Context envContext = (Context) initCtx.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/BoardCa");
		Connection conn = ds.getConnection();
		Statement stmt = conn.createStatement();
		ResultSet rset = stmt.executeQuery("SELECT VERSION();");
		while(rset.next()){
			out.println("MySQL Version: " + rset.getString("version()"));
		}
		rset.close();
		stmt.close();
		conn.close();
		initCtx.close();
	%>
</body>
</html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
</head>
<body>

	
	<div id="outerBody"
		style="width: 1300px; height: 1100px; margin: 0 auto;">

		<div id="header" style="height: 300px; width: 1300px;">
			<img src="banner1.png">
		</div>
		
            <style type="text/css">
                .scroll{
                    background-color:yellow;
                    overflow: auto;
                    float:left;
                    width: 1300px;
                    height: 800px;
                }
            </style>

			<div id="rightSection" class="scroll">
				<button type="button" onclick="location.href='Admin.jsp'"><b>Inapoi</b></button>
                <%
				String urlBazaDate = "jdbc:mysql://localhost/taxi";
				String user1 = "root";
				String password1 = "";

				try {
					Class.forName("com.mysql.jdbc.Driver");

				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
			%>
			<h2 align="center">Afisare</h2>
			<table align="center" cellpadding="4" cellspacing="3" border="1">
				<tr>

				</tr>
				<tr>
				
					<td>Id</td>
					<td>Nume</td>
					<td>UnitateMasura</td>
					<td>Cost</td>
					
				</tr>
				<%
					try {
						Connection c = DriverManager.getConnection(urlBazaDate, user1,password1);
						Statement s = c.createStatement();
						ResultSet rs = s.executeQuery("SELECT * FROM combustibil");
						while (rs.next()) {
				%>
				<tr>

					<td><%=rs.getString("Id")%></td>
					<td><%=rs.getString("Nume")%></td>
					<td><%=rs.getString("UnitateMasura")%></td>
					<td><%=rs.getString("Cost")%></td>
					
				</tr>
				<%
					}

					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
			</table>

        <h2 align="center">Inserare</h2>
        <form method="post" action="ICombustibil">
            <table align="center">
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="Id"></td>
                </tr>

                <tr>
                    <td>Nume</td>
                    <td><input type="text" name="Nume"></td>
                </tr>

                <tr>
                    <td>UnitateMasura</td>
                    <td><input type="text" name="UnitateMasura"></td>
                </tr>

                <tr>
                    <td>Cost</td>
                    <td><input type="text" name="Cost"></td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="submit" value="Creare"></td>
                </tr>
            </table>
        </form>

        <h2 align="center">Stergere</h2>
        <form method="post" action="SCombustibil">
            <table align="center">

                <tr>
                    <td>Id</td>
                    <td><input type="text" name="Id"></td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="submit" value="Stergere"></td>
                </tr>

            </table>
        </form>

       
        <h2 align="center">Modificare</h2>
        <form method="post" action="MCombustibil">
            <table align="center">

                <tr>
                    <td><b>Id:</b></td>
                    <td><input type="text" name="Id"></td>
                </tr>

                <tr>
                    <td>Nume nou</td>
                    <td><input type="text" name="Nume"></td>
                </tr>
                <tr>
                    <td>UnitateMasura noua</td>
                    <td><input type="text" name="UnitateMasura"></td>
                </tr>
				<tr>
                    <td>Cost nou</td>
                    <td><input type="text" name="Cost"></td>
                </tr>
               
                <tr>
                    <td></td>
                    <td><input type="submit" value="Modifica"></td>
                </tr>

            </table>
        </form>

			</div>
		</div>
	</div>
	
	
</body>
</html>
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
			<table align="center" cellpadding="13" cellspacing="3" border="1">
				<tr>

				</tr>
				<tr>
				
					<td>Id</td>
					<td>Marca</td>
					<td>Model</td>
					<td>AnFabricatie</td>
					<td>SerieSasiu</td>
					<td>Combustibil</td>
					<td>Tarif</td>
					<td>Capacitate</td>
					<td>NrInmatriculare</td>
					<td>UltimaRevizie</td>
					<td>Rca</td>
					<td>Casco</td>
					<td>Km</td>
				</tr>
				<%
					try {
						Connection c = DriverManager.getConnection(urlBazaDate, user1,
								password1);
						Statement s = c.createStatement();
						ResultSet rs = s.executeQuery("SELECT * FROM masini");
						while (rs.next()) {
				%>
				<tr>

					<td><%=rs.getString("Id")%></td>
					<td><%=rs.getString("Marca")%></td>
					<td><%=rs.getString("Model")%></td>
					<td><%=rs.getString("AnFabricatie")%></td>
					<td><%=rs.getString("SerieSasiu")%></td>
					<td><%=rs.getString("Combustibil")%></td>
					<td><%=rs.getString("Tarif")%></td>
					<td><%=rs.getString("Capacitate")%></td>
					<td><%=rs.getString("NrInmatriculare")%></td>
					<td><%=rs.getString("UltimaRevizie")%></td>
					<td><%=rs.getString("Rca")%></td>
					<td><%=rs.getString("Casco")%></td>
					<td><%=rs.getString("Km")%></td>

				</tr>
				<%
					}

					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
			</table>

        <h2 align="center">Inserare</h2>
        <form method="post" action="IMasina">
            <table align="center">
                <tr>
                    <td>Id</td>
                    <td><input type="text" name="Id"></td>
                </tr>

                <tr>
                    <td>Marca</td>
                    <td><input type="text" name="Marca"></td>
                </tr>

                <tr>
                    <td>Model</td>
                    <td><input type="text" name="Model"></td>
                </tr>

                <tr>
                    <td>AnFabricatie</td>
                    <td><input type="text" name="AnFabricatie"></td>
                </tr>

                <tr>
                    <td>SerieSasiu</td>
                    <td><input type="text" name="SerieSasiu"></td>
                </tr>
                
				 <tr>
                    <td>Combustibil</td>
                    <td><input type="text" name="Combustibil"></td>
                </tr>
                 <tr>
                    <td>Tarif</td>
                    <td><input type="text" name="Tarif"></td>
                </tr>
                 <tr>
                    <td>Capacitate</td>
                    <td><input type="text" name="Capacitate"></td>
                </tr>
                 <tr>
                    <td>NrInmatriculare</td>
                    <td><input type="text" name="NrInmatriculare"></td>
                </tr>
                 <tr>
                    <td>UltimaRevizie</td>
                    <td><input type="text" name="UltimaRevizie"></td>
                </tr>
                 <tr>
                    <td>Rca</td>
                    <td><input type="text" name="Rca"></td>
                </tr>
                 <tr>
                    <td>Casco</td>
                    <td><input type="text" name="Casco"></td>
                </tr>
                 <tr>
                    <td>Km</td>
                    <td><input type="text" name="Km"></td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="submit" value="Creare"></td>
                </tr>
            </table>
        </form>

        <h2 align="center">Stergere</h2>
        <form method="post" action="SMasina">
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
        <form method="post" action="MMasina">
            <table align="center">

                <tr>
                    <td><b>Id:</b></td>
                    <td><input type="text" name="Id"></td>
                </tr>

                <tr>
                    <td>Marca Noua</td>
                    <td><input type="text" name="Marca"></td>
                </tr>
                <tr>
                    <td>Model Nou</td>
                    <td><input type="text" name="Model"></td>
                </tr>
				<tr>
                    <td>An Fabricatie Nou</td>
                    <td><input type="text" name="AnFabricatie"></td>
                </tr>
                <tr>
                    <td>Serie Sasiu noua</td>
                    <td><input type="text" name="SerieSasiu"></td>
                </tr>
                <tr>
                    <td>Combustibil nou</td>
                    <td><input type="text" name="Combustibil"></td>
                </tr>
                <tr>
                    <td>Tarif Nou</td>
                    <td><input type="text" name="Tarif"></td>
                </tr>
               <tr>
                    <td>Capacitate Noua</td>
                    <td><input type="text" name="Capacitate"></td>
                </tr>
                <tr>
                    <td>Nr Inmatriculare Nou</td>
                    <td><input type="text" name="NrInmatriculare"></td>
                </tr>
                <tr>
                    <td>Ultima Revizie Nou</td>
                    <td><input type="text" name="UltimaRevizie"></td>
                </tr>
                <tr>
                    <td>RCA Nou</td>
                    <td><input type="text" name="Rca"></td>
                </tr>
                <tr>
                    <td>Casco Nou</td>
                    <td><input type="text" name="Casco"></td>
                </tr>
                <tr>
                    <td>Km noi</td>
                    <td><input type="text" name="Km"></td>
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
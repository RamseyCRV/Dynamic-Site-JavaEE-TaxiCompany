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
			<table align="center" cellpadding="9" cellspacing="3" border="1">
				<tr>

				</tr>
				<tr>
				
					<td>Id</td>
					<td>Nume</td>
					<td>Prenume</td>
					<td>Cnp</td>
					<td>SerieCi</td>
					<td>NrCi</td>
					<td>AnPermis</td>
					<td>User</td>
					<td>Password</td>
					
				</tr>
				<%
					try {
						Connection c = DriverManager.getConnection(urlBazaDate, user1,
								password1);
						Statement s = c.createStatement();
						ResultSet rs = s.executeQuery("SELECT * FROM soferi");
						while (rs.next()) {
				%>
				<tr>

					<td><%=rs.getString("Id")%></td>
					<td><%=rs.getString("Nume")%></td>
					<td><%=rs.getString("Prenume")%></td>
					<td><%=rs.getString("Cnp")%></td>
					<td><%=rs.getString("SerieCi")%></td>
					<td><%=rs.getString("NrCi")%></td>
					<td><%=rs.getString("AnPermis")%></td>
					<td><%=rs.getString("User")%></td>
					<td><%=rs.getString("Password")%></td>
					

				</tr>
				<%
					}

					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
			</table>

        <h2 align="center">Inserare</h2>
        <form method="post" action="ISofer">
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
                    <td>Prenume</td>
                    <td><input type="text" name="Prenume"></td>
                </tr>

                <tr>
                    <td>Cnp</td>
                    <td><input type="text" name="Cnp"></td>
                </tr>

                <tr>
                    <td>SerieCi</td>
                    <td><input type="text" name="SerieCi"></td>
                </tr>
                
				 <tr>
                    <td>NrCi</td>
                    <td><input type="text" name="NrCi"></td>
                </tr>
                 <tr>
                    <td>AnPermis</td>
                    <td><input type="text" name="AnPermis"></td>
                </tr>
                 <tr>
                    <td>User</td>
                    <td><input type="text" name="User"></td>
                </tr>
                 <tr>
                    <td>Password</td>
                    <td><input type="text" name="Password"></td>
                </tr>
                 
                <tr>
                    <td></td>
                    <td><input type="submit" value="Creare"></td>
                </tr>
            </table>
        </form>

        <h2 align="center">Stergere</h2>
        <form method="post" action="SSofer">
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
        <form method="post" action="MSofer">
            <table align="center">

                <tr>
                    <td><b>Id:</b></td>
                    <td><input type="text" name="Id"></td>
                </tr>

                <tr>
                    <td>Nume Nou</td>
                    <td><input type="text" name="Nume"></td>
                </tr>
                <tr>
                    <td>Prenume Nou</td>
                    <td><input type="text" name="Prenume"></td>
                </tr>
				<tr>
                    <td>Cnp Nou</td>
                    <td><input type="text" name="Cnp"></td>
                </tr>
                <tr>
                    <td>SerieCi Noua</td>
                    <td><input type="text" name="SerieCi"></td>
                </tr>
                <tr>
                    <td>NrCi Nou</td>
                    <td><input type="text" name="NrCi"></td>
                </tr>
                <tr>
                    <td>AnPermis Nou</td>
                    <td><input type="text" name="AnPermis"></td>
                </tr>
               <tr>
                    <td>User Nou</td>
                    <td><input type="text" name="User"></td>
                </tr>
                <tr>
                    <td>Parola Noua</td>
                    <td><input type="text" name="Password"></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="Modifica"></td>
                </tr>

            </table>
        </form>

			</div>
		</div>

	

</body>
</html>
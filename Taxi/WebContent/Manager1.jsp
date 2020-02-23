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
<title>Manager</title>
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
             <button type="button" onclick="location.href='Manager.jsp'"><b>Inapoi</b></button>
                <%
        String urlBazaDate = "jdbc:mysql://localhost/taxi";
                    String user1 = "root";
                    String password1 = "";
            
                    
                   
                    
                    %>
                   <form action="Manager1.jsp">
                    	<table align="center" style="margin-top:20px;">
                    	 <tr>
            				<td>Data</td>
                   			 <td><input type="text" name="DataFactura"></td>
                   			 <td><input type="submit" name="CD" value="Search"></td>
                   		 </tr>
                   		
                    	</table>
                    	</form>
                    	
                   
                    
                    <h2 align="center">Curse</h2>
                   <table align="center" cellpadding="4" cellspacing="3" border="1">
                   
                   <tr>
				
					<tr>
					<td>Cod Sofer</td>
					<td>Cod Masina</td>
					<td>Km</td>
					<td>Combustibil Consumat</td>
					<td>Data</td>
					
				</tr>
					
				</tr>
                    
                    <%
                    String DataFactura=request.getParameter("DataFactura");
                
                   
                    try	{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection c = DriverManager.getConnection(urlBazaDate, user1, password1);
                    Statement s = c.createStatement(); 
                    ResultSet rs = s .executeQuery("SELECT * FROM curse WHERE DataFactura='"+DataFactura+"'");
                    
                
                    while (rs.next()) { 
                    %>
                    <tr>
                   
					<td><%=rs.getString("CodSofer")%></td>
					<td><%=rs.getString("CodMasina")%></td>
					<td><%=rs.getString("Km")%></td>
					<td><%=rs.getString("Combustibil")%></td>
					<td><%=rs.getString("DataFactura")%></td>
            
                    </tr>
                
              
                    <%
                    }
                    
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    %>

			</div>
		</div>
	</div>
	
	
</body>
</html>
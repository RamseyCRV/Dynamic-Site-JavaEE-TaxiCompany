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
                           <form action="Manager3.jsp">
                                <table style="margin-top:20px;">
                                 <tr>
                                    <td>Data 1</td>
                                        <td><input type="text" name="DataFactura1"></td>
                                        <td>Data 2</td>
                                         <td><input type="text" name="DataFactura2"></td>
                                        <td><input type="submit" name="CD" value="Search"></td>
                                    </tr>
                                   
                                </table>
                                </form>
                                
                           
                           
                            
                            <%
                            String Data1=request.getParameter("DataFactura1");
                            String Data2=request.getParameter("DataFactura2");
                        
                           
                            try	{
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection c = DriverManager.getConnection(urlBazaDate, user1, password1);
                            Statement s = c.createStatement(); 
                              String sum="SELECT SUM(Combustibil) FROM curse WHERE DataFactura >= '"+Data1+"' AND DataFactura <= '"+Data2+"'";
                              ResultSet rs=s.executeQuery(sum);
                              String Countrun="";
                          
                            
                        
                            while (rs.next()) { 
                                Countrun = rs.getString(1);
                                out.println("Combustibil Consumat: " +Countrun+" litri, intre data " +Data1+" si " +Data2);
                           
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
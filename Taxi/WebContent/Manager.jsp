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
             <button type="button" onclick="location.href='Home.jsp'"><b>Inapoi</b></button>
                <table align="center" border="1" cellspacing="3">
		
                    <td> <button type="button" onclick="location.href='Manager1.jsp'"><b>Numar curse la o anumita data</b></button></td>
                    <td> <button type="button" onclick="location.href='Manager2.jsp'"><b>Total combustibil consumat la o anumita data</b></button></td>
                    <td> <button type="button" onclick="location.href='Manager3.jsp'"><b>Total combustibil consumat intr-un interval de timp</b></button></td>
                    
                    </table>

			</div>
		</div>
	</div>
	
	  
</body>
</html>
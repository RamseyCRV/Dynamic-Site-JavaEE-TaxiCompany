<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fail</title>
</head>
<body>
	
	<div id="o"
		style="width: 1300px; height: 1100px; margin: 0 auto;">

		<div id="header" style="height: 300px; width: 1300px;">
			<img src="banner1.png">
		</div>

		<div id="b">
			<div id="leftSection" style="float: Left; width: 200px; height: 800px;background-color:orange">

                <ul>
                    <button type="button" onclick="location.href='LAdmin.jsp'"><b>Administrator</b></button>
                    <hr>
                    <button type="button" onclick="location.href='LManager.jsp'"><b>Manager</b></button>
                    <hr>
                    <button type="button" onclick="location.href='LSofer.jsp'"><b>Sofer</b></button>
                    <hr>
                    <button type="button" onclick="location.href='Inregistrare.jsp'"><b>Register</b></button>
                       
                </ul>


			</div>
            
            <style type="text/css">
                .scroll{
                    background-color:yellow;
                    overflow: auto;
                    float:left;
                    width: 1100px;
                    height: 800px;
                }
            </style>

			<div id="rightSection" class="scroll">
				
                <form method="post"  align="center">
        	
                    <table align="center">
                        
                        <td>FAIL LOGIN</td>
            
                    </table>
                </form>
			</div>
		</div>
	</div>
</body>
</html>
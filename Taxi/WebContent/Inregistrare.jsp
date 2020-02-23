<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Inregistrare</title>
</head>
<body>

	 
	<div id="outerBody"
		style="width: 1300px; height: 1100px; margin: 0 auto;">

		<div id="header" style="height: 300px; width: 1300px;">
			<img src="banner1.png">
		</div>

		<div id="bodyContainer">
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
				
                <form method="post" action="RSofer" align="center" style="margin-top: 100px;">
            
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
                            <td>Serie Buletin</td>
                            <td><input type="text" name="SerieCi"></td>
                        </tr>
                         <tr>
                            <td>Numar Buletin</td>
                            <td><input type="text" name="NrCi"></td>
                        </tr>
                         <tr>
                            <td>An Permis</td>
                            <td><input type="text" name="AnPermis"></td>
                        </tr>
                        
                         <tr>
                            <td>User</td>
                            <td><input type="text" name="User"></td>
                        </tr>
                        
                         <tr>
                            <td>Parola</td>
                            <td><input type="password" name="Password"></td>
                        </tr>
                        
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Register"></td>
                        </tr>
        
                    </table>
                </form>

			</div>
		</div>
	</div>

	 
	

</body>
</html>
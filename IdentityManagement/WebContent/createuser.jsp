<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create a User</title>
</head>
<body style="background-color: #668cff">

<form method="post" action="create.jsp"> <!--method to invoke create.jsp-->
            <center>
            <!--Table for handling user information-->
            <table border="0" width="30%" cellpadding="3" >
                <thead>
                    <tr>
                        <th colspan="4"style="font-size:300%">Enter Details</th>
                    </tr>
                </thead>
                
                <tbody>
                    <tr>
                    	<td style="font-size:150%">Name</td>
                        <td style="font-size:150%" ><input type="text" name="uname" value="" /></td>
                        </tr>
                        
                    <tr>
                        <td style="font-size:150%">Password</td>
                        <td style="font-size:150%"><input type="password" name="pass" value="" /></td>
                    </tr>
                    
                    <tr>
                        <td style="font-size:150%">Age</td>
                        <td style="font-size:150%" ><input type="text" name="uage" value="" /></td>
                        </tr>
                    <tr>
                        <td style="font-size:150%">Telephone Number</td>
                        <td style="font-size:150%" ><input type="text" name="utel" value="" /></td>
                    </tr>
                        
                    <tr>
                        <td style="font-size:150%">Email</td>
                        <td style="font-size:150%" ><input type="text" name="uemail" value="" /></td>
                        
                    <tr>
                        <td style="font-size:150%">ISADMIN?</td>
                        <td style="font-size:150%"><input type="checkbox" name="isadmin" value="1"></td>
                    
                    </tr>
                    <tr>
                        <td style="font-size:150%"><input type="submit" value="Submit" /></td>
                        <td style="font-size:150%"><input type="button" onclick="location.href = 'menu.html' "; value="Cancel"></td>
                        <td style="font-size:150%"><input type="reset" value="Reset" /></td>
                        
                    </tr>
                    <tr >
                    <th colspan="50"></th>
                    
                    </tr>
                    
                </tbody>
            </table>
            </center>
        </form>
    </body>

</body>
</html>
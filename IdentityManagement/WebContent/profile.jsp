<%@ page language="java" import="java.util.*" %>
<%

String userid = (String)session.getAttribute("userid"); 
String age = (String)session.getAttribute("age"); 
String email = (String)session.getAttribute("email");
String tel = (String)session.getAttribute("tel"); 

%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create a User</title>
</head>
<body>

<form method="post" action="create.jsp">
            <center>
            <table border="0" width="30%" cellpadding="3" style="background-color:#0000FF">
                <thead>
                    <tr>
                        <th colspan="4">Enter Details</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Name</td>
                        
                        <td ><% out.print(userid); %></td>
                    </tr>
                    
                   <tr>
                        <td>Age</td>
                        
                        <td ><% out.print(age); %></td>
                    </tr>
                    <tr>
                        <td>Telephone Number</td>
                        
                        <td ><input type="text" name="utel" value="<% out.print(tel); %>" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        
                        <td ><% out.print(email); %></td>
                        
                   
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
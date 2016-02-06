<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main</title>
        <!--Importing STYLE sheets-->
        
        <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/shift.css" rel="stylesheet">
    	<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body style="background-color: #668cff">

<form method="post" action="login.jsp">
            <center>
            <!--Table data for login entries-->
            
            <table border="0" width="30%" cellpadding="3"  >
                <thead>
                    <tr>
                        <th colspan="2"; style="font-size:300% ;background-color: #dedef8;
         					box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;" class = "col-xs-6 col-sm-3">ACCESS</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="font-size:150%;background-color: #dedef8;
         					box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;" class = "col-xs-6 col-sm-3" >User ID</td>
                        <td style="font-size:150%;background-color: #dedef8;
         					box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;" class = "col-xs-6 col-sm-3" "><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td  style="font-size:150%;background-color: #dedef8;
         					 box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;" class = "col-xs-6 col-sm-3">Password</td>
                        <td  style="font-size:150%;background-color: #dedef8;
         					 box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;" class = "col-xs-6 col-sm-3"><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td style="font-size:150%;background-color: #dedef8;
         					box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;" class = "col-xs-6 col-sm-3"><input type="submit" value="Login" /></td>
                        <td style="font-size:150%;background-color: #dedef8;
         					box-shadow: inset 1px -1px 1px #444, inset -1px 1px 1px #444;" class = "col-xs-6 col-sm-3"><input type="reset" value="Reset" /></td>
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
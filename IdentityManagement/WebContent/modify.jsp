<!--This file  is responsible for
editing user entries

@author ABVA

-->
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    String userid = request.getParameter("uname");
String id1 = request.getParameter("usid");
    String pwd = request.getParameter("pass");
    String age = request.getParameter("uage");
    String tel = request.getParameter("utel");
    String email = request.getParameter("uemail");
    String isadmin = request.getParameter("isadmin");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/identitydb","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    String cmd = "update users set `name` = '" + userid + "', `age` = '" + age + "', `email` = '" + email + "', `tele` = '" + tel + "', `isadmin`= '" + isadmin + "' where `id`='" + id1 + "'";
    st.executeUpdate(cmd);
    
    out.println("Successfull!!!!<a href='update.jsp'>BACK</a>");
    con.close();
    
%>
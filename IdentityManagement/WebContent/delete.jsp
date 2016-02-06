<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%

String id2=request.getParameter("id");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/identitydb","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    String cmd = "DELETE FROM `users` WHERE `id` = '" + id2 + "'";
    st.executeUpdate(cmd);
    
    out.println("Successfull!!!!<a href='update.jsp'>BACK</a>");
    
%>
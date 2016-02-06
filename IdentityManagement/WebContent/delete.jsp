<%@ page import ="java.sql.*" %>			<!--Importing SQL libraries-->
<%@ page import ="javax.sql.*" %>
<%

String id2=request.getParameter("id");  			//importing sessions
    
    Class.forName("com.mysql.jdbc.Driver"); 		//initializing databse driver
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/identitydb","root","");  //initializing database connection
    Statement st = con.createStatement();
    ResultSet rs;
    String cmd = "DELETE FROM `users` WHERE `id` = '" + id2 + "'";
    st.executeUpdate(cmd);
    
    out.println("Successfull!!!!<a href='update.jsp'>BACK</a>");
    
%>
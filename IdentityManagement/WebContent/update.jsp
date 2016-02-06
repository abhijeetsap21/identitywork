<%@ page import ="java.sql.*" %>			<!--Importing SQL libraries-->
<%@ page import ="javax.sql.*" %>
<%
    
    
    Class.forName("com.mysql.jdbc.Driver");				//driver initialization
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/identitydb","root","");    //databse connection string
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from users");        //initialting query
    
    out.println("<center><body bgcolor=#668cff><h3>Registered Users</h3><table border=0 ><tr><th>UserID</th><th>Name</th><th>Age</th><th>Telephone</th><th>Email</th><th>IsAdmin</th><th>Edit</th></body");
    out.println("<p><a href='menu.html'>CANCEL</a></p>");
    
    while (rs.next()) {
    	int isadmin = rs.getInt("isadmin");   //getting session variables
    	int id1 = rs.getInt("id");
    	String age = rs.getString("age");
    	String email = rs.getString("email");
    	String name = rs.getString("name");
    	String tel = rs.getString("tele");
    	
    	//displaying table contents
        out.println("<tr>");
        out.println("<td> " + id1 + "</td>");
        out.println("<td> " + name + "</td>");
        out.println("<td> " + age + "</td>");
        out.println("<td> " + tel + "</td>");
        out.println("<td> " + email + "</td>");
        out.println("<td> " + isadmin + "</td><td><a href='edit.jsp?id=" + id1 + "'>Edit</a></td>"); //linking to edit page
        out.println("</tr>");
        
    } 
    out.println("</table>");
    con.close();
%>

















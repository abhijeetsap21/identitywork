<%@ page import ="java.sql.*" %>      <!--Importing SQL libraries-->
<%@ page import ="javax.sql.*" %>
<%
    
    
    Class.forName("com.mysql.jdbc.Driver");				//initialize mysql driver
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/identitydb","root","");		//initiating connection
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from users");
    
    out.println("<center><body bgcolor=#668cff><h3>Registered Users</h3><table border=1><tr><th>UserID</th><th>Name</th><th>Age</th><th>Telephone</th><th>Email</th><th>IsAdmin</th><th>Edit</th>");    //display table
    out.println("<p><a href='menu.html'>CANCEL</a></p>");
    
    while (rs.next()) {
    	int isadmin = rs.getInt("isadmin");
    	int id1 = rs.getInt("id");				//getting sessions
    	String age = rs.getString("age");
    	String email = rs.getString("email");
    	String name = rs.getString("name");
    	String tel = rs.getString("tele");
    	//String tel = rs.getString("tele");
        out.println("<tr>");
        out.println("<td> " + id1 + "</td>");
        out.println("<td> " + name + "</td>");		//setting sessions to values in form
        out.println("<td> " + age + "</td>");
        out.println("<td> " + tel + "</td>");
        out.println("<td> " + email + "</td>");
        out.println("<td> " + isadmin + "</td><td><a href='delete.jsp?id=" + id1 + "'>Delete</a></td>"); // calling the delete query
        out.println("</tr>");
        //out.println("<a href='logout.jsp'>Log out</a>");
    } 
    out.println("</table>");
    con.close();
%>

















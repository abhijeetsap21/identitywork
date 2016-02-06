<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    
	String kwd = request.getParameter("kwd");  
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/identitydb","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from users where `name` LIKE '%" + kwd + "%'");
    
    out.println("<center><h3>Registered Users</h3><table border=1><tr><th>UserID</th><th>Name</th><th>Age</th><th>Telephone</th><th>Email</th><th>IsAdmin</th><th>Edit</th><th>Delete</th>");
    
    while (rs.next()) {
    	int isadmin = rs.getInt("isadmin");
    	int id1 = rs.getInt("id");
    	String age = rs.getString("age");
    	String email = rs.getString("email");
    	String name = rs.getString("name");
    	String tel = rs.getString("tele");
    	//String tel = rs.getString("tele");
        out.println("<tr>");
        out.println("<td> " + id1 + "</td>");
        out.println("<td> " + name + "</td>");
        out.println("<td> " + age + "</td>");
        out.println("<td> " + tel + "</td>");
        out.println("<td> " + email + "</td>");
        out.println("<td> " + isadmin + "</td><td><a href='edit.jsp?id=" + id1 + "'>Edit</a></td><td><a href='delete.jsp?id=" + id1 + "'>Delete</a></td>");
        out.println("</tr>");
        //out.println("<a href='logout.jsp'>Log out</a>");
    } 
    out.println("</table>");
%>

    
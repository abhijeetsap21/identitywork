<!--This file  is responsible for
editing   a user entry

@author ABVA

-->


<%@ page import ="java.sql.*" %>			<!-- importing sql libraries  -->
<%@ page import ="javax.sql.*" %>
<%
    
String id2=request.getParameter("id");     			// getting session variable



    Class.forName("com.mysql.jdbc.Driver"); 		//initializing database driver
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/identitydb","root","");       //initiate database connection
    Statement st = con.createStatement();
    ResultSet rs;
    String cmd = "select * from users where `id`='" + id2 + "'";    //editing user as per the session variable
    rs = st.executeQuery(cmd);
    
    out.println("<center><body bgcolor=#668cff><h3>Edit Users</h3><form method=\"post\" action=\"modify.jsp\"><table border=1>");  //initializing table
    out.println("<p><a href='menu.html'>CANCEL</a></p>");
    while (rs.next()) {
    	int isadmin = rs.getInt("isadmin");
    	int id1 = rs.getInt("id");
    	String age = rs.getString("age");
    	String email = rs.getString("email");
    	String name = rs.getString("name");
    	String tel = rs.getString("tele");
    	//String tel = rs.getString("tele");
        //out.println("<tr>");
        out.println("<tr><th>UserID</th><td><input type=\"text\" name=\"usid\" value=\"" + id1 + " \" readonly ></td></tr>");
        out.println("<tr><th>Name</th><td><input type=\"text\" name=\"uname\" value=\"" + name + " \" ></td></tr>");
        out.println("<tr><th>Age</th><td><input type=\"text\" name=\"uage\" value=\"" + age + " \" ></td></tr>");
        out.println("<tr><th>Telephone</th><td><input type=\"text\" name=\"utel\" value=\"" + tel + " \" ></td></tr>");
        out.println("<tr><th>Email</th><td><input type=\"text\" name=\"uemail\" value=\"" + email + " \" ></td></tr>");
        out.println("<tr><th>Isadmin</th><td><input type=\"text\" name=\"isadmin\" value=\"" + isadmin + " \" ></td></tr>");
        //out.println("</tr>");
        //out.println("<a href='logout.jsp'>Log out</a>");
    } 
    out.println("</table> <input type=\"submit\" value=\"Submit\" ></form>");
    con.close();
%>

















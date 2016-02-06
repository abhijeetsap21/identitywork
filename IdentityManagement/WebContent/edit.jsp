<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    
String id2=request.getParameter("id");
//out.println(value);


    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/identitydb","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    String cmd = "select * from users where `id`='" + id2 + "'"; 
    rs = st.executeQuery(cmd);
    
    out.println("<center><h3>Edit Users</h3><form method=\"post\" action=\"modify.jsp\"><table border=1>");
    
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
%>

















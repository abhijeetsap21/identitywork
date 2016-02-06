<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/identitydb","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from users where name='" + userid + "' and pass='" + pwd + "'");
    
    if (rs.next()) {
    	int isadmin = rs.getInt("isadmin");
    	String age = rs.getString("age");
    	String email = rs.getString("email");
    	String name = rs.getString("name");
    	String tel = rs.getString("tele");
        session.setAttribute("userid", name);
        session.setAttribute("age", age);
        session.setAttribute("email", email);
        session.setAttribute("tel", tel);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        if(isadmin==1)
        {
        response.sendRedirect("menu.html");
        }
        else
        {
        	response.sendRedirect("profile.jsp");
        }
    } 
    else {
        out.println("Invalid password <a href='main.jsp'>try again</a>");
    }
%>
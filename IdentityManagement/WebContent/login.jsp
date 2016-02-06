<!--This file  is responsible for
authenticating user inputs to verify if admin or user or a wrong user

@author ABVA

-->

<%@ page import ="java.sql.*" %> 					 
<%@ page import ="javax.sql.*" %>
<%
    String userid = request.getParameter("uname");  //userid from main.jsp  
    String pwd = request.getParameter("pass");	    //userid from main.jsp 
    
    Class.forName("com.mysql.jdbc.Driver");			//driver initialization 
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/identitydb","root","");     //java 
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from users where name='" + userid + "' and pass='" + pwd + "'");  // Select query for validating data
    
    if (rs.next()) {								//checking result set values
    	int isadmin = rs.getInt("isadmin");
    	String age = rs.getString("age");
    	String email = rs.getString("email");
    	String name = rs.getString("name");
    	String tel = rs.getString("tele");
        session.setAttribute("userid", name);		//setting session variables
        session.setAttribute("age", age);
        session.setAttribute("email", email);
        session.setAttribute("tel", tel);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        if(isadmin==1)								// authenticating if the user is ADMIN
        	{
        		response.sendRedirect("menu.html");
        	}
        else
        {
        	response.sendRedirect("profile.jsp");
        }
    } 
    else 
    	{
        out.println("Invalid password <a href='main.jsp'>try again</a>");
        		
    }
    con.close();
%>
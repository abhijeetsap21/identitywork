<%@ page import ="java.sql.*" %>   <!--Importing SQL libraries-->
<%@ page import ="javax.sql.*" %>
<%
    String userid = request.getParameter("uname");    //getting session variables  
    String pwd = request.getParameter("pass");
    String age = request.getParameter("uage");
    String tel = request.getParameter("utel");
    String email = request.getParameter("uemail");
    String isadmin = request.getParameter("isadmin");
    
    Class.forName("com.mysql.jdbc.Driver");			 // mysql driver initialization
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost/identitydb","root","");    //database connection string
    Statement st = con.createStatement();
    
    ResultSet rs;
    if(isadmin=="1")
    	{
    		st.executeUpdate("INSERT INTO users(name,pass,age,email,tele,isadmin)  values('" + userid+ "','" + pwd +"','" + age + "','" + tel+ "','" + email+ "','" + isadmin+ "' )");  //inserting values 
    	}
    else
    	{
    		st.executeUpdate("INSERT INTO users(name,pass,age,email,tele,isadmin)  values('" + userid+ "','" + pwd +"','" + age + "','" + tel+ "','" + email+ "','0' )");
    	}
    
    		out.println("Successfull!!!!<a href='menu.html'>BACK</a>");
    con.close();
    
%>
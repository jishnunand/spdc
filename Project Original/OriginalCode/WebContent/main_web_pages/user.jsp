<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
  String usn=request.getParameter("gsm_id");
   String pass=request.getParameter("password");
   
   String ad_name,ad_pass;
	
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","jishnu");
System.out.println(con);

Statement st=con.createStatement();


ResultSet rs=st.executeQuery("select * from SPDC_USER_PROFILE where gsm_id='"+usn+"' and password='"+pass+"'");
String s=null;
String g=null;


	if(rs.next())
      { 
		session.setAttribute("spdc",usn);
            response.sendRedirect("http://localhost:9895/Original_Code/main-user_pages/index.jsp");
        }
   	else
  	 {
   		out.write("<script type='text/javascript'>\n");
  		out.write("alert('Wrong Username or Password !!!!!');\n");
  		out.write("window.location.href='http://localhost:9895/Original_Code/main_web_pages/indexlog.html';");
  		out.write("</script>\n");
   	}  
}

catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>
		<%@page import="java.sql.*"%>
		<%@page import="java.util.*"%>
		
		<%@page import="java.util.Properties"%>
		<%@page import="java.net.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>



</head>
<body>

<%! public String re;
public int password_gen()
{
Random t=new Random();
return(t.nextInt(100000));

}


public String send_sms(String gsm,String pass,String mob)
{
	String requestUrl ;
	
	String recipient ="+91"+ mob;
	String message = "Login ID:" +gsm+"\n Password:"+pass;
	String username = "admin";
	String password = "admin";
	String originator = "+918281424452";
	

	try {
		requestUrl  = "http://127.0.0.1:9501/api?action=sendmessage&" +
        "username=" + URLEncoder.encode(username, "UTF-8") +
        "&password=" + URLEncoder.encode(password, "UTF-8") + 
        "&recipient=" + URLEncoder.encode(recipient, "UTF-8") + 
        "&messagetype=SMS:TEXT" +
        "&messagedata=" + URLEncoder.encode(message, "UTF-8") +
        "&originator=" + URLEncoder.encode(originator, "UTF-8") +
        "&serviceprovider=SMPP0" +
        "&responseformat=html";
		
		
		
	  URL url = new URL(requestUrl);		  
	  HttpURLConnection uc = (HttpURLConnection)url.openConnection();
	  
	 re=uc.getResponseMessage();
	  
	  
	  

	  uc.disconnect();
	 
	}
	
	
	catch(Exception ex) 
	{
		System.out.println(ex.getMessage());
		
	}
		
	 return re;
}
public void loge()
{
%>
<script type="text/javascript">
var a=confirm("mobile number  is already exits")

	if(a == true)
		{
			window.location="http://localhost:8081/gsm/registration.html"
		}
	else
		{
		window.location="http://localhost:8081/gsm/registration.html"
		}
	
	</script>
	<%!
}
public void loge1()
{
%>
<script type="text/javascript">
var a=confirm("gsm id  is already exits")

	if(a == true)
		{
			window.location="http://localhost:8081/gsm/registration.html"
		}
	else
		{
		window.location="http://localhost:8081/gsm/registration.html"
		}
	
	</script>
	<%!
}






public void connect()
{
	
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","oracle10g");
	System.out.println(con);
}
catch(Exception e)
{
	e.printStackTrace();
}
}
%>

<%
  connect();
  System.out.print("working");
  String gsm=request.getParameter("gsmid");
  String mob=request.getParameter("mobile");
  String email=request.getParameter("email");
  String pass=String.valueOf(password_gen());
  int flag=0;
  System.out.println(gsm);
  System.out.println(mob);
  System.out.println(pass);
  try{
	  Class.forName("oracle.jdbc.driver.OracleDriver");
	  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","oracle10g");
	  System.out.println(con);   
	  Statement st=con.createStatement();
	  ResultSet rs=st.executeQuery("select * from user_profile12 where mob_number='"+mob+"'");
	  flag=0;
	  while(rs.next())
	  {
		  System.out.println(mob);
		  flag=1;
	  break;
	  
	  
	  }
	  if(flag==1)
	  {
		  loge();
	  }
   
  }
  
  catch(Exception e)
	{
		e.printStackTrace();
	}
  
  try{
	  Class.forName("oracle.jdbc.driver.OracleDriver");
	  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","oracle10g");
	  System.out.println(con);   
	  Statement st=con.createStatement();
	  ResultSet rs=st.executeQuery("select * from user_profile12 where gsm_id='"+gsm+"'");
	  int gsmflag=0;
	  while(rs.next())
	  {
		  System.out.println(gsm);
		  gsmflag=1;
	  break;
	  
	  
	  }
	  if(gsmflag==1)
	  {
		  loge1();
	  }
   
  }
  
  catch(Exception e)
	{
		e.printStackTrace();
	}
 
 
  
  String sms=send_sms(gsm,pass,mob);
  System.out.println(sms);
  
  if (sms!="OK")
  {
	  System.out.println("inside ok");
	  try
	  { 
  		
		 Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","oracle10g");
		System.out.println(con); 

		//String a="create table registration(gsmid varchar2(30),mobile varchar2(30))";
		//Statement st=con.createStatement();
		//boolean b=st.execute(a);
		
		PreparedStatement pt=con.prepareStatement("insert into user_profile12 values(?,?,?,?)");
		pt.setString(1, mob);
		pt.setString(2, gsm);
		pt.setString(3, email);
		pt.setString(4, pass);
		pt.execute();

 
	}

	catch(Exception e)
	{
		e.printStackTrace();
	}
  }
  
%>
</body>
</html>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<%
        String username=(String)session.getAttribute("spdc");
        %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hai <%=username%></title>
    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME ICONS STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM STYLES-->
    <link href="assets/css/style.css" rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>
<div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a  class="navbar-brand" href="index.jsp">SPDC

                </a>
            </div>

            <div class="notifications-wrapper">
<ul class="nav">
               
                              <li class="dropdown float">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <B>SETTINGS </B>
                        <i class="fa fa-user-plus"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                     <li><a href="editprofile.jsp"><i class="fa fa-user-plus"></i> Edit Profile</a></li>
                        <li class="divider"></li>
                        <li><a href="changepw.jsp"><i class="fa fa-user-plus"></i> Change Password</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="logout.jsp"><i class="fa fa-sign-out"></i> Logout</a>
                        </li>
                    </ul>
                </li>
            </ul>
            </div>
        </nav>
        <!-- /. NAV TOP  -->
        <nav  class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <div class="user-img-div">
                            <img src="assets/img/user.jpg" class="img-circle" />

                           
                        </div>

                    </li>
                     <li>
                       <a> <strong> Welcome <%=username%> </strong></a>
                    </li>

                    <li>
                        <a  href="index.jsp"><%=username%> Home</a>
                    </li>
                    
                   
                  
                        
                    
                    <li> 
                        <a>Bill Details <span ><i class="fa fa-caret-down"></i></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="viewbills.jsp">View Bill</a>
                            </li>
                            
                            
                        </ul>
                    </li>
                    <li>
                        <a  href="queries.jsp">Send Queries</a>
                    </li>
                   
                   
                </ul>
            </div>

        </nav>
        <!-- /. SIDEBAR MENU (navbar-side) -->
               <div id="page-wrapper" class="page-wrapper-cls">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">UPDATE HERE</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                           Fill The fields
                        </div>
                        <div class="panel-body">
                        
                        <%
                        Class.forName("oracle.jdbc.driver.OracleDriver");
                        Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "jishnu");
                        PreparedStatement ps = null;
                        ResultSet rs =null;
                        ps = connection.prepareStatement("select * from SPDC_USER_PROFILE where gsm_id=?");
                        ps.setString(1, username);
                        rs = ps.executeQuery();
                        %>
                        
                        
                       <form>
                       <%
                       while(rs.next())
                       {
                       %>
                          <!-- <div class="form-group">
                            <label for="exampleInputEmail1">DEVICE ID</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter the Device id" />
                          </div> -->
                          
                          <div class="form-group">
                            <label for="exampleInputEmail1">CUSTOMER NAME</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter the holder name"  name="customer_name" value="<%=rs.getString(5) %>"/>
                          </div>
                           
                           <div class="form-group">
                            <label for="exampleInputEmail1">DATE OF BIRTH</label>
                            <input type="date"  id="exampleInputEmail1" name="dob" value="<%=rs.getString(6) %>"/>
                          </div>


                          <div class="form-group">
                            <label for="exampleInputEmail1">HOUSE NO</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter your House number" name="house_no" value="<%=rs.getString(7) %>"/>
                          </div>

                          <div class="form-group">
                            <label for="exampleInputEmail1">STREET OR POST</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter the Street/Post" name="post" value="<%=rs.getString(8) %>"/>
                          </div>

                          <div class="form-group">
                            <label for="exampleInputEmail1">TOWN OR CITY</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter your town or city" name="town" value="<%=rs.getString(9) %>" />
                          </div>

                          <div class="form-group">
                            <label for="exampleInputEmail1">STATE</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter your State" name="state" value="<%=rs.getString(10) %>" />
                          </div>

                          <div class="form-group">
                            <label for="exampleInputEmail1">COUNTRY</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter your Country" name="country" value="India"  />
                          </div>

                          <div class="form-group">
                            <label for="exampleInputEmail1">Phone Number</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter your Phone number"  name="phone_number" value="<%=rs.getString(3) %>"/>
                          </div>

                          
                          <div class="form-group">
                            <label for="exampleInputEmail1">EMAIL ID</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter your email id" name="email" value="<%=rs.getString(4) %>" />
                          </div>

                          <div class="form-group">
                            <label for="exampleInputEmail1">RATION CARD NUMBER</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter your Ration card number" name="ration_card" value="<%=rs.getString(12) %>"/>
                          </div>

                          <!-- <div class="form-group">
                          <input type="checkbox"  id="exampleInputEmail1"  />   I Agree with all terms and conditions
                          </div> -->

                         
                          <button type="submit" class="btn btn-default">RESET</button>
                          <button type="submit" class="btn btn-default">UPDATE</button>
                        <%
                       }
                        %>   
                           
                          </form>
                        </div>
                    </div>
                    </div>
                    
                </div>

            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->

    <footer >
        &copy; 2015 YourCompany | By : <a href="http://www.designbootstrap.com/" target="_blank"></a>
    </footer>
    <!-- /. FOOTER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.11.1.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
    <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>

</body>
</html>
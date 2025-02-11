<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>UserPage</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME ICONS STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM STYLES-->
    <link href="assets/css/style.css" rel="stylesheet" />
    
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
                <a  class="navbar-brand" href="index.html">SPDC

                </a>
            </div>

            <div class="notifications-wrapper">
<ul class="nav">
               
                              <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <B>SETTINGS </B>
                        <i class="fa fa-user-plus"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="changepw.html"><i class="fa fa-user-plus"></i> Change Password</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="#"><i class="fa fa-sign-out"></i> Logout</a>
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
                       <a> <strong> Welcome User </strong></a>
                    </li>

                    <li>
                        <a href="index.html">User Home</a>
                    </li>
                    
                   
                    <li>
                        <a href="Payment.html">Payments</a>
                        
                    </li>
                        
                    
                    <li> 
                        <a>Bill Details <span ><i class="fa fa-caret-down"></i></span></a>
                         <ul class="nav nav-second-level">
                            <li>
                                <a href="viewbill.html">View Bill</a>
                            </li>
                             <li>
                                <a href="genbill.html">Generate Bill</a>
                            </li>
                            
                        </ul>
                    </li>
                    <li>
                        <a  href="queries.html">Send Queries</a>
                    </li>
                   <li>
                        <a href="editprofile.html">Edit Profile</a>
                   </li>
                </ul>
            </div>

        </nav>
        <!-- /. SIDEBAR MENU (navbar-side) -->
        <div id="page-wrapper" class="page-wrapper-cls">
            <div id="page-inner">
                <div class="row">
     <div id="page-wrapper" class="page-wrapper-cls">
           <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">Change Password</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-default">
                        
                        <div class="panel-body">
                       <form>
                          <div class="form-group">
                            <label for="exampleInputgsmid">Current Password</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter current password" />
                          </div>
                          
                          <hr />
                          <label for="exampleInputmobileno">New Password</label>
                            <input type="text" class="form-control" id="exampleInputmobileno" placeholder="Enter new password" />
                          <hr/>
                           <label for="exampleInputmobileno">Re-Enter Password</label>
                            <input type="text" class="form-control" id="exampleInputmobileno" placeholder="Enter re-enter password" />
                          <hr/>
                         
                          
                          <button type="submit" class="btn btn-default">Submit</button>
                           
                           
                          </form>
                        </div>
                    </div>
                    </div>
                    
                </div>

        </div>
    </div>
    </div>
    </div>
    </div>
    </div>
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
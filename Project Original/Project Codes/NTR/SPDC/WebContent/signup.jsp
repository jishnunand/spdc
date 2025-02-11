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
                        <a  href="index.html">User Home</a>
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
                        <a  href="editprofile.html">Edit Profile</a>
                   </li>
                   
                </ul>
            </div>

        </nav>
        <!-- /. SIDEBAR MENU (navbar-side) -->
               <div id="page-wrapper" class="page-wrapper-cls">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-head-line">SIGN UP </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-default">
                        <div class="panel-heading">
                           Fill The fields
                        </div>
                        <div class="panel-body">
                       <form>
                          <div class="form-group">
                            <label for="exampleInputEmail1">DEVICE ID</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter the Device id" />
                          </div>
                          
                          <div class="form-group">
                            <label for="exampleInputEmail1">CUSTOMER NAME</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter the holder name" />
                          </div>
                           
                           <div class="form-group">
                            <label for="exampleInputEmail1">DATE OF BIRTH</label>
                            <input type="dropdown"  id="exampleInputEmail1"  />
                          </div>


                          <div class="form-group">
                            <label for="exampleInputEmail1">HOUSE NO</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter your House number" />
                          </div>

                          <div class="form-group">
                            <label for="exampleInputEmail1">STREET OR POST</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter the Street/Post" />
                          </div>

                          <div class="form-group">
                            <label for="exampleInputEmail1">TOWN OR CITY</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter your town or city" />
                          </div>

                          <div class="form-group">
                            <label for="exampleInputEmail1">STATE</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter your State" />
                          </div>

                          <div class="form-group">
                            <label for="exampleInputEmail1">COUNTRY</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter your Country" />
                          </div>

                          <div class="form-group">
                            <label for="exampleInputEmail1">Phone Number</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter your Phone number" />
                          </div>

                          
                          <div class="form-group">
                            <label for="exampleInputEmail1">EMAIL ID</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter your email id" />
                          </div>

                          <div class="form-group">
                            <label for="exampleInputEmail1">RATION CARD NUMBER</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Enter your Ration card number" />
                          </div>

                          <div class="form-group">
                          <input type="checkbox"  id="exampleInputEmail1"  />   I Agree with all terms and conditions
                          </div>

                         
                          <button type="submit" class="btn btn-default">RESET</button>
                          <button type="submit" class="btn btn-default">SUBMIT</button>
                           
                           
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
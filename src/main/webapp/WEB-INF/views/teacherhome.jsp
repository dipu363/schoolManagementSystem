<%-- 
    Document   : teacherhome
    Created on : Dec 20, 2018, 12:41:22 AM
    Author     : HP
--%>
<!--        
    <li> <a href="showStudentlist">Student List</a></li> 
    <li> <a href="showteacherliset">Teacher List</a></li> 
    <li> <a href="noticeboardpage">Notice Board</a></li> -->


<%-- 
    Document   : admin
    Created on : Dec 13, 2018, 5:24:40 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Teacher - Dashboard</title>
        <link href="resources/dashboard/img/logo.ico" rel="shortcut icon" />
        <!-- Bootstrap core CSS-->
        <link href="resources/dashboard/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template-->
        <link href="resources/dashboard/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="resources/dashboard/datatables/dataTablesbootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="resources/dashboard/cssnew/sb-admin.css" rel="stylesheet">
        <script src="resources/dashboard/js/angular.js"></script>
        <script>
            var orderlist = ${orderlist};
            angular.module('organocartpackage', []).controller('ProductController',
                    function ($scope) {
                        $scope.orderlistobject = orderlist;
                        console.log($scope.orderlistobject);
                    });
        </script>

    </head>

    <body id="page-top">

        <nav class="navbar navbar-expand navbar-dark  static-top" style="background: #0c5460">

            <a class="navbar-brand mr-1" href="<%=request.getContextPath()%>">Nasir Uddin Model School & College</a>

            <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
                <i class="fas fa-bars"></i>
            </button>

            <!-- Navbar Search -->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">

            </form>

            <!-- Navbar -->
            <ul class="navbar-nav ml-auto ml-md-0">

                <li class="nav-item dropdown no-arrow">
                    <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-user-circle fa-fw"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="teacherwelcome">Hello ${sessionScope.UserLoggedIn}</a>
                        <a class="dropdown-item" href="<%=request.getContextPath()%>">Home</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
                    </div>
                </li>
            </ul>

        </nav>

        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="sidebar navbar-nav" style="background:  #0c5460">
                <li class="nav-item active">
                    <a class="nav-link" href="teacherwelcome">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Hello ${sessionScope.UserLoggedIn}</span>
                    </a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Show</span>
                    </a>
                    <div class="dropdown-menu"  style="background:  #02a388" aria-labelledby="pagesDropdown">
                        <h6 class="dropdown-header">Manu</h6>
                        <a class="dropdown-item" href="marksheetreportpage"> Result</a> 
                        <a class="dropdown-item" href="noticeboardpage">View Notice Board</a>
                        <a class="dropdown-item" href="classroutinreportpage">Search class Routine</a>
                        <a class="dropdown-item" href="reportView"> Exam schedule</a>
                        <a class="dropdown-item" href="studentlistreportpage">Show Student list</a>
                        <a class="dropdown-item" href="attendencelistreportpage">Show Attendance List</a>
                        <a class="dropdown-item" href="showteacherliset">Teacher List</a>



                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="attendencpage">

                        <span>Take Attendance </span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="showexammarkpage">

                        <span>Create Mark list</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="marksheetreportpage">

                        <span>Result</span></a>
                </li>

            </ul>

            <div id="content-wrapper">

                <div class="container-fluid">

                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="#">Shortcut</a>
                        </li>

                    </ol>

                    <!-- Icon Cards-->
                    <div class="row">
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white  o-hidden h-100" style="background: #0c5460">
                                <div class="card-body">
                                    <div class="card-body-icon">

                                    </div>
                                    <div class="mr-5">26 New Messages!</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="#">
                                    <span class="float-left">View Details</span>
                                    <span class="float-right">
                                        <i class="fas fa-angle-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white bg-danger o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon">

                                    </div>
                                    <div class="mr-5">26 New Messages!</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="#">
                                    <span class="float-left">View Details</span>
                                    <span class="float-right">
                                        <i class="fas fa-angle-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white  bg-danger o-hidden h-100" >
                                <div class="card-body">
                                    <div class="card-body-icon">

                                    </div>
                                    <div class="mr-5">26 New Messages!</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="#">
                                    <span class="float-left">View Details</span>
                                    <span class="float-right">
                                        <i class="fas fa-angle-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white  o-hidden h-100" style="background: #0c5460">
                                <div class="card-body">
                                    <div class="card-body-icon">

                                    </div>
                                    <div class="mr-5">26 New Messages!</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="#">
                                    <span class="float-left">View Details</span>
                                    <span class="float-right">
                                        <i class="fas fa-angle-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white  o-hidden h-100" style="background: #0c5460">
                                <div class="card-body">
                                    <div class="card-body-icon">

                                    </div>
                                    <div class="mr-5">26 New Messages!</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="#">
                                    <span class="float-left">View Details</span>
                                    <span class="float-right">
                                        <i class="fas fa-angle-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                        <div class="col-xl-3 col-sm-6 mb-3">
                            <div class="card text-white bg-danger o-hidden h-100">
                                <div class="card-body">
                                    <div class="card-body-icon">

                                    </div>
                                    <div class="mr-5">26 New Messages!</div>
                                </div>
                                <a class="card-footer text-white clearfix small z-1" href="#">
                                    <span class="float-left">View Details</span>
                                    <span class="float-right">
                                        <i class="fas fa-angle-right"></i>
                                    </span>
                                </a>
                            </div>
                        </div>
                    </div>

                    <!-- Area Chart Example-->
                    <!--          <div class="card mb-3">
                                <div class="card-header">
                                  <i class="fas fa-chart-area"></i>
                                  Area Chart Example</div>
                                <div class="card-body">
                                  <canvas id="myAreaChart" width="100%" height="30"></canvas>
                                </div>
                                <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                              </div>-->
                    <!--                    <div class="row" ng-app="organocartpackage" ng-controller="ProductController">
                    
                                            <div class="col-lg-4 col-md-6 mb-4 panel" ng-repeat="p in orderlistobject">
                                                <p>{{p.orderid}}</p>
                                            </div>
                                        </div>-->

                    <!-- DataTables Example -->


                </div>
                <!-- /.container-fluid -->

                <!-- Sticky Footer -->
                <footer class="sticky-footer">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span> Copyrights and copy 2018  | All Rights Reserved | Design by Giyas uddin</span>
                        </div>
                    </div>
                </footer>

            </div>
            <!-- /.content-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="logout">Logout</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="resources/dashboard/jquery/jquery.min.js"></script>
        <script src="resources/dashboard/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="resources/dashboard/jquery-easing/jquery.easing.min.js"></script>

        <!-- Page level plugin JavaScript-->
        <script src="resources/dashboard/chart/Chartmin.js"></script>
        <script src="resources/dashboard/datatables/jquerydataTables.js"></script>
        <script src="resources/dashboard/datatables/dataTablesbootstrap4.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="resources/dashboard/jsnew/sb-adminmin.js"></script>

        <!-- Demo scripts for this page-->
        <script src="resources/dashboard/jsnew/demo/datatablesdemo.js"></script>
        <script src="resources/dashboard/jsnew/demo/chartareademo.js"></script>

    </body>

</html>



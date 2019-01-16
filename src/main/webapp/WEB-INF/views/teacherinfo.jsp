<%-- 
    Document   : addsupplier
    Created on : Nov 25, 2018, 2:58:04 PM
    Author     : User
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Admin</title>
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
            var teacherlist = ${teacherlist};
            var sublist = ${sublist};
            angular.module('myapp', []).controller('teacherController',
                    function ($scope) {
                    $scope.teachers = teacherlist;
                    $scope.subject = sublist;
                    console.log($scope.subject);
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
                    <a class="nav-link dropdown-toggle" href="adminwelcome" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-user-circle fa-fw"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">Hello ${sessionScope.UserLoggedIn}</a>
                        <a class="dropdown-item" href="<%=request.getContextPath()%>">Home</a>
                        <a class="dropdown-item" href="adminsignuppage">Admin Signup</a>

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
                    <a class="nav-link" href="adminwelcome">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Hello ${sessionScope.UserLoggedIn}</span>
                    </a>
                </li>
                <li class="nav-item dropdown" >
                    <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Add</span>
                    </a>
                    <div class="dropdown-menu"  style="background:  #02a388"  aria-labelledby="pagesDropdown">
                        <h6 class="dropdown-header">Settings:</h6>
                        <a class="dropdown-item" href="academicYearpage">Add Academic year</a>
                        <a class="dropdown-item" href="showingclasspage">Add Class</a>
                        <a class="dropdown-item" href="showingsubjectpage">Add Subject</a>
                        <a class="dropdown-item" href="showinggrouppage">Add Group</a>
                        <a class="dropdown-item" href="showsectionpage">Add Section </a>
                        <a class="dropdown-item" href="studentinfoepage">Add Student</a>
                        <a class="dropdown-item" href="showteacherpage">Add Teacher</a>
                        <a class="dropdown-item" href="showregistrationpage">Student Registration</a>
                        <div class="dropdown-divider"></div>
                        <h6 class="dropdown-header">Other Pages:</h6>
                        <a class="dropdown-item" href="noticepage">Add Notice</a>
                        <a class="dropdown-item" href="showexaminfopage">Add Exam</a>

                        <a class="dropdown-item" href="showclassroutinpage">Create Class routine</a>
                        <a class="dropdown-item" href="showclassteacherpage" >Assine Class teacher </a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Show</span>
                    </a>
                    <div class="dropdown-menu"  style="background:  #02a388" aria-labelledby="pagesDropdown">
                        <h6 class="dropdown-header">Settings:</h6>
                        <a class="dropdown-item" href="searchattendancsheet">Attendance</a>
                        <a class="dropdown-item" href="marksheetreportpage"> Result</a>
                        <a class="dropdown-item" href="userlistinfo">User List</a>
                        <a class="dropdown-item" href="viewstudent">View one Studentinfo</a>
                        <a class="dropdown-item" href="noticeboardpage">View Notice Board</a>
                        <a class="dropdown-item" href="classroutinreportpage">Search class Routine</a>
                        <a class="dropdown-item" href="paymentreportpage">Search Monthly Payment</a>
                        <a class="dropdown-item" href="reportView">search Exam</a>
                        <a class="dropdown-item" href="studentlistreportpage">search Student</a>

                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="showpaymentpage">

                        <span>Monthly Payment</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="marksheetreportpage">

                        <span>Result</span></a>
                </li>
            </ul>

            <div id="content-wrapper">

                <div class="container-fluid" ng-app="myapp" ng-controller="teacherController" >

                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="showwelcomepage">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Add Teacher</li>
                    </ol>
                    <!-- end panel heading -->
                    <div class="panel-body" >
                        <div class="formcontainer ">

                            <c:if test="${check}">
                                <form:form commandName="newTeacherObject" action="teacheradd"
                                           enctype="multipart/form-data">


                                  


                                        <div class="form-group">
                                            <h5>Teacher Name</h5>

                                        <form:input class="form-control" Placeholder="Teacher Name"
                                                    type="text" path="tname" required="true"></form:input>
                                        </div>
                                        <div class="form-group">
                                            <h5>Teacher Subject</h5>
                                            <select class="form-control" ng-model="subjectid" ng-options="x.subid as x.subname for x in subject" required="true">
                                                <option value="">-- choose a Subject --</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                        <form:hidden  class="form-control" value="{{subjectid}}" path="subid"></form:hidden>
                                        </div>

                                        <div class="form-group">
                                            <h5>Address</h5>
                                        <form:input type="text" class="form-control"
                                                    Placeholder="Address" path="taddress" required="true"></form:input>
                                        </div>
                                        <div class="form-group">
                                            <h5>Email</h5>
                                        <form:input type="text" class="form-control"
                                                    placeholder="Email" path="temail" required="true"></form:input>
                                        </div>
                                        <div class="form-group">
                                            <h5>Contact no</h5>
                                        <form:input type="text" class="form-control"
                                                    placeholder="Contact No" path="tcontact" required="true"></form:input>
                                        </div>



                                        <div class="form-group">
                                            <h5>Joining Date</h5>
                                        <form:input type="text" class="form-control"  path="tjoindate" placeholder="Joining Date" required="true" id="date" ></form:input>

                                        </div>

                                        <div class="form-group">
                                            <h5>Gender</h5>
                                            <select class="form-control" ng-model="gen" required="true">
                                                <option value="">--Select Gender --</option>

                                                <option value="Male"> Male</option>
                                                <option value="Female"> Female</option>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                        <form:hidden  class="form-control" value="{{gen}}" path="tgender"></form:hidden>
                                        </div>
                                        <div class="form-group">
                                            <h5>Status</h5>
                                            <select class="form-control" ng-model="sta" required="true">
                                                <option value="">--Select Status --</option>

                                                <option value="Assisten Teacher Part Time"> Part Time Teacher</option>
                                                <option value="Assisten Teacher full Time"> Permanent Teacher</option>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                        <form:hidden  class="form-control" value="{{sta}}" path="tstatus"></form:hidden>
                                        </div>



                                        <div class="form-group">
                                            <h5>Image</h5>
                                        <form:input type="file" name="fileToUpload" id="fileToUpload"
                                                    path="timage" required="true"></form:input>
                                        </div>
                                    <form:button type="submit" class="btn btn-success" id="editbuttons" name="Add">Submit</form:button>
                                    <form:button type="reset" class="btn btn-danger" id="removebuttons">Reset Details</form:button>
                                </form:form>
                            </c:if>
                            <c:if test="${!check}">
                                <form:form commandName="newTeacherObject" action="teacheradd"
                                           enctype="multipart/form-data">


                                    <div class="form-group">
                                        <h5>Teacher Id</h5>
                                        <form:input class="form-control" Placeholder="Teacher Id"
                                                    type="text" path="tid" required="true"></form:input>
                                        </div>


                                        <div class="form-group">
                                              <h5>Teacher Name</h5>

                                        <form:input class="form-control" Placeholder="Teacher Name"
                                                    type="text" path="tname" required="true"></form:input>
                                        </div>
                                        <div class="form-group">
                                           <h5>Teacher Subject</h5>
                                            <select class="form-control" ng-model="subjectid" ng-options="x.subid as x.subname for x in subject" required="true">
                                                <option value="">-- choose a Subject --</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            
                                        <form:hidden  class="form-control" value="{{subjectid}}" path="subid"></form:hidden>
                                        </div>

                                        <div class="form-group">
                                            <h5>Address</h5>
                                        <form:input type="text" class="form-control"
                                                    Placeholder="Address" path="taddress" required="true"></form:input>
                                        </div>
                                        <div class="form-group">
                                                  <h5>Email</h5>
                                        <form:input type="text" class="form-control"
                                                    placeholder="Email" path="temail" required="true"></form:input>
                                        </div>
                                        <div class="form-group">
                                                  <h5>Contact</h5>
                                        <form:input type="text" class="form-control"
                                                    placeholder="Contact No" path="tcontact" required="true"></form:input>
                                        </div>



                                        <div class="form-group">
                                        <form:input type="text" class="form-control"  path="tjoindate" placeholder="Joining Date" required="true" id="date" ></form:input>

                                        </div>

                                        <div class="form-group">
                                            <h5>Gender</h5>
                                            <select class="form-control" ng-model="gen" required="true">
                                                <option value="">--Select Gender --</option>

                                                <option value="Male"> Male</option>
                                                <option value="Female"> Female</option>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                        <form:hidden  class="form-control" value="{{gen}}" path="tgender"></form:hidden>
                                        </div>
                                        <div class="form-group">
                                            <h5>Status</h5>
                                            <select class="form-control" ng-model="sta" required="true">
                                                <option value="">--Select Status --</option>

                                                <option value=" Part Time"> Part Time Teacher</option>
                                                <option value=" full Time"> Permanent Teacher</option>
                                            </select>
                                        </div>

                                        <div class="form-group">
                                        <form:hidden  class="form-control" value="{{sta}}" path="tstatus"></form:hidden>
                                        </div>



                                        <div class="form-group">
                                            <h5>Image</h5>
                                        <form:input type="file" name="fileToUpload" id="fileToUpload"
                                                    path="timage" required="true"></form:input>
                                        </div>
                                    <form:button id="editbuttons" type="submit" class="btn btn-success " name="Edit">Edit </form:button>
                                    <form:button id="removebuttons" type="reset" class="btn btn-danger ">Reset Details</form:button>
                                </form:form>
                            </c:if>
                        </div>
                    </div>

                    <br>

                    <!-- panel body end -->
                    <!-- DataTables Example -->
                    <div class="card mb-3">
                        <div class="card-header">
                            <i class="fas fa-table"></i>
                            Teacher List</div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Image</th>
                                            <th> Id</th>
                                            <th> Name</th>
                                            <th>Subject</th>
                                            <th>Address:</th>
                                            <th>Email:</th>
                                            <th>Contact</th>
                                            <th>>Joining Date </th>
                                            <th>Gender</th>
                                            <th>Status</th>
                                            <th>Manage </th>

                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Image</th>
                                            <th> Id</th>
                                            <th> Name</th>
                                            <th>Subject</th>
                                            <th>Address:</th>
                                            <th>Email:</th>
                                            <th>Contact</th>
                                            <th>Joining Date </th>
                                            <th>Gender</th>
                                            <th>Status</th>
                                            <th>Manage </th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr  ng-repeat="teacher in teachers">
                                            <td><img class="img-responsive" style="width:75px ;height:90px" src="resources/timage/{{teacher.tid}}.jpg"  />    </td>

                                            <td>{{teacher.tid}}</td>
                                            <td>{{teacher.tname}}</td>
                                            <td>{{teacher.subid}}</td>
                                            <td>{{teacher.taddress}}</td>
                                            <td>{{teacher.temail}}</td>
                                            <td>{{teacher.tcontact}}</td>
                                            <td>{{teacher.tjoindate}}</td>
                                            <td>{{teacher.tgender}}</td>
                                            <td>{{teacher.tstatus}}</td>
                                          

                                            <td><a href="editingteacher?gettid={{teacher.tid}}"><button id="editbuttons" type="submit" class="btn">Edit</button></a> <a  href="removingteacher/{{teacher.tid}}"><button id="removebuttons" type="button" class="btn btn-danger ">Remove</button></a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                    </div>
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



        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

        <script>
                                                $(document).ready(function () {
                                                var date_input = $('input[name="tjoindate"]'); //our date input has the name "date"
                                                var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                                date_input.datepicker({
                                                format: 'yyyy/mm/dd',
                                                        container: container,
                                                        todayHighlight: true,
                                                        autoclose: true,
                                                })
                                                })
        </script>
    </body>
</html>


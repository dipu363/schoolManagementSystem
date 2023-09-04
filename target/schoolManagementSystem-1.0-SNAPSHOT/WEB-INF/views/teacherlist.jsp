<%-- 
    Document   : addproduct
    Created on : Nov 25, 2018, 5:18:28 PM
    Author     : User
--%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style type="text/css">

            .form-control:FOCUS
            {
                border: 2px solid #9ccc65;
                border-radius: 5px;
            }

            .panel>.panel-heading {
                color: #2aabd2;
                background-color:  #761c19;
                border-color:  #761c19;
            }
            .panel>.panel-body
            {
                background-color: #f1f8e9;
                border-color: #aed581;
            }
            .list-group-item {
                overflow: hidden;
                margin: 3px;
                border-radius: 3px;
            }
            #removebuttons
            {
                color: #ffffff;
                background-color: #e57373;
            }
            #removebuttons:HOVER {
                color: #ffffff;
                background-color: #e53935;
            }
            #editbuttons{
                color: #ffffff;
                background: linear-gradient(to bottom, #aed581 50%, #761c19 50%);
            }
            #editbuttons:HOVER {
                color: #ffffff;
                background: linear-gradient(to bottom, #761c19 50%, #8bc34a 50%);
            }
        </style>
        <script src="resources/js/angular.js"></script>

        <script>
            var teacherlist = ${teacherlist};
            var sublist = ${sublist};


            angular.module('organocartpackage', []).controller('ProductController',
                    function ($scope) {
                        $scope.teachers = teacherlist;
                        $scope.subject = sublist;

                        console.log($scope.subject);
                    });
        </script>
    </head>
    <body ng-app="organocartpackage" ng-controller="ProductController">
        <jsp:include page="header.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <!-- panel end -->
            <div class="panel animated fadeInUp delay-05s" id="panel-2">
                <div class="panel-heading">
                    <span class="lead">Teacher List</span>
                </div>
                <p><input type="text" ng-model="test" class="form-control" placeholder="Search Teacher "></p>
                <!-- end panel2 heading -->
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item" height="45px"
                            ng-repeat="teacher in teachers| filter:test ">
                            <table style="width: 100%">
                                <tr>
                                    <td><img class="img-responsive" style="width:125px ;height:150px" src="resources/timage/{{teacher.tid}}.jpg" />
                                    </td>
                                    <td>
                                        <ul>
                                            <li><span><b>Teacher Id: </b></span>{{teacher.tid}}</li>
                                            <li><span><b>Teacher Name: </b></span>{{teacher.tname}}</li>
                                            <li><span><b>Subject: </b></span>{{teacher.subid}}</li>
                                            <li><span><b>Address: </b></span>{{teacher.taddress}}</li>
                                            <li><span><b>Email: </b></span>{{teacher.temail}}</li>
                                            <li><span><b>Contact no: </b></span>{{teacher.tcontact}}</li>
                                            <li><span><b>Joining Date: </b></span>{{teacher.tjoindate}}</li>
                                            <li><span><b>Gender: </b></span>{{teacher.tgender}}</li>
                                            <li><span><b>Status: </b></span>{{teacher.tstatus}}</li>
                                        </ul>
                                    </td>
                                   
                                </tr>
                            </table>
                        </li>
                    </ul>
                </div>
                <!-- panel2 body end -->
            </div>
            <!-- panel2 end -->
        </div>

        <jsp:include page="footer.jsp" />


        

        <!-- Include Date Range Picker -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

  

        
    </body>
</html>

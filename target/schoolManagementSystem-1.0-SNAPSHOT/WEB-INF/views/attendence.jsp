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
            var attendencelist = ${attendencelists};
            var studentlist = ${studentlists};
            var streglist = ${streglists};
            var classlist = ${classlists};
            var grouplist = ${grouplists};
            var sectiontlist = ${sectiontlists};



            angular.module('organocartpackage', []).controller('ProductController',
                    function ($scope) {
                        $scope.attendencelists = attendencelist;
                        $scope.studentlists = studentlist;
                        $scope.streglists = streglist;
                        $scope.classlists = classlist;
                        $scope.grouplists = grouplist;
                        $scope.sectiontlists = sectiontlist;


                        console.log($scope.studentlists);
                    });
        </script>
    </head>
    <body ng-app="organocartpackage" ng-controller="ProductController">
        <jsp:include page="header.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Attendance</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="attendenceObject" action="addingattendence"
                                   enctype="multipart/form-data">
                           

                                <div class="form-group">
                                    <select class="form-control" ng-model="stuid" ng-options="x.stid  as x.stid for x in studentlists" required="true">
                                        <option value="">-- Choose Student id--</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{stuid}}" path="stid"></form:hidden>
                                </div>
                                <div class="form-group">
                                    <select class="form-control" ng-model="strid" ng-options="x.regid as x.regid for x in streglists">
                                        <option value="">-- Registration No--</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{strid}}" path="regid"></form:hidden>
                                </div>

                              

                                <div class="form-group">
                                    <select class="form-control" ng-model="cId" ng-options="x.classid as x.classname for x in classlists" required="true">
                                        <option value="">-- Choose Class name--</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{cId}}" path="classid"></form:hidden>
                                </div>
                                  <div class="form-group">
                                    <select class="form-control" ng-model="gid" ng-options="x.groupid as x.groupname for x in grouplists" >
                                        <option value="">-- choose group --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{gid}}" path="groupid"></form:hidden>
                                </div>

                                <div class="form-group">
                                    <select class="form-control" ng-model="section" ng-options="x.secid as x.secname for x in sectiontlists" >
                                        <option value="">-- choose Section --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{section}}" path="secid"></form:hidden>
                                </div>


                              



                            <c:if test="${check}">
                                <form:button id="editbuttons" type="submit" name="Add" class="btn">Add
                                    Details</form:button>
                                <form:button id="removebuttons" type="reset" class="btn">Reset
                                    Details</form:button>
                            </c:if>
                            <c:if test="${!check}">
                                <form:button id="editbuttons" type="submit" name="Edit" class="btn">Edit
                                    Details</form:button>
                                <form:button id="removebuttons" type="reset" class="btn">Reset
                                    Details</form:button>
                            </c:if>
                            <a href="attendencpage"><button id="show" type="button" class="btn">Cancel</button></a>        
                        </form:form>
                    </div>
                    <!-- panel body end -->
                </div>
            </div>
            <!-- panel end -->
            <div class="panel animated fadeInUp delay-05s" id="panel-2">
                <div class="panel-heading">
                    <span class="lead">Attendance</span>
                </div>
                <p><input type="text" ng-model="test" class="form-control" placeholder="Search Attendance "></p>
                <!-- end panel2 heading -->
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item" height="45px"
                            ng-repeat="atten in attendencelists| filter:test ">
                            <table style="width: 100%">
                                <tr>

                                    <td>
                                        <ul>
                                            <li><span><b>Attendance id: </b></span>{{atten.atid}}</li>
                                            <li><span><b>Student id:</b></span>{{atten.stid}}</li>
                                            <li><span><b>Registration No :</b></span>{{atten.regid}}</li>
                                             <li><span><b>Class id :</b></span>{{atten.classid}}</li>
                                              <li><span><b>Group:</b></span>{{atten.groupid}}</li>
                                            <li><span><b>Section :</b></span>{{atten.secid}}</li>
                                            <li><span><b>Date :</b></span>{{atten.atdate}}</li>
                                            <li><span><b>Status :</b></span>{{atten.atstatus}}</li>

                                        </ul>
                                    </td>
                                    <td> <a href="editingattendence?getatid={{atten.atid}}"><button id="editbuttons"
                                                                                                    type="submit" class="btn">Edit</button></a> <a
                                            href="removingattendence/{{atten.atid}}"><button  id="removebuttons"
                                                                                          type="button" class="btn">Remove</button></a></td>
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


        <!--<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>-->

        <!-- Include Date Range Picker -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

        <script>
                                                        $(document).ready(function () {
                                                            var date_input = $('input[name="atdate"]'); //our date input has the name "date"
                                                            var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                                            date_input.datepicker({
                                                                format: 'yyyy/mm/dd',
                                                                container: container,
                                                                todayHighlight: true,
                                                                autoclose: true,
                                                            })
                                                        })
        </script>

        <!--     Form code begins 
            <form method="post">
              <div class="form-group">  Date input 
                <label class="control-label" for="date">Date</label>
                <input class="form-control" id="date" name="date" placeholder="MM/DD/YYY" type="text"/>
              </div>
             </form>-->
    </body>
</html>



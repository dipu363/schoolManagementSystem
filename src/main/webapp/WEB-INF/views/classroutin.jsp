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
            var routinlists = ${routinlists};
            var teacherlists = ${teacherlists};
            var subjectlists = ${subjectlists};
            var classlists = ${classlists};
            var sectionlists = ${sectionlists};


            angular.module('organocartpackage', []).controller('ProductController',
                    function ($scope) {
                        $scope.routinlists = routinlists;
                        $scope.teacherlists = teacherlists;
                        $scope.subjectlists = subjectlists;
                        $scope.classlists = classlists;
                        $scope.sectionlists = sectionlists;

                        console.log($scope.teacherlists);
                    });
        </script>
    </head>
    <body ng-app="organocartpackage" ng-controller="ProductController">
   <jsp:include page="adminheader.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Create Class Routine</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="classroutinObject" action="classroutinadd"
                                   enctype="multipart/form-data">

                            <c:if test="${!check}">
                                <div class="form-group">
                                    <form:input class="form-control" Placeholder="ClassRoutine ID"
                                                type="text" path="routineid" readonly="true" required="true"></form:input>
                                    </div>
                            </c:if>

                            <div class="form-group">
                                <select class="form-control" ng-model="dname" required="true">
                                    <option value="">--Select Day Name--</option>
                                    <option value="Saturday">Saturday</option>
                                    <option value="Sunday">Sunday</option>
                                    <option value="Monday">Monday</option>
                                    <option value="Tuesday">Tuesday</option>
                                    <option value="Wednesday">Wednesday</option>
                                    <option value="Thursday">Thursday</option>

                                </select>
                            </div>
                            <div class="form-group">
                                <form:hidden  class="form-control" value="{{dname}}" path="dayname"></form:hidden>
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
                                    <select class="form-control" ng-model="section" ng-options="x.secid as x.secname for x in sectionlists" required="true">
                                        <option value="">-- choose Section --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{section}}" path="secid"></form:hidden>
                                </div>

                                <div class="form-group">
                                    <select class="form-control" ng-model="pname" required="true">
                                        <option value="">--Select Period --</option>
                                        <option value="1st">1st</option>
                                        <option value="2nd">2nd</option>
                                        <option value="3rd">3rd</option>
                                        <option value="4th">4th</option>
                                        <option value="5th">5th</option>
                                        <option value="6th">6th</option>
                                        <option value="7th">7th</option>
                                        <option value="8th">8th</option>

                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{pname}}" path="periodname"></form:hidden>
                                </div>

                                <div class="form-group">
                                    <select class="form-control" ng-model="sid" ng-options="x.subid as x.subname for x in subjectlists" required="true">
                                        <option value="">-- choose Subject name --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{sid}}" path="subid"></form:hidden>
                                </div>

                                <div class="form-group">
                                    <select class="form-control" ng-model="teacherid" ng-options="x.tid as x.tname for x in teacherlists" required="true">
                                        <option value="">-- Teacher Name--</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{teacherid}}" path="tid"></form:hidden>
                                </div>



                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Period Time"
                                            type="text" path="periodtime" required="true"></form:input>
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
                            <a href="showclassroutinpage"><button id="show" type="button" class="btn">Cancel</button></a>        
                        </form:form>
                    </div>
                    <!-- panel body end -->
                </div>
            </div>
            <!-- panel end -->
            <div class="panel animated fadeInUp delay-05s" id="panel-2">
                <div class="panel-heading">
                    <span class="lead">Class Routine Chart</span>
                </div>
                <p><input type="text" ng-model="test" class="form-control" placeholder="Search Class Routine"></p>
                <!-- end panel2 heading -->
                <div class="panel-body">


                    <ul class="list-group">
                        <li class="list-group-item" height="45px">

                            <table style="width: 100%">
                                <tr>

                                    <th>Routine Id :</th>
                                    <th>Day name :</th>
                                    <th>Class Id :</th>
                                    <th>Section Id :</th>
                                    <th>Period name :</th>
                                    <th>Subject Id :</th>
                                    <th>Teacher Id :</th>
                                    <th>Period time :</th>
                                    <th>Action :</th>

                                </tr >
                                <tr ng-repeat="cr in routinlists| filter:test" border="1">

                                    <td>{{cr.routineid}}</td>
                                    <td>{{cr.dayname}}</td>
                                    <td>{{cr.classid}}</td>
                                    <td>{{cr.secid}}</td>
                                    <td>{{cr.periodname}}</td>
                                    <td>{{cr.subid}}</td>
                                    <td>{{cr.tid}}</td>
                                    <td>{{cr.periodtime}}</td>
                                    <td><a href="editingclassroutin?getcrid={{cr.routineid}}"><button id="editbuttons"
                                                                                                      type="submit" class="btn">Edit</button></a> <a
                                            href="removingclassroutin/{{cr.routineid}}"><button id="removebuttons"
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





    </body>
</html>

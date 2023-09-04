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
            var classteacherlists = ${classteacherlists};
            var teacherlist = ${teacherlist};
            var grouplists = ${grouplists};
            var classlists = ${classlists};
            var sectionlists = ${sectionlists};
            var yearslists = ${yearslists};

            angular.module('organocartpackage', []).controller('ProductController',
                    function ($scope) {
                        $scope.classteacherlists = classteacherlists;
                        $scope.teacherlist = teacherlist;
                        $scope.grouplists = grouplists;
                        $scope.classlists = classlists;
                        $scope.sectionlists = sectionlists;
                        $scope.yearslists = yearslists;
                        console.log($scope.teacherlist);
                    });
        </script>
    </head>
    <body ng-app="organocartpackage" ng-controller="ProductController">
        <jsp:include page="adminheader.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Class Teacher</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="classteacherObject" action="classteacheradd"
                                   enctype="multipart/form-data">
                            <c:if test="${check}">
                                <div class="form-group">

                                    <form:input class="form-control" Placeholder="Assign Id"
                                                type="text" path="assignid" required="true"></form:input>
                                </div>
                            </c:if>
                            <c:if test="${!check}">
                                <div class="form-group">
                                    <form:input class="form-control" Placeholder="Assign Id"
                                                type="text" path="assignid" readonly="true" required="true"></form:input>
                                </div>
                            </c:if>
                               
                               
                                
                                <div class="form-group">
                                <select class="form-control" ng-model="teacherid" ng-options="x.tid as x.tname for x in teacherlist" required="true">
                                    <option value="">-- Teacher Name--</option>
                                </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{teacherid}}" path="tid"></form:hidden>
                                </div>
                                <div class="form-group">
                                <select class="form-control" ng-model="cId" ng-options="x.classid as x.classname for x in classlists" required="true">
                                    <option value="">-- Choose Class --</option>
                                </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{cId}}" path="classid"></form:hidden>
                                </div>
                                <div class="form-group">
                                <select class="form-control" ng-model="gid" ng-options="x.groupid as x.groupname for x in grouplists" required="true">
                                    <option value="">-- choose Group --</option>
                                </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{gid}}" path="groupid"></form:hidden>
                                </div>
                                <div class="form-group">
                                <select class="form-control" ng-model="section" ng-options="x.secid as x.secname for x in sectionlists" required="true">
                                    <option value="">-- choose Section--</option>
                                </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{section}}" path="secid"></form:hidden>
                                </div>
                                <div class="form-group">
                                <select class="form-control" ng-model="acyearid" ng-options="x.yearid as x.academicYear for x in yearslists" required="true">
                                    <option value="">-- Academic Year --</option>
                                </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{acyearid}}" path="yearid"></form:hidden>
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
                            <a href="showclassteacherpage"><button id="show" type="button" class="btn">Cancel</button></a>        
                        </form:form>
                    </div>
                    <!-- panel body end -->
                </div>
            </div>
            <!-- panel end -->
            <div class="panel animated fadeInUp delay-05s" id="panel-2">
                <div class="panel-heading">
                    <span class="lead">Class Teacher List</span>
                </div>
                <p><input type="text" ng-model="test" class="form-control" placeholder="Search Class Teacher"></p>
                <!-- end panel2 heading -->
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item" height="45px"
                            ng-repeat="ct in classteacherlists| filter:test">
                            <table style="width: 100%">
                                <tr>
                        
                          
                                    <td>
                                        <ul>
                                            <li><span><b>Assign Id: </b></span>{{ct.assignid}}</li>
                                            <li><span><b>Teacher Id: </b></span>{{ct.tid}}</li>
                                            <li><span><b>Class Id: </b></span>{{ct.classid}}</li>
                                            <li><span><b>Group Id: </b></span>{{ct.groupid}}</li>
                                            <li><span><b>Section Id: </b></span>{{ct.secid}}</li>
                                            <li><span><b> Year Id: </b></span>{{ct.yearid}}</li>
                                        </ul>
                                    </td>
                                    <td><a href="editingclassteacher?getctid={{ct.assignid}}"><button id="editbuttons"
                                                                                                      type="submit" class="btn">Edit</button></a> <a
                                            href="removingclassteacher/{{ct.assignid}}"><button id="removebuttons"
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

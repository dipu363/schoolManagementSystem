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
            var marklists = ${marklist};
            var studentlists = ${studentlist};
            var grouplists = ${grouplist};
            var yearlists = ${yearlist};
            var subjectlists = ${subjectlist};
            var classlists = ${classlist};
            var sectionlists = ${sectionlist};
            var examlists = ${examlist};


            angular.module('organocartpackage', []).controller('ProductController',
                    function ($scope) {
                        $scope.marklist = marklists;
                        $scope.studentlist = studentlists;
                        $scope.grouplist = grouplists;
                        $scope.yearlist = yearlists;
                        $scope.subjectlist = subjectlists;
                        $scope.classlist = classlists;
                        $scope.sectionlist = sectionlists;
                        $scope.examlist = examlists;

                        console.log($scope.examlist);
                    });
        </script>
    </head>
    <body ng-app="organocartpackage" ng-controller="ProductController">
        <jsp:include page="header.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Add Exam Mark</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="exammarkObject" action="examMarkadd"
                                   enctype="multipart/form-data">

                            <c:if test="${!check}">
                                <div class="form-group">
                                    <form:input class="form-control" Placeholder="Mark ID"
                                                type="text" path="markid" readonly="true" required="true"></form:input>
                                    </div>
                            </c:if>

                            <div class="form-group">
                                <select class="form-control" ng-model="yId" ng-options="x.yearid as x.academicYear for x in yearlist" required="true">
                                    <option value="">-- Choose Academic Year--</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <form:hidden  class="form-control" value="{{yId}}" path="yearid"></form:hidden>
                                </div>

                                <div class="form-group">
                                    <select class="form-control" ng-model="cId" ng-options="x.classid as x.classname for x in classlist" required="true">
                                        <option value="">-- Choose Class name--</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{cId}}" path="classid"></form:hidden>
                                </div>
                                <div class="form-group">
                                    <select class="form-control" ng-model="section" ng-options="x.secid as x.secname for x in sectionlist" >
                                        <option value="">-- choose Section --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{section}}" path="secid"></form:hidden>
                                </div>

                                <div class="form-group">
                                    <select class="form-control" ng-model="gid" ng-options="x.groupid as x.groupname for x in grouplist" required="true">
                                        <option value="">-- choose group --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{gid}}" path="groupid"></form:hidden>
                                </div>
                                <div class="form-group">
                                    <select class="form-control" ng-model="stuid" ng-options="x.stid as x.stid for x in studentlist" required="true">
                                        <option value="">-- Choose Student id--</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{stuid}}" path="stid"></form:hidden>
                                </div>

                                <div class="form-group">
                                    <select class="form-control" ng-model="sub" ng-options="x.subid as x.subname for x in subjectlist" required="true">
                                        <option value="">-- choose Subject --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{sub}}" path="subid"></form:hidden>
                                </div>
                                <div class="form-group">
                                    <select class="form-control" ng-model="ex" ng-options="x.examid as x.examtitle for x in examlist" required="true">
                                        <option value="">-- choose Exam  --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{ex}}" path="examid"></form:hidden>
                                </div>

                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Mark Obtain"
                                            type="text" path="markobtain" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Gread"
                                            type="text" path="markgrade" required="true"></form:input>
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
                            <a href="showexammarkpage"><button id="show" type="button" class="btn">Cancel</button></a>        
                        </form:form>
                    </div>
                    <!-- panel body end -->
                </div>
            </div>
            <!-- panel end -->
            <div class="panel animated fadeInUp delay-05s" id="panel-2">
                <div class="panel-heading">
                    <span class="lead">Mark list</span>
                </div>
                <p><input type="text" ng-model="test" class="form-control" placeholder="Search Mark list"></p>
                <!-- end panel2 heading -->
                <div class="panel-body">


                    <ul class="list-group">
                        <li class="list-group-item" height="45px">

                            <table style="width: 100%" border="1">
                                <tr>
                                    <th>Mark Id:</th>
                                    <th>Year Id:</th>                                   
                                    <th>Class Id:</th>
                                    <th>Section Id:</th>
                                    <th>Group Id:</th>
                                    <th>Student Id:</th>                                   
                                    <th>Subject Id:</th>
                                    <th>Exam Id:</th>
                                    <th>Mark Obtain :</th>
                                    <th>Mark Grade :</th>
                                    
                                    <th>Action:</th>

                                </tr >
                                <tr ng-repeat="em in marklist| filter:test" border="1">

                                    <td>{{em.markid}}</td>
                                    <td>{{em.yearid}}</td>
                                    <td>{{em.classid}}</td>
                                    <td>{{em.secid}}</td>
                                    <td>{{em.groupid}}</td>
                                    <td>{{em.stid}}</td>
                                    <td>{{em.subid}}</td>                                                                  
                                    <td>{{em.examid}}</td>                                                                  
                                    <td>{{em.markobtain}}</td>
                                    <td>{{em.markgrade}}</td>
                                    <td><a href="editingexammark?getemid={{em.markid}}"><button id="editbuttons"
                                                                                                type="submit" class="btn">Edit</button></a> <a
                                            href="removingexammark/{{em.markid}}"><button id="removebuttons"
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

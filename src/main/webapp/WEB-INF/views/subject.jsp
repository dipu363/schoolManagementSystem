<%-- 
    Document   : addClass
    Created on : Nov 24, 2018, 6:26:51 PM
    Author     : C7
--%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            var sub = ${subjectmodelobject};
            console.log(sub);
            angular.module('myapp', []).controller('subCtrl',
                    function ($scope) {
                        $scope.subjects = sub;
                    });
        </script>

    </head>
    <body>
        <jsp:include page="adminheader.jsp" />
        <div class="container-fluid"
             style="width: 80%; margin-top: 10px; margin-bottom: 10px">
            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Add Subject</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer">
                        <c:if test="${check}">
                            <form:form name="addSubjectobject"
                                       modelAttribute="addSubjectObject1" action="addingsubject"
                                       method="post">
                                 <div class="form-group">
                                    <form:input id="name" class="form-control"
                                                Placeholder="Subject Code" type="text" path="subcode"  required="true"></form:input>
                                    </div>

                                <div class="form-group">
                                    <form:input class="form-control"
                                                Placeholder="subject Name" type="text" path="subname" required="true"></form:input>
                                    </div>

                                <form:button id="editbuttons" type="submit" name="addsubject"
                                             class="btn">Add Subject</form:button>
                                <form:button id="removebuttons" type="reset" class="btn">Reset
                                    Details</form:button>

                            </form:form>
                        </c:if>

                        <c:if test="${!check}">
                            <form:form name="addSubjectobject"
                                       modelAttribute="addSubjectObject1" action="addingsubject"
                                       method="post">
                                                                <div class="form-group">
                                    <form:input id="name" class="form-control"
                                                Placeholder="Subjeci ID" type="text" path="subid" readonly="true"></form:input>
                                    </div>

                                <div class="form-group">
                                    <form:input id="name" class="form-control"
                                                Placeholder="Subject Code" type="text" path="subcode"></form:input>
                                    </div>
                                    <div class="form-group">
                                    <form:input id="name" class="form-control"
                                                Placeholder="subject Name" type="text" path="subname"></form:input>
                                    </div>

                                <form:button id="editbuttons" type="submit" name="Editsubject"
                                             class="btn">Edit Subject</form:button>
                                <form:button id="removebuttons" type="reset" class="btn">Reset
                                    Details</form:button>
                            </form:form>
                        </c:if>
                    </div>
                </div>
                <!-- panel1 body end -->
            </div>
            <!-- panel1 end -->
            <div class="panel animated fadeInUp delay-05s" id="panel-2">
                <div class="panel-heading">
                    <span class="lead">List Of Class</span>
                </div>
                <!-- end panel2 heading -->
                <div class="panel-body" ng-app="myapp"
                     ng-controller="subCtrl" width="100%">
                    <ul class="list-group ">
                        <li class="list-group-item" height="45px"
                            ng-repeat="subject in subjects">
                            <div class="pull-left">
                                <ul class="list-inline">
                                    <li><span><b>subject Id: </b></span>{{subject.subid}}</li>
                                    <li><span><b>subject Code: </b></span>{{subject.subcode}}</li>
                                    <li><span><b>subject Name: </b></span>{{subject.subname}}</li>

                                </ul>
                            </div>
                            <div class="pull-right">
                                <a href="editsubjectbutton?getsubid={{subject.subid}}"><button id="editbuttons"
                                                                                         type="submit" class="btn">Edit</button></a> <a
                                    href="removesubject/{{subject.subid}}"><button  id="removebuttons"
                                                                            type="button" class="btn">Remove</button></a>
                            </div>
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

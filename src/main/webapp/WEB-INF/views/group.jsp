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
            var stgroup = ${groupmodelobject};
            console.log(stgroup);
            angular.module('myapp', []).controller('GroupCtrl',
                    function ($scope) {
                        $scope.stGroups = stgroup;
                    });
        </script>

    </head>
    <body>
         <jsp:include page="adminheader.jsp" />
        <div class="container-fluid"
             style="width: 80%; margin-top: 10px; margin-bottom: 10px">
            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Add Group</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer">
                        <c:if test="${check}">
                            <form:form name="addgroupobject"
                                       modelAttribute="addGroupObject1" action="Addinggroup"
                                       method="post">
                                 <div class="form-group">
                                    <form:input id="name" class="form-control"
                                                Placeholder="Group Name" type="text" path="groupname"  required="true"></form:input>
                                    </div>

                                <div class="form-group">
                                    <form:input class="form-control"
                                                Placeholder="Group Status" type="text" path="groupstatus" required="true"></form:input>
                                    </div>

                                <form:button id="editbuttons" type="submit" name="Addgroup"
                                             class="btn">Add </form:button>
                                <form:button id="removebuttons" type="reset" class="btn">Reset
                                    Details</form:button>

                            </form:form>
                        </c:if>

                        <c:if test="${!check}">
                            <form:form name="addgroupobject"
                                       modelAttribute="addGroupObject1" action="Addinggroup"
                                       method="post">
                                                                <div class="form-group">
                                    <form:input id="name" class="form-control"
                                                Placeholder="Group ID" type="text" path="groupid" readonly="true"></form:input>
                                    </div>

                                <div class="form-group">
                                    <form:input id="name" class="form-control"
                                                Placeholder="Group Name" type="text" path="groupname"></form:input>
                                    </div>
                                    <div class="form-group">
                                    <form:input id="name" class="form-control"
                                                Placeholder="Group Status" type="text" path="groupstatus"></form:input>
                                    </div>

                                <form:button id="editbuttons" type="submit" name="Editgroup"
                                             class="btn">Update</form:button>
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
                    <span class="lead">List Of Group</span>
                </div>
                <!-- end panel2 heading -->
                <div class="panel-body" ng-app="myapp"
                     ng-controller="GroupCtrl" width="100%">
                    <ul class="list-group ">
                        <li class="list-group-item" height="45px"
                            ng-repeat="gr in stGroups">
                            <div class="pull-left">
                                <ul class="list-inline">
                                    <li><span><b>Group Id : </b></span>{{gr.groupid}}</li>
                                    <li><span><b>Group Name : </b></span>{{gr.groupname}}</li>
                                    <li><span><b>Group Status : </b></span>{{gr.groupstatus}}</li>

                                </ul>
                            </div>
                            <div class="pull-right">
                                <a href="editgroupbutton?getgid={{gr.groupid}}"><button id="editbuttons"
                                                                                         type="submit" class="btn">Edit</button></a> <a
                                    href="removegroup/{{gr.groupid}}"><button  id="removebuttons"
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

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

            var classlist = ${classlists};
            angular.module('organocartpackage', []).controller('ProductController',
                    function ($scope) {

                        $scope.classlists = classlist;

                        console.log($scope.classlists);
                    });
        </script>
    </head>
    <body ng-app="organocartpackage" ng-controller="ProductController">
        <jsp:include page="adminheader.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Attendance</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="attendenceObject" action="loadattendancsheet"
                                   enctype="multipart/form-data">

                            <div class="form-group">
                                <select class="form-control" ng-model="cId" ng-options="x.classid as x.classname for x in classlists" required="true">
                                    <option value="">-- Choose Class name--</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <form:hidden  class="form-control" value="{{cId}}" path="classid"></form:hidden>
                                </div>

                            <form:button id="editbuttons" type="submit" name="Add" class="btn">Add
                                Details</form:button>
                            <form:button id="removebuttons" type="reset" class="btn">Reset
                                Details</form:button>

                        </form:form>
                    </div>

                </div>
            </div>

        </div>

        <jsp:include page="footer.jsp" />


    </body>
</html>



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
       
        
         
            var classl = ${classlist};
         


            angular.module('myapp', []).controller('routinController',
                    function ($scope) {
                  
                       
                       
                        $scope.classls = classl;
                   

                        console.log($scope.classls);
                    });
        </script>
    </head>
    <body ng-app="myapp" ng-controller="routinController" >
        <jsp:include page="header.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">search Payment</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="croutinreport" action="classroutinreportpage" method="POST">

                               <div class="form-group">
                                   <h5>Class Name</h5>
                                    <select class="form-control" ng-model="cId" ng-options="x.classname as x.classname for x in classls" required="true">
                                        <option value="">-- Choose Class name--</option>
                                    </select>
                                </div>
                            <form:hidden value="{{cId}}" path="classname"/>
                            

                                <button class="btn-info" type="submit">Search </button>


                        </form:form>
                    </div>
                    <!-- panel body end -->
                </div>
            </div>
            <!-- panel end -->

            <!-- panel2 end -->
        </div>

        <jsp:include page="footer.jsp" />

    </body>
</html>



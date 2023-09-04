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
           
          
            
            var yearlists = ${yearlist};
           
     
            
            var examlists = ${examlist};


            angular.module('myapp', []).controller('resultController',
                    function ($scope) {
                    
                       
                      
                        $scope.yearlist = yearlists;
                        
                   
                     
                        $scope.examlist = examlists;

                        console.log($scope.examlist);
                    });
      </script>
    </head>
    <body  ng-app="myapp" ng-controller="resultController">
   <jsp:include page="header.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Search Result</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="markreport" action="marksheetreportpage" method="POST">
                                  

                           
                                  <div class="form-group">
                                <select class="form-control" ng-model="yId" ng-options="x.academicYear as x.academicYear for x in yearlist" required="true">
                                    <option value="">-- Choose Academic Year--</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <form:hidden  class="form-control" value="{{yId}}" path="accyear"></form:hidden>
                                </div>
                       
                              <div class="form-group">
                                    <select class="form-control" ng-model="ex" ng-options="x.examtitle as x.examtitle for x in examlist" required="true">
                                        <option value="">-- choose Exam  --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{ex}}" path="exam"></form:hidden>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" placeholder="Type Registration No" path="registrationno"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" placeholder="Type Roll No" path="roll"></form:input>
                                </div>

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


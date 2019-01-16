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
            var examinfolist = ${examinfolist};
            var subjectlist = ${subjectlist};
            

            angular.module('organocartpackage', []).controller('ProductController',
                    function ($scope) {
                        $scope.examinfolist = examinfolist;
                        $scope.sublist = subjectlist;
                       
                        console.log($scope.examinfolist);
                    });
        </script>
    </head>
    <body ng-app="organocartpackage" ng-controller="ProductController">
        <jsp:include page="adminheader.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Add Exam</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="newExamObject" action="examadd"
                                   enctype="multipart/form-data">
                         
                            <c:if test="${!check}">
                                <div class="form-group">
                                    <form:input class="form-control" Placeholder="Exam Id"
                                                type="text" path="examid" readonly="true" required="true"></form:input>
                                </div>
                            </c:if>
                            
                            <div class="form-group">
                                <select class="form-control" ng-model="subjectid" ng-options="x.subid as x.subname for x in sublist" >
                                    <option value="">-- Select Subject --</option>
                                </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{subjectid}}" path="subid"></form:hidden>
                                </div>
                            
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Exam Title"
                                            type="text" path="examtitle" required="true"></form:input>
                                </div>
                                 <div class="form-group">
                                <form:input class="form-control" Placeholder="Exam Date"
                                            type="text" path="examdate" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:textarea  class="form-control" placeholder="Discription"
                                           type="text" path="examdescrip" required="true"></form:textarea>
                                </div>
                               
                               
                               
                                
                                
                                <!--                            <input class="form-control" id="date" name="date" placeholder="MM/DD/YYY" type="text"/>-->
                                
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
                            <a href="showexaminfopage"><button id="show" type="button" class="btn">Cancel</button></a>        
                        </form:form>
                    </div>
                    <!-- panel body end -->
                </div>
            </div>
            <!-- panel end -->
            <div class="panel animated fadeInUp delay-05s" id="panel-2">
                <div class="panel-heading">
                    <span class="lead">Exam List</span>
                </div>
                <p><input type="text" ng-model="test" class="form-control" placeholder="Search Exam"></p>
                <!-- end panel2 heading -->
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item" height="45px"
                            ng-repeat="exam in examinfolist| filter:test |orderBy:'examtitle'">
                            
                            <table style="width: 100%">
                                <tr>
                                   
                                    <td>
                                        <ul>
                                            <li><span><b>Exam Id  : </b></span>{{exam.examid}}</li>
                                            <li><span><b>Subject Id  :</b></span>{{exam.subid}}</li>
                                            <li><span><b>Exam Title  :</b></span>{{exam.examtitle}}</li>
                                            <li><span><b>Exam Date  :</b></span>{{exam.examdate}}</li>
                                             <li><span><b>Exam Description  :</b></span>{{exam.examdescrip}}</li>
                                           
                                        </ul>
                                    </td>
                                    <td><a href="editingexam?getexid={{exam.examid}}"><button id="editbuttons"
                                                                                                      type="submit" class="btn">Edit</button></a> <a
                                            href="removingexam/{{exam.examid}}"><button id="removebuttons"
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


      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

        <script>
                                                        $(document).ready(function () {
                                                            var date_input = $('input[name="examdate"]'); //our date input has the name "date"
                                                            var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                                            date_input.datepicker({
                                                                format: 'yyyy/mm/dd',
                                                                container: container,
                                                                todayHighlight: true,
                                                                autoclose: true,
                                                            })
                                                        })
        </script>
    </body>
</html>

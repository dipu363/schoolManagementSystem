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
            var sectionlist = ${sectionlist};
            var ClassServicelist = ${ClassServicelist};
            

            angular.module('organocartpackage', []).controller('ProductController',
                    function ($scope) {
                        $scope.sectionlist = sectionlist;
                        $scope.ClassServicelist = ClassServicelist;
                       
                        console.log($scope.sectionlist);
                    });
        </script>
    </head>
    <body ng-app="organocartpackage" ng-controller="ProductController">
        <jsp:include page="adminheader.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Add Secttion</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="newClasssectionObject" action="sectionadd"
                                   enctype="multipart/form-data">
                   
                            <c:if test="${!check}">
                                <div class="form-group">
                                    <form:input class="form-control" Placeholder="sec Id"
                                                type="text" path="secid" readonly="true" required="true"></form:input>
                                </div>
                            </c:if>
                            
                            <div class="form-group">
                                <select class="form-control" ng-model="classid" ng-options="x.classid as x.classname for x in ClassServicelist" required="true">
                                    <option value="">-- Select Class --</option>
                                </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{classid}}" path="classid"></form:hidden>
                                </div>
                            
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="sec Name"
                                            type="text" path="secname" required="true"></form:input>
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
                            <a href="showsectionpage"><button id="show" type="button" class="btn">Cancel</button></a>        
                        </form:form>
                    </div>
                    <!-- panel body end -->
                </div>
            </div>
            <!-- panel end -->
            <div class="panel animated fadeInUp delay-05s" id="panel-2">
                <div class="panel-heading">
                    <span class="lead">List Section</span>
                </div>
                <p><input type="text" ng-model="test" class="form-control" placeholder="Search"></p>
                <!-- end panel2 heading -->
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item" height="45px"
                            ng-repeat="p in sectionlist| filter:test">
                            <table style="width: 100%">
                                <tr>
                                   
                                    <td>
                                        <ul>
                                            <li><span><b>Section Id: </b></span>{{p.secid}}</li>
                                            <li><span><b>Class Id </b></span>{{p.classid}}</li>
                                            <li><span><b>Section Name </b></span>{{p.secname}}</li>
                                            <li><span><b>Section Status </b></span>{{p.secstatus}}</li>
                                           
                                        </ul>
                                    </td>
                                    <td><a href="editingproduct?getpid={{p.secid}}"><button id="editbuttons"
                                                                                                      type="submit" class="btn">Edit</button></a> <a
                                            href="removingproduct/{{p.secid}}"><button id="removebuttons"
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

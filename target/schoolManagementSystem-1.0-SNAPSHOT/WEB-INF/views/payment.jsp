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
            var payamounts = ${payamount};
            var stregistrations = ${stregistration};
            var yearmodelobjects = ${yearmodelobject};
            angular.module('organocartpackage', []).controller('ProductController',
                    function ($scope) {
                        $scope.payamount = payamounts;
                        $scope.stregistration = stregistrations;
                        $scope.yearmodelobject = yearmodelobjects;
                        console.log($scope.payamount);
                    });
        </script>
    </head>
    <body ng-app="organocartpackage" ng-controller="ProductController">
       <jsp:include page="adminheader.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead"> Monthly payment</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="paymentObject" action="paymentadd"
                                   enctype="multipart/form-data">

                            <c:if test="${!check}">
                                <div class="form-group">
                                    <form:input class="form-control" Placeholder="Pament id"
                                                type="text" path="payid" readonly="true" required="true"></form:input>
                                    </div>
                            </c:if>

                       

                                <div class="form-group">
                                    <select class="form-control" ng-model="strid" ng-options="x.regid  as x.regid for x in stregistration" required="true">
                                        <option value="">-- Registration No--</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{strid}}" path="regid"></form:hidden>
                                </div>
                                  <div class="form-group">
                                    <form:input id="name" class="form-control"
                                                Placeholder="Pament Ammount" type="text" path="payammount" required="true"></form:input>
                                    </div>
                                  <div class="form-group">
                                    <form:input id="name" class="form-control"
                                                Placeholder="Pament Date" type="text" path="paydate" required="true"></form:input>
                                    </div>


                                <div class="form-group">
                                    <select class="form-control" ng-model="mon" required="true">
                                        <option value="">--Select Month --</option>
                                        <option value="January">January</option>
                                        <option value="February">February</option>
                                        <option value="March">March</option>
                                        <option value="April">April</option>
                                        <option value="May">May</option>
                                        <option value="June">June</option>
                                        <option value="July">July</option>
                                        <option value="August">August</option>
                                        <option value="September">September</option>
                                        <option value="October">October</option>
                                        <option value="November">November</option>
                                        <option value="December">December</option>

                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{mon}}" path="payofmonth"></form:hidden>
                                </div>

                                <div class="form-group">
                                    <select class="form-control" ng-model="yid" ng-options="x.yearid as x.academicYear for x in yearmodelobject" required="true">
                                        <option value="">-- Select Academic Year --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{yid}}" path="yearid"></form:hidden>
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
                    <span class="lead">payment list</span>
                </div>
                <p><input type="text" ng-model="test" class="form-control" placeholder="Search"></p>
                <!-- end panel2 heading -->
                <div class="panel-body">


                    <ul class="list-group">
                        <li class="list-group-item" height="45px">

                          <table style="width: 100%">
                                <tr>

                                    <th>Pay id :</th>
                                    <th>Registration id :</th>
                                    <th> pay Amount :</th>
                                    <th>Pay Date :</th>
                                    <th>Month :</th>
                                    <th>academic year :</th>
                                 
                                    <th>Action :</th>

                                </tr >
                                <tr ng-repeat="pa in payamount| filter:test" border="1">

                                    <td>{{pa.payid}}</td>
                                    <td>{{pa.regid}}</td>
                                    <td>{{pa.payammount}}</td>
                                    <td>{{pa.paydate}}</td>
                                    <td>{{pa.payofmonth}}</td>
                                    <td>{{pa.yearid}}</td>
                                  
                                    <td><a href="editingpaymayment?getpayid={{pa.payid}}"><button id="editbuttons"
                                                                                                      type="submit" class="btn">Edit</button></a> <a
                                            href="removingpayment/{{pa.payid}}"><button id="removebuttons"
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
                                                            var date_input = $('input[name="paydate"]'); //our date input has the name "date"
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

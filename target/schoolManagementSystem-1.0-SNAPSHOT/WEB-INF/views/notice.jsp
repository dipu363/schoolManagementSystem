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
            var notice = ${noticemodelobject};
            console.log(notice);
            angular.module('myapp', []).controller('NoticeCtrl',
                    function ($scope) {
                        $scope.allNotices = notice;
                    });
        </script>

    </head>
    <body>
        <jsp:include page="adminheader.jsp" />
        <div class="container-fluid"
             style="width: 80%; margin-top: 10px; margin-bottom: 10px">
            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Creating Notice</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer">
                        <c:if test="${check}">
                            <form:form name="addNoticeObject"
                                       modelAttribute="addNoticeObject1" action="addingnotice"
                                       method="post">
                                  <div class="form-group">
                                    <form:input class="form-control"
                                                Placeholder="Date" type="text" path="noticedate" required="true" name="pdate"></form:input>
                                    </div>

                                <div class="form-group">
                                    <form:input class="form-control"
                                                Placeholder="Notice Title" type="text" path="noticetitle" required="true"></form:input>
                                    </div>
                                    <div class="form-group">
                                    <form:textarea class="form-control"
                                                Placeholder="Notice Description" type="text" path="noticedescrip" required="true"></form:textarea>
                                    </div>
                                  
                                  

                                <form:button id="editbuttons" type="submit" name="addnotice"
                                             class="btn">Add </form:button>
                                <form:button id="removebuttons" type="reset" class="btn">Reset
                                    Details</form:button>

                            </form:form>
                        </c:if>

                        <c:if test="${!check}">
                            <form:form name="addNoticeObject"
                                       modelAttribute="addNoticeObject1" action="addingnotice"
                                       method="post">
                                <div class="form-group">
                                    <form:input id="name" class="form-control"
                                                Placeholder="NOtice Id" type="text" path="noticeid" readonly="true"></form:input>
                                    </div>
                                    <div class="form-group">
                                    <form:input class="form-control"
                                                Placeholder="Notice Title" type="text" path="noticetitle" required="true"></form:input>
                                    </div>
                                    <div class="form-group">
                                        <form:textarea class="form-control"
                                                       Placeholder="Notice Description" type="text" path="noticedescrip" required="true"></form:textarea>
                                    </div>
                                    <div class="form-group">
                                    <form:input class="form-control"
                                                Placeholder="Date" type="text" path="noticedate" required="true" name="pdate"></form:input>
                                    </div>
                                    <div class="form-group">
                                    <form:input class="form-control"
                                                Placeholder="Status" type="text" path="noticestatus" required="true"></form:input>
                                    </div>

                                <form:button id="editbuttons" type="submit" name="Editnotice"
                                             class="btn">Edit Class</form:button>
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
                    <span class="lead">List Of Notice</span>
                </div>
                <!-- end panel2 heading -->
                <div class="panel-body" ng-app="myapp"
                     ng-controller="NoticeCtrl" width="100%">
                    <ul class="list-group ">
                        <li class="list-group-item" height="45px"
                            ng-repeat="note in allNotices">
                            <div class="pull-left">
                                <ul class="list-inline">
                                    <li><span><b>Notice Id: </b></span>{{note.noticeid}}</li>
                                    <li><span><b>Notice Title: </b></span>{{note.noticetitle}}</li>
                                    <li><span><b>Description: </b></span>{{note.noticedescrip}}</li>
                                    <li><span><b>Date: </b></span>{{note.noticedate}}</li>
                                     <li><span><b>Status: </b></span>{{note.noticestatus}}</li>
                                </ul>
                            </div>
                            <div class="pull-right">
                                <a href="editnoticebutton?getnoticeid={{note.noticeid}}"><button id="editbuttons"
                                                                                                 type="submit" class="btn">Edit</button></a> <a
                                    href="removenotice/{{note.noticeid}}"><button  id="removebuttons"
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
        
        
         <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

        <script>
                                                        $(document).ready(function () {
                                                            var date_input = $('input[name="noticedate"]'); //our date input has the name "date"
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

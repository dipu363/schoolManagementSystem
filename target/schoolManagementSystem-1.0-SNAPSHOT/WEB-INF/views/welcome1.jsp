<%-- 
    Document   : welcome
    Created on : Nov 23, 2018, 11:13:36 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin signup</title>
    </head>
    <body>
        <jsp:include page="adminheader.jsp" />
        <br><br>
        <div class="container">


            <div class="row " style="background: #7f3d9b">
                <div class="col-md-8">
                    
                     <h1>Menu List</h1>
                
                    
                </div>
                <div class="col-md-4">
                    <h3>Create New Admin<br><a href="adminsignuppage">SIGN-UP</a>please</h3>
                    
                    
                </div>
               
                    </div>
                
                <div class="row">
                    
                    
            
                <div class="col-md-4">
                    
                       <ul>
                            <li>   <a href="studentinfoepage">Add Student</a></li>
                   
                        <li> <a href="showingclasspage">Add class</a></li>
                        <li> <a href="academicYearpage">Academic Year</a></li>
                        <li> <a href="showingsubjectpage">Add subject</a></li>
                        <li> <a href="showinggrouppage">Add Group</a></li>
                        <li> <a href="noticepage">Add Notice</a></li>
                        <li> <a href="showclassroutinpage">Create Class Routine</a></li>
                    


                    </ul>
                </div> 
                <div class="col-md-4">  
                 <ul>
                    <li> <a href="showsectionpage">Add Section </a></li>
                    <li> <a href="showexaminfopage">Add Exam</a></li>
                    <li> <a href="showteacherpage">Add Teacher</a></li>
                    <li> <a href="showregistrationpage">Student Registration</a></li>
                    <li> <a href="showclassteacherpage">Add Class Teacher</a></li>
                    <li> <a href="showpaymentpage">Monthly Payment</a></li>
                    <li> <a href="showexammarkpage">Create Mark list</a></li>
                  

                </ul>
                </div>
                
                <div class="col-md-4">
                    
                      <li> <a href="showstudentprofile">profile</a></li>
                    <li> <a href="showeresultsearchpage">Search Result</a></li>
                    <li> <a href="userlistinfo">Show user list</a></li>
                    <li> <a href="viewstudent">show one student</a></li>
                    <li> <a href="noticeboardpage">Notice Board</a></li>
                    <li> <a href="reportView">Search Exam</a></li>
                    <li> <a href="classroutinreportpage">Search Class Routin</a></li>

                </div>
                   
            </div>
               
        </div>




        <jsp:include page="footer.jsp" />

    </body>
</html>

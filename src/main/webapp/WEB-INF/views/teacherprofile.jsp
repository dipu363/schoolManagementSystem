<%-- 
    Document   : teacherprofile
    Created on : Dec 18, 2018, 11:00:01 AM
    Author     : HP
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        <br><br>
        <div class="container">


            <div class="row">
                <h1>Welcome ${sessionScope.UserLoggedIn}</h1>
                <h3> ${sessionScope.UserId}</h3>
                <h3>${sessionScope.phone}</h3>
                <div class="col-md-4">
                    
                 
                </div> 
                <div class="col-md-4">  
                 <ul>
                    <li> <a href="showteacherliset">Teacher List</a></li>
                    <li> <a href="noticeboardpage">Notice Board</a></li>
                    <li> <a href="#">Add Teacher</a></li>
                    
                    


                </ul>
                </div>
                <div class="col-md-4"></div>
                  
            </div>
        </div>




        <jsp:include page="footer.jsp" />

    </body>
</html>

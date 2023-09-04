<!DOCTYPE html>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Flat Login Form</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Montserrat:400,700'>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="resources/login/css/style.css">

  
</head>

<body>
  <jsp:include page="header.jsp" />




  <div class="form  wi" >
  <div class="thumbnail"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/169963/hat.svg"/></div>
           <form:form modelAttribute="adminsign" action="signupadmin">
                <!-- urm -@modelattribute used in Usercontroller -->
                
                <label>User Role</label>



                <div class="input-group animated fadeInDown delay-07s" id="UserRole">
                    <span class="input-group-addon" id="basic-addon1">
                        <div class="glyphicon glyphicon-user"></div>
                    </span>
                   
                        <form:select class="form-control" aria-describedby="basic-addon1" path="userrole" required="true">
                            <option value="ROLE_ADMIN">ROLE_ADMIN </option>
                           
                        </form:select>
                    </div>
                <label >User Name</label>
                   
                
                <div class="input-group animated fadeInDown delay-07s" id="UserName">
                        <span class="input-group-addon" id="basic-addon1">
                            <div class="glyphicon glyphicon-user"></div>
                        </span>
                    <form:input type="text" class="form-control" placeholder="Username"
                                aria-describedby="basic-addon1" path="username" required="true"></form:input>
                    </div>
                <label >New Password</label>


                    <div class="input-group animated fadeInDown delay-09s" id="Password">
                        <span class="input-group-addon" id="basic-addon1">
                            <div class="glyphicon glyphicon-lock" required="true"></div>
                        </span>
                    <form:input type="password" class="form-control"
                                placeholder="New Password" aria-describedby="basic-addon1"
                                path="password" required="true"></form:input>
                    </div>
                <label >User Contact No</label>

                    <div class="input-group animated fadeInDown delay-11s" id="PhoneNumber">
                        <span class="input-group-addon" id="basic-addon1">
                            <div class="glyphicon glyphicon-phone"></div>
                        </span>
                    <form:input type="text" class="form-control"
                                placeholder="Phone Number" aria-describedby="basic-addon1"
                                path="phone" value="+88" required="true"></form:input>
                    </div>
                <label>Email ID</label>
                <div>
                        <div class="input-group animated fadeInDown delay-13s" id="Email" style="margin-bottom: 0px;">

                            <span class="input-group-addon" id="basic-addon1">
                                <div class="glyphicon glyphicon-inbox"></div>
                            </span>
                        <form:input type="text" class="form-control" placeholder="Email"
                                    aria-describedby="basic-addon1" path="emailid" required="true"></form:input>
                        </div>
                
               
                        <div style="margin-top: 5px;color: #EF3B3A;"><span class="glyphicon glyphicon-hand-up">  </span> For Login Remember<br> This Email and password  </div>
                    
                   </div>
                <br>
            
                <div>
                    <button   type="submit">Sign Up</button> 
                        
                </div>
                <br>
                <div>
                  <button  type="Reset">Cancel</button>
               </div> 

            </form:form>
                 <br> 
                 <a href="showwelcomepage"><button>Back</button></a>
                
                
                
                
</div>

  
      
<video id="video" autoplay="autoplay" loop="loop" poster="polina.jpg">
  <source src="http://andytran.me/A%20peaceful%20nature%20timelapse%20video.mp4" type="video/mp4"/>
</video>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="resources/login/js/index.js"></script>




</body>

</html>

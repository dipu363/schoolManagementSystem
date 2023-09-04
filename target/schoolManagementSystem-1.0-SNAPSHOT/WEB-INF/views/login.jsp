<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title> Login </title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Montserrat:400,700'>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="resources/login/css/style.css">

  
</head>

<body>

  

  
    <jsp:include page="header.jsp" />


<div class="form">
  <div class="thumbnail"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/169963/hat.svg"/></div>
  <form action="perform_login" method="post" class="form-signin">
                    <h3 class="form-signin-heading" style="color: #EF3B3A">Hooray !! <br>Welcome Back !!</h3>
                    <br>
                    <input type="email" class="form-control" id="useridcontrol"
                                placeholder="Email Id" id="usename" name="usename" required="true" />
           
                    <input  type="password" class="form-control" id="passwordcontrol"
                                placeholder="Password" id="userpassword" name="userpassword" required="true"/>
                 

                    <button class="btn btn-lg" name="Submit" id="loginbutton"
                            value="Login" type="Submit">LogIn</button>
                  

                   
                
                    
                       
                      
                      

                </form>

<br>
  <a href="signup"><button>SignUp</button></a>
 
</div>
<video id="video" autoplay="autoplay" loop="loop" poster="polina.jpg">
  <source src="http://andytran.me/A%20peaceful%20nature%20timelapse%20video.mp4" type="video/mp4"/>
</video>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  

    <script  src="resources/login/js/index.js"></script>




</body>

</html>

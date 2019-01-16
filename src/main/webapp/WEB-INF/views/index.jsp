<%-- 
    Document   : index
    Created on : Dec 11, 2018, 1:20:33 AM
    Author     : HP
--%>


<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zxx">
    <head>
        <title>school management system</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="TechEdu Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />

        <link rel="stylesheet" type="text/css" href="resources/css/style.css" />
        <link rel="stylesheet" type="text/css" href="resources/css/zoomslider.css" />

        <link rel="stylesheet" href="resources/css/lightbox.css">
        <!-- carousel slider -->  
        <link href="/resources/css/owl.carousel.css" rel="stylesheet" type="text/css" media="all"> 
        <!-- //carousel slider -->
        <link href="resources/css/font-awesome.css" rel="stylesheet"> 
        <script type="text/javascript" src="resources/js/modernizr-2.6.2.min.js"></script>
        <script src="resources/js/jquery-2.2.3.min.js"></script>
        <script src="resources/js/bootstrap.js"></script>
        <!--/web-fonts-->
        <link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i" rel="stylesheet">
        <!--//web-fonts-->
        <style>
             .clsScroll{
               
              
               height: 330px;
               
               width: 300px;
                overflow: scroll;
                float: start;


            } 
            
            
        </style>
        
  <script src="resources/js/angular.js"></script>
        <script>
            var notice = ${noticemodelobject};
            console.log(notice);
            angular.module('mynotice', []).controller('NoticeCtrl',
                    function ($scope) {
                        $scope.allNotices = notice;
                    });
        </script>
     
    </head>
    <body>
        <!--/banner-bottom-->
        <div class="w3_agilits_banner_bootm">
            <div class="w3_agilits_inner_bottom">
                <div class="wthree_agile_login">
                    <ul>
                        <li><i class="fa fa-phone" aria-hidden="true"></i> (+000)008 01933932636</li>
                        <li><i class="fa fa-envelope-o list-icon" aria-hidden="true"></i><a href="mailto:giyasuddin636@gmail.com">giyasuddin636@gmail.com</a></li>
                        <li><i class="fa fa-user list-icon" aria-hidden="true"></i><a href="login">login</a></li>
                        <li><i class="fa fa-user list-icon" aria-hidden="true"></i><a href="signup">sign up</a></li>
                   
                </div>

            </div>
        </div>
        <!--//banner-bottom-->
        <!--/banner-section-->
        <div id="demo-1" data-zs-src='["resources/images/b1.jpg","resources/images/6.jpg","resources/images/b2.jpg","resources/images/b3.jpg","resources/images/b4.jpg"]' data-zs-overlay="dots">
            <div class="demo-inner-content">
                <!--/header-w3l-->
                <div class="header-w3-agileits" id="home">
                    <div class="inner-header-agile">	
                        <nav class="navbar navbar-default">
                            <!--					<div class="navbar-header">
                                                                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                                                                    <span class="sr-only">Toggle navigation</span>
                                                                                    <span class="icon-bar"></span>
                                                                                    <span class="icon-bar"></span>
                                                                                    <span class="icon-bar"></span>
                                                                            </button>
                                                                            <h1><a  href="index.jsp"><span class="letter">N</span>S <span>c</span></a></h1>
                                                                    </div>-->
                            <!-- navbar-header -->
                         
                            
                            
                            
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="#home">Home</a></li>
                                    <li><a href="#about" class="scroll">About</a></li>
                                    <li><a href="#agileits-services" class="scroll">Services</a></li>
                                    <li><a href="#portfolio" class="scroll">gallery</a></li>
                                 
                                    <li><a href="#testimonials" class="scroll" >Testimonials</a></li>
                                    <li><a href="#contact" class="scroll">contact</a></li>
                                  


                                </ul>
                            </div>
                            <div class="clearfix"> </div>	
                        </nav>
                    </div> 

                </div>
                <!--//header-w3l-->
                <!--/banner-info-->
                <div class="baner-info">
                    <h4>The best learning institution</h4>
                    <h3><span>N</span>asir <span>u</span>ddin<span>M</span>odel</h3>
                    <h3><span>s</span>chool <span>&</span> <span>c</span>ollegd</h3>
                    <p>Education is powerful metarials that is change a human life</p>
                   
                </div>
                <!--/banner-ingo-->		
            </div> 
        </div>
        <!--/banner-section-->
        <!--about -->
        <div id="about" class="wthree-about w3ls-section">
            <div class="container">
                <div class="agileits-banner-grids text-center">
                    <div class="banner-bottom-girds">
                        <div class="agileits-banner-grid bg-w3ls-active clsScroll" ng-app="mynotice"  ng-controller="NoticeCtrl">
                            <span class="fa fa-university banner-icon" aria-hidden="true"></span>
                            <h4>Notice Board</h4>
                            
                          
                            <div class="text-left" ng-repeat="note in allNotices |orderBy:'noticedate':true">       
                                <ul>
                                    <li style="color:#fff">{{note.noticetitle}}   <span> #  {{note.noticedate}}
                                            <span> <span>   <a href="onenoticebutton?getnoticeid={{note.noticeid}}" style="color: #f1c40f"> Details</a> 
                                </li>
                                </ul>
                               </dIv>
                        
                               
                        
                         
                        </div>
                        <div class="agileits-banner-grid clsScroll">
                            <span class="fa fa-tags banner-icon" aria-hidden="true"></span>
                            <h4>Admission</h4>
                            <p> Session 2019 admission will started 15th December 2018 . class will started 1st January 2019. </p>
                           
                        </div>
                        <div class="clearfix">

                          
                        </div>
                    </div>		
                </div>	
                <h2 class="w3ls-title">about us</h2>
                
                <h5>Nasir uddin model school and college </h5>
                <div class="col-md-7  w3ls-about-left">
                    <p>The School prepares students to understand, contribute to, and succeed in a rapidly changing society, thus making the world a better and more just place.
                        We will ensure that our students develop both the skills that a sound education provides and the competencies essential for success and leadership in the emerging creative economy. 
                        We will also lead in generating practical and theoretical knowledge that enables people to better understand our world and improve conditions for local and global communities.</p>
                </div>
                <div class="col-md-5 w3ls-row">
                    <div class="col-md-6 col-sm-6 wthree-about-left">
                        <img src="resources/images/about2.jpg" class="img-responsive" alt=""/>
                    </div>
                    <div class="col-md-6 col-sm-6 w3ls-row alert wthree-about-right">
                        <img src="resources/images/about3.jpg" class="img-responsive" alt=""/>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="clearfix"> </div>
                <div class="stats-info agileits-w3layouts">
                    <div class="col-sm-3 col-xs-3 stats-grid">
                        <div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='324' data-delay='.5' data-increment="1">324</div>
                        <div class="stats-img stat2">
                            <p>branches</p>
                        </div>
                    </div>
                    <div class="col-sm-3 col-xs-3 stats-grid">
                        <div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='200' data-delay='.5' data-increment="1">200</div>
                        <div class="stats-img stat2">
                            <p>visitors</p>
                        </div>
                    </div>
                    <div class="col-sm-3 col-xs-3 stats-grid stat1">
                        <div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='156' data-delay='.5' data-increment="1">156</div>
                        <div class="stats-img stat2">
                            <p>Awards</p>
                        </div>
                    </div>
                    <div class="col-sm-3 col-xs-3 stats-grid stat1">
                        <div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='156' data-delay='.5' data-increment="1">156</div>
                        <div class="stats-img stat2">
                            <p>centres</p>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <!-- //about -->
        <!--services-->
        <div class="agileits-services w3ls-section" id="agileits-services" >
            <div class="container">
                <h3 class="w3ls-title">services </h3>
                <div class="agileits-services-row">
                    <div class="col-md-3 col-sm-6 agileits-services-grids">
                        <span class="glyphicon glyphicon-stats effect-1" aria-hidden="true"></span>
                        <h4>Analytics</h4>
                        <p>Students Attendance.</p>
                        <p>Daily Homework.</p>
                        <p>Students results .</p>
                        <p>Students improvement.</p>
                    </div>
                    <div class="col-md-3 col-sm-6 agileits-services-grids">
                        <span class="glyphicon glyphicon-user effect-1" aria-hidden="true"></span>
                        <h4>Custom Plans</h4>
                        <ul style="color:#fff">
                        
                                We will fulfill our mission by extending The New School's legacy as a nontraditional School and community,
                                nimble and responsive to change, that: Focuses on and engages with critical contemporary issues Prioritizes humanity.
               
                        </ul>
   
                    </div>
                    <div class="col-md-3 col-sm-6 agileits-services-grids">
                        <span class="glyphicon glyphicon-list-alt effect-1" aria-hidden="true"></span>
                        <h4>Monitoring</h4>
                        <p>Students  daily study plan </p>
                        <p>Students movement in school compound </p>
                       
                    </div>
                    <div class="col-md-3 col-sm-6 agileits-services-grids">
                        <span class="glyphicon glyphicon-check effect-1" aria-hidden="true"></span>
                        <h4>Skip Tracing</h4>
                        <p></p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
        <!--//agileits-services-->
        <!--portfolio-->
        <div id="portfolio" class="portfolio w3ls-section">
            <div class="container">
                <h3 class="w3ls-title">gallery</h3>
                <div class="sap_tabs">			
                    <div id="horizontalTab">
                        <ul class="resp-tabs-list">
                            <li class="resp-tab-item"><span>All</span></li>
                            <li class="resp-tab-item"><span>Category1</span></li>
                            <li class="resp-tab-item"><span>Category2</span></li>
                            <li class="resp-tab-item"><span>Category3</span></li>
                            <li class="resp-tab-item"><span>Category4</span></li>					
                        </ul>	
                        <div class="clearfix"> </div>	
                        <div class="resp-tabs-container">
                            <div class="tab-1 resp-tab-content">
                                <div class="col-md-3 portfolio-grids">
                                    <a href="resources/images/g1.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                        <img src="resources/images/g1.jpg" class="img-responsive zoom-img" alt=""/>
                                        <div class="b-wrapper">
                                            <h5>NsC</h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-3 portfolio-grids">
                                    <a href="resources/images/g2.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                        <img src="resources/images/g2.jpg" class="img-responsive zoom-img" alt=""/>
                                        <div class="b-wrapper">
                                            <h5>NsC</h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-3 portfolio-grids">
                                    <a href="resources/images/g3.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                        <img src="resources/images/g3.jpg" class="img-responsive zoom-img" alt=""/>
                                        <div class="b-wrapper">
                                            <h5>NsC</h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-3 portfolio-grids">
                                    <a href="resources/images/g8.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                        <img src="resources/images/g8.jpg" class="img-responsive zoom-img" alt=""/>
                                        <div class="b-wrapper">
                                            <h5>NsC</h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-3 portfolio-grids">
                                    <a href="resources/images/g5.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                        <img src="resources//images/g5.jpg" class="img-responsive zoom-img" alt=""/>
                                        <div class="b-wrapper">
                                            <h5>NsC</h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-3 portfolio-grids">
                                    <a href="resources/images/g6.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                        <img src="resources/images/g6.jpg" class="img-responsive zoom-img" alt=""/>
                                        <div class="b-wrapper">
                                            <h5>NsC</h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-3 portfolio-grids">
                                    <a href="resources/images/g4.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                        <img src="resources/images/g4.jpg" class="img-responsive zoom-img" alt=""/>
                                        <div class="b-wrapper">
                                            <h5>NsC</h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-3 portfolio-grids">
                                    <a href="resources/images/g7.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                        <img src="resources/images/g7.jpg" class="img-responsive zoom-img" alt=""/>
                                        <div class="b-wrapper">
                                            <h5>NsC</h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="clearfix"> </div>
                            </div>		
                            <div class="tab-1 resp-tab-content">
                                <div class="col-md-3 portfolio-grids">
                                    <a href="resources/images/g8.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                        <img src="resources/images/g8.jpg" class="img-responsive zoom-img" alt=""/>
                                        <div class="b-wrapper">
                                            <h5>NsC</h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-3 portfolio-grids">
                                    <a href="resources/images/g4.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                        <img src="resources/images/g4.jpg" class="img-responsive zoom-img" alt=""/>
                                        <div class="b-wrapper">
                                            <h5>NsC</h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-3 portfolio-grids">
                                    <a href="resources/images/g5.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                        <img src="resources/images/g5.jpg" class="img-responsive zoom-img" alt=""/>
                                        <div class="b-wrapper">
                                            <h5>NsC</h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="tab-1 resp-tab-content">
                                <div class="col-md-3 portfolio-grids">
                                    <a href="resources/images/g3.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                        <img src="resources/images/g3.jpg" class="img-responsive zoom-img" alt=""/>
                                        <div class="b-wrapper">
                                            <h5>NsC</h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-3 portfolio-grids">
                                    <a href="resources/images/g1.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                        <img src="resources/images/g1.jpg" class="img-responsive zoom-img" alt=""/>
                                        <div class="b-wrapper">
                                            <h5>NsC</h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="tab-1 resp-tab-content">
                                <div class="col-md-3 portfolio-grids">
                                    <a href="resources/images/g5.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                        <img src="resources/images/g5.jpg" class="img-responsive zoom-img" alt=""/>
                                        <div class="b-wrapper">
                                            <h5>NsC</h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-3 portfolio-grids">
                                    <a href="resources/images/g6.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                        <img src="resources/images/g6.jpg" class="img-responsive zoom-img" alt=""/>
                                        <div class="b-wrapper">
                                            <h5>NsC</h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-3 portfolio-grids">
                                    <a href="resources/images/g4.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                        <img src="resources/images/g4.jpg" class="img-responsive zoom-img" alt=""/>
                                        <div class="b-wrapper">
                                            <h5>NsC</h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-3 portfolio-grids">
                                    <a href="resources/images/g7.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                        <img src="resources/images/g7.jpg" class="img-responsive zoom-img" alt=""/>
                                        <div class="b-wrapper">
                                            <h5>NsC</h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="tab-1 resp-tab-content">
                                <div class="col-md-3 portfolio-grids">
                                    <a href="resources/images/g2.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                        <img src="resources/images/g2.jpg" class="img-responsive zoom-img" alt=""/>
                                        <div class="b-wrapper">
                                            <h5>NsC</h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-3 portfolio-grids">
                                    <a href="resources/images/g5.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                        <img src="resources/images/g5.jpg" class="img-responsive zoom-img" alt=""/>
                                        <div class="b-wrapper">
                                            <h5>NsC</h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="col-md-3 portfolio-grids">
                                    <a href="resources/images/g6.jpg" data-lightbox="example-set" data-title="Lorem Ipsum is simply dummy the when an unknown galley of type and scrambled it to make a type specimen.">
                                        <img src="resources/images/g6.jpg" class="img-responsive zoom-img" alt=""/>
                                        <div class="b-wrapper">
                                            <h5>NsC</h5>
                                        </div>
                                    </a>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>						
                    </div>
                </div>
            </div>	
        </div>
        <!--//portfolio-->
        <!--//main-header-->
        <script type="text/javascript" src="resources/js/jquery.zoomslider.min.js"></script>
        <!-- testimonial -->
        <div class="wthree-testi w3ls-section" id="testimonials">
            <!-- container -->
            <div class="container">
                <h3 class="w3ls-title">Testimonials</h3> 
                <div class="w3_wthree-testi_grids text-center">
                    <section class="slider">
                        <div class="flexslider">
                            <ul class="slides">
                                <li>	
                                    <div class="wthree-testi_grid">
                                        <div class="testimonial-left">
                                            <i class="fa fa-user" aria-hidden="true"></i> 
                                        </div>
                                        <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil 
                                            impedit quo minus id quod possimus, omnis voluptas.</p>
                                        <h5>John Frank</h5>
                                    </div>
                                </li>
                                <li>	
                                    <div class="wthree-testi_grid">
                                        <div class="testimonial-left">
                                            <i class="fa fa-user" aria-hidden="true"></i> 
                                        </div>
                                        <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil 
                                            impedit quo minus id quod possimus, omnis voluptas.</p>
                                        <h5>Michael Doe</h5>
                                    </div>
                                </li>
                                <li>	
                                    <div class="wthree-testi_grid">
                                        <div class="testimonial-left">
                                            <i class="fa fa-user" aria-hidden="true"></i> 
                                        </div>
                                        <p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil 
                                            impedit quo minus id quod possimus, omnis voluptas.</p>
                                        <h5>Thomas Carl</h5>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </section>

                </div>
            </div>
        </div>
        <!-- //testimonial --> 
<!--         team 
        	<div class="testimonials w3ls-section" id="team">
                        <div class="container">
                                <h3 class="w3ls-title">Our Staff</h3>
                        <div class="w3_testimonials_grids w3_testimonials_grids">
                                <div id="owl-demo" class="owl-carousel"> 
                                        <div class="item w3_agileits_testimonials_grid">
                                                <img src="resources/images/t1.jpg" alt=" " class="img-responsive" />
                                                <h4>J. Hobbs</h4>
                                                <p>Donec quis turpis pellentesque justo pulvinar sceleris.</p>
                                        </div>
                                        <div class="item w3_agileits_testimonials_grid">
                                                <img src="resources/images/t2.jpg" alt=" " class="img-responsive" />
                                                <h4>Paul</h4>
                                                <p>Donec quis turpis pellentesque justo pulvinar sceleris.</p>
                                        </div>
                                        <div class="item w3_agileits_testimonials_grid">
                                                <img src="resources/images/t3.jpg" alt=" " class="img-responsive" />
                                                <h4>John</h4>
                                                <p>Donec quis turpis pellentesque justo pulvinar sceleris.</p>
                                        </div>
                                        <div class="item w3_agileits_testimonials_grid">
                                                <img src="resources/images/t1.jpg" alt=" " class="img-responsive" />
                                                <h4>Michael </h4>
                                                <p>Donec quis turpis pellentesque justo pulvinar sceleris.</p>
                                        </div>
                                        <div class="item w3_agileits_testimonials_grid">
                                                <img src="resources/images/t2.jpg" alt=" " class="img-responsive" />
                                                <h4>Christopher</h4>
                                                <p>Donec quis turpis pellentesque justo pulvinar sceleris.</p>
                                        </div>
                                </div>
                        </div>
                </div>
                </div>-->
        <!-- //team -->
        <!-- contact -->
        <div class="contact-bottom w3ls-section" id="contact">
            <div class="container">
                <h3 class="w3ls-title">Contact</h3>
                <p>Any kind of information please contact with us  </p>
                <div class="w3layouts-list">
                    <div class="col-md-4 li"><span class="fa fa-map-marker" aria-hidden="true"></span><h6>Saver Cantonment, Dhaka </h6></div>
                    <div class="col-md-4 li"><span class="fa fa-phone" aria-hidden="true"></span><h6>012 345 678</h6></div>
                    <div class="col-md-4 li"><span class="fa fa-location-arrow" aria-hidden="true"></span><a href="mailto:techedu@info.com">NsC@info.com</a></div>
                    <div class="clearfix"></div>
                </div>
                <div class="col-md-6 col-sm-6  col-xs-6 agileits_w3layouts-map">
                   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3647.290909555328!2d90.26685791452792!3d23.91475068450862!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755e85387c00a03%3A0x653bff09acdd61aa!2sSavar+Cantonment!5e0!3m2!1sen!2sbd!4v1545133151506" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                    
                    

                </div>	
                <div class="col-md-6 col-sm-6 col-xs-6 contact-right-w3l">
                    <form  modelAttribute="addClassObject1" action="addingcontact"
                                       method="post">
                        <input type="text" class="name" name="name" placeholder="First Name" path="fname" required="">
                        <input type="text" class="name" name="name" placeholder="Last Name" path="lname" required="">
                        <input type="email" class="name" name="name" placeholder="Email" path="email" parequired="">
                        <input type="text" class="name" name="name" placeholder="Subject" path="subject" required="">
                        <textarea placeholder="Your Message" required="" path="massage"></textarea>
                        <input type="submit" value="SEND MESSAGE" name="Add">
                    </form>
                </div>


            </div>
        </div>
        <!-- //contact -->
        <!-- subscribe -->
        <div class="w3ls-section subscribe text-center">
            <div class="container">
                <h3 class="w3ls-title">subscribe now!</h3>
                <p>Enter your email address to get the latest news, special events and student activities delivered right to your inbox.</p>
                <div class="subscribe-grid">
                    <form action="#" method="post">
                        <input type="email" placeholder="Enter your email.." name="Subscribe" required="">
                        <button class="btn1">subscribe</button>
                    </form>
                </div>
            </div>
        </div>
        <!-- //subscribe -->
        <!-- footer -->
        <div class="agileits_w3layouts-footer">
            <div class="col-md-6 col-sm-8 agileinfo-copyright">
                <p>Copyrights and copy 2018  | All Rights Reserved | Design by Giyas uddin</p>
            </div>
            <div class="col-md-6 col-sm-4 agileinfo-icons">
                <ul>
                    <li><a class="icon fb" href="#"><i class="fa fa-facebook"></i></a></li>
                    <li><a class="icon tw" href="#"><i class="fa fa-twitter"></i></a></li>
                    <li><a class="icon pin" href="#"><i class="fa fa-pinterest"></i></a></li>
                    <li><a class="icon db" href="#"><i class="fa fa-dribbble"></i></a></li>
                    <li><a class="icon gp" href="#"><i class="fa fa-google-plus"></i></a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- footer -->
        <!-- bootstrap-modal-pop-up -->
        <div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        Nasir Uddin Model School & College
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <div class="modal-body">
                        <img src="resources/images/6.jpg" alt=" " class="img-responsive" />
                        <p>Ut enim ad minima veniam, quis nostrum 
                            exercitationem ullam corporis suscipit laboriosam, 
                            nisi ut aliquid ex ea commodi consequatur? Quis autem 
                            vel eum iure reprehenderit qui in ea voluptate velit 
                            esse quam nihil molestiae consequatur, vel illum qui 
                            dolorem eum fugiat quo voluptas nulla pariatur.
                            <i>" Quis autem vel eum iure reprehenderit qui in ea voluptate velit 
                                esse quam nihil molestiae consequatur.</i></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- //bootstrap-modal-pop-up --> 
        <!--script for portfolio-->
        <script src="resources/js/lightbox-plus-jquery.min.js"></script>
        <script src="resources/js/easyResponsiveTabs.js" type="text/javascript"></script>
        <script type="text/javascript">
$(document).ready(function () {
    $('#horizontalTab').easyResponsiveTabs({
        type: 'default', //Types: default, vertical, accordion           
        width: 'auto', //auto or any width like 600px
        fit: true   // 100% fit in a container
    });
});
        </script>
        <!--//script for portfolio-->


        <script src="resources/js/owl.carousel.js"></script>  
        <script>
$(document).ready(function () {
    $("#owl-demo").owlCarousel({
        autoPlay: true, //Set AutoPlay to 3 seconds
        items: 3,
        itemsDesktop: [640, 2],
        itemsDesktopSmall: [414, 1],
        navigation: true,
        // THIS IS THE NEW PART
        afterAction: function (el) {
            //remove class active
            this
                    .$owlItems
                    .removeClass('active')
            //add class active
            this
                    .$owlItems //owl internal $ object containing items
                    .eq(this.currentItem + 1)
                    .addClass('active')
        }
        // END NEW PART

    });

});
        </script>

        <!-- here starts scrolling icon -->
        <script type="text/javascript">
            $(document).ready(function () {
                /*
                 var defaults = {
                 containerID: 'toTop', // fading element id
                 containerHoverID: 'toTopHover', // fading element hover id
                 scrollSpeed: 1200,
                 easingType: 'linear' 
                 };
                 */

                $().UItoTop({easingType: 'easeOutQuart'});

            });
        </script>
        <!-- flexSlider -->
        <link rel="stylesheet" href="resources/css/flexslider.css" type="text/css" media="screen" property="" />
        <script defer src="resources/js/jquery.flexslider.js"></script>
        <script type="text/javascript">
            $(window).load(function () {
                $('.flexslider').flexslider({
                    animation: "slide",
                    start: function (slider) {
                        $('body').removeClass('loading');
                    }
                });
            });
        </script>
        <!-- //flexSlider -->

        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="resources/js/move-top.js"></script>
        <script type="text/javascript" src="resources/js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!-- /ends-smoth-scrolling -->
        <!-- //here ends scrolling icon -->

        <script type="text/javascript" src="resources/js/numscroller-1.0.js"></script>

        <script src="resources/js/SmoothScroll.min.js"></script>
    </body>
</html> 

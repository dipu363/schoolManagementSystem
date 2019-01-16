<%-- 
    Document   : studentprofile
    Created on : Dec 18, 2018, 11:01:26 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <html class="global wide"><head><meta name="viewport" content="user-scalable=no,width=device-width,initial-scale=1">
            <style type="text/css">html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline}article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block}body{line-height:1}ol,ul{list-style:none}blockquote,q{quotes:none}blockquote:before,blockquote:after,q:before,q:after{content:'';content:none}table{border-collapse:collapse;border-spacing:0}body{-webkit-text-size-adjust:none}</style>
            <style type="text/css">*,*:before,*:after{-moz-box-sizing:border-box;-webkit-box-sizing:border-box;box-sizing:border-box}</style><meta name="viewport" content="initial-scale=1">
            <title>guardian welcome</title>
            <meta http-equiv="content-type" content="text/html; charset=UTF-8">
            <meta name="description" content="">
            <meta name="keywords" content="">
            <!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
            <style type="text/css">.row{border-bottom:solid 1px transparent}.row>*{float:left}.row:after,.row:before{content:"";display:block;clear:both;height:0}.row.uniform>*>:first-child{margin-top:0}.row.uniform>*>:last-child{margin-bottom:0}.\31 2u,.\31 2u\24{width:100%;clear:none;margin-left:0}.\31 1u,.\31 1u\24{width:91.6666666667%;clear:none;margin-left:0}.\31 0u,.\31 0u\24{width:83.3333333333%;clear:none;margin-left:0}.\39 u,.\39 u\24{width:75%;clear:none;margin-left:0}.\38 u,.\38 u\24{width:66.6666666667%;clear:none;margin-left:0}.\37 u,.\37 u\24{width:58.3333333333%;clear:none;margin-left:0}.\36 u,.\36 u\24{width:50%;clear:none;margin-left:0}.\35 u,.\35 u\24{width:41.6666666667%;clear:none;margin-left:0}.\34 u,.\34 u\24{width:33.3333333333%;clear:none;margin-left:0}.\33 u,.\33 u\24{width:25%;clear:none;margin-left:0}.\32 u,.\32 u\24{width:16.6666666667%;clear:none;margin-left:0}.\31 u,.\31 u\24{width:8.3333333333%;clear:none;margin-left:0}.\31 2u\24+*,.\31 1u\24+*,.\31 0u\24+*,.\39 u\24+*,.\38 u\24+*,.\37 u\24+*,.\36 u\24+*,.\35 u\24+*,.\34 u\24+*,.\33 u\24+*,.\32 u\24+*,.\31 u\24+*{clear:left;}.\-11u{margin-left:91.6666666667%}.\-10u{margin-left:83.3333333333%}.\-9u{margin-left:75%}.\-8u{margin-left:66.6666666667%}.\-7u{margin-left:58.3333333333%}.\-6u{margin-left:50%}.\-5u{margin-left:41.6666666667%}.\-4u{margin-left:33.3333333333%}.\-3u{margin-left:25%}.\-2u{margin-left:16.6666666667%}.\-1u{margin-left:8.3333333333%}</style><style type="text/css">.container{margin-left:auto;margin-right:auto;width:1140px}.container.\31 25\25{width:100%;max-width:1425px;min-width:1140px}.container.\37 5\25{width:855px}.container.\35 0\25{width:570px}.container.\32 5\25{width:285px}</style>
            <style type="text/css">.row>*{padding:0px 0 0 40px}.row{margin:0px 0 -1px -40px}.row.uniform>*{padding:40px 0 0 40px}.row.uniform{margin:-40px 0 -1px -40px}.row.\32 00\25>*{padding:0px 0 0 80px}.row.\32 00\25{margin:0px 0 -1px -80px}.row.uniform.\32 00\25>*{padding:80px 0 0 80px}.row.uniform.\32 00\25{margin:-80px 0 -1px -80px}.row.\31 50\25>*{padding:0px 0 0 60px}.row.\31 50\25{margin:0px 0 -1px -60px}.row.uniform.\31 50\25>*{padding:60px 0 0 60px}.row.uniform.\31 50\25{margin:-60px 0 -1px -60px}.row.\35 0\25>*{padding:0px 0 0 20px}.row.\35 0\25{margin:0px 0 -1px -20px}.row.uniform.\35 0\25>*{padding:20px 0 0 20px}.row.uniform.\35 0\25{margin:-20px 0 -1px -20px}.row.\32 5\25>*{padding:0px 0 0 10px}.row.\32 5\25{margin:0px 0 -1px -10px}.row.uniform.\32 5\25>*{padding:10px 0 0 10px}.row.uniform.\32 5\25{margin:-10px 0 -1px -10px}.row.\30 \25>*{padding:0}.row.\30 \25{margin:0 0 -1px 0}</style>
            <style type="text/css">.\31 2u\28 global\29,.\31 2u\24\28 global\29{width:100%;clear:none;margin-left:0}.\31 1u\28 global\29,.\31 1u\24\28 global\29{width:91.6666666667%;clear:none;margin-left:0}.\31 0u\28 global\29,.\31 0u\24\28 global\29{width:83.3333333333%;clear:none;margin-left:0}.\39 u\28 global\29,.\39 u\24\28 global\29{width:75%;clear:none;margin-left:0}.\38 u\28 global\29,.\38 u\24\28 global\29{width:66.6666666667%;clear:none;margin-left:0}.\37 u\28 global\29,.\37 u\24\28 global\29{width:58.3333333333%;clear:none;margin-left:0}.\36 u\28 global\29,.\36 u\24\28 global\29{width:50%;clear:none;margin-left:0}.\35 u\28 global\29,.\35 u\24\28 global\29{width:41.6666666667%;clear:none;margin-left:0}.\34 u\28 global\29,.\34 u\24\28 global\29{width:33.3333333333%;clear:none;margin-left:0}.\33 u\28 global\29,.\33 u\24\28 global\29{width:25%;clear:none;margin-left:0}.\32 u\28 global\29,.\32 u\24\28 global\29{width:16.6666666667%;clear:none;margin-left:0}.\31 u\28 global\29,.\31 u\24\28 global\29{width:8.3333333333%;clear:none;margin-left:0}.\31 2u\24\28 global\29+*,.\31 1u\24\28 global\29+*,.\31 0u\24\28 global\29+*,.\39 u\24\28 global\29+*,.\38 u\24\28 global\29+*,.\37 u\24\28 global\29+*,.\36 u\24\28 global\29+*,.\35 u\24\28 global\29+*,.\34 u\24\28 global\29+*,.\33 u\24\28 global\29+*,.\32 u\24\28 global\29+*,.\31 u\24\28 global\29+*{clear:left;}.\-11u\28 global\29{margin-left:91.6666666667%}.\-10u\28 global\29{margin-left:83.3333333333%}.\-9u\28 global\29{margin-left:75%}.\-8u\28 global\29{margin-left:66.6666666667%}.\-7u\28 global\29{margin-left:58.3333333333%}.\-6u\28 global\29{margin-left:50%}.\-5u\28 global\29{margin-left:41.6666666667%}.\-4u\28 global\29{margin-left:33.3333333333%}.\-3u\28 global\29{margin-left:25%}.\-2u\28 global\29{margin-left:16.6666666667%}.\-1u\28 global\29{margin-left:8.3333333333%}.\31 2u\28 wide\29,.\31 2u\24\28 wide\29{width:100%;clear:none;margin-left:0}.\31 1u\28 wide\29,.\31 1u\24\28 wide\29{width:91.6666666667%;clear:none;margin-left:0}.\31 0u\28 wide\29,.\31 0u\24\28 wide\29{width:83.3333333333%;clear:none;margin-left:0}.\39 u\28 wide\29,.\39 u\24\28 wide\29{width:75%;clear:none;margin-left:0}.\38 u\28 wide\29,.\38 u\24\28 wide\29{width:66.6666666667%;clear:none;margin-left:0}.\37 u\28 wide\29,.\37 u\24\28 wide\29{width:58.3333333333%;clear:none;margin-left:0}.\36 u\28 wide\29,.\36 u\24\28 wide\29{width:50%;clear:none;margin-left:0}.\35 u\28 wide\29,.\35 u\24\28 wide\29{width:41.6666666667%;clear:none;margin-left:0}.\34 u\28 wide\29,.\34 u\24\28 wide\29{width:33.3333333333%;clear:none;margin-left:0}.\33 u\28 wide\29,.\33 u\24\28 wide\29{width:25%;clear:none;margin-left:0}.\32 u\28 wide\29,.\32 u\24\28 wide\29{width:16.6666666667%;clear:none;margin-left:0}.\31 u\28 wide\29,.\31 u\24\28 wide\29{width:8.3333333333%;clear:none;margin-left:0}.\31 2u\24\28 wide\29+*,.\31 1u\24\28 wide\29+*,.\31 0u\24\28 wide\29+*,.\39 u\24\28 wide\29+*,.\38 u\24\28 wide\29+*,.\37 u\24\28 wide\29+*,.\36 u\24\28 wide\29+*,.\35 u\24\28 wide\29+*,.\34 u\24\28 wide\29+*,.\33 u\24\28 wide\29+*,.\32 u\24\28 wide\29+*,.\31 u\24\28 wide\29+*{clear:left;}.\-11u\28 wide\29{margin-left:91.6666666667%}.\-10u\28 wide\29{margin-left:83.3333333333%}.\-9u\28 wide\29{margin-left:75%}.\-8u\28 wide\29{margin-left:66.6666666667%}.\-7u\28 wide\29{margin-left:58.3333333333%}.\-6u\28 wide\29{margin-left:50%}.\-5u\28 wide\29{margin-left:41.6666666667%}.\-4u\28 wide\29{margin-left:33.3333333333%}.\-3u\28 wide\29{margin-left:25%}.\-2u\28 wide\29{margin-left:16.6666666667%}.\-1u\28 wide\29{margin-left:8.3333333333%}</style>
            <style type="text/css">.not-global,.not-wide{display:none!important}.only-normal,.only-mobile,.only-mobilep{display:none!important}</style>
            <link rel="stylesheet" type="text/css" href="resources/css/style_1.css">
            <link rel="stylesheet" type="text/css" href="resources/css/style-wide.css">
            <script src="resources/js/skel.js"></script>
            <script src="resources/js/init.js"></script>
            <noscript>
            <link rel="stylesheet" href="resources/css/skel.css" />
            <link rel="stylesheet" href="resources/css/style_1.css" />
            <link rel="stylesheet" href="resources/css/style-wide.css" />
            <link rel="stylesheet" href="resources/css/style-noscript.css" />
            </noscript>
           
 

            <!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
            <!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
        </head>
        <body class="">
            <div id="wrapper">
                <div id="bg"></div>
                <div id="overlay"></div>
                <div id="main">

                    <!-- Header -->
                    <header id="header">
                        <h1>Welcome ${sessionScope.UserLoggedIn}</h1>
                        <h3> ${sessionScope.UserId}</h3>
                        <h3>${sessionScope.phone}</h3>

                        <nav>
                            <ul>

                              <li><a href="showguardianhome" ><button style="width: 100px; height: 50px; background: darkturquoise; font-size: medium">Home</button> </a></li>
                                <li><a href="guardianwelcome" > <button style="width: 100px; height: 50px; background: darkturquoise; font-size: medium">Profile</button> </a></li>
                                <li><a href="<%=request.getContextPath()%>" > <button style="width: 100px; height: 50px; background: darkturquoise; font-size: medium">Back</button> </a></li>
                                <li><a href="logout" > <button style="width: 100px; height: 50px; background: darkturquoise; font-size: medium">LogOut</button> </a></li>
                          

                            </ul>
                        </nav>
  
                    </header>

                    <!-- Footer -->
                    <footer id="footer">
                          <span class="copyright"> Copyrights and copy 2018  | All Rights Reserved | Design by Giyas uddin</span>
                    </footer>

                </div>
            </div>

        </body>
    </html>


<%-- 
    Document   : register
    Created on : 04-Feb-2018, 14:01:45
    Author     : Nedlog
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register</title>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <script src="js/jquery.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $(".dropdown img.flag").addClass("flagvisibility");

                $(".dropdown dt a").click(function () {
                    $(".dropdown dd ul").toggle();
                });

                $(".dropdown dd ul li a").click(function () {
                    var text = $(this).html();
                    $(".dropdown dt a span").html(text);
                    $(".dropdown dd ul").hide();
                    $("#result").html("Selected value is: " + getSelectedValue("sample"));
                });

                function getSelectedValue(id) {
                    return $("#" + id).find("dt a span.value").html();
                }

                $(document).bind('click', function (e) {
                    var $clicked = $(e.target);
                    if (!$clicked.parents().hasClass("dropdown"))
                        $(".dropdown dd ul").hide();
                });


                $("#flagSwitcher").click(function () {
                    $(".dropdown img.flag").toggleClass("flagvisibility");
                });
            });
        </script>
    </head>
    <body>
        <%
            if (session.getAttribute("username") != null) {
                response.sendRedirect("home.jsp");
            }
        %>
        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="header-left">
                            <div class="logo">
                                <img src="images/logo.png" alt="The Chicken Farm"/>
                            </div>
                        </div>
                        <div class="header_right">
                            <div class="login_buttons">
                                <div class="login_button"><a href="index.jsp">Login</a></div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main">
            <div class="shop_top">
                <div class="container">
                    <form action="RegistrationController" method="post"> 
                        <div class="register-top-grid">
                            <h3><b>PLEASE INPUT YOUR DETAILS BELOW</b></h3>
                            <div>
                                <span>First Name<label class="necessary">*</label></span>
                                <input type="text" required="true" name="fname"> 
                            </div>
                            <div>
                                <span>Last Name<label class="necessary">*</label></span>
                                <input type="text" required="true" name="lname"> 
                            </div>
                            <div>
                                <span>Email Address</span>
                                <input type="text" name="email"> 
                            </div>
                            <div>
                                <span>Address<label class="necessary">*</label></span>
                                <input type="text" required="true" name="address"> 
                            </div>
                        </div>
                        <div class="clear"> </div>
                        <div class="register-bottom-grid">
                            <h3><b>LOGIN INFORMATION</b></h3>
                            <div>
                                <span>Username<label class="necessary">*</label></span>
                                <input type="text" required="true" name="uname"> 
                            </div>
                            <div>
                                <span>Password<label class="necessary">*</label></span>
                                <input type="password" required="true" name="pass">
                            </div>
                            <div class="clear"> </div>
                        </div>
                        <div class="clear"> </div>
                        <input type="submit" name="register" value="Register">
                    </form>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="container">
                <div class="row footer_bottom">
                    <div class="copy">
                        <p>©2018 Golden Corporations</p>
                    </div>
                </div>
            </div>
        </div>
    </body>	
</html>
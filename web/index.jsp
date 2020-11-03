<%-- 
    Document   : index
    Created on : 04-Feb-2018, 14:01:14
    Author     : Nedlog
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login into The Chicken Farm</title>
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
                                <img src="images/logo.png" alt="" />  
                            </div>			
                            <script type="text/javascript" src="js/responsive-nav.js"></script>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="main">
            <div class="shop_top">
                <div class="container">
                    <div class="col-md-6">
                        <div class="login-page">
                            <h4 class="title">New to The Chicken Farm?</h4>
                            <p>Welcome to the world's no.1 e-commerce application in the agricultural field. Please Click the "Create your account button below and get started. If you are already a user, then go to the "Already a user?" section and fill in your details.</p>
                            <div class="button1">
                                <a href="register.jsp"><input type="submit" value="Create your account" name="registerdirect" /></a>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="login-title">
                            <h4 class="title">Already a user? Please input your login details</h4>
                            <div id="loginbox" class="loginbox">
                                <form action="LoginController" method="get" name="login" id="login-form">
                                    <fieldset class="input">
                                        <p id="login-form-username">
                                            <label for="modlgn_username">Username</label>
                                            <input id="modlgn_username" type="text" name="username" class="inputbox" size="18" autocomplete="off" required="true">
                                        </p>
                                        <p id="login-form-password">
                                            <label for="modlgn_passwd">Password</label>
                                            <input id="modlgn_passwd" type="password" name="password" class="inputbox" size="18" autocomplete="off" required="true">
                                        </p>
                                        <div class="remember">
                                            <input type="submit" class="button" value="Login">
                                            <div class="clear"></div>
                                        </div>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
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
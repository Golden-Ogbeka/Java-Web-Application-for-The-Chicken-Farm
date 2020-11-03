<%-- 
    Document   : checkout
    Created on : 04-Feb-2018, 14:00:17
    Author     : Nedlog
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Checkout</title>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <script src="js/jquery.min.js"></script>
        <!--<script src="js/jquery.easydropdown.js"></script>-->
        <!--start slider -->
        <link rel="stylesheet" href="css/fwslider.css" media="all">
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/fwslider.js"></script>
        <!--end slider -->
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
            if (session.getAttribute("username") == null) {
                response.sendRedirect("index.jsp");
            } else if ((session.getAttribute("username").toString()).equalsIgnoreCase("admin")) {
                response.sendRedirect("admin.jsp");
            }
        %>
        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="header-left">
                            <div class="logo">
                                <a href="home.jsp"><img src="images/logo.png" alt=""/></a>
                            </div>
                            <div class="menu">
                                <a class="toggleMenu" href="#"><img src="images/nav.png" alt="" /></a>
                                <ul class="nav" id="nav">
                                    <li><a href="home.jsp">Home</a></li>
                                    <li><a href="shop.jsp">Shop</a></li>
                                    <li><a href="cart.jsp">Cart</a></li>
                                    <li><a href="about.jsp">About Us</a></li>
                                    <li><a href="contact.jsp">Contact</a></li>												
                                    <div class="clear"></div>
                                </ul>
                                <script type="text/javascript" src="js/responsive-nav.js"></script>
                            </div>							
                            <div class="clear"></div>
                        </div>
                        <div class="header_right">
                            <!--   You have to remove this search and put the profile name instead-->
                            <!-- start search-->
                            <div class="search-box">
                                <div id="sb-search" class="sb-search">
                                    <form action="search.jsp">
                                        <input class="sb-search-input" placeholder="Search for products" type="search" name="searchValue" id="search">
                                        <input class="sb-search-submit" type="submit" value="">
                                        <span class="sb-icon-search"> </span>
                                    </form>
                                </div>
                            </div>

                            <ul class="icon1 sub-icon1 profile_img">
                                <li>  
                                    <div class="login_buttons">
                                        <div class="login_button"><a href="LogoutController">Logout</a></div>
                                        <div class="clear"></div>
                                    </div>

                                    <ul class="sub-icon1 list">Click to Logout
                                        <%
                                            String username = session.getAttribute("username").toString();
                                            out.println(username.toUpperCase());
                                        %>
                                    </ul>
                                </li>
                            </ul>
                            <!----search-scripts---->
                            <script src="js/classie.js"></script>
                            <script src="js/uisearch.js"></script>
                            <script>
            new UISearch(document.getElementById('sb-search'));
                            </script>
                            <!----//search-scripts---->
                        </div>
                    </div>
                </div>
            </div>
        </div>       
        <div class="main">
            <div class="shop_top">
                <div class="container">
                    <div class="col-lg-12">
                        <div class="col-lg-6">
                            <center>   <h1>Your Order</h1></center>
                            <table class="table">
                                <th>Product Type</th><th>Product Price</th><th>Quantity</th>
                                    <%
                                        String userName = session.getAttribute("username").toString();
                                        try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/chickenfarm", "root", "");
                                            Statement stmt = con.createStatement();
                                            ResultSet rs = stmt.executeQuery("SELECT ProductType,ProductPrice,Quantity FROM cart WHERE User='" + userName + "' ");
                                            if (rs.next() == false) {
                                                out.println("<p><strong><h2>Sorry, there are no items in your cart</h2></strong></p>");
                                            } else {
                                                do {
                                                    out.println("<tr><td>" + rs.getString(1) + "</td>" + "<td>" + rs.getString(2) + "<td>" + rs.getString(3) + "</td></tr>");
                                                } while (rs.next());
                                            }
                                            con.close();
                                        } catch (Exception e) {
                                            System.out.println(e);
                                        }
                                    %>
                            </table>
                        </div>
                        <div class="col-lg-6">
                            <div class="login-title"> 
                                <div id="loginbox" class="loginbox">
                                    <form action="Checkout" method="post" id="login-form">
                                        <fieldset class="input">
                                            <legend> <center><h1 class="title">Input your Account Details</h1></center></legend>
                                            <p id="login-form-username">
                                                <label for="modlgn_username">ATM NUMBER</label>
                                                <input id="modlgn_username" type="text" name="atmNumber" class="inputbox" size="18" autocomplete="off" required="true">
                                            </p>
                                            <p id="login-form-password">
                                                <label for="modlgn_passwd">ATM PIN</label>
                                                <input id="modlgn_passwd" type="password" name="atmPin" class="inputbox" size="18" autocomplete="off" required="true">
                                            </p>
                                            <div class="remember">
                                                <input type="submit" class="button" value="SUBMIT">
                                                <div class="clear"></div>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <ul class="footer_box">
                            <h4>Products</h4>
                            <li><a href="broiler.jsp">Broilers</a></li>
                            <li><a href="cockerel.jsp">Cockerels</a></li>
                            <li><a href="layer.jsp">Layers</a></li>
                            <li><a href="chick.jsp">Chicks</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <ul class="footer_box">
                            <h4>About The Chicken Farm</h4>
                            <li><a href="about.jsp">Vision</a></li>
                            <li><a href="about.jsp">Team</a></li>
                            <li><a href="about.jsp">Locations</a></li>
                            <li><a href="gallery.jsp">Gallery</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <ul class="footer_box">
                            <h4>Customer Support</h4>
                            <li><a href="contact.jsp">Contact Us</a></li>
                            <li><a href="contact.jsp">Shipping and Order Tracking</a></li>
                            <li><a href="contact.jsp">Feedback</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <ul class="footer_box">
                            <h4>Copyright</h4>
                            <div class="footer_search">
                                <div class="copy">
                                    <p>©2018 Golden Corporations</p>
                                </div>

                            </div>
                        </ul>
                    </div>
                </div>
                <div class="row footer_bottom">
                </div>
            </div>
        </div>
    </body>	
</html>
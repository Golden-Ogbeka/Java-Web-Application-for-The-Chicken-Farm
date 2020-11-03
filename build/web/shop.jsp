<%-- 
    Document   : shop
    Created on : 04-Feb-2018, 14:01:53
    Author     : Nedlog
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Shop</title>
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
                    <div class="row shop_box-top">
                        <!-- put pictures of the 4 categories of chickens and their respective links to their personal pages -->
                        <div class="col-md-3 shop_box"><a href="broiler.jsp">
                                <img src="images/broiler1.jpg" class="img-responsive" alt=""/>
                                <span class="new-box">
                                    <span class="new-label">New</span>
                                </span>
                                <span class="sale-box">
                                    <span class="sale-label">Sale!</span>
                                </span>
                                <div class="shop_desc">
                                    <h3><a href="broiler.jsp">BROILERS</a></h3>
                                    <p>Hybrid Birds groomed for meat production</p>
                                    <span class="reducedfrom">₦160.00</span>
                                    <span class="actual">₦100.00</span><br>
                                    <ul class="buttons">
                                        <li class="shop_btn"><a href="broiler.jsp">View Product</a></li>
                                        <div class="clear"> </div>
                                    </ul>
                                </div>
                            </a></div>
                        <div class="col-md-3 shop_box"><a href="cockerel.jsp">
                                <img src="images/cockerel1.jpg" class="img-responsive" alt=""/>
                                <span class="sale-box">
                                    <span class="sale-label">Sale!</span>
                                </span>
                                <div class="shop_desc">
                                    <h3><a href="cockerel.jsp">COCKERELS</a></h3>
                                    <p>Male Birds groomed for reproduction</p>
                                    <br />
                                    <span class="reducedfrom">₦140.00</span>
                                    <span class="actual">₦90.00</span><br>
                                    <ul class="buttons">
                                        <li class="shop_btn"><a href="cockerel.jsp">View Product</a></li>
                                        <div class="clear"> </div>
                                    </ul>
                                </div>
                            </a></div>
                        <div class="col-md-3 shop_box"><a href="layer.jsp">
                                <img src="images/layer1.jpg" class="img-responsive" alt=""/>
                                <span class="sale-box">
                                    <span class="sale-label">Sale!</span>
                                </span>
                                <div class="shop_desc">
                                    <h3><a href="layer.jsp">LAYERS</a></h3>
                                    <p>Female birds groomed for reproduction</p>
                                    <span class="reducedfrom">₦100.00</span>
                                    <span class="actual">₦70.00</span><br>
                                    <ul class="buttons">
                                        <li class="shop_btn"><a href="layer.jsp">View Product</a></li>
                                        <div class="clear"> </div>
                                    </ul>
                                </div>
                            </a></div>
                        <div class="col-md-3 shop_box"><a href="chick.jsp">
                                <img src="images/chick1.jpg" class="img-responsive" alt=""/>
                                <span class="new-box">
                                    <span class="new-label">New</span>
                                </span>
                                <span class="sale-box">
                                    <span class="sale-label">Sale!</span>
                                </span>
                                <div class="shop_desc">
                                    <h3><a href="chick.jsp">CHICKS</a></h3>
                                    <p>Young Birds that are products of reproduction</p>
                                    <span class="reducedfrom">₦60.00</span>
                                    <span class="actual">₦30.00</span><br>
                                    <ul class="buttons">
                                        <li class="shop_btn"><a href="chick.jsp">View Product</a></li>
                                        <div class="clear"> </div>
                                    </ul>
                                </div>
                            </a></div>
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
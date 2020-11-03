<%-- 
    Document   : gallery
    Created on : 04-Feb-2018, 14:00:55
    Author     : Nedlog
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Gallery</title>
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
        <!-- light-box -->
        <script type="text/javascript" src="js/jquery.fancybox.js"></script>
        <link rel="stylesheet" type="text/css" href="css/jquery.fancybox.css" media="screen" />
        <script type="text/javascript">
            $(document).ready(function () {
                /*
                 *  Simple image gallery. Uses default settings
                 */

                $('.fancybox').fancybox();

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
                    <div class="row ex_box">
                        <h3 class="m_2">Our Products</h3>
                        <!----Edit each picture and name for the chickens---->
                        <div class="col-md-4 team1">
                            <div class="img_section magnifier2">
                                <a class="fancybox" href="images/e1.jpg" data-fancybox-group="gallery" title="Little chicks having their meal"><img src="images/e1.jpg" class="img-responsive" alt=""><span> </span>
                                    <div class="img_section_txt">
                                        Little chicks having their meal
                                    </div>
                                </a></div>
                        </div>
                        <div class="col-md-4 team1">
                            <div class="img_section magnifier2">
                                <a class="fancybox" href="images/e2.jpg" data-fancybox-group="gallery" title="A very healthy roster watching its territory"><img src="images/e2.jpg" class="img-responsive" alt=""><span> </span>
                                    <div class="img_section_txt">
                                        A very proud roster
                                    </div>
                                </a></div>
                        </div>
                        <div class="col-md-4 team1">
                            <div class="img_section magnifier2">
                                <a class="fancybox" href="images/e3.jpg" data-fancybox-group="gallery" title="Little chick looking for its mother"><img src="images/e3.jpg" class="img-responsive" alt=""><span> </span>
                                    <div class="img_section_txt">
                                        Little chick looking for its mother
                                    </div>
                                </a></div>
                        </div>
                    </div>
                    <div class="row ex_box">
                        <div class="col-md-4 team1">
                            <div class="img_section magnifier2">
                                <a class="fancybox" href="images/e4.jpg" data-fancybox-group="gallery" title="Little chick looking enjoying the breeze"><img src="images/e4.jpg" class="img-responsive" alt=""><span> </span>
                                    <div class="img_section_txt">
                                        Little chick looking enjoying the breeze
                                    </div>
                                </a></div>
                        </div>
                        <div class="col-md-4 team1">
                            <div class="img_section magnifier2">
                                <a class="fancybox" href="images/e5.jpg" data-fancybox-group="gallery" title="A beautiful mix of colours"><img src="images/e5.jpg" class="img-responsive" alt=""><span> </span>
                                    <div class="img_section_txt">
                                        A beautiful mix of colors
                                    </div>
                                </a></div>
                        </div>
                        <div class="col-md-4 team1">
                            <div class="img_section magnifier2">
                                <a class="fancybox" href="images/e6.jpg" data-fancybox-group="gallery" title="An official meeting for the hens"><img src="images/e6.jpg" class="img-responsive" alt=""><span> </span>
                                </a></div>
                        </div>
                    </div>
                    <div class="row ex1_box">
                        <div class="col-md-4 team1">
                            <div class="img_section magnifier2">
                                <a class="fancybox" href="images/e7.jpg" data-fancybox-group="gallery" title="A hen looking for her chick"><img src="images/e7.jpg" class="img-responsive" alt=""><span> </span>
                                </a></div>
                        </div>
                        <div class="col-md-4 team1">
                            <div class="img_section magnifier2">
                                <a class="fancybox" href="images/e8.jpg" data-fancybox-group="gallery" title="A hen enjoying the breeze"><img src="images/e8.jpg" class="img-responsive" alt=""><span> </span>
                                </a></div>
                        </div>
                        <div class="col-md-4 team1">
                            <div class="img_section magnifier2">
                                <a class="fancybox" href="images/e9.jpg" data-fancybox-group="gallery" title=""><img src="images/e9.jpg" class="img-responsive" alt=""><span> </span>	
                                </a></div>
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
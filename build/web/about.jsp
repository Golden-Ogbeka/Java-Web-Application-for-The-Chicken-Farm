<%-- 
    Document   : about
    Created on : 04-Feb-2018, 13:59:46
    Author     : Nedlog
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>About</title>
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
        <!-- Add fancyBox main JS and CSS files -->
        <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
        <link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
        <script>
            $(document).ready(function () {
                $('.popup-with-zoom-anim').magnificPopup({
                    type: 'inline',
                    fixedContentPos: false,
                    fixedBgPos: true,
                    overflowY: 'auto',
                    closeBtnInside: true,
                    preloader: false,
                    midClick: true,
                    removalDelay: 300,
                    mainClass: 'my-mfp-zoom-in'
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
                    <div class="row team_box">
                        <h3 class="m_2"><b>The Winning Team</b></h3>
                        <div class="col-md-3 team1">
                            <a class="popup-with-zoom-anim" href="#small-dialog3"><img src="images/team1.jpg" class="img-responsive" title="continue" alt=""/></a>
                            <div id="small-dialog3" class="mfp-hide">
                                <div class="pop_up2">
                                    <h2><b>Ogbeka Golden</b></h2>
                                    <p>Golden is the MD/CEO of Golden Incorporations. The Chicken Farm is an offspring of Golden Incorporations. He represents the visioner of the Chicken Farm.</p>
                                    <p>His passion is for the needy and he seeks to help as many families that are in need to afford all the basic amenities that life offers. He also wishes to use The Chicken Farm as an avenue to show the world the love that God has for them.</p>
                                </div>
                            </div>
                            <h4 class="m_5"><a href="#"><b>Ogbeka Golden</b></a></h4>
                            <p class="m_6">MD/CEO of Golden Incorporations</p>
                        </div>
                        <div class="col-md-3 team1">
                            <a class="popup-with-zoom-anim" href="#small-dialog3"><img src="images/team2.jpg" class="img-responsive" title="continue" alt=""/></a>
                            <div id="small-dialog3" class="mfp-hide">
                                <div class="pop_up2">
                                    <h2>Dr Okesola Olatunji</h2>
                                    <p>Dr Okesola is the lead supervisor of this project. His outstanding ideas and contributions helped in the fulfillment of this project. He is currently a lecturer at Covenant University and also has 25 years of working experience</p>
                                    <p>Dr Okesola's area of Computer Security and his years of experience were spent at the banking sector of Nigeria. He is happily married with children.</p>
                                </div>
                            </div>
                            <h4 class="m_5"><a href="#"><b>Dr Okesola Olatunji</b></a></h4>
                            <p class="m_6">Lead Supervisor</p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4 team_bottom">
                            <ul class="team_list">
                                <h4><b>Why Chicken Farm?</b></h4>
                                <li>Quality Product at very affordable prices<p>The Chicken Farm chicken products that don't lag behind in terms of quality. This characteristic is also balanced with a very affordable price tag that ensures that all products could be easily obtained by people of various classes in the country.</p></li>
                                <li>Healthy Agricultural Products<p>Research has proved that factory produced products are more dangerous to the health than naturally groomed products. The Chicken Farm aims to change the result of this research by producing high quality agricultural products that are healthy to the human body even though they are factory produced.</p></li>
                                <li>Diverse products from one chicken<p>Most Farms normally specialize in specific areas like meat production, egg production and reproduction when it comes to Poultry. The Chicken Farm has chosen to diversify into different aspects of Poultry like Grilled Chicken, Sharwama production, Chicken Peppersoup etc. We have sponsors like Indomie, MacDonalds, KFC and many more.</p></li>
                                <li>Ensured customer satisfaction<p>The Chicken Farm is founded to meet the needs of people. This singular purpose therefore ensures that all customers are satisfied with every product and service rendered. Every worker in The Chicken Farm has a partnership mentality which makes him give all his efforts and resources to make the business venture work.</p></li>
                            </ul>
                        </div>
                        <div class="col-md-8">
                            <ul class="team_list">
                                <h4><b>Vision Statement</b></h4>
                                <p class="m_7">The Chicken Farm has a singular vision to make available quality and healthy chicken products at affordable prices to people of different tribes, ethnic groups and nations. The vision was spurred out of a deep hearted desire to meet the needs of the poor.</p>
                                <img src="images/team5.jpg" class="img-responsive" alt=""/>
                            </ul>
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
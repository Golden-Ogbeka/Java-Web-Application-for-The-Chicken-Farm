<%-- 
    Document   : layer
    Created on : 04-Feb-2018, 14:01:05
    Author     : Nedlog
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Layers</title>
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
        <!----details-product-slider--->
        <!-- Include the Etalage files -->
        <link rel="stylesheet" href="css/etalage.css">
        <script src="js/jquery.etalage.min.js"></script>
        <!-- Include the Etalage files -->
        <script>
            jQuery(document).ready(function ($) {

                $('#etalage').etalage({
                    thumb_image_width: 300,
                    thumb_image_height: 400,
                    show_hint: true,
                    click_callback: function (image_anchor, instance_id) {
                        alert('Callback example:\nYou clicked on an image with the anchor: "' + image_anchor + '"\n(in Etalage instance: "' + instance_id + '")');
                    }
                });
                // This is for the dropdown list example:
                $('.dropdownlist').change(function () {
                    etalage_show($(this).find('option:selected').attr('class'));
                });

            });
        </script>
        <!----//details-product-slider--->	
    </head>
    <body>
        <%
           if(session.getAttribute("username")==null){
               response.sendRedirect("index.jsp");
           }
           else if((session.getAttribute("username").toString()).equalsIgnoreCase("admin")){
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
                                            String username=session.getAttribute("username").toString();
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
                    <div class="row">
                        <div class="col-md-9 single_left">
                            <div class="single_image">
                                <ul id="etalage">
                                    <li>
                                        <a href="optionallink.html">
                                            <img class="etalage_thumb_image" src="images/layer1.jpg" />
                                            <img class="etalage_source_image" src="images/layer1.jpg" />
                                        </a>
                                    </li>
                                    <li>
                                        <img class="etalage_thumb_image" src="images/layer2.jpg" />
                                        <img class="etalage_source_image" src="images/layer2.jpg" />
                                    </li>
                                    <li>
                                        <img class="etalage_thumb_image" src="images/layer3.jpg" />
                                        <img class="etalage_source_image" src="images/layer3.jpg" />
                                    </li>
                                    <li>
                                        <img class="etalage_thumb_image" src="images/layer4.jpg" />
                                        <img class="etalage_source_image" src="images/layer4.jpg" />
                                    </li>
                                    <li>
                                        <img class="etalage_thumb_image" src="images/layer5.jpg" />
                                        <img class="etalage_source_image" src="images/layer5.jpg" />
                                    </li>
                                    <li>
                                        <img class="etalage_thumb_image" src="images/layer6.jpg" />
                                        <img class="etalage_source_image" src="images/layer6.jpg" />
                                    </li>
                                    <li>
                                        <img class="etalage_thumb_image" src="images/layer3.jpg" />
                                        <img class="etalage_source_image" src="images/layer3.jpg" />
                                    </li>
                                </ul>
                            </div>
                            <!-- end product_slider -->
                            <div class="single_right">
                                <h3>Layer</h3>
                                <p class="m_10">This is regarded as the most popular poultry product. Its main use is meat production. Chickens in this category come with very large body sizes and high nutritional content. They also attain weight values that chickens in other categories cant get to.</p>
                            </div>
                            <div class="clear"> </div>
                        </div>
                        <form action="CartController" method="post">
                            <div class="col-md-3">
                                <div class="box-info-product">
                                    <p class="price2">₦70.00</p>
                                    <input type="hidden" name="productType" value="Layer">
                                    <input type="hidden" name="productPrice" value="70.00">
                                    <ul class="product-qty">
                                        <span>Quantity:</span>
                                        <select name="quantity">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                            <option>6</option>
                                        </select>
                                    </ul>
                                    <button type="submit" name="Submit" class="exclusive">
                                        <span>Add to cart</span>
                                    </button>
                                </div>
                            </div>
                        </form>    
                    </div>		
                    <div class="desc">
                        <h4>Description</h4>
                        <p>Layer Information</p>
                    </div>
                    <div class="row">
                        <!-- put other species here and link them appropriately-->
                        <h4 class="m_11">Related Products in the same Category</h4>
                        <div class="col-md-4 product1">
                            <img src="images/broiler1.jpg" class="img-responsive" alt=""/> 
                            <div class="shop_desc"><a href="broiler.jsp">
                                </a><h3><a href="broiler.jsp"></a><a href="broiler.jsp">Broilers</a></h3>
                                <p>Hybrid birds groomed for meat production</p>
                                <span class="reducedfrom">₦160.00</span>
                                <span class="actual">₦100.00</span><br>
                                <ul class="buttons">
                                    <li class="shop_btn"><a href="broiler.jsp">View Product</a></li>
                                    <div class="clear"> </div>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4 product1">
                            <img src="images/cockerel1.jpg" class="img-responsive" alt=""/> 
                            <div class="shop_desc"><a href="cockerel.jsp">
                                </a><h3><a href="cockerel.jsp"></a><a href="cockerel.jsp">Cockerel</a></h3>
                                <p>Male birds groomed for reproduction</p>
                                <span class="reducedfrom">₦140.00</span>
                                <span class="actual">₦90.00</span><br>
                                <ul class="buttons">
                                    <li class="shop_btn"><a href="cockerel.jsp">View Product</a></li>
                                    <div class="clear"> </div>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <img src="images/chick1.jpg" class="img-responsive" alt=""/> 
                            <div class="shop_desc"><a href="chick.jsp">
                                </a><h3><a href="chick.jsp"></a><a href="chick.jsp">Chicks</a></h3>
                                <p>Young birds that are products of reproduction</p>
                                <span class="reducedfrom">₦60.00</span>
                                <span class="actual">₦30.00</span><br>
                                <ul class="buttons">
                                    <li class="shop_btn"><a href="chick.jsp">View Product</a></li>
                                    <div class="clear"> </div>
                                </ul>
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
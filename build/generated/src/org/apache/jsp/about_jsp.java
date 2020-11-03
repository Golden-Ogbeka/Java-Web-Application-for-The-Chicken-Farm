package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class about_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>About</title>\n");
      out.write("        <link href=\"css/bootstrap.css\" rel='stylesheet' type='text/css' />\n");
      out.write("        <link href=\"css/style.css\" rel='stylesheet' type='text/css' />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>\n");
      out.write("        <script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $(\".dropdown img.flag\").addClass(\"flagvisibility\");\n");
      out.write("\n");
      out.write("                $(\".dropdown dt a\").click(function () {\n");
      out.write("                    $(\".dropdown dd ul\").toggle();\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                $(\".dropdown dd ul li a\").click(function () {\n");
      out.write("                    var text = $(this).html();\n");
      out.write("                    $(\".dropdown dt a span\").html(text);\n");
      out.write("                    $(\".dropdown dd ul\").hide();\n");
      out.write("                    $(\"#result\").html(\"Selected value is: \" + getSelectedValue(\"sample\"));\n");
      out.write("                });\n");
      out.write("\n");
      out.write("                function getSelectedValue(id) {\n");
      out.write("                    return $(\"#\" + id).find(\"dt a span.value\").html();\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                $(document).bind('click', function (e) {\n");
      out.write("                    var $clicked = $(e.target);\n");
      out.write("                    if (!$clicked.parents().hasClass(\"dropdown\"))\n");
      out.write("                        $(\".dropdown dd ul\").hide();\n");
      out.write("                });\n");
      out.write("\n");
      out.write("\n");
      out.write("                $(\"#flagSwitcher\").click(function () {\n");
      out.write("                    $(\".dropdown img.flag\").toggleClass(\"flagvisibility\");\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("        <!-- Add fancyBox main JS and CSS files -->\n");
      out.write("        <script src=\"js/jquery.magnific-popup.js\" type=\"text/javascript\"></script>\n");
      out.write("        <link href=\"css/magnific-popup.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <script>\n");
      out.write("            $(document).ready(function () {\n");
      out.write("                $('.popup-with-zoom-anim').magnificPopup({\n");
      out.write("                    type: 'inline',\n");
      out.write("                    fixedContentPos: false,\n");
      out.write("                    fixedBgPos: true,\n");
      out.write("                    overflowY: 'auto',\n");
      out.write("                    closeBtnInside: true,\n");
      out.write("                    preloader: false,\n");
      out.write("                    midClick: true,\n");
      out.write("                    removalDelay: 300,\n");
      out.write("                    mainClass: 'my-mfp-zoom-in'\n");
      out.write("                });\n");
      out.write("            });\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         ");

            if(session.getAttribute("username")==null){
                response.sendRedirect("index.jsp");
            }
        
      out.write("\n");
      out.write("        <div class=\"header\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-12\">\n");
      out.write("                        <div class=\"header-left\">\n");
      out.write("                            <div class=\"logo\">\n");
      out.write("                                <a href=\"home.jsp\"><img src=\"images/logo.png\" alt=\"\"/></a>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"menu\">\n");
      out.write("                                <a class=\"toggleMenu\" href=\"#\"><img src=\"images/nav.png\" alt=\"\" /></a>\n");
      out.write("                                <ul class=\"nav\" id=\"nav\">\n");
      out.write("                                    <li><a href=\"home.jsp\">Home</a></li>\n");
      out.write("                                    <li><a href=\"shop.jsp\">Shop</a></li>\n");
      out.write("                                    <li><a href=\"gallery.jsp\">Gallery</a></li>\n");
      out.write("                                    <li><a href=\"about.jsp\">About Us</a></li>\n");
      out.write("                                    <li><a href=\"contact.jsp\">Contact</a></li>\t\t\t\t\t\t\t\n");
      out.write("                                    <div class=\"clear\"></div>\n");
      out.write("                                </ul>\n");
      out.write("                                <script type=\"text/javascript\" src=\"js/responsive-nav.js\"></script>\n");
      out.write("                            </div>\t\t\t\t\t\t\t\n");
      out.write("                            <div class=\"clear\"></div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"header_right\">\n");
      out.write("\n");
      out.write("                            <!-- start search-->\n");
      out.write("                            <div class=\"search-box\">\n");
      out.write("                                <div id=\"sb-search\" class=\"sb-search\">\n");
      out.write("                                    <form>\n");
      out.write("                                        <input class=\"sb-search-input\" placeholder=\"What are you looking for?\" type=\"search\" name=\"search\" id=\"search\">\n");
      out.write("                                        <input class=\"sb-search-submit\" type=\"submit\" value=\"\">\n");
      out.write("                                        <span class=\"sb-icon-search\"> </span>\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"login_buttons\">\n");
      out.write("                                <form action=\"LogoutController\" method=\"get\">\n");
      out.write("                                    <div class=\"login_button\"><input id=\"submit\" type=\"submit\" value=\"Logout\"></div>\n");
      out.write("                                <div class=\"clear\"></div>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                            <!----search-scripts---->\n");
      out.write("                            <script src=\"js/classie.js\"></script>\n");
      out.write("                            <script src=\"js/uisearch.js\"></script>\n");
      out.write("                            <script>\n");
      out.write("            new UISearch(document.getElementById('sb-search'));\n");
      out.write("                            </script>\n");
      out.write("                            <!----//search-scripts---->\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"main\">\n");
      out.write("            <div class=\"shop_top\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"row team_box\">\n");
      out.write("                        <h3 class=\"m_2\"><b>The Winning Team</b></h3>\n");
      out.write("                        <div class=\"col-md-3 team1\">\n");
      out.write("                            <a class=\"popup-with-zoom-anim\" href=\"#small-dialog3\"><img src=\"images/team1.jpg\" class=\"img-responsive\" title=\"continue\" alt=\"\"/></a>\n");
      out.write("                            <div id=\"small-dialog3\" class=\"mfp-hide\">\n");
      out.write("                                <div class=\"pop_up2\">\n");
      out.write("                                    <h2><b>Ogbeka Golden</b></h2>\n");
      out.write("                                    <p>Golden is the MD/CEO of Golden Incorporations. The Chicken Farm is an offspring of Golden Incorporations. He represents the visioner of the Chicken Farm.</p>\n");
      out.write("                                    <p>His passion is for the needy and he seeks to help as many families that are in need to afford all the basic amenities that life offers. He also wishes to use The Chicken Farm as an avenue to show the world the love that God has for them.</p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <h4 class=\"m_5\"><a href=\"#\"><b>Ogbeka Golden</b></a></h4>\n");
      out.write("                            <p class=\"m_6\">MD/CEO of Golden Incorporations</p>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-3 team1\">\n");
      out.write("                            <a class=\"popup-with-zoom-anim\" href=\"#small-dialog3\"><img src=\"images/team2.jpg\" class=\"img-responsive\" title=\"continue\" alt=\"\"/></a>\n");
      out.write("                            <div id=\"small-dialog3\" class=\"mfp-hide\">\n");
      out.write("                                <div class=\"pop_up2\">\n");
      out.write("                                    <h2>Dr Okesola Olatunji</h2>\n");
      out.write("                                    <p>Dr Okesola is the lead supervisor of this project. His outstanding ideas and contributions helped in the fulfillment of this project. He is currently a lecturer at Covenant University and also has 25 years of working experience</p>\n");
      out.write("                                    <p>Dr Okesola's area of Computer Security and his years of experience were spent at the banking sector of Nigeria. He is happily married with children.</p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <h4 class=\"m_5\"><a href=\"#\"><b>Dr Okesola Olatunji</b></a></h4>\n");
      out.write("                            <p class=\"m_6\">Lead Supervisor</p>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"row\">\n");
      out.write("                        <div class=\"col-md-4 team_bottom\">\n");
      out.write("                            <ul class=\"team_list\">\n");
      out.write("                                <h4><b>Why Chicken Farm?</b></h4>\n");
      out.write("                                <li><a href=\"#\">Quality Product at very affordable prices</a><p>The Chicken Farm chicken products that don't lag behind in terms of quality. This characteristic is also balanced with a very affordable price tag that ensures that all products could be easily obtained by people of various classes in the country.</p></li>\n");
      out.write("                                <li><a href=\"#\">Healthy Agricultural Products</a><p>Research has proved that factory produced products are more dangerous to the health than naturally groomed products. The Chicken Farm aims to change the result of this research by producing high quality agricultural products that are healthy to the human body even though they are factory produced.</p></li>\n");
      out.write("                                <li><a href=\"#\">Diverse products from one chicken</a><p>Most Farms normally specialize in specific areas like meat production, egg production and reproduction when it comes to Poultry. The Chicken Farm has chosen to diversify into different aspects of Poultry like Grilled Chicken, Sharwama production, Chicken Peppersoup etc. We have sponsors like Indomie, MacDonalds, KFC and many more.</p></li>\n");
      out.write("                                <li><a href=\"#\">Ensured customer satisfaction</a><p>The Chicken Farm is founded to meet the needs of people. This singular purpose therefore ensures that all customers are satisfied with every product and service rendered. Every worker in The Chicken Farm has a partnership mentality which makes him give all his efforts and resources to make the business venture work.</p></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-8\">\n");
      out.write("                            <ul class=\"team_list\">\n");
      out.write("                                <h4><b>Vision Statement</b></h4>\n");
      out.write("                                <p class=\"m_7\">The Chicken Farm has a singular vision to make available quality and healthy chicken products at affordable prices to people of different tribes, ethnic groups and nations. The vision was spurred out of a deep hearted desire to meet the needs of the poor.</p>\n");
      out.write("                                <img src=\"images/team5.jpg\" class=\"img-responsive\" alt=\"\"/>\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"footer\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-3\">\n");
      out.write("                        <ul class=\"footer_box\">\n");
      out.write("                            <h4>Products</h4>\n");
      out.write("                            <li><a href=\"broiler.jsp\">Broilers</a></li>\n");
      out.write("                            <li><a href=\"cockerel.jsp\">Cockerels</a></li>\n");
      out.write("                            <li><a href=\"layer.jsp\">Layers</a></li>\n");
      out.write("                            <li><a href=\"chick.jsp\">Chicks</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-3\">\n");
      out.write("                        <ul class=\"footer_box\">\n");
      out.write("                            <h4>About The Chicken Farm</h4>\n");
      out.write("                            <li><a href=\"about.jsp\">Vision</a></li>\n");
      out.write("                            <li><a href=\"about.jsp\">Team</a></li>\n");
      out.write("                            <li><a href=\"about.jsp\">Locations</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-3\">\n");
      out.write("                        <ul class=\"footer_box\">\n");
      out.write("                            <h4>Customer Support</h4>\n");
      out.write("                            <li><a href=\"contact.jsp\">Contact Us</a></li>\n");
      out.write("                            <li><a href=\"contact.jsp\">Shipping and Order Tracking</a></li>\n");
      out.write("                            <li><a href=\"contact.jsp\">Feedback</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-3\">\n");
      out.write("                        <ul class=\"footer_box\">\n");
      out.write("                            <h4>Newsletter</h4>\n");
      out.write("                            <div class=\"footer_search\">\n");
      out.write("                                <form>\n");
      out.write("                                    <input type=\"text\" value=\"Enter your email\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {\n");
      out.write("                                                this.value = 'Enter your email';}\">\n");
      out.write("                                    <input type=\"submit\" value=\"Go\">\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row footer_bottom\">\n");
      out.write("                    <div class=\"copy\">\n");
      out.write("                        <p>©2018 Golden Incorporations</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\t\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.PrintWriter;
import java.sql.*;

public final class cart_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Cart</title>\n");
      out.write("        <link href=\"css/bootstrap.css\" rel='stylesheet' type='text/css' />\n");
      out.write("        <link href=\"css/style.css\" rel='stylesheet' type='text/css' />\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>\n");
      out.write("        <script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("        <script src=\"js/jquery.min.js\"></script>\n");
      out.write("        <!--<script src=\"js/jquery.easydropdown.js\"></script>-->\n");
      out.write("        <!--start slider -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/fwslider.css\" media=\"all\">\n");
      out.write("        <script src=\"js/jquery-ui.min.js\"></script>\n");
      out.write("        <script src=\"js/fwslider.js\"></script>\n");
      out.write("        <!--end slider -->\n");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
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
      out.write("                                    <li><a href=\"cart.jsp\">Cart</a></li>\n");
      out.write("                                    <li><a href=\"about.jsp\">About Us</a></li>\n");
      out.write("                                    <li><a href=\"contact.jsp\">Contact</a></li>\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("                                    <div class=\"clear\"></div>\n");
      out.write("                                </ul>\n");
      out.write("                                <script type=\"text/javascript\" src=\"js/responsive-nav.js\"></script>\n");
      out.write("                            </div>\t\t\t\t\t\t\t\n");
      out.write("                            <div class=\"clear\"></div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"header_right\">\n");
      out.write("                            <!--   You have to remove this search and put the profile name instead-->\n");
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
      out.write("\n");
      out.write("                            <ul class=\"icon1 sub-icon1 profile_img\">\n");
      out.write("                                <li>  \n");
      out.write("                                    <div class=\"login_buttons\">\n");
      out.write("                                        <div class=\"login_button\"><a href=\"LogoutController\">Logout</a></div>\n");
      out.write("                                        <div class=\"clear\"></div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <ul class=\"sub-icon1 list\">Click to Logout\n");
      out.write("                                        ");

                                            String username = session.getAttribute("username").toString();
                                            out.println(username.toUpperCase());
                                        
      out.write("\n");
      out.write("                                    </ul>\n");
      out.write("                                </li>\n");
      out.write("                            </ul>\n");
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
      out.write("        </div>       \n");
      out.write("        <div class=\"main\">\n");
      out.write("            <div class=\"shop_top\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <center>   <h1>Products in Your Cart</h1></center>\n");
      out.write("                    <table class=\"table\">\n");
      out.write("                        <th>Product Type</th><th>Product Price</th><th>Quantity</th>\n");
      out.write("                            ");

                                if (session.getAttribute("username") == null) {
                                    response.sendRedirect("index.jsp");
                                } else if ((session.getAttribute("username").toString()).equalsIgnoreCase("admin")) {
                                    response.sendRedirect("admin.jsp");
                                }
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
                                        }while (rs.next());
                                    }
                                } catch (Exception e) {
                                    System.out.println(e);
                                }
                            
      out.write("\n");
      out.write("                    </table>\n");
      out.write("                    <form class=\"form-submit\" action=\"CartOperations\">\n");
      out.write("                        <table>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("\n");
      out.write("                                    <input type=\"submit\" value=\"Clear Cart\" name=\"registerdirect\"/>\n");
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("                    </form>\n");
      out.write("                    <form class=\"form-submit\" action=\"checkout.jsp\">\n");
      out.write("                        <table>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>\n");
      out.write("\n");
      out.write("                                    <input type=\"submit\" value=\"Proceed to Checkout\"/>\n");
      out.write("\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"footer\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-3\">\n");
      out.write("                    <ul class=\"footer_box\">\n");
      out.write("                        <h4>Products</h4>\n");
      out.write("                        <li><a href=\"broiler.jsp\">Broilers</a></li>\n");
      out.write("                        <li><a href=\"cockerel.jsp\">Cockerels</a></li>\n");
      out.write("                        <li><a href=\"layer.jsp\">Layers</a></li>\n");
      out.write("                        <li><a href=\"chick.jsp\">Chicks</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-3\">\n");
      out.write("                    <ul class=\"footer_box\">\n");
      out.write("                        <h4>About The Chicken Farm</h4>\n");
      out.write("                        <li><a href=\"about.jsp\">Vision</a></li>\n");
      out.write("                        <li><a href=\"about.jsp\">Team</a></li>\n");
      out.write("                        <li><a href=\"about.jsp\">Locations</a></li>\n");
      out.write("                        <li><a href=\"gallery.jsp\">Gallery</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-3\">\n");
      out.write("                    <ul class=\"footer_box\">\n");
      out.write("                        <h4>Customer Support</h4>\n");
      out.write("                        <li><a href=\"contact.jsp\">Contact Us</a></li>\n");
      out.write("                        <li><a href=\"contact.jsp\">Shipping and Order Tracking</a></li>\n");
      out.write("                        <li><a href=\"contact.jsp\">Feedback</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-3\">\n");
      out.write("                    <ul class=\"footer_box\">\n");
      out.write("                        <h4>Copyright</h4>\n");
      out.write("                        <div class=\"footer_search\">\n");
      out.write("                            <div class=\"copy\">\n");
      out.write("                                <p>©2018 Golden Corporations</p>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row footer_bottom\">\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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

<%-- 
    Document   : admin
    Created on : Mar 17, 2018, 3:48:43 PM
    Author     : Nedlog
--%>

<%@page import="java.sql.*"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Controller Setup</title>
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
            if (((session.getAttribute("username").toString()).equalsIgnoreCase("admin")) == false) {
                response.sendRedirect("index.jsp");
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
                            <div class="clear"></div>
                        </div>
                        <div class="header_right">
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
                        </div>
                    </div>
                </div>
            </div>
        </div>       
        <div class="main">
            <div class="shop_top">
                <div class="container">
                    <div class="row">
                        <div class="login-title"> 
                            <div id="loginbox" class="loginbox">
                                <form action="AdminBank" method="post" id="login-form">
                                    <fieldset class="input">
                                        <legend> <center><h1 class="title">Add new Account Details</h1></center></legend>
                                        <p id="login-form-username">
                                            <label for="modlgn_username">ATM NUMBER</label>
                                            <input id="modlgn_username" type="text" name="atmNumber" class="inputbox" size="18" autocomplete="off" required="true">
                                        </p>
                                        <p id="login-form-password">
                                            <label for="modlgn_passwd">ATM PIN</label>
                                            <input id="modlgn_passwd" type="password" name="atmPin" class="inputbox" size="18" autocomplete="off" required="true">
                                        </p>
                                        <div class="remember">
                                            <input type="submit" class="button" value="ADD ACCOUNT">
                                            <div class="clear"></div>
                                        </div>

                                    </fieldset>
                                </form>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <center>   <h1>Customer Orders</h1></center>
                        <table class="table">
                            <th>Username</th><th>Product Type</th><th>Product Price</th><th>Quantity</th>
                                <%
                                    if (session.getAttribute("username") == null) {
                                        response.sendRedirect("index.jsp");
                                    }
                                    try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/chickenfarm", "root", "");
                                        Statement stmt = con.createStatement();
                                        ResultSet rs = stmt.executeQuery("SELECT * FROM customerorder");
                                        /*THere is an error here find out how*/
                                        if (rs.next() == false) {
                                            out.println("<p><strong><h2>Sorry, there are no orders</h2></strong></p>");
                                        } else {
                                            do {
                                                out.println("<tr><td>" + rs.getString(1) + "</td>" + "<td>" + rs.getString(2) + "</td>" + "<td>" + rs.getString(3) + "</td>" + "<td>" + rs.getString(4) + "</td></tr>");
                                            }while (rs.next());
                                        }
                                        con.close();
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                %>
                        </table>
                    </div>
                    <div class="col-md-12">
                        <center>   <h1>Customer Feedback</h1></center>
                        <table class="table">
                            <th>Full Name</th><th>Email</th><th>Subject</th><th>Message</th>
                                <%
                                    if (session.getAttribute("username") == null) {
                                        response.sendRedirect("index.jsp");
                                    }
                                    try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/chickenfarm", "root", "");
                                        Statement stmt = con.createStatement();
                                        ResultSet rs = stmt.executeQuery("SELECT * FROM customersupport");
                                        /*THere is an error here find out how*/
                                        if (rs.next() == false) {
                                            out.println("<p><strong><h2>Sorry, there are no feedbacks</h2></strong></p>");
                                        } else {
                                            do{
                                                out.println("<tr><td>" + rs.getString(1) + "</td>" + "<td>" + rs.getString(2) + "</td>" + "<td>" + rs.getString(3) + "</td>" + "<td>" + rs.getString(4) + "</td></tr>");
                                            }while (rs.next());
                                        }
                                        con.close();
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                %>
                        </table>
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

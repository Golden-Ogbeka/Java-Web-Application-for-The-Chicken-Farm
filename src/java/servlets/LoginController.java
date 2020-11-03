/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author Nedlog
 */

@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            boolean verify = false;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/chickenfarm", "root", "");
            Statement stmt = con.createStatement();
            //the sql query below is what makes the application open to sql injection
            ResultSet rs = stmt.executeQuery("select * from users where username='"+username+"' AND password='"+password+"'");
            //method 1
           //This method is not open to sql injection because of the way the result set is stored and checked
//            while (rs.next()) {
//                String userNameStored = rs.getString("username").trim(); //to get the username in the column username
//                String userPasswordStored = rs.getString("password").trim();
//                if(username.equalsIgnoreCase("admin")&&password.equals("pass")){
//                    String entry=JOptionPane.showInputDialog("Please input the special entry");
//                    if(entry.equals("Standard")){
//                         HttpSession session = request.getSession();
//                        session.setAttribute("username", username);
//                        response.sendRedirect("admin.jsp");
//                       break;
//                    }
//                    else{
//                        JOptionPane.showMessageDialog(null, "You are not the authorised administrator");
//                        response.sendRedirect("index.jsp");
//                        break;
//                    }
//                }
//                else if (username.equalsIgnoreCase(userNameStored) && password.equals(userPasswordStored)) {
//                    verify = true;
//                    break;
//                } else {
//                    verify = false;
//                }
//            }
//            if (verify == true) {
//                JOptionPane.showMessageDialog(null, "Welcome " + username.toUpperCase());
//                HttpSession session = request.getSession();
//                session.setAttribute("username", username);
//                response.sendRedirect("home.jsp");
//            } else {
//                JOptionPane.showMessageDialog(null, "Input valid username and password or Register", "Invalid username or password", 1);
//                response.sendRedirect("index.jsp");
//            }

        //method 2.
        //this method is open to sql injection
        if(rs.next()){
            JOptionPane.showMessageDialog(null, "Welcome");
            HttpSession session = request.getSession();
            session.setAttribute("username", username);
            response.sendRedirect("home.jsp");
        }
        else{
            JOptionPane.showMessageDialog(null, "Wrong username or password");
            response.sendRedirect("index.jsp");
        }
            
            //method 3
            // This method is open to sql injection without using prepared statement which checks the input first.
            //but if prepared statements are used, then it cannot be broken
//            PreparedStatement ps=con.prepareStatement("select * from users where username=? AND password=?");
//            ps.setString(1, username);
//            ps.setString(2, password);
//            rs = ps.executeQuery();
//            if(username.equalsIgnoreCase("admin")&&password.equals("pass")){
//                    String entry=JOptionPane.showInputDialog("Please input the special entry");
//                    if(entry.equals("Standard")){
//                         HttpSession session = request.getSession();
//                        session.setAttribute("username", username);
//                        JOptionPane.showMessageDialog(null, "Welcome " + username.toUpperCase());
//                        response.sendRedirect("admin.jsp");
//                       
//                    }
//                    else{
//                        JOptionPane.showMessageDialog(null, "You are not the authorised administrator");
//                        response.sendRedirect("index.jsp");
//                       
//                    }
//                }
//            else if(rs.next()){
//                HttpSession session = request.getSession();
//                session.setAttribute("username", username);
//                response.sendRedirect("home.jsp");
//                JOptionPane.showMessageDialog(null, "Welcome " + username.toUpperCase());
//                
//            }
//            else{
//                JOptionPane.showMessageDialog(null, "Input valid username and password or Register", "Invalid username or password", 1);
//                response.sendRedirect("index.jsp");
//            }
//
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally{
            out.close();
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

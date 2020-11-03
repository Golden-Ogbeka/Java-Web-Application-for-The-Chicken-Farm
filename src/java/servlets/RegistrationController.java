/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import static java.lang.System.out;
import java.sql.*;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author Nedlog
 */
@WebServlet(name = "RegistrationController", urlPatterns = {"/RegistrationController"})
public class RegistrationController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        //get all the values of the input boxes
         String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String email = request.getParameter("email");
            String address = request.getParameter("address");
            String uname = request.getParameter("uname");
            String pass = request.getParameter("pass");
        try {
           
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/chickenfarm", "root", "");
            Statement stmt = con.createStatement();
            //ResultSet rs = stmt.executeQuery("select username from users");
            PreparedStatement ps = con.prepareStatement("select * from users where username=?");
            ps.setString(1, uname);
            ResultSet rs = ps.executeQuery();
            if (uname.equalsIgnoreCase("admin")) {
                JOptionPane.showMessageDialog(null, "Your username is invalid. Please select another username");
                response.sendRedirect("register.jsp");

            } else if (rs.next()) {
                JOptionPane.showMessageDialog(null, "Please select another username or proceed to login", "Username Unavailable", 1);
                response.sendRedirect("register.jsp");

            } else {
                //send to registration table
                PreparedStatement psreg= con.prepareStatement("INSERT INTO registration VALUES (?,?,?,?,?,?)");
                psreg.setString(1, fname);
                psreg.setString(2, lname);
                psreg.setString(3, email);
                psreg.setString(4, address);
                psreg.setString(5, uname);
                psreg.setString(6, pass);
                psreg.executeUpdate();
                //stmt.executeUpdate(sql);
               // String sql2 = "INSERT INTO users(username,password) VALUES(?,?)"; 
               //stmt.executeUpdate(sql2);
               //send to users table
                PreparedStatement psuser=con.prepareStatement("INSERT INTO users VALUES (?,?) ");
                psuser.setString(1, uname);
                psuser.setString(2, pass);
                psuser.executeUpdate();
                response.sendRedirect("index.jsp");
                JOptionPane.showMessageDialog(null, "Registration Successful");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

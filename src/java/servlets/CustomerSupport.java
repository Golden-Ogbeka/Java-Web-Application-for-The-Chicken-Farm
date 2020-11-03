/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import static java.lang.System.out;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
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
@WebServlet(name = "CustomerSupport", urlPatterns = {"/CustomerSupport"})
public class CustomerSupport extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String fullname=request.getParameter("fullname");
        String email=request.getParameter("email");
        String subject=request.getParameter("subject");
        String message=request.getParameter("message");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/chickenfarm", "root", "");
            Statement stmt = con.createStatement();
            PreparedStatement ps=con.prepareStatement("INSERT INTO customersupport VALUES(?,?,?,?)");
            ps.setString(1, fullname);
            ps.setString(2, email);
            ps.setString(3, subject);
            ps.setString(4, message);
            ps.executeUpdate();
            //stmt.executeUpdate("INSERT INTO customersupport VALUES('" + fullname + "','" + email + "','" + subject + "','" + message + "')");
            JOptionPane.showMessageDialog(null, "Your message has been received. We would get back to you");
            response.sendRedirect("home.jsp");
        }   
        catch(Exception e){
            out.println(e);
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

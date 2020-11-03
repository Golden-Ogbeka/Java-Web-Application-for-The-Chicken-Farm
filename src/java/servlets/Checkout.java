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
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author Nedlog
 */
@WebServlet(name = "Checkout", urlPatterns = {"/Checkout"})
public class Checkout extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String atmNumber = request.getParameter("atmNumber");
        String atmPin = request.getParameter("atmPin");
        HttpSession session = request.getSession();
        String userName = session.getAttribute("username").toString();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/chickenfarm", "root", "");
            Statement stmt = con.createStatement();
            ResultSet rs;
            PreparedStatement ps = con.prepareStatement("select * from bank where ATMNumber=? AND ATMPIN=?");
            ps.setString(1, atmNumber);
            ps.setString(2, atmPin);
            rs = ps.executeQuery();

            if (rs.next()) {
                PreparedStatement ps2=con.prepareStatement("INSERT INTO customerorder SELECT * FROM cart WHERE User=?");
                ps2.setString(1, userName);
                ps2.executeUpdate();
                //stmt.executeUpdate("INSERT INTO customerorder SELECT * FROM cart WHERE User='" + userName + "'");
                JOptionPane.showMessageDialog(null, "Thank you for passing by. We would send your order to your address");
                response.sendRedirect("home.jsp");
                stmt.executeUpdate("DELETE FROM cart WHERE User='" + userName + "'");
            } else {
                JOptionPane.showMessageDialog(null, "Invalid ATM details. Please try again");
                response.sendRedirect("checkout.jsp");
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

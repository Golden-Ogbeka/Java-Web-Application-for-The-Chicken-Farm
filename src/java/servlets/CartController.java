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
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author Nedlog
 */
@WebServlet(name = "CartController", urlPatterns = {"/CartController"})
public class CartController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String productType = request.getParameter("productType");
        String productPrice = request.getParameter("productPrice");
        String quantity = request.getParameter("quantity");
        HttpSession session = request.getSession();
        String userName = session.getAttribute("username").toString();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/chickenfarm", "root", "");
            Statement stmt = con.createStatement();
            PreparedStatement ps=con.prepareStatement("INSERT INTO cart VALUES(?,?,?,?)");
            ps.setString(1, userName);
            ps.setString(2, productType);
            ps.setString(3, productPrice);
            ps.setString(4, quantity);
            ps.executeUpdate();
            //stmt.executeUpdate("INSERT INTO cart VALUES('" + userName + "','" + productType + "','" + productPrice + "','" + quantity + "')");
            JOptionPane.showMessageDialog(null, "Item has been added to cart");
            response.sendRedirect(productType.toLowerCase() + ".jsp");
        } catch (Exception e) {
            out.println(e);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

/*
 * Golden Ogbeka
 */
package servlets;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
@WebServlet(name = "AdminBank", urlPatterns = {"/AdminBank"})
public class AdminBank extends HttpServlet {

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
        try {
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/chickenfarm", "root", "");
            Statement stmt = con.createStatement();
            PreparedStatement psBank = con.prepareStatement("SELECT * FROM bank where ATMNumber=?");
            psBank.setString(1, atmNumber);
            ResultSet rs = psBank.executeQuery();
            if (rs.next()) {
                JOptionPane.showMessageDialog(null, "Account Details already exists");
                response.sendRedirect("admin.jsp");
            } else {
                PreparedStatement ps = con.prepareStatement("INSERT INTO bank VALUES (?,?)");
                ps.setString(1, atmNumber);
                ps.setString(2, atmPin);
                ps.executeUpdate();
                //stmt.executeUpdate("INSERT INTO bank VALUES ('" + atmNumber + "','" + atmPin + "')");
                JOptionPane.showMessageDialog(null, "Account Details have been added successfully");
                response.sendRedirect("admin.jsp");
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

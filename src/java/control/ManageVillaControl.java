/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import Authentication.BaseRequiredAuthentication;
import dao.BookingsDBContext;
import dao.CategoryDBContext;
import dao.VillasDBContext;
import entity.Bookings;
import entity.Customers;
import entity.Villas;
import entity.category;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author admin
 */
public class ManageVillaControl extends BaseRequiredAuthentication {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response, Customers account)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");


        BookingsDBContext dao = new BookingsDBContext();
        List<Bookings> list = dao.getAllBookings();

        request.setAttribute("list", list);
        request.getRequestDispatcher("ManageVillas.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response, Customers account)
            throws ServletException, IOException {
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response, Customers account)
            throws ServletException, IOException {
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

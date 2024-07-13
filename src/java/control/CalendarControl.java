/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import Authentication.BaseRequiredAuthentication;
import dao.BookingsDBContext;
import dao.CategoryDBContext;
import dao.VillasDBContext;
import entity.Customers;
import entity.Villas;
import entity.category;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.List;

/**
 *
 * @author admin
 */
public class CalendarControl extends BaseRequiredAuthentication {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response, Customers account)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String VillasID = request.getParameter("vid");
        String vcheckinDate = request.getParameter("checkinDate");
        String vcheckoutDate = request.getParameter("checkoutDate");
        String vcustomer = request.getParameter("customer");
        String vvillaname = request.getParameter("villaname");
        BookingsDBContext dao = new BookingsDBContext();
        dao.insertBookings(vcheckinDate, vcheckoutDate, vcustomer, vvillaname);

        VillasDBContext dao1 = new VillasDBContext();
        List<Villas> list = dao1.getVillasByCID(VillasID);

        request.setAttribute("listV", list);
        request.getRequestDispatcher("Calendar.jsp").forward(request, response);
    }

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

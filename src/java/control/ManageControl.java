/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package control;

import Authentication.BaseRequiredAuthentication;
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
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author admin
 */
public class ManageControl extends BaseRequiredAuthentication {
   
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response, Customers account)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session = request.getSession();
        Customers c = (Customers) session.getAttribute("acc");
        VillasDBContext dao = new VillasDBContext();
        List<Villas> list = dao.getAllVillas();
        
            CategoryDBContext ca = new CategoryDBContext();
            
          
            List<category> listC = ca.getAllCategory();
          
     
            request.setAttribute("listC", listC);
        
        request.setAttribute("listP", list);
        request.getRequestDispatcher("Manage.jsp").forward(request, response);
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

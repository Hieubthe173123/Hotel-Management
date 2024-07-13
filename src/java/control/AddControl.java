/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package control;

import Authentication.BaseRequiredAuthentication;
import dao.VillasDBContext;
import entity.Customers;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
public class AddControl extends BaseRequiredAuthentication {
   
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response, Customers account)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
       String pname = request.getParameter("name");
       String pimage = request.getParameter("image");
       String pprice = request.getParameter("price");
       String paddress = request.getParameter("address");
       String pdescription = request.getParameter("description");
       String pcategory = request.getParameter("cid");
       String pcid = request.getParameter("category");
        String pmaxOccupancy = request.getParameter("maxOccupancy");
         String pamenities = request.getParameter("amenities");
    
       VillasDBContext dao = new VillasDBContext();
       dao.insertVillas(pname, pimage, pprice, paddress, pdescription, pcategory, pmaxOccupancy, pamenities, pcid);
       response.sendRedirect("manage");
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

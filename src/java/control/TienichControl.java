/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;


import dao.CatetienichDBContext;
import dao.TienichDBContext;
import entity.catetienich;
import entity.tienich;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.util.List;

public class TienichControl extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        TienichDBContext dao = new TienichDBContext();
        CatetienichDBContext ca = new CatetienichDBContext();

          
         List<tienich> list = dao.getAllTienich();
         List<catetienich> listC = ca.getAllCateTienich();
         
         request.setAttribute("listT",list);
         request.setAttribute("listCT", listC);
         

        request.getRequestDispatcher("Tienich.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

    }
}

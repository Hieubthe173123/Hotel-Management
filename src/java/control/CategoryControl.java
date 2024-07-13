package control;

import dao.CategoryDBContext;
import dao.VillasDBContext;
import entity.Villas;
import entity.category;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.util.List;

public class CategoryControl extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
          String cateID = request.getParameter("cid");
            
            VillasDBContext dao = new VillasDBContext();
            CategoryDBContext ca = new CategoryDBContext();
            
            List<Villas> list = dao.getVillasByCID(cateID);
            List<category> listC = ca.getAllCategory();
          
            request.setAttribute("listV", list);
            request.setAttribute("listC", listC);


            request.getRequestDispatcher("properties.jsp").forward(request, response);
        

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       

    }
}
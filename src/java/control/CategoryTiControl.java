package control;


import dao.CatetienichDBContext;
import dao.TienichDBContext;
import entity.catetienich;
import entity.tienich;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.util.List;

public class CategoryTiControl extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
          String cateID = request.getParameter("catid");
            
            TienichDBContext dao = new  TienichDBContext();
            CatetienichDBContext ca = new CatetienichDBContext();
            
            List<tienich> list = dao.getTienichByCID(cateID);
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
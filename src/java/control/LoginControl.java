/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import dao.CustomersDBContext;
import entity.Customers;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author admin
 */
public class LoginControl extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        CustomersDBContext dao = new CustomersDBContext();
        Customers c = dao.login(username, password);
        HttpSession session = request.getSession();
        session.setAttribute("account", c);
        Cookie c_user = new Cookie("username", username);
        Cookie c_pass = new Cookie("password", password);
        c_user.setMaxAge(3600 * 24 * 7);
        c_pass.setMaxAge(3600 * 24 * 7);
        response.addCookie(c_pass);
        response.addCookie(c_user);
        if (c == null) {
            request.setAttribute("mess", "Nhập Sai Tên Đăng Nhập Hoặc Mật Khẩu");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            session.setAttribute("acc", c);
            response.sendRedirect("home");
        }
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
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

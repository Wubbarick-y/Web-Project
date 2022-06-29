package com.controller;

import com.entity.Admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/admin/login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("uname1");
        String pwd = req.getParameter("pwd1");
        String url ;
        if("admin".equals(name) && "admin".equals(pwd)){
            Admin admin = new Admin("admin", "admin");
            HttpSession session = req.getSession();
            session.setAttribute("admin",admin);
            url="/management";
        }else{
            url="/login";
        }
        resp.sendRedirect(req.getContextPath() + url);

    }
}

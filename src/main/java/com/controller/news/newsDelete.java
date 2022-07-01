package com.controller.news;

import com.Utils.DataSourceUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/newsDelete")
public class newsDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        try {
            Connection connection = DataSourceUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("delete from news where news_id = ?");
            preparedStatement.setInt(1,id);
            boolean execute = preparedStatement.execute();
            req.setAttribute("result",execute);
            resp.sendRedirect(req.getContextPath() + "/newsManage");
        } catch (SQLException e) {
            System.out.println("数据库链接失败");
        }
    }
}

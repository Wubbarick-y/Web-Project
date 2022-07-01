package com.controller.announcement;

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


@WebServlet("/announcementSubmit")
public class announcementServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/admin/announceSubmit.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String html = req.getParameter("html");
        String title = req.getParameter("title");
        //存储数据
        try (            Connection connection = DataSourceUtils.getConnection();
        ){
            String sql = "insert into announcement(announcement_title,announcement_content) values(?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(2,html);
            preparedStatement.setString(1,title);
            preparedStatement.execute();
        } catch (SQLException e) {
            System.out.println("获取数据库链接失败");
        }
    }



}

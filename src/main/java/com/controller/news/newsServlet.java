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
//添加数据的servlet
@WebServlet("/newsSubmit")
public class newsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/admin/newsSubmit.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String html = req.getParameter("html");
        String title = req.getParameter("title");
        String detail = req.getParameter("detail");
        //存储数据
        try (Connection connection = DataSourceUtils.getConnection();
        ){
            String sql = "insert into news(news_title,news_content,detail) values(?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(3,detail);
            preparedStatement.setString(2,html);
            preparedStatement.setString(1,title);
            preparedStatement.execute();
        } catch (SQLException e) {
            System.out.println("获取数据库链接失败");
        }
    }

}

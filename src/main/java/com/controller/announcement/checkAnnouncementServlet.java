package com.controller.announcement;

import com.Utils.DataSourceUtils;
import com.entity.AnnounceMent;
import com.entity.News;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

/*
* 显示具体内容
* */
@WebServlet("/checkAnnouncement")
public class checkAnnouncementServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));

        try {
            Connection connection = DataSourceUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("select * from announcement where announcement_Id = ?");
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                Date time = resultSet.getDate("insert_time");
                String title = resultSet.getString("announcement_title");
                String content = resultSet.getString("announcement_content");
                AnnounceMent announceMent = new AnnounceMent(id, time, title, content);
                req.setAttribute("article",announceMent);
            }
            req.getRequestDispatcher("/WEB-INF/user/showArticle.jsp").forward(req,resp);

        }
        catch (SQLException e) {
            System.out.println("服务器链接异常");
        }
    }
}

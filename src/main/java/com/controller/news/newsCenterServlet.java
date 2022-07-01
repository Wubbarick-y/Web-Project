package com.controller.news;

import com.Utils.DataSourceUtils;
import com.entity.News;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/*
显示新闻中心
 */
@WebServlet("/newsCenter")
public class newsCenterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<News> newsList = new ArrayList<>();
        try {
            Connection connection = DataSourceUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("select * from news order by insert_time desc");
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                int id = resultSet.getInt("news_id");
                Date time = resultSet.getDate("insert_time");
                String title = resultSet.getString("news_title");
                String content = resultSet.getString("news_content");
                newsList.add(new News(id,time,title,content));
            }
            req.setAttribute("news",newsList);
        } catch (SQLException e) {
            System.out.println("新闻加载失败");
        }
        req.getRequestDispatcher("/WEB-INF/user/newsCenter.jsp").forward(req,resp);
    }
}

package com.controller.admin;

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

@WebServlet("/updateArticle")
public class updateArticleServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int type = Integer.parseInt(req.getParameter("type"));  //type为1表示是news
        int id = Integer.parseInt(req.getParameter("id"));
        String sql = null;
        if(type == 1){
            sql = "select * from news where news_id = ?";
        }else if(type == 2){
            sql = "select * from announcement where announcement_Id = ?";
        }
        try {
            Connection connection = DataSourceUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                if(type == 1){
                    Date time = resultSet.getDate("insert_time");
                    String title = resultSet.getString("news_title");
                    String content = resultSet.getString("news_content");
                    String detail = resultSet.getString("detail");
                    News news = new News(id, time, title, content, detail);
                    req.setAttribute("article",news);
                }else if(type == 2){
                    Date time = resultSet.getDate("insert_time");
                    String title = resultSet.getString("announcement_title");
                    String content = resultSet.getString("announcement_content");
                    String detail = resultSet.getString("detail");
                    AnnounceMent announceMent = new AnnounceMent(id, time, title, content, detail);
                    req.setAttribute("article",announceMent);
                }
                req.setAttribute("type",type);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
            req.getRequestDispatcher("/WEB-INF/admin/updateArticle.jsp").forward(req,resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}

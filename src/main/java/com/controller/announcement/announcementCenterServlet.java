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
import java.util.ArrayList;
import java.util.List;

/*
显示新闻中心
 */
@WebServlet("/announcementCenter")
public class announcementCenterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<AnnounceMent> list = new ArrayList<>();
        try {
            Connection connection = DataSourceUtils.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("select * from announcement order by insert_time desc");
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                int id = resultSet.getInt("announcement_Id");
                Date time = resultSet.getDate("insert_time");
                String title = resultSet.getString("announcement_title");
                String content = resultSet.getString("announcement_content");
                list.add(new AnnounceMent(id,time,title,content));
            }
            req.setAttribute("lists",list);
        } catch (SQLException e) {
            System.out.println("公告加载失败");
        }
        req.getRequestDispatcher("/WEB-INF/user/announcementCenter.jsp").forward(req,resp);
    }
}

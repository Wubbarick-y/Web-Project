package com.Utils;

import javax.annotation.Resource;
import javax.servlet.annotation.WebListener;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;


@WebListener
public class DataSourceUtils {

    public static void main(String[] args) {
        try {
            System.out.println(getConnection());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    @Resource(name="jdbc/MySQL")
    private static DataSource dataSource;

    public static Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }

}




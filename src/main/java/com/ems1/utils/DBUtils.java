package com.ems1.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBUtils {
    public static Connection getConnection() {
        try {
            //add driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            //add url
            String url = "jdbc:mysql://localhost:3306/ems";
            //get connection
            return DriverManager.getConnection(url, "root", "12345");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }


    //close connection
    public static void close(Connection con,
                             PreparedStatement pre, ResultSet res) {
        try {

            con.close();
            pre.close();
            res.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

package com.example.hello.utils;

import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

/**
 * Created by Lenovo on 2017/5/30.
 */
public class JdbcUtils {
    private static String driver = null;
    private static String url = null;
    private static String username = null;
    private static String password = null;
    static{
        try {
           InputStream in =  JdbcUtils.class.getClassLoader().getResourceAsStream("db.properties");
            Properties po = new Properties();
            po.load(in);
            //获取数据库连接驱动
            driver = po.getProperty("driver");
            //获取数据库连接的url地址
            url = po.getProperty("url");
            //获取数据库连接用户名
            username = po.getProperty("username");
            //获取数据库密码
            password = po.getProperty("password");
            //加载数据库
            Class.forName(driver);
        }catch (Exception e) {
            throw new ExceptionInInitializerError(e);
        }
    }
    //获取数据库连接对象
    public static Connection getConnection() throws SQLException{
        return DriverManager.getConnection(url,username,password);
    }
    //释放资源
    public static void release(Connection conn, Statement st, ResultSet rs){
        if(rs!=null){
            try {
                rs.close();
            }catch (Exception e){
                e.printStackTrace();
            }
            rs = null;
        }
        if(st!=null){
            try {
                st.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if(conn!=null){
            try {
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}

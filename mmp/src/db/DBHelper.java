package db;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 * 这是获得与关闭数据库连接的类
 * @author Administrator
 *src===>E:\Program Files\tomcat-6.0.18\webapps\webdemo\WEB-INF\classes
 *webroot==>E:\Program Files\tomcat-6.0.18\webapps\webdemo
 */
public class DBHelper {
	private static Properties prop = new Properties();
	static{
		
		try {
			prop.load(DBHelper.class.getClassLoader().getResourceAsStream("db.properties"));
			Class.forName(prop.getProperty("driver"));
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	/**
	 * 获得连接
	 * @return
	 */
	public static Connection getConnection(){
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(prop.getProperty("url"), prop.getProperty("uname"), prop.getProperty("upass"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	/**
	 * 关闭连接
	 * @param conn
	 */
	public static void closeConnection(Connection conn){
		try {
			if(conn!=null && !conn.isClosed()){
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

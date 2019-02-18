package cn.zkingsoft.db;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBHelper {
	private static Context context = null;
	private static DataSource ds = null;
	static{
		try {
			context = new InitialContext();
			ds = (DataSource)context.lookup("java:comp/env/mysql");
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	/**
	 * �������
	 * @return
	 */
	public static Connection getConnection(){
		Connection conn = null;
		try {
			conn = ds.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
	/**
	 * �ر�����
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

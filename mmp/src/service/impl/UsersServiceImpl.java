package service.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import dao.UsersDao;
import dao.impl.UsersDaoImpl;
import db.DBHelper;
import pojo.Users;
import service.UsersService;

public class UsersServiceImpl implements UsersService{
	
	private UsersDao ud = new UsersDaoImpl();
	
	public boolean addUsers(Users users) {
		Connection conn = DBHelper.getConnection();
		boolean flag = false;
		try {
			conn.setAutoCommit(false);
			flag = ud.saveUsers(users, conn);
			conn.commit();
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}finally{
			DBHelper.closeConnection(conn);
		}
		return flag;
	}
	/**
	 * 修改
	 */
	public boolean modifyUsers(Users users) {
		Connection conn = DBHelper.getConnection();
		boolean flag = false;
		try {
			conn.setAutoCommit(false);
			flag = ud.updateUsers(users, conn);
			conn.commit();
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}finally{
			DBHelper.closeConnection(conn);
		}
		return flag;
	}

	/**
	 * 查询所有用户
	 */
	public List<Users> queryUsersByCondition() {
		Connection conn = DBHelper.getConnection();
		List<Users> list = null;
		try {
			conn.setAutoCommit(false);
			list = ud.selectAllUsersByCondition(conn);
			conn.commit();
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}finally{
			DBHelper.closeConnection(conn);
		}
		return list;
	}
	/**
	 * 根据主键查询一个用户
	 */
	public Users queryUsersById(int uid) {
		Connection conn = DBHelper.getConnection();
		Users users = null;
		try {
			conn.setAutoCommit(false);
			users = ud.selectUsersById(uid, conn);
			conn.commit();
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}finally{
			DBHelper.closeConnection(conn);
		}
		return users;
	}
/**
 * 删除
 */
	public boolean removeUsers(int uid) {
		Connection conn = DBHelper.getConnection();
		boolean flag = false;
		try {
			conn.setAutoCommit(false);
			flag = ud.deleteUsers(uid, conn);
			conn.commit();
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}finally{
			DBHelper.closeConnection(conn);
		}
		return flag;
	}
	/**
	 * 根据条件查询
	 */
	public List<Users> queryUsersByCondition(Map<String, String> condition) {
		Connection conn = DBHelper.getConnection();
		List<Users> list = null;
		try {
			conn.setAutoCommit(false);
			list = ud.selectAllUsersByCondition(conn, condition);
			conn.commit();
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}finally{
			DBHelper.closeConnection(conn);
		}
		return list;
	}
	@Override
	public boolean lookupUsers(String tel, byte[] upass) {
		Connection conn = DBHelper.getConnection();
		boolean flag = false;
		try {
			conn.setAutoCommit(false);
			flag = ud.findUsers(tel, upass, conn);
			conn.commit();
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}finally{
			DBHelper.closeConnection(conn);
		}
		return flag;
	}
	@Override
	public boolean lookupUser(String tel) {
		Connection conn = DBHelper.getConnection();
		boolean flag = false;
		try {
			conn.setAutoCommit(false);
			flag = ud.findUser(tel, conn);
			conn.commit();
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}finally{
			DBHelper.closeConnection(conn);
		}
		return flag;
	}
	@Override
	public boolean addupdatecart(String newcart, String tel) {
		Connection conn = DBHelper.getConnection();
		boolean flag = false;
		try {
			conn.setAutoCommit(false);
			flag = ud.addupdatecart(newcart, tel, conn);
			conn.commit();
		} catch (Exception e) {
			try {
				System.out.println("rollback");
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}finally{
			DBHelper.closeConnection(conn);
		}
		return flag;
	}

}

package service.impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import dao.CartDao;
import dao.impl.CartDaoImpl;
import db.DBHelper;
import pojo.Caricature;
import service.CartService;

public class CartServiceImpl implements CartService{
	
	private CartDao cd = new CartDaoImpl();
	
	public boolean addCart(Caricature cart) {
		Connection conn = DBHelper.getConnection();
		boolean flag = false;
		try {
			conn.setAutoCommit(false);
			flag = cd.saveCart(cart, conn);
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
	 * �޸�
	 */
	public boolean modifyCart(Caricature cart) {
		Connection conn = DBHelper.getConnection();
		boolean flag = false;
		try {
			conn.setAutoCommit(false);
			flag = cd.updateCart(cart, conn);
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
	 * ��ѯ�����û�
	 */
	public List<Caricature> queryCartByCondition() {
		Connection conn = DBHelper.getConnection();
		List<Caricature> list = null;
		try {
			conn.setAutoCommit(false);
			list = cd.selectAllCartByCondition(conn);
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
	 * ����������ѯһ���û�
	 */
	public Caricature queryCartById(String id) {
		Connection conn = DBHelper.getConnection();
		Caricature cart = null;
		try {
			conn.setAutoCommit(false);
			cart = cd.selectCartById(id, conn);
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
		return cart;
	}
/**
 * ɾ��
 */
	public boolean removeCart(String id) {
		Connection conn = DBHelper.getConnection();
		boolean flag = false;
		try {
			conn.setAutoCommit(false);
			flag = cd.deleteCart(id, conn);
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
	 * ����������ѯ
	 */
	public List<Caricature> queryCartByCondition(Map<String, String> condition) {
		Connection conn = DBHelper.getConnection();
		List<Caricature> list = null;
		try {
			conn.setAutoCommit(false);
			list = cd.selectAllCartByCondition(conn, condition);
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
	public boolean dingyueCart(String id) throws Exception {
		Connection conn = DBHelper.getConnection();
		boolean flag = false;
		try {
			conn.setAutoCommit(false);
			flag = cd.dingyueCart(id, conn);
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
	public boolean quxiaoCart(String id) throws Exception {
		Connection conn = DBHelper.getConnection();
		boolean flag = false;
		try {
			conn.setAutoCommit(false);
			flag = cd.dingyueCart(id, conn);
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
	public boolean setScore(String id, double grade) throws Exception {
		Connection conn = DBHelper.getConnection();
		boolean flag = false;
		try {
			conn.setAutoCommit(false);
			flag = cd.setScore(id, grade, conn);
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
	public boolean updateScore(String id, double grade) throws Exception {
		Connection conn = DBHelper.getConnection();
		boolean flag = false;
		try {
			conn.setAutoCommit(false);
			flag = cd.updateScore(id, grade, conn);
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
}

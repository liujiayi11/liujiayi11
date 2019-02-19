package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import dao.CartDao;
import pojo.Caricature;
import util.PrimaryKeyUUID;

public class CartDaoImpl implements CartDao {
	/**
	 * ɾ������
	 */
	public boolean deleteCart(String id, Connection conn) throws Exception {
		boolean flag = false;
		String sql = "delete from caricature where cartId=?";
		PreparedStatement ps = null;
		ps = conn.prepareStatement(sql);
		ps.setString(1, id);
		int n = ps.executeUpdate();
		if (n > 0) {
			flag = true;
		}
		ps.close();
		return flag;
	}

	/**
	 * ��������
	 */
	public boolean saveCart(Caricature cart, Connection conn) throws Exception {
		boolean flag = false;
		String sql = "insert into caricature(cartName,cartAuthor,cartIntro,cartImage,cartLatest) values(?,?,?,?,?)";
		PreparedStatement ps = null;
		ps = conn.prepareStatement(sql);
		String uuid=PrimaryKeyUUID.getPrimaryKey();
		cart.setCartId(uuid);
		ps.setString(1,cart.getCartName());
		ps.setString(2,cart.getCartAuthor() );
		ps.setString(3,cart.getCartIntro() );
		ps.setString(4,cart.getCartImage() );
		ps.setString(5,cart.getCartLatest() );
		int n = ps.executeUpdate();
		if (n > 0) {
			flag = true;
		}
		ps.close();
		return flag;
	}

	/**
	 * ������
	 */
	public List<Caricature> selectAllCartByCondition(Connection conn) throws Exception {
		List<Caricature> list = new ArrayList<Caricature>();
		String sql = "select * from caricature";
		PreparedStatement ps = null;
		ResultSet rs = null;
		ps = conn.prepareStatement(sql);
		rs = ps.executeQuery();
		Caricature cart=null;
		while (rs.next()) {
			cart = new Caricature();
			cart.setCartId(rs.getString("cartId"));
			cart.setCartName(rs.getString("cartName"));
			cart.setCartAuthor(rs.getString("cartAuthor"));
			cart.setCartIntro(rs.getString("cartIntro"));
			cart.setCartImage(rs.getString("cartImage"));
			cart.setCartKind(rs.getString("cartKind"));
			cart.setCartLatest(rs.getString("cartLatest"));
			cart.setTime(rs.getString("time"));
			cart.setCartNum(rs.getInt("cartNum"));
			cart.setGrade(rs.getDouble("grade"));
			cart.setPeopleSum(rs.getInt("peopleSum"));
			cart.setGradeSum(rs.getDouble("gradeSum"));
			list.add(cart);
		}
		rs.close();
		ps.close();
		return list;
	}

	/**
	 * ���������鵥��
	 */
	public Caricature selectCartById(String id, Connection conn) throws Exception {
		Caricature cart = null;
		String sql = "select * from caricature where cartId = ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		ps = conn.prepareStatement(sql);
		ps.setString(1, id);
		rs = ps.executeQuery();
		if (rs.next()) {
			cart = new Caricature();
			cart.setCartId(rs.getString("cartId"));
			cart.setCartName(rs.getString("cartName"));
			cart.setCartAuthor(rs.getString("cartAuthor"));
			cart.setCartIntro(rs.getString("cartIntro"));
			cart.setCartImage(rs.getString("cartImage"));
			cart.setCartKind(rs.getString("cartKind"));
			cart.setCartLatest(rs.getString("cartLatest"));
			cart.setTime(rs.getString("time"));
			cart.setCartNum(rs.getInt("cartNum"));
			cart.setGrade(rs.getDouble("grade"));
			cart.setPeopleSum(rs.getInt("peopleSum"));
			cart.setGradeSum(rs.getDouble("gradeSum"));
		}
		rs.close();
		ps.close();
		return cart;
	}

	/**
	 * �޸�����
	 */
	public boolean updateCart(Caricature cart, Connection conn) throws Exception {
		boolean flag = false;
		String sql = "update caricature set cartName=?,cartAuthor=?,cartIntro=?,cartImage=?,cartKind=?,cartLatest=?,time=? where cartId=?";
		PreparedStatement ps = null;
		ps = conn.prepareStatement(sql);
		ps.setString(1, cart.getCartName());
		ps.setString(2, cart.getCartAuthor());
		ps.setString(3, cart.getCartIntro());
		ps.setString(4, cart.getCartImage());
		ps.setString(7, cart.getCartKind());
		ps.setString(6, cart.getCartLatest());
		ps.setString(5, cart.getTime());
		ps.setString(8, cart.getCartId());
		int n = ps.executeUpdate();
		if (n > 0) {
			flag = true;
		}
		ps.close();
		return flag;
	}

	/**
	 * ����������ѯһ������
	 */
	public List<Caricature> selectAllCartByCondition(Connection conn,
			Map<String, String> condition) throws Exception {
		List<Caricature> list = new ArrayList<Caricature>();
		String sql = "select * from caricature where 1=1";
		Set<Map.Entry<String, String>> me = condition.entrySet();
		int index = 0;
		for (Map.Entry<String, String> entry : me) {
			String k = entry.getKey();
			if("min".equals(k)){
				sql += " and usal>=?";
			}
			if("max".equals(k)){
				sql += " and usal<=?";
			}
			if("uname".equals(k)){
				sql += " and uname like ?";
			}
		}
		System.out.println("sql���");
		PreparedStatement ps = null;
		ps = conn.prepareStatement(sql);
		for (Map.Entry<String, String> entry : me) {
			String k = entry.getKey();
			if("min".equals(k)){
				ps.setDouble(++index, Double.parseDouble(entry.getValue()));
			}
			if("max".equals(k)){
				ps.setDouble(++index, Double.parseDouble(entry.getValue()));
			}
			if("uname".equals(k)){
				ps.setString(++index, "%"+entry.getValue()+"%");
			}
		}
		ResultSet rs = null;

		rs = ps.executeQuery();
		while (rs.next()) {
			Caricature cart = new Caricature();
			cart.setCartId(rs.getString("cartId"));
			cart.setCartName(rs.getString("cartName"));
			cart.setCartAuthor(rs.getString("cartAuthor"));
			cart.setCartIntro(rs.getString("cartIntro"));
			cart.setCartNum(rs.getInt("cartNum"));
			cart.setGrade(rs.getDouble("grade"));
			cart.setCartLatest(rs.getString("cartLatest"));
			cart.setCartKind(rs.getString("cartKind"));
			list.add(cart);
		}
		rs.close();
		ps.close();
		return list;
	}
	/**
	 * ��������
	 */
	@Override
	public boolean dingyueCart(String id, Connection conn) throws Exception {
		String sql = "select * from caricature where cartId = ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		ps = conn.prepareStatement(sql);
		ps.setString(1, id);
		int cartNum=0;
		rs = ps.executeQuery();
		if (rs.next()) {
			cartNum=rs.getInt("cartNum");
		}else{
			return false;
		}
		cartNum++;
		String sql2 = "update caricature set cartNum=? where cartId=?";
		ps = conn.prepareStatement(sql2);
		ps.setInt(1, cartNum);
		ps.setString(2, id);
		int n = ps.executeUpdate();
		if (n > 0) {
			return true;
		}
		rs.close();
		ps.close();
		return false;
	}
	/**
	 * ȡ������
	 */
	@Override
	public boolean quxiaoCart(String id, Connection conn) throws Exception {
		String sql = "select * from caricature where cartId = ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		ps = conn.prepareStatement(sql);
		ps.setString(1, id);
		int cartNum=0;
		rs = ps.executeQuery();
		if (rs.next()) {
			cartNum=rs.getInt("cartNum");
		}else{
			return false;
		}
		cartNum--;
		String sql2 = "update caricature set cartNum=? where cartId=?";
		ps = conn.prepareStatement(sql2);
		ps.setInt(1, cartNum);
		ps.setString(2, id);
		int n = ps.executeUpdate();
		if (n > 0) {
			return true;
		}
		rs.close();
		ps.close();
		return false;
	}
	/**
	 * ����
	 */
	@Override
	public boolean setScore(String id,double grade, Connection conn) throws Exception {
		String sql = "select * from caricature where cartId = ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		ps = conn.prepareStatement(sql);
		ps.setString(1, id);
		int peopleSum=0;
		double gradeSum=0;
		rs = ps.executeQuery();
		if (rs.next()) {
			peopleSum=rs.getInt("peopleSum");
			gradeSum=rs.getDouble("gradeSum");
		}else{
			return false;
		}
		peopleSum++;
		gradeSum+=grade;
		grade=gradeSum/peopleSum;
		grade=Math.round(grade*100)/100;;
		String sql2 = "update caricature set grade=?,peopleSum=?,gradeSum=? where cartId=?";
		ps = conn.prepareStatement(sql2);
		ps.setDouble(1, grade);
		ps.setInt(2, peopleSum);
		ps.setDouble(3, gradeSum);
		ps.setString(4, id);
		int n = ps.executeUpdate();
		if (n > 0) {
			return true;
		}
		rs.close();
		ps.close();
		return false;
	}
	/**
	 * �޸�����
	 */
	@Override
	public boolean updateScore(String id,double grade,Connection conn) throws Exception {
		String sql = "select * from caricature where cartId = ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		ps = conn.prepareStatement(sql);
		ps.setString(1, id);
		int peopleSum=0;
		double gradeSum=0;
		double gra=0;
		rs = ps.executeQuery();
		if (rs.next()) {
			gra=rs.getDouble("grade");
			peopleSum=rs.getInt("peopleSum");
			gradeSum=rs.getDouble("gradeSum");
		}else{
			return false;
		}
		gradeSum+=grade-gra;
		grade=gradeSum/peopleSum;
		grade=Math.round(grade*100)/100;;
		String sql2 = "update caricature set grade=?,gradeSum=? where cartId=?";
		ps = conn.prepareStatement(sql2);
		ps.setDouble(1, grade);
		ps.setDouble(2, gradeSum);
		ps.setString(3, id);
		int n = ps.executeUpdate();
		if (n > 0) {
			return true;
		}
		rs.close();
		ps.close();
		return false;
	}
	
}

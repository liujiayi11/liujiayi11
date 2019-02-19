package dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import dao.UsersDao;
import pojo.Users;
import util.GetMD5Byte;

public class UsersDaoImpl implements UsersDao {
	/**
	 * 删除用户
	 */
	GetMD5Byte gm=new GetMD5Byte();
	public boolean deleteUsers(int uid, Connection conn) throws Exception {
		boolean flag = false;
		String sql = "delete from users where uid=?";
		PreparedStatement ps = null;

		ps = conn.prepareStatement(sql);
		ps.setInt(1, uid);
		int n = ps.executeUpdate();
		if (n > 0) {
			flag = true;
		}
		ps.close();
		return flag;
	}

	/**
	 * 增加用户
	 */
	public boolean saveUsers(Users users, Connection conn) throws Exception {
		boolean flag = false;
		String sql = "insert into users(uname,upass,tel,headimage) values(?,?,?,?)";
		PreparedStatement ps = null;

		ps = conn.prepareStatement(sql);
		ps.setString(1, users.getUname());
		ps.setBytes(2, users.getUpass());
		ps.setString(3, users.getTel());
		ps.setString(4, users.getHeadimage());
		int n = ps.executeUpdate();
		if (n > 0) {
			flag = true;
		}
		ps.close();
		return flag;
	}

	/**
	 * 查所有
	 */
	public List<Users> selectAllUsersByCondition(Connection conn) throws Exception {
		List<Users> list = new ArrayList<Users>();
		String sql = "select * from users";
		PreparedStatement ps = null;
		ResultSet rs = null;

		ps = conn.prepareStatement(sql);
		rs = ps.executeQuery();
		while (rs.next()) {
			Users users = new Users();
			users.setUname(rs.getString("uname"));
			users.setUpass(rs.getBytes("upass"));
			users.setSex(rs.getString("sex"));
			users.setTel(rs.getString("tel"));
			users.setHeadimage(rs.getString("headimage"));
			users.setCart(rs.getString("cart"));
			list.add(users);
		}
		rs.close();
		ps.close();
		return list;
	}

	/**
	 * 根据主键查单个
	 */
	public Users selectUsersById(int uid, Connection conn) throws Exception {
		Users users = null;
		String sql = "select * from users where uid = ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		ps = conn.prepareStatement(sql);
		ps.setInt(1, uid);
		rs = ps.executeQuery();
		if (rs.next()) {
			users=new Users();
			users.setUname(rs.getString("uname"));
			users.setUpass(rs.getBytes("upass"));
			users.setSex(rs.getString("sex"));
			users.setTel(rs.getString("tel"));
			users.setHeadimage(rs.getString("headimage"));
			users.setCart(rs.getString("cart"));
		}
		rs.close();
		ps.close();
		return users;
	}

	/**
	 * 修改用户
	 */
	public boolean updateUsers(Users users, Connection conn) throws Exception {
		boolean flag = false;
		String sql = "update users set uname=?,sex=?,headimage=?,cart=? where tel=?";
		PreparedStatement ps = null;

		ps = conn.prepareStatement(sql);
		ps.setString(1, users.getUname());
		ps.setString(2, users.getSex());
		ps.setString(3, users.getHeadimage());
		ps.setString(4, users.getCart());
		ps.setString(5, users.getTel());
		int n = ps.executeUpdate();
		if (n > 0) {
			flag = true;
		}
		ps.close();
		return flag;
	}

	/**
	 * 根据条件查询一个集合
	 */
	public List<Users> selectAllUsersByCondition(Connection conn,
			Map<String, String> condition) throws Exception {
		List<Users> list = new ArrayList<Users>();
		String sql = "select * from users where 1=1";
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
		System.out.println("sql完成");
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
			Users users = new Users();
			users.setUname(rs.getString("uname"));
			users.setUpass(rs.getBytes("upass"));
			users.setSex(rs.getString("sex"));
			users.setTel(rs.getString("tel"));
			users.setHeadimage(rs.getString("headimage"));
			users.setCart(rs.getString("cart"));
			list.add(users);
		}
		rs.close();
		ps.close();
		return list;
	}

	@Override
	public boolean findUsers(String tel,byte[] upass, Connection conn) throws Exception {
		Users users = null;
		String sql = "select * from users where tel = ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		ps = conn.prepareStatement(sql);
		ps.setString(1, tel);
		rs = ps.executeQuery();
		if (rs.next()) {
			users=new Users();
			users.setUname(rs.getString("uname"));
			users.setUpass(rs.getBytes("upass"));
			users.setSex(rs.getString("sex"));
			users.setTel(rs.getString("tel"));
			users.setHeadimage(rs.getString("headimage"));
			users.setCart(rs.getString("cart"));
		}
		rs.close();
		ps.close();
		return gm.isMD5Equals(upass, users.getUpass());
	}
	
	//增加用户订阅漫画及该漫画订阅数
	@Override
	public boolean addupdatecart(String newcart, String tel, Connection conn) throws Exception {
		boolean flag = false;
//		String sql = "update users set cart=cart+? where tel=?";
		String sql = "update users set cart=CONCAT(cart,?) where tel=?";
		String sql1 = "update caricature set cartNum=cartNum+1 where cartName=?";
		PreparedStatement ps = null;
		ps = conn.prepareStatement(sql);
		ps.setString(1,newcart);
		ps.setString(2,tel);
		System.out.println(newcart+tel);
		int n = ps.executeUpdate();
		System.out.println(1);
		if (n > 0) {
			flag = true;
		}
		if(flag){
			System.out.println(2);
			ps=conn.prepareStatement(sql1);
			ps.setString(1, newcart);
			int ud=ps.executeUpdate();
			flag=ud>0;
		}
		ps.close();
		return flag;
	}
	
	public boolean findUser(String tel,Connection conn) throws Exception {
		Users users = null;
		String sql = "select * from users where tel = ?";
		PreparedStatement ps = null;
		ResultSet rs = null;
		ps = conn.prepareStatement(sql);
		ps.setString(1, tel);
		rs = ps.executeQuery();
		if (rs.next()) {
			return true;
		}
		rs.close();
		ps.close();
		return false;
	}
}

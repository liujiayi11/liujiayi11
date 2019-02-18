package dao;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import pojo.Caricature;

public interface CartDao {
	public boolean saveCart(Caricature cart,Connection conn) throws Exception;
	public boolean updateCart(Caricature cart,Connection conn) throws Exception;
	public boolean deleteCart(String id,Connection conn) throws Exception;
	public Caricature selectCartById(String id,Connection conn) throws Exception;
	public List<Caricature> selectAllCartByCondition(Connection conn) throws Exception;
	public List<Caricature> selectAllCartByCondition(Connection conn,Map<String, String> condition) throws Exception;
	public boolean dingyueCart(String id,Connection conn) throws Exception;
	public boolean quxiaoCart(String id,Connection conn) throws Exception;
	public boolean setScore(String id,double grade,Connection conn) throws Exception;
	public boolean updateScore(String id,double grade,Connection conn) throws Exception;
}

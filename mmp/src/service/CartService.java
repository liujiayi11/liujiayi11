package service;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import pojo.Caricature;

public interface CartService {
	public boolean addCart(Caricature cart);
	public boolean modifyCart(Caricature cart);
	public boolean removeCart(String id);
	public Caricature queryCartById(String uid);
	public List<Caricature> queryCartByCondition();
	public List<Caricature> queryCartByCondition(Map<String, String> condition);
	public boolean dingyueCart(String id) throws Exception;
	public boolean quxiaoCart(String id) throws Exception;
	public boolean setScore(String id,double grade) throws Exception;
	public boolean updateScore(String id,double grade) throws Exception;
}

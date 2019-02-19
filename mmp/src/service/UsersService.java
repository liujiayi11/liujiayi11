package service;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import pojo.Users;

public interface UsersService {
	public boolean addUsers(Users users);
	public boolean modifyUsers(Users users);
	public boolean removeUsers(int uid);
	public Users queryUsersById(int uid);
	public List<Users> queryUsersByCondition();
	public List<Users> queryUsersByCondition(Map<String, String> condition);
	public boolean lookupUsers(String tel,byte[] upass);
	public boolean lookupUser(String tel);
	public boolean addupdatecart(String newcart,String tel);
}

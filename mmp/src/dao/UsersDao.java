package dao;

import java.sql.Connection;
import java.util.List;
import java.util.Map;

import pojo.Users;

public interface UsersDao {
	public boolean saveUsers(Users users,Connection conn) throws Exception;
	public boolean updateUsers(Users users,Connection conn) throws Exception;
	public boolean deleteUsers(int id,Connection conn) throws Exception;
	public Users selectUsersById(int uid,Connection conn) throws Exception;
	public List<Users> selectAllUsersByCondition(Connection conn) throws Exception;
	public List<Users> selectAllUsersByCondition(Connection conn,Map<String, String> condition) throws Exception;
	public boolean findUsers(String tel,byte[] upass,Connection conn) throws Exception;
}

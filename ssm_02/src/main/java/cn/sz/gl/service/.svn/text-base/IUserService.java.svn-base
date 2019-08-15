package cn.sz.gl.service;

import cn.sz.gl.pojo.Users;
import cn.sz.gl.util.BalanceLessException;
import cn.sz.gl.util.StoreHouseLessException;

public interface IUserService {

	public Users islogin(Users u);
	
	/**
	 * 买书
	 * @return
	 */
	public boolean buybook(Integer bookid,Integer accid)throws StoreHouseLessException, BalanceLessException;
	
}

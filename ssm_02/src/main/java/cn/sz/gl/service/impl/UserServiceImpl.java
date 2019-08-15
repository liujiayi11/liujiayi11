package cn.sz.gl.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.sz.gl.dao.IAccountDAO;
import cn.sz.gl.dao.IBookDAO;
import cn.sz.gl.dao.IUserDAO;
import cn.sz.gl.pojo.Users;
import cn.sz.gl.service.IUserService;
import cn.sz.gl.util.BalanceLessException;
import cn.sz.gl.util.StoreHouseLessException;
@Service
public class UserServiceImpl implements IUserService {

	@Autowired
	private IUserDAO userDAOImpl;
	@Autowired
	private IAccountDAO accdao;
	@Autowired
	private IBookDAO bookdao;
	
	public Users islogin(Users u) {
		return userDAOImpl.findUserByNameAndPwd(u);
	}

	@Transactional(isolation=Isolation.READ_COMMITTED,propagation=Propagation.REQUIRED,rollbackFor={StoreHouseLessException.class,BalanceLessException.class},readOnly=false,timeout=20)
	public boolean buybook(Integer bookid,Integer accid) throws StoreHouseLessException, BalanceLessException {
		//1.库存数量要减一
		//先要把库存数量拿到
		int count = userDAOImpl.findCountByBookid(bookid);
		if(count<=0){
			throw new StoreHouseLessException("库存数量不足");
		}
		userDAOImpl.countplusone(bookid);
		//2.账户余额要减少
		Map<String,Object> map = new HashMap<String,Object>();
		Double balance = accdao.findBalanceByAccid(accid);
		Double price = bookdao.findPriceByBookid(bookid);
		if(balance - price<0){
			throw new BalanceLessException("账户余额不足");
		}
		Double newmoney = balance - price;
		map.put("newmoney", newmoney);
		map.put("accid", accid);
		accdao.changeBalance(map);
		return true;
	}

}

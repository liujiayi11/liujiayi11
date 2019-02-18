package service;

import java.util.List;

import pojo.Caricature;
import pojo.Users;
import service.impl.CartServiceImpl;
import service.impl.UsersServiceImpl;

public class Test {
	public static void main(String[] args) {
		UsersService us=new UsersServiceImpl();
//		Users user=new Users("瑁遼6+1", "666666", "鹹", "34567892233", "芛砉", cart);
//		boolean b=us.addUsers(user);
//		Users user=new Users(10001,"瑁遼6+1", "666666", "鹹", "34567892233", "芛砉", cart);
//		boolean b=us.modifyUsers(user);
//		System.out.println(b);
//		Users use=us.queryUsersById(10000);
//		System.out.println(use);
//		List<Users> arr=us.queryUsersByCondition();
//		for (Users users : arr) {
//			System.out.println(users);
//		}
//		boolean b=us.removeUsers(1);
//		System.out.println(b);
		CartServiceImpl cs=new CartServiceImpl();
//		Caricature cart=new Caricature("須ぢ紳騇", "6+1", "須氪,須呇,須鍾,須卼,須銘,須跁,須郬,須吤,須著", 1998, 9.8, "須著?須華翋", "哱酵,党珈,詻虷");
//		boolean b=cs.addCart(cart);
//		Caricature cart=new Caricature(2,"須ぢ憼紳騇", "6+1", "須氪,須呇,須鍾,須卼,須銘,須跁,須郬,須吤,須著", 1997, 9.8, "須著?須華翋", "哱酵,党珈,詻虷");
//		boolean b=cs.modifyCart(cart);
//		System.out.println(b);
//		Caricature cart=cs.queryCartById(1);
//		System.out.println(cart);
		List<Caricature> list=cs.queryCartByCondition();
		for (Caricature caricature : list) {
			System.out.println(caricature);
		}
	}
}

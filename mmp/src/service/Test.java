package service;

import java.util.List;

import pojo.Caricature;
import pojo.Users;
import service.impl.CartServiceImpl;
import service.impl.UsersServiceImpl;

public class Test {
	public static void main(String[] args) {
		UsersService us=new UsersServiceImpl();
//		Users user=new Users("���6+1", "666666", "��", "34567892233", "ͷ��", cart);
//		boolean b=us.addUsers(user);
//		Users user=new Users(10001,"���6+1", "666666", "��", "34567892233", "ͷ��", cart);
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
//		Caricature cart=new Caricature("���Ʋ��", "6+1", "����,��ʦ,����,����,����,����,����,��ʥ,����", 1998, 9.8, "����?������", "����,����,��Ц");
//		boolean b=cs.addCart(cart);
//		Caricature cart=new Caricature(2,"��������", "6+1", "����,��ʦ,����,����,����,����,����,��ʥ,����", 1997, 9.8, "����?������", "����,����,��Ц");
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

package service.impl;

import dao.CartDao;
import dao.impl.CartDaoImpl;
import pojo.Caricature;
import pojo.Users;
import service.CartService;
import util.PrimaryKeyUUID;

public class text {

	public static void main(String[] args) {
//		PrimaryKeyUUID pkd=new PrimaryKeyUUID();
		CartService cs=new CartServiceImpl();
//		Caricature cart=new Caricature("ec108152-588a-4e44-866a-452e94a14efd", "�ɹ���", "�չ��쾳�Ļ�", "ԭ������ͨ����ľ����׶�����Ϊһ���¼���Ե�ɺ϶�����ˡ���ͫ���������Ӵˣ�����ԭ���������֪�ܵ��˼���ĵ߸�������׷�����������壬��ϧ���������Ĺ���Կ������ư��������������������������һ��ȫ�µ����磡",
//				 "http://www.u17.com/chapter/296415.html", "����/�ƻ�/ħ��", "��227��İ������̨","2019-02-18");
//		boolean b=cs.addCart(cart);
//		System.out.println(b);
		UsersServiceImpl usi=new UsersServiceImpl();
//		CartDao cd=new CartDaoImpl();
//		//cartId,cartName,cartAuthor,cartIntro,cartImage,cartKind,cartLatest,time
//        Caricature cc=new Caricature(pkd.getPrimaryKey(), "���ִ���", "����41268826", "�ܿ���磬����ټҡ��ִ��˸������ǣ��������У����кܶ෽�����Եõ�����Ҫ�Ķ�����Ҫ������������׷�����������ţ�����򵥣�ֻ��Ҫ����ĳ��⡭����������ʦ�����ȱ��ƣ�"
//        		,"http://cover.u17i.com/2019/01/29288729_1548263247_Rkzq4vRmqzrR.big.jpg", "����/��Ц/�ŷ�", "��4��", "2019-02-15");
//        	boolean fs=cs.addCart(cc);	
//        	System.out.println(fs+"2");
//        	if(fs){
//        		System.out.println("��ӳɹ���");
//        	}
//		Users user=new Users("333", "333".getBytes(), "��", "12312312321", "znl", "");
//		boolean b=usi.addUsers(user);
		boolean b=usi.addupdatecart("һƷ����", "1234567890");
		System.out.println(b);
	}
}

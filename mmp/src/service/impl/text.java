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
//		Caricature cart=new Caricature("ec108152-588a-4e44-866a-452e94a14efd", "噬规者", "日光天境文化", "原本是普通人类的警察雷恩，因为一次事件机缘巧合而获得了“天瞳”能力。从此，他对原来世界的认知受到了极大的颠覆与冲击。追求梦想与正义，不惜与这个世界的规则对抗，气势磅礴的奇幻少年漫画，将带你进入一个全新的世界！",
//				 "http://www.u17.com/chapter/296415.html", "少年/科幻/魔幻", "第227话陌生的舞台","2019-02-18");
//		boolean b=cs.addCart(cart);
//		System.out.println(b);
		UsersServiceImpl usi=new UsersServiceImpl();
//		CartDao cd=new CartDaoImpl();
//		//cartId,cartName,cartAuthor,cartIntro,cartImage,cartKind,cartLatest,time
//        Caricature cc=new Caricature(pkd.getPrimaryKey(), "娱乐春秋", "漫友41268826", "架空异界，武道百家。现代人告诉他们，除了修行，还有很多方法可以得到你想要的东西。要做江湖上人人追捧的少侠？嗯，这个简单，只是要看你的诚意……比如让你师妹来喝杯酒？"
//        		,"http://cover.u17i.com/2019/01/29288729_1548263247_Rkzq4vRmqzrR.big.jpg", "少年/搞笑/古风", "第4话", "2019-02-15");
//        	boolean fs=cs.addCart(cc);	
//        	System.out.println(fs+"2");
//        	if(fs){
//        		System.out.println("添加成功！");
//        	}
//		Users user=new Users("333", "333".getBytes(), "男", "12312312321", "znl", "");
//		boolean b=usi.addUsers(user);
		boolean b=usi.addupdatecart("一品高手", "1234567890");
		System.out.println(b);
	}
}

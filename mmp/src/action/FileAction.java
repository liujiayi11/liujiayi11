package action;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.Caricature;
import pojo.Users;
import service.CartService;
import service.impl.CartServiceImpl;
import service.impl.UsersServiceImpl;
import util.GetMD5Byte;
import core.ActionForm;
import core.ActionForward;
import core.DispatcherAction;
import form.FileForm;
import form.LoginForm;
public class FileAction extends DispatcherAction{
	CartServiceImpl cs = new CartServiceImpl();
	UsersServiceImpl us = new UsersServiceImpl();
	public ActionForward file(HttpServletRequest request,
			HttpServletResponse reponse, ActionForm form)
			throws ServletException, IOException {	
		System.out.println("file");
		FileForm uf = (FileForm)form;
		String cartName = uf.getCartName();
		cartName = new String(cartName.getBytes("ISO8859-1"),"UTF-8");
		String cartIntro = uf.getCartIntro();
		cartIntro = new String(cartIntro.getBytes("ISO8859-1"),"UTF-8");
		System.out.println(cartIntro.length());
		String cartAuthor = uf.getCartAuthor();
		cartAuthor = new String(cartAuthor.getBytes("ISO8859-1"),"UTF-8");
		String cartLatest = uf.getCartLatest();
		cartLatest = new String(cartLatest.getBytes("ISO8859-1"),"UTF-8");
		String cartImage = uf.getCartImage();
		cartImage = new String(cartImage.getBytes("ISO8859-1"),"UTF-8");
		//主键生成
		/* users.setUid(PrimaryKeyUUID.getPrimaryKey()); */
		//用户名转码
		Caricature c = new Caricature();
		c.setCartName(cartName);
		c.setCartAuthor(cartAuthor);
		c.setCartIntro(cartIntro);
		c.setCartLatest(cartLatest);
		c.setCartImage(cartImage);
		boolean f = cs.addCart(c);
		System.out.println(f);
		if(f){
			request.setAttribute("msg","上传成功！");
			return new ActionForward("main");
		}else{
			request.setAttribute("msg","上传失败");
			return new ActionForward(true,"file1");
		}	
	}
	
	
	public ActionForward fav(HttpServletRequest request,
			HttpServletResponse reponse, ActionForm form)
			throws ServletException, IOException {	
		System.out.println("fav");
		FileForm uf = (FileForm)form;
		String cartName = uf.getCartName();
		System.out.println(cartName);
		boolean f = us.addupdatecart(cartName, "1234");
		return null;
	
	}
}

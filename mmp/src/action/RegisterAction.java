package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pojo.Users;

import service.UsersService;
import service.impl.UsersServiceImpl;
import util.GetMD5Byte;
import core.ActionForm;
import core.ActionForward;
import core.DispatcherAction;
import form.RegisterForm;

public class RegisterAction extends DispatcherAction{
	UsersService us = new UsersServiceImpl();	
	public ActionForward register(HttpServletRequest request,
			HttpServletResponse reponse, ActionForm form)
			throws ServletException, IOException {
		RegisterForm rf = (RegisterForm)form;
		String uname = rf.getUname();
		uname = new String(uname.getBytes("ISO8859-1"),"UTF-8");
		String upass = rf.getUpass();
		String tel = rf.getTel();
		byte[] pass = GetMD5Byte.getMD5Byte(upass);
		String headimage=rf.getHeadimage();
		headimage = new String(headimage.getBytes("ISO8859-1"),"UTF-8");
		Users users = new Users();
		System.out.println("姓名"+uname +"密码"+ pass.toString()+"电话："+tel+"头像："+headimage);
		//主键生成
		/* users.setUid(PrimaryKeyUUID.getPrimaryKey()); */
		//用户名转码
		users.setUname(uname);
		//密码加密		
		users.setUpass(pass); 		
		users.setTel(tel);
		users.setHeadimage(headimage);
		boolean f = us.addUsers(users);	
		if(f){
			request.setAttribute("msg","注册成功！");
			return new ActionForward("login1");
		}else{
			request.setAttribute("msg","注册失败");
			return new ActionForward(true,"register1");
		}		
	}
	public ActionForward checktel(HttpServletRequest request,
			HttpServletResponse reponse, ActionForm form)
			throws ServletException, IOException {
		System.out.println("checktel");
		RegisterForm rf = (RegisterForm)form;
		String tel = rf.getTel();
		System.out.println(tel);
		PrintWriter pw = reponse.getWriter();
		boolean f = us.lookupUser(tel);	
		System.out.println(f);
		if(!f){			
			pw.write("bcw");
			request.setAttribute("msg","电话可以注册");
		}else{
			pw.write("cw");
			request.setAttribute("msg","电话已经注册");
		}
		return null;	
	}
}

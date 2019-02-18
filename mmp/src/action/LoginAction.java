package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import form.LoginForm;

import pojo.Users;
import service.UsersService;
import service.impl.UsersServiceImpl;
import util.GetMD5Byte;
import core.ActionForm;
import core.ActionForward;
import core.DispatcherAction;

public class LoginAction extends DispatcherAction{
	
	UsersService us = new UsersServiceImpl();	
	public ActionForward login(HttpServletRequest request,
			HttpServletResponse reponse, ActionForm form)
			throws ServletException, IOException {		
		LoginForm uf = (LoginForm)form;
		System.out.println(uf.getUpass());
		String upass = uf.getUpass();
		String tel = uf.getTel();
		byte[] pass = GetMD5Byte.getMD5Byte(upass);

		System.out.println( "密码"+ pass.toString()+"电话："+tel);
		//主键生成
		/* users.setUid(PrimaryKeyUUID.getPrimaryKey()); */
		//用户名转码
		
		//薪水转型
		
		//生日转型				
		boolean f = us.lookupUsers(tel, pass);				
		if(f){
			request.setAttribute("msg","登陆成功！");
			return new ActionForward(true,"main");
		}else{
			request.setAttribute("msg","账号或者密码错误！");
			return new ActionForward(true,"login1");
		}
	}

}

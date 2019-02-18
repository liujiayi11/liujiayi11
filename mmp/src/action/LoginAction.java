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

		System.out.println( "����"+ pass.toString()+"�绰��"+tel);
		//��������
		/* users.setUid(PrimaryKeyUUID.getPrimaryKey()); */
		//�û���ת��
		
		//нˮת��
		
		//����ת��				
		boolean f = us.lookupUsers(tel, pass);				
		if(f){
			request.setAttribute("msg","��½�ɹ���");
			return new ActionForward(true,"main");
		}else{
			request.setAttribute("msg","�˺Ż����������");
			return new ActionForward(true,"login1");
		}
	}

}

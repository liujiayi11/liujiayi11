package action;

import java.io.IOException;

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
		String upass = rf.getUname();
		String tel = rf.getTel();
		byte[] pass = GetMD5Byte.getMD5Byte(upass);
		String headimage=rf.getHeadimage();
		headimage = new String(headimage.getBytes("ISO8859-1"),"UTF-8");
		Users users = new Users();
		System.out.println("����"+uname +"����"+ pass.toString()+"�绰��"+tel+"ͷ��"+headimage);
		//��������
		/* users.setUid(PrimaryKeyUUID.getPrimaryKey()); */
		//�û���ת��
		users.setUname(uname);
		//�������		
		users.setUpass(pass); 		
		users.setTel(tel);
		users.setHeadimage(headimage);
		boolean f = us.addUsers(users);	
		if(f){
			request.setAttribute("msg","ע��ɹ���");
			return new ActionForward("main1");
		}else{
			request.setAttribute("msg","ע��ʧ��");
			return new ActionForward(true,"login1");
		}		
	}

}

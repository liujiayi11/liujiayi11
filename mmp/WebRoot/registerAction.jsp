<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="util.GetMD5Byte"%>
<%@page import="pojo.Users"%>
<%@page import="util.PrimaryKeyUUID"%>
<%@page import="service.UsersService"%>
<%@page import="service.impl.UsersServiceImpl"%>
<%
	UsersService us = new UsersServiceImpl();
	
	String uname = request.getParameter("uname");
	uname = new String(uname.getBytes("ISO8859-1"),"UTF-8");
	String upass = request.getParameter("upass");
	String tel = request.getParameter("tel");
	byte[] pass = GetMD5Byte.getMD5Byte(upass);
	String headimage=request.getParameter("headimage");
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
		session.setAttribute("msg","注册成功！");
		response.sendRedirect("main.jsp");
	}else{
		session.setAttribute("msg","注册失败");
		response.sendRedirect("register.jsp");
	}
%>
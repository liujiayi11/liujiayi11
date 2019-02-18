<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="util.GetMD5Byte"%>
<%@page import="pojo.Users"%>
<%@page import="util.PrimaryKeyUUID"%>
<%@page import="service.UsersService"%>
<%@page import="service.impl.UsersServiceImpl"%>
<%
	UsersService us = new UsersServiceImpl();
	
	String upass = request.getParameter("upass");
	String tel = request.getParameter("tel");
	byte[] pass = GetMD5Byte.getMD5Byte(upass);

	System.out.println( "密码"+ pass.toString()+"电话："+tel);
	//主键生成
	/* users.setUid(PrimaryKeyUUID.getPrimaryKey()); */
	//用户名转码
	
	//薪水转型
	
	//生日转型
	
	
	boolean f = us.lookupUsers(tel, pass);
	
	
	if(f){
		session.setAttribute("msg","登陆成功！");
		response.sendRedirect("myselfcenter.jsp");
	}else{
		session.setAttribute("msg","账号或者密码错误！");
		response.sendRedirect("register.jsp");
	}
%>
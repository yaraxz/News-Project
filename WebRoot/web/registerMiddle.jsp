<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="czimt.edu.cn.dlv.service.*" %>
<%@page import="czimt.edu.cn.dlv.service.impl.*" %>
<%@page import="czimt.edu.cn.dlv.entity.*" %>
<%@ page import="czimt.edu.cn.dlv.util.*" %>
<%@ page import="czimt.edu.cn.dlv.util.*" %>
<%
    String nama = request.getParameter("nama");
	String userName = request.getParameter("userName");
	String sex = request.getParameter("sex");
	String birthday = request.getParameter("birthday");
	String address = request.getParameter("address");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	String password = request.getParameter("password");
	
	UserService userService = new UserServiceImpl();
		UserInfo user = new UserInfo();
		user.setUserRealName(nama);
		user.setUserLoginName(userName);
		user.setSex(sex);
		user.setBirth(birthday);
		user.setRegDate(Common.getCurrentDate());
		user.setFimallyAddress(address);
		user.setEmail(email);
		user.setTel(tel);
		user.setUserPassword(password);
		
		
		int rtn = userService.userRegist(user);
		
	if(rtn>0)
		{
			System.out.println( user.getUserRealName()+ "Register succes");
			session.setAttribute("userLogined", user);
			response.sendRedirect("./login.jsp");
			//request.getRequestDispatcher("../index.html").forward(request,response);
		}
		else{
			System.out.println("register fail");
			response.sendRedirect("register.jsp");
			//request.getRequestDispatcher("login.jsp").forward(request,response);
		}
%>

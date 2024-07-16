<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="czimt.edu.cn.dlv.service.*"%>
<%@page import="czimt.edu.cn.dlv.service.impl.*"%>
<%@page import="czimt.edu.cn.dlv.entity.*"%>
<%
//nomor 1
		String userName = request.getParameter("userName");
		String userPassword = request.getParameter("userPassword");

//nomor2
		UserService userService = new UserServiceImpl();
		UserInfo user = new UserInfo();
		user.setUserLoginName(userName);
		user.setUserPassword(userPassword);
		UserInfo userLogined = userService.UserLogin(user);

//nomor3
		if(userLogined != null){
				System.out.println( userLogined.getUserRealName()+ "login succes");
				session.setAttribute("userLogined", userLogined);
				response.sendRedirect("../index.jsp");
				//request.getRequestDispatcher("../index.html").forward(request, response);
			}else{
				System.out.println("login fail");
				session.setAttribute("loginErrorMsg", "login fail");
				response.sendRedirect("login.jsp");
			}
%>


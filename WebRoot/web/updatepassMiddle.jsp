<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="czimt.edu.cn.dlv.service.*" %>
<%@page import="czimt.edu.cn.dlv.service.impl.*" %>
<%@page import="czimt.edu.cn.dlv.entity.*" %>
<%@page import="czimt.edu.cn.dlv.util.*" %>
<%
  //1
  String oldpassword = request.getParameter("oldpassword");
  String newpassword = request.getParameter("newpassword");
  UserInfo userLogined = (UserInfo)session.getAttribute("userLogined");
  UserInfo user = new UserInfo();
  user.setUserID(userLogined.getUserID());
  user.setUserPassword(newpassword);
  //2
  UserService userservice = new UserServiceImpl();
	
		//barservice.barAdd(bar);
		int rtn = userservice.updatePass(user, oldpassword);
	//userService.updatePass(user, oldpassword);
		
  //3
  
  if(rtn>0)	
			{
				System.out.println("update success");
				out.print("<script> alert('insert success'); window.location.href='updatePass.jsp' </script>");
			}else{
				System.out.println("update fail");
				out.print("<script> alert('insert fail'); window.location.href='updatePass.jsp' </script>");
			}
%>



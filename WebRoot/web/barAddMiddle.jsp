<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="czimt.edu.cn.dlv.service.*" %>
<%@page import="czimt.edu.cn.dlv.service.impl.*" %>
<%@page import="czimt.edu.cn.dlv.entity.*" %>
<%@page import="czimt.edu.cn.dlv.util.*" %>
<%
  //1
  String titlename = request.getParameter("titlename");
  //2
  BarService barservice = new BarServiceImpl();
  Bar bar = new Bar();
		bar.setBarName(titlename);
		bar.setCreateDate(Common.getCurrentDate());
		UserInfo userLogined = (UserInfo)session.getAttribute("userLogined");
		bar.setCreateorID(userLogined.getUserID());
		bar.setYxx("1");
		//barservice.barAdd(bar);
		int rtn = barservice.barAdd(bar);
		
  //3
  
  if(rtn>0)	
			{
				System.out.println("insert success");
				out.print("<script> alert('insert success'); window.location.href='barSelect.jsp' </script>");
			}else{
				System.out.println("insert fail");
				out.print("<script> alert('insert fail'); window.location.href='barSelect.jsp' </script>");
			}
%>



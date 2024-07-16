
<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="czimt.edu.cn.dlv.service.*" %>
<%@page import="czimt.edu.cn.dlv.service.impl.*" %>
<%@page import="czimt.edu.cn.dlv.entity.*" %>
<%@page import="czimt.edu.cn.dlv.util.*" %>

<%

//1
  String barName = request.getParameter("barName");
  String yxx = request.getParameter("yxx");
  String id = request.getParameter("id");
  Bar bar = new Bar();
  bar.setBarID(id);
  bar.setBarName(barName);
  bar.setYxx(yxx);
  
  //2
  
		BarService barservice = new BarServiceImpl();
		int rtn = barservice.barEdit(bar);
		
  //3
  
  if(rtn>0)	
			{
				System.out.println("edit success");
				out.print("<script> alert('edit success'); window.location.href='barSelect.jsp' </script>");
			}else{
				System.out.println("insert fail");
				out.print("<script> alert('edit fail'); window.location.href='barSelect.jsp' </script>");
			}
%>


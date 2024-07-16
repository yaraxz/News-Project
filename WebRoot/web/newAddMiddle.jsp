<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="czimt.edu.cn.dlv.service.*" %>
<%@page import="czimt.edu.cn.dlv.service.impl.*" %>
<%@page import="czimt.edu.cn.dlv.entity.*" %>
<%@page import="czimt.edu.cn.dlv.util.*" %>
<%
  //1
  	String titlename = request.getParameter("titlename");
    String keyWords = request.getParameter("keyWords");
	String contentAbstract = request.getParameter("contentAbstract");
	String content = request.getParameter("content");
	String barid = request.getParameter("barid");
	String date = Common.getCurrentDate();
	UserInfo userLogined = (UserInfo)session.getAttribute("userLogined");
	String userid = userLogined.getUserID();
	
  //2
  NewsService newsService = new NewsServiceImpl();
  News news = new News();
  		news.setAddDate(date);
  		news.setBarID(barid);
		news.setTitleName(titlename);
		news.setKeyWords(keyWords);
		news.setContentAbstract(contentAbstract);
		news.setContent(content);
		news.setWriterID(userLogined.getUserID());
		
		
		
		
		
		
		//news.setAddDate(Common.getCurrentDate());
		//barservice.barAdd(bar);
		int rtn = newsService.newsAdd(news);
		
  //3
  
  if(rtn>0)	
			{
				System.out.println("news success");
				out.print("<script> alert('newsadd success'); window.location.href='#' </script>");
			}else{
				System.out.println("news fail");
				out.print("<script> alert('newsadd fail'); window.location.href='#' </script>");
			}
%>



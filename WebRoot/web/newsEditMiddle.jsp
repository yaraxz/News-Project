 
<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="czimt.edu.cn.dlv.service.*" %>
<%@page import="czimt.edu.cn.dlv.service.impl.*" %>
<%@page import="czimt.edu.cn.dlv.entity.*" %>
<%@page import="czimt.edu.cn.dlv.util.*" %>

<%

String NewsID = request.getParameter("NewsID");
String titleName = request.getParameter("titleName");
String keyWords = request.getParameter("keyWords");
String ContentAbstract = request.getParameter("contentAbstract");
String Content = request.getParameter("Content");
String WriterName = request.getParameter("WriterName");
String barId = request.getParameter("barId");
    News news = new News();
    news.setTitleName(titleName);
    news.setKeyWords(keyWords);
    news.setContentAbstract(ContentAbstract);
    news.setContent(Content);
    //news.setWriterName(WriterName);
    news.setBarID(barId);
    news.setNewsID(NewsID);
    NewsService newsservice = new NewsServiceImpl();
    int rtn = newsservice.newsEdit(news);
    
    if(rtn>0)
    {
			System.out.println("update success");
			out.print("<script> alert('success update'); window.location.href='newsSelect.jsp' </script>");
			
		} else{
			System.out.println("update fail");
						out.print("<script> alert('failed update'); window.location.href='newsSelect.jsp' </script>");
						}
%>


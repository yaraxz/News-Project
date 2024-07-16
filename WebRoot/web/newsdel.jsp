<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="czimt.edu.cn.dlv.service.*" %>
<%@page import="czimt.edu.cn.dlv.service.impl.*" %>
<%@page import="czimt.edu.cn.dlv.entity.*" %>
<%@page import="czimt.edu.cn.dlv.util.*" %>


  <%
	//del code
	NewsService newsservice = new NewsServiceImpl();
	News news = new News();
	String id = request.getParameter("NewsId");
	news.setNewsID(id);
	int rtn = newsservice.newsDel(news);
	if(rtn>0)
	{
		//del success
		out.print("<script> alert('delete success'); window.location.href='newsSelect.jsp'</script>");
	} else {
		//del failed
		out.print("<script> alert('delete failed') </script>");
	}
 %>
  


<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="czimt.edu.cn.dlv.service.*" %>
<%@page import="czimt.edu.cn.dlv.service.impl.*" %>
<%@page import="czimt.edu.cn.dlv.entity.*" %>
<%@page import="czimt.edu.cn.dlv.util.*" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <%
	//del code
	BarService barservice = new BarServiceImpl();
	Bar bar = new Bar();
	String id = request.getParameter("id");
	bar.setBarID(id);
	int rtn = barservice.barDel(bar);
	if(rtn>0)
	{
		//del success
		out.print("<script> alert('delete success'); window.location.href='barSelect.jsp'</script>");
	} else {
		//del failed
		out.print("<script> alert('delete failed') </script>");
	}
 %>
  
</html>

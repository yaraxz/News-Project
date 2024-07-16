<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="czimt.edu.cn.dlv.service.*"%>
<%@page import="czimt.edu.cn.dlv.service.impl.*" %>
<%@page import="czimt.edu.cn.dlv.entity.*" %>
<%@page import="czimt.edu.cn.dlv.util.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    
    
    <title>栏目</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" rev="stylesheet" href="../css/style.css" type="text/css" media="all" />
		<script type="text/javascript">
		function bardel(titleBarName, barId)
		{
			var rtn = confirm("are you sure want to delete '" + titleBarName + "' ?");
			//alert(rtn);
			if(rtn)
			{
				document.location.href="bardel.jsp?id="+ barId;
			}
		}
		function baredit(titleBarName, barId, yxx)
		{
			var rtn = confirm("do u want to edit '" + titleBarName + "' ?");
			//alert(rtn);
			if(rtn)
			{
				document.location.href="baredit.jsp?id="+ barId + "&titlebarname="+ titleBarName +"&yxx="+ yxx;
			}
		}
	</script>
  </head>
  <%
  BarService barservice = new BarServiceImpl();
    //barservice.barSelect(null);
    String barname = request.getParameter("barName");
    Bar bar2 = new Bar();
    if(barname != null & barname != "")
    {
       barname = new String(barname.getBytes("iso-8859-1"),"gbk");
       bar2.setBarName(barname);
    } 
    else
    {
    	barname ="";
      bar2.setBarName("");
    }
   %>
  <body class="ContentBody">
  	<form id="f1" action="barSelect.jsp">
  	<table width="99%" border="1" height="70">
  		<tr>
  			<td width="100%" colspan="2">栏目查询</td>
  		</tr>
  		<tr>
  			<td>查询条件</td>
  			<td width="100" align="center">
  			<input name="barName" type="text" value="<%=barname %>"/>&nbsp;<input value="query" type="submit"/></td>
  		</tr>
  		</table>
  	</form>
  <div class="MainDiv">
  <table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr align="center">
    <td colspan="7"> <font size="5" color="red">栏目列表</font><br></td>
    </tr>
    <tr align="center">
    <td class="CPanel">number</td>
    <td class="CPanel">name</td>
    <td class="CPanel">creator</td>
    <td class="CPanel">date</td>
    <td class="CPanel">xxx</td>
    <td class="CPanel">delete</td>
    <td class="CPanel">edit</td>
    </tr>
    <% 
    
		List list = barservice.barSelect(bar2);
		if(list.size()>0)
		{
			//data
			
		for(int i=0;i<list.size();i++)
		{
			Bar bar = (Bar) list.get(i);
			System.out.println(
					"barID : " + bar.getBarID() + ", " +
					"barName : " + bar.getBarName() + ", " +
					"createDate : " + bar.getCreateDate() + ", " +
					"createorID : " + bar.getCreateorID() + ", " +
					"creatorName"+ bar.getCreateorName() + ", " +
					"YXX : " + bar.getYxx()
					);
    %>
    <tr align="center">> 
    <td class="CPanel"><%=i+1 %></td>
    <td class="CPanel"><%=bar.getBarName() %></td>
    <td class="CPanel"><%=bar.getCreateorName() %></td>
    <td class="CPanel"><%=bar.getCreateDate() %></td>
    <td class="CPanel"><%=bar.getYxx() %></td>
    <td class="CPanel">
    	<%
    	UserInfo userLged = (UserInfo)session.getAttribute("userLogined");
    	if(userLged.getUserID().equals(bar.getCreateorID()))
    	{
    	 %>
    <a href="javascript:bardel('<%=bar.getBarName() %>','<%=bar.getBarID() %>')">DEL</a>
    <%
    	} else {
     %>
     <font color="red">del</font>
     <%} %>
    </td>
    <td class="CPanel">
    	<%
    		UserInfo userLoged = (UserInfo)session.getAttribute("userLogined");
    		if(userLoged.getUserID().equals(bar.getCreateorID()))
    	{
     	%>
     	<a href="javascript:baredit('<%=bar.getBarName() %>','<%=bar.getBarID() %>','<%=bar.getYxx() %>')">edit</a>
    <%
    	} else {
     %>
     <font color="red">EDIT</font>
     <%} %>
    </td>
    </tr>
   <% } 
   } else {
			//no information found
   %>
   <tr>
   		<td colspan="5" align="center"><font color="red">no information found</font></td>
   </tr>
   <%}%>
  </table>
  </div>
  </body>
  </html>

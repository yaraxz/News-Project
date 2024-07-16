 <%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="czimt.edu.cn.dlv.service.*"%>
<%@page import="czimt.edu.cn.dlv.service.impl.*" %>
<%@page import="czimt.edu.cn.dlv.entity.*" %>
<%@page import="czimt.edu.cn.dlv.util.*" %>


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
        function newsdel(titleName, newsID)
        {
            var rtn = confirm("Are you sure you want to delete '" + titleName + "' ?");
            if(rtn)
            {
                document.location.href="newsdel.jsp?NewsId="+ newsID;
            }
        }

        function newsedit(titleName, NewsID, keyWords, ContentAbstract, Content, WriterName, barId) {
            // Redirect to the edit page with the bar ID
            window.location.href = "newsedit.jsp?id=" + NewsID + "&titleName=" + titleName + "&keyWords=" + keyWords + "&ContentAbstract=" +ContentAbstract+ "&Content=" +Content+ "&WriterName="+WriterName+ "&barId=" +barId;
        }


    </script>

  </head>
  <%
    NewsService newsservice = new NewsServiceImpl();
   String keyWords = request.getParameter("keyWords");
String ContentAbstract = request.getParameter("ContentAbstract");
String Content = request.getParameter("Content");
String titleName = request.getParameter("titleName");
String newId = request.getParameter("newId");
String barId = request.getParameter("barId");
    News news2 = new News();
    news2.setNewsID("");
    if (titleName != null && !titleName.equals("")) {
        titleName = new String(titleName.getBytes("iso-8859-1"), "gbk");
        news2.setTitleName(titleName);
    } else {
        titleName = "";
        news2.setTitleName("");
    } 
    
    
    if(keyWords != null && !keyWords.equals("")) {
        keyWords = new String(keyWords.getBytes("iso-8859-1"), "gbk");
        news2.setKeyWords(keyWords);
    } else {
        keyWords ="";
        news2.setKeyWords("");
    }
    
    
    if(ContentAbstract != null && !ContentAbstract.equals("")) {
        ContentAbstract = new String(ContentAbstract.getBytes("iso-8859-1"), "gbk");
        news2.setContentAbstract(ContentAbstract);
    } else {
        ContentAbstract ="";
        news2.setContentAbstract("");
    }
    
    
    if(Content != null && !Content.equals("")) {
        Content = new String(Content.getBytes("iso-8859-1"), "gbk");
        news2.setContent(Content);
    } else {
        Content ="";
        news2.setContent("");
    }
    
    
%>

   
  <body class="ContentBody">
  	<form id="f1" action="newsSelect.jsp">
  	<table width="99%" border="1" height="70">
  		<tr>
  			<td width="100%" colspan="2">Hello peeps!!</td>
  		</tr>
  		<tr>
  			<td width="100" align="center"> 
                    <p>TitleName :</p ><input name="titleName" type="text" value="<%= titleName %>"/>
                    <br/>
                    <p>Keywords :</p ><input name="keyWords" type="text" value="<%= keyWords %>"/>
                    <br/>
                    <p>ContentAbstract :</p ><input name="ContentAbstract" type="text" value="<%= ContentAbstract %>"/>
                    <br/>
                     <p>Content :</p ><input name="Content" type="text" value="<%= Content %>"/>
                     <br/>
                    &nbsp;<input value="query" type="submit"/>
                </td>
  		</tr>
  		</table>
  	</form>
  <div class="MainDiv">
    <table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr align="left">
    <td colspan="12"> <font size="5" color="red">栏目列表</font><br></td>
    </tr>
    <tr align="center">
    <td class="CPanel">number</td>
    <td class="CPanel">newsid</td>
    <td class="CPanel">title name</td>
    <td class="CPanel">keywords</td>
    <td class="CPanel">content abs</td>
    <td class="CPanel">content</td>
    <td class="CPanel">date</td>
    <td class="CPanel">titleBar</td>
    <td class="CPanel">writePerson</td>
    <td class="CPanel">detail</td>
    <td class="CPanel">upload pic</td>
    <td class="CPanel">delete</td>
    <td class="CPanel">edit</td>
    
    </tr>
    <%
     List<News> list = newsservice.newsSelect(news2);
                if (!list.isEmpty()) {
                    for (int i = 0; i < list.size(); i++) {
                        News news = list.get(i);
            %>
                        	<tr align="center"> 
                            <td class="CPanel"><%= i+1 %></td>
                            <td class="CPanel"><%= news.getNewsID() %></td>
                            <td class="CPanel"><%= news.getTitleName() %></td>
                            <td class="CPanel"><%= news.getKeyWords() %></td>
                            <td class="CPanel"><%= news.getContentAbstract() %></td>
                            <td class="CPanel"><%= news.getContent() %></td>
                            <td class="CPanel"><%= news.getAddDate() %></td>
                            <td class="CPanel"><%= news.getBarName() %></td>
                            <td class="CPanel"><%= news.getWriterName() %></td>
              				<td class="CPanel"><a href="newsDetail.jsp?newsid=<%=news.getNewsID() %>">detail</a></td>
                            
                            <td class="CPanel"><a href="uploadPic.jsp?newsid=<%=news.getNewsID() %>">upload pic</a></td>
                            <td class="CPanel">
                    <%
    	UserInfo userLged = (UserInfo)session.getAttribute("userLogined");
    	if(userLged.getUserID().equals(news.getWriterID()))
    	{
    	 %>
    <a href="javascript:newsdel('<%=news.getTitleName() %>','<%=news.getNewsID() %>')">DEL</a>
    <%
    	} else {
     %>
     <font color="red">del</font>
     <%} %>
    </td>
    <td class="CPanel">
    	<%
    		UserInfo userLoged = (UserInfo)session.getAttribute("userLogined");
    		if(userLged.getUserID().equals(news.getWriterID()))
    	{
     	%>
     	<a href="javascript:newsedit('<%=news.getTitleName() %>','<%=news.getNewsID() %>','<%=news.getKeyWords() %>','<%=news.getContentAbstract() %>','<%=news.getContent() %>','<%=news.getWriterName() %>','<%=news.getBarID() %>')">edit</a>
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
   		<td colspan="12" align="center"><font color="red">no information found</font></td>
   </tr>
   <%}%>
  </table>
  </div>
  </body>
  </html>

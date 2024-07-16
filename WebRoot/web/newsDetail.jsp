<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="czimt.edu.cn.dlv.entity.*" %>
<%@ page import="czimt.edu.cn.dlv.util.*" %>
<%@ page import="czimt.edu.cn.dlv.service.*" %>
<%@ page import="czimt.edu.cn.dlv.service.impl.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>main</title>
		<link rel="stylesheet" rev="stylesheet" href="../css/style.css"
			type="text/css" media="all" />
<!--
.atten {
	font-size: 12px;
	font-weight: normal;
	color: #F00;
}
-->
</style>
	</head>
<%
  	String newsid = request.getParameter("newsid");
  	NewsService newsService = new NewsServiceImpl();
  	News news = new News();
  	news.setNewsID(newsid);
  	news.setKeyWords("");
  	news.setTitleName("");
  	news.setContent("");
  	news.setContentAbstract("");
  	List list = newsService.newsSelect(news);
  	News news2 = new News();
  	if(list.size()>0) {
  		news2 = (News)list.get(0);
  	}
   %>
	<body class="ContentBody">
	
			<div class="MainDiv">
				<table width="99%" border="0" cellpadding="0" cellspacing="0"
					class="CContent">
					<tr>
						<th class="tablestyle_title">
							detail information
						</th>
					</tr>
					<tr>
						<td class="CPanel">
							<table border="0" cellpadding="0" cellspacing="0"
								style="width: 100%">
								<tr>
									<td align="right">
										<input type="button" name="Submit2" value="返回" class="button"
											onclick=
	window.history.go(-1);;
/>
									</td>
								</tr>
								<tr>
									<td width="100%">
										<fieldset style="height: 100%;">
											<legend>
												detail
											</legend>
											<table border="0" cellpadding="2" cellspacing="1"
												style="width: 100%">
												<tr>
													<td nowrap align="right" width="13%">
														 title name
													</td>
													<td width="41%">
														<%=news2.getTitleName() %>
													</td>
												</tr>
												<tr>
													<td nowrap align="right" width="13%">
														keywords
													</td>
													<td width="41%">
														<%=news2.getKeyWords() %>
													</td>
												</tr>
												<tr>
													<td nowrap align="right" width="13%">
														content abstract
													</td>
													<td width="41%">
														<%=news2.getContentAbstract() %>
													</td>
												</tr>
												<tr>
													<td nowrap align="right" width="13%">
														content
													</td>
													<td width="41%">
														<%=news2.getContent() %>
													</td>
												</tr>
												<tr>
													<td nowrap align="right" width="13%">
														creator
													</td>
													<td width="41%">
														<%=news2.getWriterName() %>
													</td>
												</tr>
												<tr>
													<td nowrap align="right" width="13%">
														bar name
													</td>
													<td width="41%">
														<%=news2.getBarName() %>
													</td>
												</tr>
												<tr>
													<td nowrap align="right" width="13%">
														picture
													</td>
													<td width="41%">
														<img src="\NewsProj\photos\pic\<%=news2.getPicpath() %>"/>
													</td>
												</tr>
											</table>
											<br />
										</fieldset>
									</td>
								</tr>
							</table>

						</td>
					</tr>

					
				</table>

<p>	&nbsp;	</p>			
			<p align="center">
				<font face="隶书" size="4">注意：发布前请认真检查输入的栏目是否正确</font><font face="隶书">。</font>
			</p>
				<td></td>
				</tr>
				</table>
			</div>
		
	</body>
</html>

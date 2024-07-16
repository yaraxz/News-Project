<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="czimt.edu.cn.dlv.service.*" %>
<%@page import="czimt.edu.cn.dlv.service.impl.*" %>
<%@page import="czimt.edu.cn.dlv.entity.*" %>
<%@page import="czimt.edu.cn.dlv.util.*" %>
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
		<script language="JavaScript" type="text/javascript">
	function checkNewsInfo() {
		if (fom.newsTitle.value == null || fom.newsTitle.value == "") {
			alert("请输入新闻一级栏目名称!");
			return false;
		}else if (fom.keyWords.value == null || fom.keyWords.value == "") {
			alert("请输入新闻一级栏目名称!");
			return false;
		}else {
			return true;
		}
	}
</script>
		<style type="text/css">
<!--
.atten {
	font-size: 12px;
	font-weight: normal;
	color: #F00;
}
-->
</style>
<%
UserInfo userLogined = (UserInfo)session.getAttribute("userLogined");
String userName = "";
String NewsID = request.getParameter("id");
String keyWords = request.getParameter("keyWords");
String ContentAbstract = request.getParameter("ContentAbstract");
String Content = request.getParameter("Content");
String titleName = request.getParameter("titleName");
String WriterName = request.getParameter("WriterName");
String barId = request.getParameter("barId");
if(userLogined != null)
{
userName = userLogined.getUserRealName().trim().toString();
}
%>
	</head>
	<body class="ContentBody">
		<form  method="post" action="newsEditMiddle.jsp" accept-charset="UTF-8">
			<div class="MainDiv">
				<table width="99%" border="0" cellpadding="0" cellspacing="0"
					class="CContent">
					<tr>
						<th class="tablestyle_title">
							新闻栏目添加页面
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
								<TR>
									<TD width="100%">
										<fieldset style="height: 100%;">
											<legend>
												添加新闻栏目
											</legend>
											<table border="0" cellpadding="2" cellspacing="1"
												style="width: 100%">
												<tr>
													<td nowrap align="right" width="13%">
														News Title
													</td>
													<td width="41%">
														<input name="titleName" class="text" style="width: 250px"
															type="text" size="40" value="<%=titleName %>" />
														<span class="red"> *</span><INPUT type="hidden" name="NewsID" value="<%=NewsID %>" />
													</td>
												</tr>
												<tr>
													<td nowrap align="right" width="13%">
														Key Words
													</td>
													<td width="41%">
														<input name="keyWords" class="text" style="width: 250px"
															type="text" size="40" value="<%=keyWords %>"/>
														<span class="red"> *</span>
													</td>
												</tr>
												<tr>
													<td nowrap align="right" width="13%">
														Content Abstract
													</td>
													<td width="41%">
														<input name="contentAbstract" class="text" style="width: 250px"
															type="text" size="40" value="<%=ContentAbstract %>"/>
													</td>
												</tr>
												
												<tr>
													<td nowrap align="right" width="13%" >
														Content
													</td>
													<td width="41%">
														<textarea rows="5" cols="35" name="Content"><%=Content %></textarea>
													</td>
												</tr>
												<tr>
													<td nowrap align="right" width="13%">creator</td>
													<td width="41%">
														<input name="WriterName" class="text" style="width: 250px"
															type="text" size="40" value="<%=WriterName %>"/>
													</td>
												</tr>
												<tr>
                                            <td nowrap align="right" width="13%">Bar ID</td>
                                            <td width="41%">
                                                <select name="barId">
                                                    <%
                BarService barService = new BarServiceImpl();
                List barList = barService.barSelect(null);
                if(barList.size()>0){
               Bar bar = new Bar();
               for(int i=0; i<barList.size(); i++){
               bar = (Bar) barList.get(i);
               
            %>
                                                    <option value="<%=bar.getBarID() %>"><%=bar.getBarName() %></option>
                                                    <%
                                                    }
                }
            %>
                                                </select>
                                            </td>
                                        </tr>
											</table>
											<br />
										</fieldset>
									</TD>
								</TR>
							</TABLE>

						</td>
					</tr>

					<TR>
						<TD colspan="2" align="center" height="50px">
							<input type="submit" name="Submit2" value="保存" class="button"
								onclick="return checkNewsInfo();">

								<input type="reset" name="Reset" class="button" value="重置">
						</TD>
					</TR>
				</TABLE>		
			<p align="center">
				<font face="隶书" size="4">注意：发布前请认真检查输入的栏目是否正确</font><font face="隶书">。</font>
			</p>
				</td>
				</tr>
				</table>
			</div>
		</form>
	</body>
</html>





<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="czimt.edu.cn.dlv.service.*" %>
<%@page import="czimt.edu.cn.dlv.service.impl.*" %>
<%@page import="czimt.edu.cn.dlv.entity.*" %>
<%@page import="czimt.edu.cn.dlv.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>main</title>
		<link rel="stylesheet" rev="stylesheet" href="../css/style.css"
			type="text/css" media="all" />
		<script language="JavaScript" type="text/javascript">
	function checkNewsFirstTitle() {
		if (fom.titlename.value == null || fom.titlename.value == "") {
			alert("请输入新闻一级栏目名称!");
			return false;
		} else {
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
	</head>
	<%
	request.setCharacterEncoding("gbk");
	String barName = request.getParameter("titlebarname");
	String yxx = request.getParameter("yxx");
	String id = request.getParameter("id");
	if(barName !=null && barName!="")
	{
	barName = new String(barName.getBytes("iso-8859-1"),"gbk");
	}
	%>

	<body class="ContentBody">
		<form  method="post" name="fom" id="fom" action="barEditMiddle.jsp">
			<div class="MainDiv">
				<table width="99%" border="0" cellpadding="0" cellspacing="0"
					class="CContent">
					<tr>
						<th class="tablestyle_title">
							edit
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
												EDIT
											</legend>
											<table border="0" cellpadding="2" cellspacing="1"
												style="width: 100%">
												<tr>
													<td nowrap align="right" width="13%">
														edit name
													</td>
													<td width="41%">
														<input name="barName" class="text" style="width: 250px"
															type="text" size="40" value="<%=barName %>"/><input name="id" type="hidden" value="<%=id %>"></input>
														<span class="red"> *</span>
													</td>
												</tr>
												<tr>
													<td nowrap align="right" width="13%">
														yxx
													</td>
													<td width="41%">
													<select name="yxx">
												<%
													if(yxx.equals("Invalid"))
													{
													 %>
													<option selected>Invalid</option>
													<option>Effective</option>
													<%}else{%>
													<option selected>Effective</option>
													<option>Invalid</option>
													<%}%>
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
								onclick="return checkNewsFirstTitle();">

								<input type="reset" name="Reset" class="button" value="重置">
						</TD>
					</TR>
				</TABLE>

<p>	&nbsp;	</p>			
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



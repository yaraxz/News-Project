<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="czimt.edu.cn.dlv.entity.*"%>
<%@page import="czimt.edu.cn.dlv.util.*"%>
<%@page import="czimt.edu.cn.dlv.service.*"%>
<%@page import="czimt.edu.cn.dlv.service.impl.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>main</title>
		<link rel="stylesheet" rev="stylesheet" href="../css/style.css"
			type="text/css" media="all" />
		<script language="JavaScript" type="text/javascript">
	function checkNewsFirstTitle() {
		if (fom.newsTitle.value == null || fom.newsTitle.value == "")
			{
			alert("u should input the newstitle and keywords");
			return false;
			} else if (fom.keyWords.value == null || fom.keyWords.value == "") {
			alert("u should input the newstitle and keywords");
			return false;
			} else {
			return true;
			}
			}
			
	
</script>
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
	UserInfo userLogined = (UserInfo)session.getAttribute("userLogined");
	String userName = "guanchenyu";
%>

	<body class="ContentBody">
		<form  method="post" name="fom"
			id="fom" action="newAddMiddle.jsp">
			<div class="MainDiv">
				<table width="99%" border="0" cellpadding="0" cellspacing="0"
					class="CContent">
					<tr>
						<th class="tablestyle_title">
							News Add Page
						</th>
					</tr>
					<tr>
						<td class="CPanel">

							<table border="0" cellpadding="0" cellspacing="0"
								style="width: 100%">
								<tr>
									<td align="right">
										<input type="button" name="Submit2" value="����" class="button"
											onclick=
	window.history.go(-1);;
/>
									</td>
								</tr>
								<tr>
									<td width="100%">
										<fieldset style="height: 100%;">
											<legend>
												���������Ŀ
											</legend>
											<table border="0" cellpadding="2" cellspacing="1"
												style="width: 100%">
												<tr>
													<td nowrap align="right" width="13%">
														news title
													</td>
													<td width="41%">
														<input name="titlename" class="text" style="width: 250px"
															type="text" size="40" />
														<span class="red"> *</span>
													</td>
												</tr>
												<tr>
													<td nowrap align="right" width="13%">
														keywords
													</td>
													<td width="41%">
														<input name="keyWords" class="text" style="width: 250px"
															type="text" size="40" />
															
													</td>
												</tr>
												<tr>
													<td nowrap align="right" width="13%">
														content abstract
													</td>
													<td width="41%">
														<input name="contentAbstract" class="text" style="width: 250px"
															type="text" size="40" />
															
													</td>
												</tr>
												
												<tr>
													<td nowrap align="right" width="13%">
														content
													</td>
													<td width="41%">
													<textarea rows="10" cols="35" name="content"></textarea>
													
													</td>
												</tr>
												<tr>
													<td nowrap align="right" width="13%">
														create person name
													</td>
													<td width="41%">
														<input name="userid" class="text" style="width: 250px"
															type="text" size="40" value=<%=userName %> readonly />
														<span class="red"> *</span>
													</td>
												</tr>
							
												<tr>
													<td nowrap align="right" width="13%">
														create date
													</td>
													<td width="41%">
														<input name="createDate" class="text" style="width: 250px"
															type="text" size="40" value="<%=Common.getCurrentDate() %>" readonly/> 
															
													</td>
												</tr>
												
												
												<tr>
													<td nowrap align="right" width="13%">
														barID
													</td>
													<td width="41%">
													<select name="barid">
														<option value="0">-----gatau-----</option>
													<%
													BarService barService = new BarServiceImpl();
													List barList = barService.barSelect(null);
													if(barList.size()>0)
													{
													Bar bar = new Bar();
													for(int i=0;i<barList.size();i++)
													{
														bar = (Bar) barList.get(i);											
													 %>
													
													<option value="<%=bar.getBarID() %>"> <%=bar.getBarName() %></option>
													<%
													}
												 }%>
												 
													</select>
														
															
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

					<tr>
						<td colspan="2" align="center" height="50px">
							<input type="submit" value="����" class="button"
								onclick="return checkNewsFirstTitle();" />

								<input type="reset" class="button" value="����" />
						</td>
					</tr>
				</table>
<p>	&nbsp;	</p>			
			<p align="center">
				<font face="����" size="4">ע�⣺����ǰ���������������Ŀ�Ƿ���ȷ</font><font face="����">��</font>
			</p>
				</td>
				</tr>




				</table>

			</div>
		</form>
	</body>
</html>

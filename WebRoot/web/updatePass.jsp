<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="czimt.edu.cn.dlv.entity.*"%>
<%@page import="czimt.edu.cn.dlv.util.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>main</title>
		<link rel="stylesheet" rev="stylesheet" href="../css/style.css"
			type="text/css" media="all" />
		<script language="JavaScript" type="text/javascript">
	function check() {
		if (fom.oldpassword.value == null || fom.oldpassword.value == "") {
			alert("old pass not empty");
			return false;
		} else if(fom.newpassword.value == null || fom.newpassword2.value == ""){
			alert("two new pass not same!");
			return false;
		}else{
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


	<body class="ContentBody">
		<form  method="post" name="fom"
			id="fom" action="updatepassMiddle.jsp">
			<div class="MainDiv">
				<table width="99%" border="0" cellpadding="0" cellspacing="0"
					class="CContent">
					<tr>
						<th class="tablestyle_title">
							password update page
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
								<TR>
								<TD width="100%">
									
										<fieldset style="height: 100%;">
											<legend>
												update password
											</legend>
											<table border="0" cellpadding="2" cellspacing="1"
												style="width: 100%">
												<tr>
													<td nowrap align="right" width="13%">
														old password
													</td>
													<td width="41%">
														<input name="oldpassword" class="text" style="width: 250px"
															type="password" size="40" />
														<span class="red"> *</span>
													</td>
												</tr>
												<tr>
													<td nowrap align="right" width="13%">
														new password
													</td>
													<td width="41%">
														<input name="newpassword" class="text" style="width: 250px"
															type="password" size="40" />&nbsp; 
													</td>
												</tr>
												<tr>
													<td nowrap align="right" width="13%">
														second password
													</td>
													<td width="41%">
														<input name="newpassword" class="text" style="width: 250px"
															type="password" size="40" />&nbsp; 
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
							<input type="submit" name="Submit2" value="����" class="button"
								onclick="return check();">

								<input type="reset" name="Reset" class="button" value="����">
						</TD>
					</TR>
				</TABLE>

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

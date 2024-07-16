<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ page import="czimt.edu.cn.dlv.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>silahkan login di sini!</title>
    
	<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/default.js">
</script>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="147" background="../images/top02.gif"></td>
  </tr>
</table>
<table width="562" border="0" align="center" cellpadding="0" cellspacing="0" class="right-table03">
  <tr>
    <td width="221"><table width="95%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
      
      <tr>
      <form action="registerMiddle.jsp" method="post" name="f1">
        <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
          <tr>
            <td align="center"><img src="../images/ico13.gif" width="107" height="97" /></td>
          </tr>
          <tr>
            <td height="40" align="center">&nbsp;</td>
          </tr>
          
        </table></td>
        <td><img src="../images/line01.gif" width="5" height="292" /></td>
      </tr>
    </table></td>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td width="31%" height="35" class="login-text02">名字：<br /></td>
        <td width="69%"><input name="nama" type="text" size="30" /></td>
      </tr>
      <tr>
        <td width="31%" height="35" class="login-text02">性别：<br /></td>
        <td width="69%"> <select name="sex">
       <option value="">男</option>
       <option value="">女</option>
        </select></td>
      </tr>
    <tr>
        <td width="31%" height="35" class="login-text02">Date：<br /></td>
        <td width="69%">
														<input name="createDate" class="text" style="width: 250px"
															type="text" size="40" value="<%=Common.getCurrentDate() %>" readonly/>
													</td>
      </tr>
      <tr>
        <td width="31%" height="35" class="login-text02">出生日期：<br /></td>
        <td width="69%"><input type="date"  name="birthday"></td>
      </tr>
       <tr>
        <td width="31%" height="35" class="login-text02">地址：<br /></td>
        <td width="69%"><textarea name="address"></textarea></td>
      </tr>
       <tr>
        <td width="31%" height="35" class="login-text02">电子邮件：<br /></td>
        <td width="69%"><input name="email" type="email" size="30" /></td>
      </tr>
      <tr>
        <td width="31%" height="35" class="login-text02">电话号码：<br /></td>
        <td width="69%"><input name="tel" type="text" size="30" /></td>
      </tr>
      
        <td width="31%" height="35" class="login-text02">username：<br /></td>
        <td width="69%"><input name="userName" type="text" size="30" /></td>
      </tr>
      <tr>
        <td height="35" class="login-text02">密码：<br /></td>
        <td><input name="password" type="password" size="30" /></td>
      </tr>     
      <tr>
        <td height="35">&nbsp;</td>
        <td><input name="Submit2" type="submit" class="right-button01" value="登记" onClick="return checkUserInput()" />
          <input name="Submit232" type="submit" class="right-button02" value="重 置" /></td>
          
      </tr>
     
 
  </tr>
</table>
   
</form>
</body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>My JSP 'login.jsp' starting page</title>
    
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
<script type="text/javascript" src="../js/default.js"></script>

</head>


<body>
<script>
function checkUserInput(){
var userName = f1.userName.value;
var userPassword = f1.userPassword.value;
if(userName == null || userName == "")
{
alert("fill the form");
return false;
} if(userPassword == null || userPassword == ""){
alert("username & password salah");
return false;
}
}
</script>
</head>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="147" background="../images/top02.gif"></td>
  </tr>
</table>
<table width="562" border="0" align="center" cellpadding="0" cellspacing="0" class="right-table03">
  <tr>
    <td width="221"><table width="95%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
      
      <tr>
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
<form action="UserLoginMiddle.jsp" method="post" name="f1">
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="31%" height="35" class="login-text02">�û����ƣ�<br /></td>
        <td width="69%"><input name="userName" type="text" size="30" /></td>
      </tr>
      <tr>
        <td height="35" class="login-text02">�ܡ��룺<br /></td>
        <td><input name="userPassword" type="password" size="30" /></td>
      </tr>     
      <tr>
        <td height="35">&nbsp;</td>
        <td><input name="Submit2" type="submit" class="right-button01" value="ȷ�ϵ�½" onClick="return checkUserInput();"/>
          <input name="Submit232" type="submit" class="right-button02" value="�� ��" />
          <%
          String errorMsg = (String)session.getAttribute("loginErrorMsg");
          if(errorMsg == null){
          errorMsg =   "";
          }
           %>
           <%=errorMsg %>
          
          </td>
      </tr>
    </table></td>
  </tr>
</table>
</form>


</body>
</html>
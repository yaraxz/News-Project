<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@page import="czimt.edu.cn.dlv.entity.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>���ŷ�������ϵͳ</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url(../images/left.gif);
}
-->
</style>
<link href="../css/css.css" rel="stylesheet" type="text/css" />
</head>
<SCRIPT language=JavaScript>
function tupian(idt){
    var nametu="xiaotu"+idt;
    var tp = document.getElementById(nametu);
    tp.src="../images/ico05.gif";//ͼƬico04Ϊ��ɫ��������
	
	for(var i=1;i<30;i++)
	{
	  
	  var nametu2="xiaotu"+i;
	  if(i!=idt*1)
	  {
	    var tp2=document.getElementById('xiaotu'+i);
		if(tp2!=undefined)
	    {tp2.src="../images/ico06.gif";}//ͼƬico06Ϊ��ɫ��������
	  }
	}
}

function list(idstr){
	var name1="subtree"+idstr;
	var name2="img"+idstr;
	var objectobj=document.all(name1);
	var imgobj=document.all(name2);
	
	
	//alert(imgobj);
	
	if(objectobj.style.display=="none"){
		for(i=1;i<10;i++){
			var name3="img"+i;
			var name="subtree"+i;
			var o=document.all(name);
			if(o!=undefined){
				o.style.display="none";
				var image=document.all(name3);
				//alert(image);
				image.src="../images/ico04.gif";
			}
		}
		objectobj.style.display="";
		imgobj.src="../images/ico03.gif";
	}
	else{
		objectobj.style.display="none";
		imgobj.src="../images/ico04.gif";
	}
}

</SCRIPT>

<%
	UserInfo userLogined = (UserInfo)session.getAttribute("userLogined");
	String userName = "guanchenyu";
	if(userLogined !=null)
	{
	userName = userLogined.getUserRealName().trim().toString();
	}
%>
<body>
<table width="198" border="0" cellpadding="0" cellspacing="0" class="left-table01">
  <tr>
    <TD>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
		  <tr>
			<td width="207" height="55" background="../images/nav01.gif">
				<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
				  <tr>
					<td width="25%" rowspan="2"><img src="../images/ico02.gif" width="35" height="35" /></td>
					<td width="75%" height="22" class="left-font01">���ã�<span class="left-font02"><font color="red"><%=userName%></span></td>
				  </tr>
				  <tr>
					<td height="22" class="left-font01">
						[&nbsp;<a href="../web/login.jsp" target="_top" class="left-font01">�˳�</a>&nbsp;]</td>
				  </tr>
				</table>
			</td>
		  </tr>
		</table>
		


		<!--  ������Ŀ��ʼ    -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img1" id="img1" src="../images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('1');" >������Ŀ����</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree1" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu10" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="barAdd.jsp" target="mainFrame" class="left-font03" onClick="tupian('10');">������Ŀ���</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu11" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="barSelect.jsp" target="mainFrame" class="left-font03" onClick="tupian('11');">������Ŀ�޸�</a></td>
				</tr>
				<tr>
				  <td width="9%" height="21" ><img id="xiaotu12" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="NewsTitle.html" target="mainFrame" class="left-font03" onClick="tupian('12');">������Ŀɾ��</a></td>
				</tr>
      </table>
		<!-- ������Ŀ����    -->

		

		<!-- �������ݿ�ʼ    -->
		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="162" border="0" align="center" cellpadding="0" cellspacing="0" height="18">
					<tr>
						<td width="8%"><img name="img2" id="img2" src="../images/ico04.gif" width="8" height="11"/></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('2');" >�������ݹ���</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>
		<table id="subtree2" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu20" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
						<a href="newAdd.jsp" target="mainFrame" class="left-font03" onClick="tupian('20');">news add</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu21" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
					<a href="newsSelect.jsp" target="mainFrame" class="left-font03" onClick="tupian('21');">news managed</a></td>
				</tr>
				<tr>
				  <td width="9%" height="20" ><img id="xiaotu22" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%">
						<a href="listsendxiaoxi.htm" target="mainFrame" class="left-font03" onClick="tupian('22');">��������ɾ��
							</a></td>
				</tr>
				
      </table>
		<!--  ����ϵͳ����    -->
	
     <!-- ϵͳ������ʼ -->
      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
        <tr>
          <td height="29"><table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td width="8%"><img name="img6" id="img6" src="../images/ico04.gif" width="8" height="11" /></td>
                <td width="92%"><a href="mode.html" target="mainFrame" class="left-font03" onClick="list('6');">ϵͳ����</a></td>
              </tr>
          </table></td>
        </tr>
      </table>
	  <table id="subtree6" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" cellspacing="0" class="left-table02">
        <tr>
          <td width="9%" height="20"><img id="xiaotu15" src="../images/ico06.gif" width="8" height="12" /></td>
          <td width="91%"><a href="mode.html" target="mainFrame" class="left-font03" onClick="tupian('15');">�û��ֲ�</a></td>
        </tr>
       
      </table>
	 <!-- ϵͳ��������-->

	 <!--������Ϣ����ʼ-->

		<TABLE width="100%" border="0" cellpadding="0" cellspacing="0" class="left-table03">
          <tr>
            <td height="29">
				<table width="85%" border="0" align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td width="8%"><img name="img9" id="img9" src="../images/ico04.gif" width="8" height="11" /></td>
						<td width="92%">
								<a href="javascript:" target="mainFrame" class="left-font03" onClick="list('9');" >���˹���</a></td>
					</tr>
				</table>
			</td>
          </tr>		  
        </TABLE>

		<table id="subtree9" style="DISPLAY: none" width="80%" border="0" align="center" cellpadding="0" 
				cellspacing="0" class="left-table02">
				<tr>
				  <td width="9%" height="22" ><img id="xiaotu22" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="updatePass.jsp" target="mainFrame" class="left-font03" 
						onClick="tupian('22');">update password</a></td>
				</tr>
				<tr>
				  <td width="9%" height="23" ><img id="xiaotu23" src="../images/ico06.gif" width="8" height="12" /></td>
				  <td width="91%"><a href="register.jsp" target="mainFrame" class="left-font03" 
						onClick="tupian('23');">register</a></td>
				</tr>
      </table>
		<!--  ������Ϣ����    -->

	  </TD>
  </tr>
  
</table>
</body>
</html>

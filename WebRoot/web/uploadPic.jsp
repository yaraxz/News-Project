<%@ page language="java" contentType="text/html; charset=gbk"
	pageEncoding="gbk"%>
<%@page import="czimt.edu.cn.dlv.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>main</title>
		<link rel="stylesheet" rev="stylesheet" href="../css/style.css"
			type="text/css" media="all" />
		<title>Insert title here</title>
		<script type="text/javascript">   
    function checkFile(){   
        //�ڱ������һ������Ԫ�أ�Ŀ���ǲ����Ƿ��ö�̬���û������Ա���Servlet�н��ղ����ݵ����ݿ���   
        var f = document.uploadForm.photo.value ;   
        //��Ԫ�ص�id��ø�Ԫ�ص�ֵ���Ӷ������ж�ѡ����ļ��Ƿ�Ϸ�   
        var file = document.uploadForm.p.value ;   
        if(file==null||file==""){   
            alert("�㻹û��ѡ���κ��ļ��������ϴ�!") ;   
            return ;   
        }   
        if(file.lastIndexOf(".")==-1){   
            alert("·������ȷ!") ;   
            return ;   
        }   
        var allImgExt = ".jpg|.jpeg|.gif|.bmp|.png|" ;   
        var extName = file.substring(file.lastIndexOf(".")) ;   
        if(allImgExt.indexOf(extName+"|")==-1){   
               
            errMsg="���ļ����Ͳ������ϴ������ϴ� "+allImgExt+" ���͵��ļ�����ǰ�ļ�����Ϊ"+extName;   
            alert(errMsg);   
            return;   
        }   
        document.uploadForm.submit() ;   
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
		<% 
	     //��session�����н���ǰ��¼�û�ȡ�� 
	     UserInfo userLogin = (UserInfo)session.getAttribute("userLogined"); 
	     if(userLogin == null) 
	     { 
	        //��ǰ�����û�û�е�¼��ֱ����ת����¼������е�¼ 
	        response.sendRedirect("web/login.jsp"); 
	        return ; 
	     } 
	    String newsID =  request.getParameter("newsid");
	    session.setAttribute("newsid",newsID);
	     
	 %>
		<!-- actionΪServlet��URL,enctype��ֵ����Ϊmultipart/form-data -->
		<form action="../servlet/UploadPicServlet" method="POST"
			enctype="multipart/form-data" name="uploadForm">
			<div class="MainDiv">
				<table width="99%" border="0" cellpadding="0" cellspacing="0"
					class="CContent">
					<tr>
						<th class="tablestyle_title">
							Pic upload
						</th>
					</tr>
					<tr>
						<td class="CPanel">
							<table border="0" cellpadding="0" cellspacing="0"
								style="width: 100%">
								<tr>
									<td align="right">
										<input type="button" name="Submit2" value="return" class="button"
											onclick=window.history.go(-1);; />
									</td>
								</tr>
								<tr>
									<td width="100%">
										<fieldset style="height: 100%;">
											<legend> 
												PIC load&nbsp; 
											</legend>
											<table border="0" cellpadding="2" cellspacing="1"
												style="width: 100%">
												</tr>
												<tr >
													<td nowrap align="right"> 
														select pic 
													</td>
													<td>
														<input type="file" id="p" name="pic" size="20" /><font color="red">*</font>
													</td>
												</tr>
											</table>
										</fieldset>
									</td>
							</table>
						</td>
					</tr>

					<tr align="center">
						<td align="center" colspan="2">
							<input type="hidden" name="photo" value="pic"%>
							<input type="button" value="upload"  class="button"	onclick="checkFile()" />
						</td>
					</tr>
				</table>
			</div>
		</form>

	</body>
</html>

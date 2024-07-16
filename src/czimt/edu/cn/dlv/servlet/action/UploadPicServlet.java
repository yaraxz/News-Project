package czimt.edu.cn.dlv.servlet.action;

import java.io.File;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import czimt.edu.cn.dlv.service.PicUploadService;
import czimt.edu.cn.dlv.service.impl.PicUploadServiceImpl;

public class UploadPicServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {

request.setCharacterEncoding("gbk") ;   
response.setCharacterEncoding("gbk") ;  
HttpSession session = request.getSession();
PrintWriter out = response.getWriter();
//���ڴ���������Ϣ   
String message = "" ;   
 String newsid = (String) session.getAttribute("newsid");  
//���Լ�����Ŀ�й����һ�����ڴ���û���Ƭ���ļ���   
String projectpath = this.getServletContext().getRealPath("/photos/") ;   
      
//�����ļ��в����ڣ�������ļ���   
File f = new File(projectpath) ;   
if(!f.exists()){   
    f.mkdir() ;   
}   
   
//������ļ����������ڴ��JSPҳ���д��ݹ������ļ�   
DiskFileItemFactory factory = new DiskFileItemFactory() ;   
//���û����С������ļ����ڻ����Сʱ�����Ȱ��ļ��ŵ�������   
factory.setSizeThreshold(4*1024) ;   
//�����ϴ��ļ��ı���·��   
factory.setRepository(f) ;   

//����Servlet�ϴ�����   
ServletFileUpload upload = new ServletFileUpload(factory) ;   
//���ÿ����ϴ��ļ���С���Ͻ�4MB   
upload.setSizeMax(4*1024*1024);   
   
try {   
    //ȡ�������ϴ��ļ�����Ϣ   
    List<FileItem> list = upload.parseRequest(request) ;   
    Iterator<FileItem> iter = list.iterator() ;   
    while(iter.hasNext()){   
        FileItem item = iter.next() ;   
        //�����յ��Ĳ�����һ����ͨ�?(��text��)��Ԫ�أ���ôִ���������   
        if(!item.isFormField()){   
            String fieldName = item.getFieldName() ;//��ô˱?Ԫ�ص�name����   
            String fileName = item.getName() ;//����ļ�������·��   
            String contentType = item.getContentType() ;//����ļ�����   
            long fileSize = item.getSize() ;//����ļ���С   
            // ���ļ�������·���н�ȡ���ļ���   
            fileName = fileName.substring(fileName.lastIndexOf("\\") + 1, fileName.length());   
               
            //�ж��Ƿ���ͼƬ�ϴ�   
            if(!("".equals(fileName))&&!(fileName==null)){   
                   
                //����ϴ����ļ�����ͼƬ����ô���ϴ�   
                String allImgExt = ".jpg|.jpeg|.gif|.bmp|.png|" ;   
                String extName = fileName.substring(fileName.indexOf("."),fileName.length()) ;   
                if(allImgExt.indexOf(extName+"|")==-1){   
                    message = "���ļ����Ͳ������ϴ������ϴ� "+allImgExt+" ���͵��ļ�����ǰ�ļ�����Ϊ"+extName;   
                    break ;   
                }   
                   
                String filepath = projectpath+"\\"+fieldName ;   
                File uf = new File(filepath) ;   
                //����ļ��ı���·�����Է�ֹ�ļ�������������   
                if(!uf.exists()){   
                    uf.mkdir() ;   
                }   
                 //�����·��Ϊ���浽��ݿ���photo�ֶε�·��   
                String insertDB = filepath+"\\"+fileName ;   
                System.out.println("�ļ�·����"+insertDB+":"+insertDB.length());                             

                File uploadedFile = new File(filepath, fileName);

                  try {   
                    //����ڸ��ļ������Ѿ�����ͬ���ļ�����ô����ɾ��֮�������´�����ֻ�������ϴ�һ����Ƭ�������   
                    if(uploadedFile.exists()){   
                        uploadedFile.delete() ;   
                    }   
                    item.write(uploadedFile);   
                      
                    PicUploadService picbiz = new PicUploadServiceImpl();
                   int rtn =  picbiz.savePicToDB(fileName, newsid);                          
                   if(rtn>0){   
                        message = "�ϴ��ļ��ɹ�<br/><br/>����Ϣ���£�<br/>�ļ���"+fileName   
                               +"<br/>�ļ����ͣ�"+contentType+"<br/>�ļ���С��"+fileSize;   
                    
                        //request.setAttribute("message", message) ;   
                       // request.getRequestDispatcher("upload.jsp").forward(request, response) ;  
                        out.write("<script language='javascript'>window.location.href='../web/newsSelect.jsp';alert('�ϴ��ɹ���');</script>");
                   }   
                       
                } catch (Exception e) {   
                    e.printStackTrace();   
                    //return ;   
                }   
                   
            }else {    
                // ȡ����ͨ�Ķ��󣨶������ı����������͵�ʹ�ã�   
                // ������ͨ���͵Ķ����ݲ�������   
                //return ;   
            }   
        }   
    }   
} catch (FileUploadException e) {   
    // TODO Auto-generated catch block   
    message = "�ļ������ݹ�����ϴ�С��4MB���ļ�" ;   
    e.printStackTrace();   
}             
 
}      


public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {

this.doGet(request, response);
}


}

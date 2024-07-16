package czimt.edu.cn.dlv.servlet.app;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import czimt.edu.cn.dlv.entity.UserInfo;
import czimt.edu.cn.dlv.json.JSONException;
import czimt.edu.cn.dlv.json.JSONObject;
import czimt.edu.cn.dlv.service.UserService;
import czimt.edu.cn.dlv.service.impl.UserServiceImpl;

public class UserLoginAppServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//modify encoding method
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		//user login requires obtaining the name and pass enter
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		//json, create a json object using json
		JSONObject jobject = new JSONObject();
		PrintWriter out = response.getWriter();
		String result="";
		String userId="0";
		String userRealName="";
		//simulate mobile user login
		//String result="";
		UserService userService = new UserServiceImpl();
		UserInfo user = new UserInfo();
		user.setUserLoginName(userName);
		user.setUserPassword(password);
		UserInfo userLogined = userService.UserLogin(user);
		//if(userName.equals("dlv") && password.equals("123"))
		if(userLogined !=null)
		{
			//user login success
			result ="successLogined";
			userId = userLogined.getUserID();
			userRealName = userLogined.getUserRealName();
			
		}
		else
		{
			//user login failed
			result ="failLogined";
		}
		//encapsulate the succesfull logined information into a json object
		try {
			jobject.put("msg", result);
			jobject.put("userRealName", userRealName);
			jobject.put("userId", userId);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		out
//				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
//		out.println("<HTML>");
//		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
//		out.println("  <BODY>");
//
//		out.println("userName: of user input " +userName + "password of user input" +password);
//		out.println("  </BODY>");
//		out.println("</HTML>");
		out.println(jobject);
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

}

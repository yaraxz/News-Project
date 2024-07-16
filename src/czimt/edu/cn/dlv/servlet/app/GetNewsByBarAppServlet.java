package czimt.edu.cn.dlv.servlet.app;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import czimt.edu.cn.dlv.entity.News;
import czimt.edu.cn.dlv.json.JSONException;
import czimt.edu.cn.dlv.json.JSONObject;
import czimt.edu.cn.dlv.service.NewsService;
import czimt.edu.cn.dlv.service.impl.NewsServiceImpl;

public class GetNewsByBarAppServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		//user login requires obtaining the name and pass enter
		String result ="fail";
		NewsService newsservice = new NewsServiceImpl();
		//newsservice.newsSelect(null);
		News news1 = new News();
		String barID = request.getParameter("barID");
		news1.setBarID(barID);
		List list = newsservice.newsSelect(news1);
		JSONObject jb = new JSONObject();
		if(list.size() >0)
		{
			result="success";
		}
		try {
			jb.put("msg", result);
			jb.put("newslist", list);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		PrintWriter out = response.getWriter();
		
		out.println(jb);
		out.flush();
		out.close();
	}

}

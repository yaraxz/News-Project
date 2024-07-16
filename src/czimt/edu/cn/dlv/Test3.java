package czimt.edu.cn.dlv;

import java.util.List;

import czimt.edu.cn.dlv.entity.News;
import czimt.edu.cn.dlv.service.NewsService;
import czimt.edu.cn.dlv.service.impl.NewsServiceImpl;

public class Test3 {
	public static void main(String[] args) {
		
		NewsService newsservice = new NewsServiceImpl();
		News news = new News();	
		
//		//ADD 
//		news.setAddDate ("2023-11-20");
//		news.setBarID("4");
//		news.setContent("sdfsddfdfdsfRBEREA");
//		news.setContentAbstract("bb");
//		news.setKeyWords("say");
//		news.setWriterID("1");
//		news.setTitleName("intan");
//
//		int rtn = newsservice.newsAdd(news);
//		if(rtn>0){
//			System.out.println("success");
//		} else {
//			System.out.println("failed");
//		}
		
		
		//EDIT
//		news.setNewsID("1");
//		news.setTitleName("helloanjay");
//		int rtn = newsservice.newsEdit(news);
//		if(rtn>0)
//		{
//			System.out.println("Update Succesfully");
//		} else{
//			System.out.println("Update Failed");
//		}
		
		
		//DELETE
//		news.setNewsID("1");
//		int rtn = newsservice.newsDel(news);
//		if(rtn>0)
//			{
//				System.out.println("delete Succesfully");
//			} else{
//				System.out.println("delete Failed");
//			}
		
		//Find
		
//		List list = newsservice.newsSelect(null);
//		for(int i = 0; i < list.size(); i++) {
//		    News news2 = (News)list.get(i);
//		    System.out.println(news2.getTitleName()
//		    		//news.getBarName() +"," +news.getContent() + "," + news.getContentAbstract()
//		    		);
//	
//		}
		
		List list = newsservice.newsSelect(null);
		for(int i = 0; i < list.size(); i++) {
		    News news1 = (News)list.get(i);
		    System.out.println(
		    		news1.getNewsID() + "," +
		    		news1.getTitleName()+  "," +
		    		news1.getKeyWords()+  "," +
		    		news1.getContent()+  "," +
		    		news1.getContentAbstract()+  "," +
		    		news1.getBarID()+  "," +
		    		news1.getBarName()+  "," +
		    		news1.getWriterID()+  "," +
		    		news1.getAddDate()+ "," +
		    		news1.getBarID() + "," +
		    		news1.getNewsID()+ "," 	    		
		    		
		    		);
	
		}
	}
}



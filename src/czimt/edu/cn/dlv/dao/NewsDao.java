package czimt.edu.cn.dlv.dao;

import java.util.List;

import czimt.edu.cn.dlv.entity.News;

public interface NewsDao {
	public int newsAdd(News news);
	
	public int newsEdit(News news);
	
	public int newsDel(News news);
	
	public List newsSelect(News news);
	
	//public News newsSelectbyid(News news);


	

}

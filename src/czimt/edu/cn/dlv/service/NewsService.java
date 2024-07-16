package czimt.edu.cn.dlv.service;

import java.util.List;

import czimt.edu.cn.dlv.entity.Bar;
import czimt.edu.cn.dlv.entity.News;

public interface NewsService {
	public int newsAdd(News news);
	
	public int newsEdit(News news);
	
	public int newsDel(News news);
	
	public List newsSelect(News news);

//	public News newsSelectbyid(News news2);
	
//	public News newsFindBynewsid (News news);

}

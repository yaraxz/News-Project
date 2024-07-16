package czimt.edu.cn.dlv.service.impl;

import java.util.List;


import czimt.edu.cn.dlv.dao.NewsDao;
import czimt.edu.cn.dlv.dao.UserDao;
import czimt.edu.cn.dlv.dao.impl.NewsDaoImpl;
import czimt.edu.cn.dlv.dao.impl.UserDaoImpl;
import czimt.edu.cn.dlv.entity.News;
import czimt.edu.cn.dlv.service.NewsService;

public class NewsServiceImpl implements NewsService {
	
	
	public List newsSelect(News news) {
		// TODO Auto-generated method stub
		NewsDao newsDao = new NewsDaoImpl();
		return newsDao.newsSelect(news);
		
	}

	public int newsAdd(News news) {
		// TODO Auto-generated method stub
		NewsDao newsDao = new NewsDaoImpl();
		return newsDao.newsAdd(news);
	}

	public int newsDel(News news) {
		// TODO Auto-generated method stub
		NewsDao newsDao = new NewsDaoImpl();
		return newsDao.newsDel(news);
	}

	public int newsEdit(News news) {
		// TODO Auto-generated method stub
		NewsDao newsDao = new NewsDaoImpl();
		return newsDao.newsEdit(news);
	}
	

}

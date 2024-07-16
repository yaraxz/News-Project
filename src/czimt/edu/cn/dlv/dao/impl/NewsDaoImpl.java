package czimt.edu.cn.dlv.dao.impl;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import czimt.edu.cn.dlv.dao.NewsDao;
import czimt.edu.cn.dlv.entity.News;
import czimt.edu.cn.dlv.util.AccessDbUtil;


public class NewsDaoImpl implements NewsDao {

	public int newsAdd(News news) {
		// TODO Auto-generated method stub
		String sql ="insert into newscontent(titleName,keyWords,contentAbstract,content,addDate, titlebarID, writerID)values(?,?,?,?,?,?,?)";
		String[] param = {
				news.getTitleName(),
				news.getKeyWords(),
				news.getContentAbstract(),
				news.getContent(),
				news.getAddDate(),
				news.getBarID(),
				news.getWriterID()
				
		};
		return AccessDbUtil.executeUpdateDLV(sql, param);
	}
	
	public int newsDel(News news) {
		// TODO Auto-generated method stub
		String sql ="delete from newscontent where newID = ?";
		String[] param = {
				news.getNewsID()
		};
		return AccessDbUtil.executeUpdateDLV(sql, param);
		
	}

	public int newsEdit(News news) {
		// TODO Auto-generated method stub
		String sql =" update newscontent set titleName=?, keyWords=?, contentAbstract=?, content=?, titlebarID=? where newID=?";
		String[] param = {
				news.getTitleName(),
				news.getKeyWords(),
				news.getContentAbstract(),
				news.getContent(),
				news.getBarID(),
				news.getNewsID()
		};
		return AccessDbUtil.executeUpdateDLV(sql, param);
	}
	

	public List<News> newsSelect(News news) {
	    ResultSet rs = null;
	    String sql = "SELECT newscontent.*, titlebar.titleBarName, userinfo.userID, userinfo.userRealName " +
	                 "FROM newscontent, titlebar, userinfo " +
	                 "WHERE titlebar.titleBarID = newscontent.titlebarID AND newscontent.writerID = userinfo.userID";

	    if (news != null) {
        	if(news.getNewsID() != ""& news.getNewsID() !=null) {
      	            sql += " AND newscontent.newID ="+news.getNewsID();
      	        }
   	        if(news.getTitleName() != ""& news.getTitleName()!=null) {
   	            sql += " AND newscontent.titleName LIKE '%"+news.getTitleName() + "%'";
   	        }
   	        if(news.getKeyWords() != ""& news.getKeyWords()!=null) {
   	            sql += " AND newscontent.keyWords LIKE '%"+news.getKeyWords() + "%'";
   	        }
   	        if(news.getContentAbstract() != ""& news.getContentAbstract()!=null) {
   	            sql += " AND newscontent.contentAbstract LIKE '%"+news.getContentAbstract() + "%'";
   	        }
   	        if(news.getContent() != ""& news.getContent() !=null) {
   	            sql += " AND newscontent.content LIKE '%"+news.getContent() + "%'";
   	        }
   	        if(news.getBarID() != ""& news.getBarID() !=null){
   	        	sql += " AND newscontent.titlebarID=" + news.getBarID();
   	        }
   	    }

	    List<News> list = new ArrayList();
	    rs = AccessDbUtil.executeQueryDLV(sql, null);
	    try {
	        while (rs.next()) {
	            News news2 = new News();
	            news2.setTitleName(rs.getString("titleName"));
	            news2.setAddDate(rs.getString("addDate"));
	            news2.setContent(rs.getString("content"));
	            news2.setContentAbstract(rs.getString("contentAbstract"));
	            news2.setKeyWords(rs.getString("keywords"));
	            news2.setTitleName(rs.getString("titleName"));
	            news2.setWriterName(rs.getString("userRealName"));
	            news2.setBarID(String.valueOf(rs.getInt("titleBarID")));
	            news2.setNewsID(String.valueOf(rs.getInt("newID")));
	            news2.setWriterID(String.valueOf(rs.getInt("userID")));
	            news2.setBarName(rs.getString("titleBarName"));
	            news2.setPicpath(rs.getString("picpath"));
	            list.add(news2);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        // Pastikan untuk menutup ResultSet
	        if (rs != null) {
	            try {
	                rs.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }
	    return list;
	}




//	public News newsSelectbyid(News news) {
//		// TODO Auto-generated method stub
//
//			String sql =" SELECT newscontent.*, titlebar.titleBarID, titlebar.titleBarName, userinfo.userID, userinfo.userRealName ";
//		       sql+=" FROM newscontent, titlebar, userinfo ";
//		       sql+=" WHERE titlebar.titleBarID = newscontent.titlebarID AND newscontent.writerID=userinfo.userID AND newID=? ";
//			   String[] param = {
//						news.getNewsID()
//					};   
//		ResultSet rt = AccessDbUtil.executeQueryDLV(sql,param);
//		News news1 = null;
//		try {			
//			if(rt.next()){
//				news1 = new News();
//				news1.setNewsID(rt.getString("newID"));
//				news1.setTitleName(rt.getString("titleName"));
//				news1.setKeyWords(rt.getString("keyWords"));
//				news1.setContentAbstract(rt.getString("contentAbstract"));
//				news1.setContent(rt.getString("content"));
//				news1.setAddDate(rt.getString("addDate"));
//				news1.setBarID(String.valueOf(rt.getInt("titleBarID")));
//				news1.setWriterID(String.valueOf(rt.getInt("writerID")));
//				news1.setBarName(rt.getString("titleBarName"));
//				news1.setWriterName(rt.getString("userRealName"));
//			}		
//			} catch (SQLException e) {
//				// TODO: handle exception
//			e.printStackTrace();
//			}
//			return news1;
//		}
	}
	
//	
				



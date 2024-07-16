package czimt.edu.cn.dlv.dao.impl;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import czimt.edu.cn.dlv.dao.BarDao;
import czimt.edu.cn.dlv.entity.Bar;
import czimt.edu.cn.dlv.entity.UserInfo;
import czimt.edu.cn.dlv.util.AccessDbUtil;


public class BarDaoImpl implements BarDao {

	public int barAdd(Bar bar) {
		// TODO Auto-generated method stub
		String sql ="insert into titlebar(titleBarName,createorID,createDate,yxx)values(?,?,?,?)";
		String[] param = {
				bar.getBarName(),
				bar.getCreateorID(),
				bar.getCreateDate(),
				bar.getYxx()
				
		};
		return AccessDbUtil.executeUpdateDLV(sql, param);
	}

	public int barDel(Bar bar) {
		// TODO Auto-generated method stub
		String sql =" delete from  titlebar where titleBarID = ? ";
		String[] param = {
				bar.getBarID()
		};
		return AccessDbUtil.executeUpdateDLV(sql, param);
	}

	

	public int barEdit(Bar bar) {
		// TODO Auto-generated method stub
		String yxx = bar.getYxx();
		if(yxx.equals("Invalid"))
		{
			yxx ="0";
		}else
		{
			yxx="1";
		}
			
		String sql =" update titlebar set titleBarName=? , yxx=? where titleBarID=?";
		String[] param = {
				bar.getBarName(),
				yxx,
				bar.getBarID()
		};
		return AccessDbUtil.executeUpdateDLV(sql, param);
	}
	

	public List barSelect(Bar bar) {
		// TODO Auto-generated method stub
			//List<barSelect> list =  UserDaoImpl.selectPage(Bar bar);
		String sql ="select titleBarID, titleBarName, createorID, createDate,";
		sql+="	case when yxx='1' then 'Effective'";
		sql+="	when yxx='0' then 'Invalid'";
		sql+="	end as yxxName,userinfo.userRealName";
		sql+="	from titlebar,userinfo";
		sql+="  where titlebar.createorID = userinfo.userID ";
		
		if(bar!= null)
		{
			if(bar.getBarName() !=""){
				
			
			sql += " and titlebar.titleBarName like '%" + bar.getBarName()+ "%'";
		}
		}
		String[] param = null;
		
		ResultSet rs = AccessDbUtil.executeQueryDLV(sql, param);
		Bar bar1 = null;
		List list = new ArrayList();
		try{
		while(rs.next())
		{
			bar1 = new Bar();
			bar1.setBarName(rs.getString("titleBarName"));
			bar1.setCreateDate(rs.getString("createDate"));
			bar1.setYxx(rs.getString("yxxName"));
		
			int barid = rs.getInt("titleBarID");
			bar1.setBarID(String.valueOf(barid));
			int createorID = rs.getInt("createorID");
			bar1.setCreateorID(String.valueOf(createorID));
			bar1.setCreateorName(rs.getString("userRealName"));
		
			list.add(bar1);
		}
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		
		return list;
			}
		
		

public Bar barFindByBarid(Bar bar) {
		
		String sql = " select userID,titleBarID,titleBarName,createorID,createDate,";
		sql +="case when yxx='1' then 'Effective' ";
		sql +="		when yxx='0' then 'Invalid' ";
		sql +=" end as yxxName ,userinfo.userRealName";
		sql +=" from titlebar,userinfo ";
		sql +="where titlebar.createorID = userinfo.userID AND titlebarID=? ";
		String[] param = {bar.getBarID()};
		ResultSet rs = AccessDbUtil.executeQueryDLV(sql, param);
		Bar bar1 = null;
		
		try {
			while(rs.next())
			{
				bar1 = new Bar();
				bar1.setBarName(rs.getString("titleBarName"));
				bar1.setCreateDate(rs.getString("createDate"));
				bar1.setYxx(rs.getString("yxxName"));
				int barid = rs.getInt("titleBarID");
				bar1.setBarID(String.valueOf(barid));
				int createorID = rs.getInt("createorID");
				bar1.setCreateorID(String.valueOf(createorID));
				bar1.setCreateorName(rs.getString("userRealName"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return bar1;
		// TODO Auto-generated method stub
		
	}
}

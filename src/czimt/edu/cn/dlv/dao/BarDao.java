package czimt.edu.cn.dlv.dao;

import java.util.List;

import czimt.edu.cn.dlv.entity.Bar;

public interface BarDao {
	//bar add method
	public int barAdd(Bar bar);
	
	//bar delete method
	public int barDel(Bar bar);
	
	//bar edit method
	public int barEdit(Bar bar);
	
	//
	public List barSelect(Bar bar);
	
	public Bar barFindByBarid (Bar bar);

}

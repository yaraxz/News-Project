package czimt.edu.cn.dlv.service;

import java.util.List;

import czimt.edu.cn.dlv.entity.Bar;

public interface BarService {
	
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

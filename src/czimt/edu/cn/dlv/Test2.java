package czimt.edu.cn.dlv;
import java.util.List;

import czimt.edu.cn.dlv.entity.Bar;
import czimt.edu.cn.dlv.service.BarService;
import czimt.edu.cn.dlv.service.impl.BarServiceImpl;

public class Test2 {
	public static void main(String[]args){
		BarService barservice = new BarServiceImpl();
		List list = barservice.barSelect(null);
		for(int i=0;i<list.size();i++)
		{
			Bar bar = (Bar) list.get(i);
			System.out.println(
					"barID:" + bar.getBarID()+","+
					"barName:" + bar.getCreateDate()+","+
					"createDate:" + bar.getCreateDate()+","+
					"createorID:" + bar.getCreateorID()+","+
					"createorName" + bar.getCreateorName()+","+
					"YXX:" + bar.getYxx()+","
					);
					//bar.getBarName()+","+ bar.getCreateDate()+","+bar.getBarID());
		}
		/*Bar bar = new Bar();
		bar.setBarName("yyyy");
		bar.setCreateorID("6");
		bar.setCreateDate("2023-07-13");
		bar.setYxx("0");
		int rtn = barservice.barAdd(bar);
		if(rtn>0)
		{
			System.out.println("login success");
		}else 
		{
			System.out.println("login fail");
		}*/
		/*bar.setBarID("4");
		int rtn = barservice.barDel(bar);
			if(rtn>0){
				System.out.println("delete success");
			}else{
				System.out.println("delete fail");
			}
			
			;*/
			//Bar bar = new Bar();
		/*bar.setBarName("LUHANN");
		bar.setBarID("1");
		int rtn = barservice.barEdit(bar);
		if(rtn>0)
		{
			System.out.println("update success");
		}else{
			System.out.println("update fail");
		}*/
		/*Bar bar = new Bar();
		bar.setBarName("yyyy");
		bar.setCreateDate("2023-07-13");
		bar.setCreateorID("6");
		bar.setYxx("0");
		int rtn = barservice.barAdd(bar);
		if(rtn>0)
		{
			System.out.println("success insert");
		}else{
			System.out.println("fail");
		}
		*/
		

	}

}

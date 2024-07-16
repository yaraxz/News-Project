package czimt.edu.cn.dlv.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Common {
	public static String getCurrentDate(){
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		String strCurrentDate = sf.format(new Date());
		return strCurrentDate;
	}

}

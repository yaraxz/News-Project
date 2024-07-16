package czimt.edu.cn.dlv.dao.impl;

import czimt.edu.cn.dlv.dao.PicUploadDao;
import czimt.edu.cn.dlv.util.AccessDbUtil;

public class PicUploadDaoImpl implements PicUploadDao {

	public int savePicToDB(String fileName, String newsid) {
		// TODO Auto-generated method stub
		String sql = "update newsContent set picPath = ? where newID=?";
		String[] param = {fileName,newsid};
		int rtn = AccessDbUtil.executeUpdateDLV(sql, param);
		return rtn ;
		
	}

}

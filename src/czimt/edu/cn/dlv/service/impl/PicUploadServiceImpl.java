package czimt.edu.cn.dlv.service.impl;

import czimt.edu.cn.dlv.dao.PicUploadDao;
import czimt.edu.cn.dlv.dao.impl.PicUploadDaoImpl;
import czimt.edu.cn.dlv.service.PicUploadService;

public class PicUploadServiceImpl implements PicUploadService {

	public int savePicToDB(String fileName, String newsid) {
		// TODO Auto-generated method stub
		PicUploadDao picuploaddao = new PicUploadDaoImpl();
		return picuploaddao.savePicToDB(fileName, newsid);
	}

}

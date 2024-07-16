package czimt.edu.cn.dlv.service.impl;

import java.util.List;


import czimt.edu.cn.dlv.dao.UserDao;
import czimt.edu.cn.dlv.dao.impl.UserDaoImpl;
import czimt.edu.cn.dlv.entity.UserInfo;
import czimt.edu.cn.dlv.service.UserService;


public class UserServiceImpl implements UserService {
	
	public UserInfo UserLogin(UserInfo user) {
		
		// TODO Auto-generated method stub
		UserDao userDao = new UserDaoImpl();
		return userDao.UserLogin(user);
	}

	public List findUser(UserInfo user) {
		// TODO Auto-generated method stub
		UserDao userDao = new UserDaoImpl();
		return userDao.findUser(user);
	}

	public int updatePass(UserInfo user,String oldpassword) {
		// TODO Auto-generated method stub
		UserDao userDao = new UserDaoImpl();
		return userDao.updatePass(user,oldpassword);
	}

	public int userRegist(UserInfo user) {
		// TODO Auto-generated method stub
		UserDao userDao = new UserDaoImpl();
		return userDao.userRegist(user);
	}

	/**
	 * @param args
	 */
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	public int deleteUser(UserInfo user) {
		// TODO Auto-generated method stub
		UserDao userDao = new UserDaoImpl();
		return userDao.deleteUser(user);
	}

}

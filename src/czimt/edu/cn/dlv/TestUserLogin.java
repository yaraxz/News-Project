package czimt.edu.cn.dlv;

import czimt.edu.cn.dlv.entity.UserInfo;
import czimt.edu.cn.dlv.service.UserService;
import czimt.edu.cn.dlv.service.impl.UserServiceImpl;

public class TestUserLogin {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		 
		UserService userService = new UserServiceImpl();
		UserInfo user = new UserInfo();
		user.setUserLoginName("shl");
		user.setUserPassword("123");
		UserInfo userLogined = userService.UserLogin(user);
		if(userLogined != null){
			System.out.println( userLogined.getUserRealName()+ "login succes");
		}else{
			System.out.println("login fail");
		}
	}

}

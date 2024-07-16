package czimt.edu.cn.dlv;



import java.util.List;

import czimt.edu.cn.dlv.entity.UserInfo;
import czimt.edu.cn.dlv.service.UserService;
import czimt.edu.cn.dlv.service.impl.UserServiceImpl;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		UserService userService = new UserServiceImpl();
		UserInfo user = new UserInfo();
		/*user.setUserPassword("WELCOME");
		user.setUserID("2");
		int rtn = userService.updatePass(user);
		if(rtn>0)
		{
			System.out.println("update success");
		}else{
			System.out.println("update fail");
		}*/
		/*user.setUserRealName("lisi");
		user.setUserLoginName("ls");
		user.setUserPassword("9999");
		user.setRegDate("2023-08-13");
		int rtn = userService.userRegist(user);
		if(rtn>0)
		{
			System.out.println("login success");
		}else 
		{
			System.out.println("login fail");
		}*/
		
		
		/*user.setUserID("3");
		userService.deleteUser(user);
		int rtn = userService.userRegist(user);
		if(rtn>0)
		{
			System.out.println("delete success");
		}else 
		{
			System.out.println("delete fail");
		}*/
		
		
		/*user.setUserPassword("WELCOME");
		user.setUserLoginName("shl");
		UserInfo userlogined = userService.UserLogin(user);
		if(userlogined!=null)
		{
			System.out.println("login success, your name is:"+ userlogined.getUserRealName());
		}else{
			System.out.println("login fail");
		}*/
		
		/*List list = userService.findUser(null);
		for (int i = 0; i<list.size();i++)
		{
			UserInfo user2 = (UserInfo) list.get(i);
			System.out.println("select user list : "+ user2.getUserRealName());
	}*/
		/*List list = barSelect.barSelect(null);
		for (int i = 0; i<list.size();i++)
		{
			BarDao titlebar = (barSelect) list.get(i);
			System.out.println("select user list : "+ titlebar.getTitleBarID());
		}*/
	}
		}
	 


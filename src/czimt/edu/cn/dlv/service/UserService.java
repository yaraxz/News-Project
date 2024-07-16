package czimt.edu.cn.dlv.service;

import java.util.List;


import czimt.edu.cn.dlv.entity.UserInfo;

public interface UserService {
	
		/*	
			user Logined method
			param : user
			return : UserInfo
		*/	
			public UserInfo UserLogin(UserInfo user);
			public int userRegist (UserInfo user);
			public int updatePass (UserInfo user, String oldpassword);
			public List findUser(UserInfo user);
			public int deleteUser (UserInfo user);
}


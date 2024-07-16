package czimt.edu.cn.dlv.dao;

import java.util.List;


import czimt.edu.cn.dlv.entity.UserInfo;

public interface UserDao {
/*	
	user Logined method
	param : user
	return : UserInfo
*/	
	public UserInfo UserLogin(UserInfo user);
	/*	
	user regist
	param : user
	return : int
*/	
	public int userRegist(UserInfo user);
	/*	
	update userPassword
	param : user
	return : int
*/	
	public int updatePass(UserInfo user,String oldpassword);
	/*	
	query user list
	param : user
	return : UserList
*/	
	public List findUser(UserInfo user);
	
	public int deleteUser(UserInfo user);

}

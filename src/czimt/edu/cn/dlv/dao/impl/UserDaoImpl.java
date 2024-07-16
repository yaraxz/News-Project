package czimt.edu.cn.dlv.dao.impl;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import czimt.edu.cn.dlv.dao.UserDao;
import czimt.edu.cn.dlv.entity.UserInfo;
import czimt.edu.cn.dlv.util.AccessDbUtil;

public class UserDaoImpl implements UserDao {

	public UserInfo UserLogin(UserInfo user) {
		// TODO Auto-generated method stub
		/*String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/newssystem?characterEncoding=utf8";
		String name = "root";
		String password= "";
		Connection conn = null;
		ResultSet rtn = null;
		UserInfo userLogined = null;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, name, password);
			String sql ="select * from userinfo where userPassword =? and userLoginName=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserPassword());
			pstmt.setString(2, user.getUserLoginName());
			rtn = pstmt.executeQuery();
			
			while(rtn.next())
			{
				userLogined = new UserInfo();
				userLogined.setUserRealName(rtn.getString("userRealName"));
				userLogined.setUserLoginName(rtn.getString("userLoginName"));
				userLogined.setTel(rtn.getString("tel"));
				userLogined.setFimallyAddress(rtn.getString("fimallyAddress"));
				userLogined.setRegDate(rtn.getString("RegDate"));
				userLogined.setSex(rtn.getString("sex"));
				userLogined.setEmail(rtn.getString("email"));
				userLogined.setBirth(rtn.getString("birth"));
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		String sql ="select * from userinfo where userPassword =? and userLoginName=?";
		String[] param = {
				user.getUserPassword(),
				user.getUserLoginName()
		};
		ResultSet rs = AccessDbUtil.executeQueryDLV(sql, param);
		UserInfo userlogined = null;
		try{
		while(rs.next())
		{
			userlogined = new UserInfo();
			userlogined.setUserID(String.valueOf(rs.getInt("userID")));
			userlogined.setUserRealName(rs.getString("userRealName"));
			userlogined.setUserLoginName(rs.getString("userLoginName"));
			userlogined.setTel(rs.getString("tel"));
			userlogined.setFimallyAddress(rs.getString("fimallyAddress"));
			userlogined.setRegDate(rs.getString("RegDate"));
			userlogined.setSex(rs.getString("sex"));
			userlogined.setEmail(rs.getString("email"));
			userlogined.setBirth(rs.getString("birth"));
		}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return userlogined;
	}

	public List findUser(UserInfo user) {
		// TODO Auto-generated method stub
		
		/*String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/newssystem?characterEncoding=utf8";
		String name = "root";
		String password= "";
		Connection conn = null;
		ResultSet rtn = null;
		UserInfo userLogined = null;
		List list = new ArrayList();
		
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, name, password);
			String sql ="select * from userinfo";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			//pstmt.setString(1, user.getUserPassword());
			//pstmt.setString(2, user.getUserLoginName());
			rtn = pstmt.executeQuery();
			
			
			while(rtn.next())
			{
				userLogined = new UserInfo();
				userLogined.setUserRealName(rtn.getString("userRealName"));
				userLogined.setUserLoginName(rtn.getString("userLoginName"));
				userLogined.setTel(rtn.getString("tel"));
				userLogined.setFimallyAddress(rtn.getString("fimallyAddress"));
				userLogined.setRegDate(rtn.getString("RegDate"));
				userLogined.setSex(rtn.getString("sex"));
				userLogined.setEmail(rtn.getString("email"));
				userLogined.setBirth(rtn.getString("birth"));
				list.add(userLogined);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		String sql ="select * from userinfo";
		String[] param = null;
		
		ResultSet rs = AccessDbUtil.executeQueryDLV(sql, param);
		UserInfo userlogined = null;
		List list = new ArrayList();
		try{
		while(rs.next())
		{
			userlogined = new UserInfo();
			userlogined.setUserRealName(rs.getString("userRealName"));
			userlogined.setUserLoginName(rs.getString("userLoginName"));
			userlogined.setTel(rs.getString("tel"));
			userlogined.setFimallyAddress(rs.getString("fimallyAddress"));
			userlogined.setRegDate(rs.getString("RegDate"));
			userlogined.setSex(rs.getString("sex"));
			userlogined.setEmail(rs.getString("email"));
			userlogined.setBirth(rs.getString("birth"));
			list.add(userlogined);
		}
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		
		return list;
	}


	public int updatePass(UserInfo user,String oldpassword) {
		// TODO Auto-generated method stub
/*		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/newssystem";
		String name = "root";
		String password= "";
		Connection conn = null;
		int rtn = 0;
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, name, password);
			String sql ="update userinfo set userPassword =? where userid=?";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getUserPassword());
			pstmt.setString(2, user.getUserID());
			rtn = pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		//AccessDbUtil util = new AccessDbUtil();
		String sql ="update userinfo set userPassword =? where userid=? and userpassword=?";
		String[] param = {
				user.getUserPassword(),
				user.getUserID(),
				oldpassword
		};
		return AccessDbUtil.executeUpdateDLV(sql, param);
		//return rtn;
	}
	

	public int userRegist(UserInfo user) {
		// TODO Auto-generated method stub

			// TODO Auto-generated method stub
			/*String driver = "com.mysql.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/newssystem";
			String name = "root";
			String password= "";
			Connection conn = null;
			int rtn = 0;
			try {
				Class.forName(driver);
				conn = DriverManager.getConnection(url, name, password);
				String sql ="insert into userinfo(userRealName,userLoginName,userPassword,regDate)values(?,?,?,?)";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, user.getUserRealName());
				pstmt.setString(2, user.getUserLoginName());
				pstmt.setString(3, user.getUserPassword());
				pstmt.setString(4, user.getRegDate());
				rtn = pstmt.executeUpdate();
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}*/
			
		//AccessDbUtil util = new AccessDbUtil();
		String sql ="insert into userinfo(userRealName,userLoginName,userPassword,regDate,sex,birth,fimallyAddress,email,tel)values(?,?,?,?,?,?,?,?,?)";
		String[] param = {
				user.getUserRealName(),
				user.getUserLoginName(),
				user.getUserPassword(),
				user.getEmail(),
				user.getSex(),
				user.getTel(),
				user.getBirth(),
				user.getFimallyAddress(),
				user.getRegDate()
		};
		return AccessDbUtil.executeUpdateDLV(sql, param);
		
		
	}
	public int deleteUser(UserInfo user) {
		// TODO Auto-generated method stub
		String sql ="delete from userinfo where userid = ?";
		String[] param = {
				user.getUserID()
		};
		return AccessDbUtil.executeUpdateDLV(sql, param);
		
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	

}

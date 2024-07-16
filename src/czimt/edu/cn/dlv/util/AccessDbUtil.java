package czimt.edu.cn.dlv.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccessDbUtil {
	
		/*	
			
			
		*/
			
			public static Connection getConn()
			{
				String driver = "com.mysql.jdbc.Driver";
				String url = "jdbc:mysql://localhost:3306/newssystem";
				String name = "root";
				String password= "";
				Connection conn = null;
				try {
					Class.forName(driver);
					conn = DriverManager.getConnection(url, name, password);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return conn;
			}

			public static int executeUpdateDLV(String sql, String[] param)
			{
				int rtn = 0;
				try {
					Connection conn = getConn();
					PreparedStatement pstmt = conn.prepareStatement(sql);
					if(param !=null)
					{
						for(int i=0;i<param.length;i++)
						{
							pstmt.setString(i+1, param[i]);

						}
						
					}
					rtn = pstmt.executeUpdate();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			return rtn;	
			}

			public static ResultSet executeQueryDLV(String sql ,String[] param)
			{
				ResultSet rtn = null;
				try {
					Connection conn = getConn();
					PreparedStatement pstmt = conn.prepareStatement(sql);
					if(param !=null)
					{
						for(int i=0;i<param.length;i++)
						{
							pstmt.setString(i+1, param[i]);

						}
						
					}
					rtn = pstmt.executeQuery();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return rtn;
				
			}
		}
			
			
			
			

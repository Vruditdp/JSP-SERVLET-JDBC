package com.bunty.dao;
import java.sql.*;

public class SignUpDao {

	
	
	public SignUpDao(String uname, String pass)
	{
		String sql = "insert into login (uname, pass) values(?,?);";
		
		String url = "jdbc:mysql://localhost:3306/vd";
		String username = "root";
		String password = "";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			int rs = st.executeUpdate(sql);
			//rs.next();
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public boolean check(String uname, String pass)
	{
		
		String sqls = "select * from login where uname=? and pass=?";
		String url = "jdbc:mysql://localhost:3306/vd";
		String username = "root";
		String password = "";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sqls);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs = st.executeQuery();
			if(rs.next())
			{
				return true;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return false;
	}
}

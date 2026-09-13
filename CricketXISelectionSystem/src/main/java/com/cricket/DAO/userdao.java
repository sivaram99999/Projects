package com.cricket.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cricket.modle.loginmodle;
import com.cricket.modle.registermodle;
import com.cricket.utility.DBConnection;

public class userdao {
	Connection con = null;
	String Status = "fail";
	
	public String registeruser(registermodle rm) {
		try {
			con= DBConnection.getConnection();
			String sql = "insert into users values (?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, rm.getUsername());
			ps.setString(2, rm.getFirstname());
			ps.setString(3, rm.getLastname());
			ps.setString(4, rm.getEmail());
			ps.setString(5, rm.getUserrole());
			ps.setString(6, rm.getPassword());
			int n = ps.executeUpdate();
			if(n>0) {
				Status ="Success";
			}
		}catch(Exception e) {
			System.out.println(e);
		}
		
		return Status;
		
	}
	
	
	public String loginuser(loginmodle lm) {
		
		try {
			con =DBConnection.getConnection();
			String sql = "select * from users where username =? and password= ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, lm.getUsername());
			ps.setString(2, lm.getPassword());
			
			ResultSet rs = ps.executeQuery();
			int count = 0;
			while(rs.next()) {
				count++;
			}
			if(count>0) {
				Status = "Success";
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
		
		return Status;
		
	}
	
	
	

}

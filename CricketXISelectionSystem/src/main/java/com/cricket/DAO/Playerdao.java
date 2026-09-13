package com.cricket.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cricket.modle.Playerinfomodle;
import com.cricket.utility.DBConnection;

public class Playerdao {
	Connection con  = null;
	String Status = "fail";
	
	public List<Playerinfomodle> getall() {
		List<Playerinfomodle> list = new ArrayList<>();
		try{
			con = DBConnection.getConnection();
			 PreparedStatement ps = con.prepareStatement("select * from players");
			 
			 ResultSet rs = ps.executeQuery();
			 while (rs.next()) {
				 Playerinfomodle pm =  new Playerinfomodle();
				 pm.setPlayerId(rs.getInt(1));
				 pm.setFirstName(rs.getString(2));
				 pm.setLastName(rs.getString(3));
				 pm.setAge(rs.getInt(4));
				 pm.setCity(rs.getString(5));
				 pm.setRole(rs.getString(6));
				 pm.setBatting_style(rs.getString(7));
				 pm.setBowling_style(rs.getString(8));
				 pm.setMatches(rs.getInt(9));
				 pm.setRuns(rs.getInt(10));
				 pm.setWickets(rs.getInt(11));
				 pm.setBalls_faced(rs.getInt(12));
				 pm.setBalls_bowled(rs.getInt(13));
				 pm.setRuns_conceded(rs.getInt(14));
				 pm.setStrike_rate(rs.getDouble(15));
				 pm.setEconomy_rate(rs.getDouble(16));
				 pm.setFitness_status(rs.getInt(17));
				 pm.setUsername(rs.getString(18));
				 list.add(pm);
				 				 
			 }
			 
		}catch(Exception e) {
			System.out.println(e);
		}
		
		
		return list;
	}
	
	
	
	public String addplayers(Playerinfomodle pm) {

	    try {

	        con = DBConnection.getConnection();

	        String sql = "INSERT INTO players "
	                + "(firstname, lastname, age, city, role, battingstyle, bowlingstyle, "
	                + "matches, runs, wickets, ballsfaced, ballsbowled, runsconceded, fitness, username) "
	                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

	        PreparedStatement ps = con.prepareStatement(sql);

	        ps.setString(1, pm.getFirstName());
	        ps.setString(2, pm.getLastName());
	        ps.setInt(3, pm.getAge());
	        ps.setString(4, pm.getCity());
	        ps.setString(5, pm.getRole());
	        ps.setString(6, pm.getBatting_style());
	        ps.setString(7, pm.getBowling_style());
	        ps.setInt(8, pm.getMatches());
	        ps.setInt(9, pm.getRuns());
	        ps.setInt(10, pm.getWickets());
	        ps.setInt(11, pm.getBalls_faced());
	        ps.setInt(12, pm.getBalls_bowled());
	        ps.setInt(13, pm.getRuns_conceded());
	        ps.setInt(14, pm.getFitness_status());

	        // Logged-in user
	        ps.setString(15, pm.getUsername());

	        int n = ps.executeUpdate();

	        if (n > 0) {

	            CallableStatement cs =
	                    con.prepareCall("{call calculate_rates()}");

	            cs.execute();

	            Status = "Success";

	            cs.close();
	        }

	        ps.close();

	    } catch (Exception e) {

	        e.printStackTrace();

	    }

	    return Status;
	}
	
	public List<Playerinfomodle> getplayerbyuser(String username) {
		List<Playerinfomodle> list = new ArrayList<>();
		try{
			con = DBConnection.getConnection();
			 PreparedStatement ps = con.prepareStatement("select * from players where username=?");
			 ps.setString(1, username );			 
			 ResultSet rs = ps.executeQuery();
			 while (rs.next()) {
				 Playerinfomodle pm =  new Playerinfomodle();
				 pm.setPlayerId(rs.getInt(1));
				 pm.setFirstName(rs.getString(2));
				 pm.setLastName(rs.getString(3));
				 pm.setAge(rs.getInt(4));
				 pm.setCity(rs.getString(5));
				 pm.setRole(rs.getString(6));
				 pm.setBatting_style(rs.getString(7));
				 pm.setBowling_style(rs.getString(8));
				 pm.setMatches(rs.getInt(9));
				 pm.setRuns(rs.getInt(10));
				 pm.setWickets(rs.getInt(11));
				 pm.setBalls_faced(rs.getInt(12));
				 pm.setBalls_bowled(rs.getInt(13));
				 pm.setRuns_conceded(rs.getInt(14));
				 pm.setStrike_rate(rs.getDouble(15));
				 pm.setEconomy_rate(rs.getDouble(16));
				 pm.setFitness_status(rs.getInt(17));
				 pm.setUsername(rs.getString(18));
				 list.add(pm);
				 				 
			 }
			 
		}catch(Exception e) {
			System.out.println(e);
		}
		
		
		return list;
	}

	
	

}

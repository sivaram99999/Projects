package com.cricket.Service;

import java.util.ArrayList;
import java.util.List;

import com.cricket.DAO.Playerdao;
import com.cricket.modle.Playerinfomodle;

public class Selection_Service {
	Playerdao pd = new Playerdao();
	
	
	public List<Playerinfomodle> selectBatsmen() {

	    List<Playerinfomodle> players = pd.getall();
	    List<Playerinfomodle> selectedBatsmen = new ArrayList<>();

	    List<Playerinfomodle> batsmen = new ArrayList<>();
	    List<Double> scores = new ArrayList<>();

	    for (Playerinfomodle p : players) {

	        if (p.getRole().equalsIgnoreCase("Batsman")
	                && p.getFitness_status() >= 75
	                && p.getMatches() >= 20) {

	            double score =
	                    (p.getMatches() / 100.0) * 20
	                  + (p.getRuns() / 5000.0) * 40
	                  + (p.getFitness_status() / 100.0) * 10
	                  + (p.getStrike_rate() / 200.0) * 30;

	            batsmen.add(p);
	            scores.add(score);

	        }
	    }

	    int top = Math.min(4, batsmen.size());

	 

	    for (int i = 0; i < top; i++) {

	        int maxIndex = 0;

	        for (int j = 1; j < scores.size(); j++) {

	            if (scores.get(j) > scores.get(maxIndex)) {
	                maxIndex = j;
	            }
	        }

	        Playerinfomodle p = batsmen.get(maxIndex);
	        double maxScore = scores.get(maxIndex);

	       
	        selectedBatsmen.add(p);

	        batsmen.remove(maxIndex);
	        scores.remove(maxIndex);
	    }
	    return selectedBatsmen;
	}
	
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	public List<Playerinfomodle> selectBowlers() {
		List<Playerinfomodle> selectedBowler = new ArrayList<>();
		List<Playerinfomodle> players = pd.getall();
		
		List<Playerinfomodle> bowlers = new ArrayList<>();
	    List<Double> scores = new ArrayList<>();
	    
	    for (Playerinfomodle p : players) {

	        if (p.getRole().equalsIgnoreCase("Bowler")
	                && p.getFitness_status() >= 75
	                && p.getMatches() >= 20) {
	        	
	        double	score =
				        (p.getMatches() / 100.0) * 20
				      + (p.getWickets() / 200.0) * 40
				      + ((10.0 - p.getEconomy_rate()) / 7.0) * 30
				      + (p.getFitness_status() / 100.0) * 10;
	        	
	        
	        	
	        	bowlers.add(p);
	        	scores.add(score);

	        	
	        }
	        
	        }
	    
	    int top = Math.min(3, bowlers.size());

	   

	    for (int i = 0; i < top; i++) {

	        int maxIndex = 0;

	        for (int j = 1; j < scores.size(); j++) {

	            if (scores.get(j) > scores.get(maxIndex)) {
	                maxIndex = j;
	            }
	        }

	        Playerinfomodle p = bowlers.get(maxIndex);
	        double maxScore = scores.get(maxIndex);

	     
	        selectedBowler.add(p);

	        bowlers.remove(maxIndex);
	        scores.remove(maxIndex);
	    } 
	    return selectedBowler;
	}
	
	///111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
	
	
public List<Playerinfomodle> selectAllRounders() {
	
	List<Playerinfomodle> selectedAllRounder =new ArrayList<>(); 
	List<Playerinfomodle> players =pd.getall();
	List<Playerinfomodle> allrounder = new ArrayList<>();
    List<Double> scores = new ArrayList<>();
    
    for(Playerinfomodle p  : players) {
    	
    	  if (p.getRole().equalsIgnoreCase("All-Rounder")
	                && p.getFitness_status() >= 75
	                && p.getMatches() >= 20) {
    		  
    		double score = (p.getWickets() / 200.0) * 30
				      + ((10.0 - p.getEconomy_rate()) / 7.0) * 15
				      + (p.getFitness_status() / 100.0) * 10
				      + (p.getStrike_rate() / 200.0) * 15
				      + (p.getRuns() / 5000.0) * 30;
    		  

        	allrounder.add(p);
        	scores.add(score);
        		    		  
    	  }
    }
    
    
    int top = Math.min(3, allrounder.size());

    

    for (int i = 0; i < top; i++) {

        int maxIndex = 0;

        for (int j = 1; j < scores.size(); j++) {

            if (scores.get(j) > scores.get(maxIndex)) {
                maxIndex = j;
            }
        }

        Playerinfomodle p = allrounder.get(maxIndex);
        double maxScore = scores.get(maxIndex);
        selectedAllRounder.add(p);

        allrounder.remove(maxIndex);
        scores.remove(maxIndex);
    } 		
    return selectedAllRounder;
}

///111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111


public List<Playerinfomodle> selectWicketKeeper() {
	
	List<Playerinfomodle> selectedWicketKeeper = new ArrayList<>();
	List <Playerinfomodle>players = pd.getall() ;
	List<Playerinfomodle>wicketkeeper = new ArrayList<>();
	 List<Double> scores = new ArrayList<>();
	 
	 for(Playerinfomodle p : players ) {
			  if (p.getRole().equalsIgnoreCase("Wicket-Keeper")
		                && p.getFitness_status() >= 75
		                && p.getMatches() >= 20) {
	    		  
	    		double 	score = 
						
						+(p.getMatches()/100.0)*25
						+(p.getFitness_status()/100.0)*10
						+(p.getStrike_rate()/200.0)*25
						+(p.getRuns()/5000.0)*40;
	    		  

	        	wicketkeeper.add(p);
	        	scores.add(score);
		            
	    		  
	    	  }
	    }
	    
	    
	    int top = Math.min(1, wicketkeeper.size());


	    for (int i = 0; i < top; i++) {

	        int maxIndex = 0;

	        for (int j = 1; j < scores.size(); j++) {

	            if (scores.get(j) > scores.get(maxIndex)) {
	                maxIndex = j;
	            }
	        }

	        Playerinfomodle p = wicketkeeper.get(maxIndex);
	        double maxScore = scores.get(maxIndex);

	       
	        selectedWicketKeeper.add(p);

	        wicketkeeper.remove(maxIndex);
	        scores.remove(maxIndex);
	    } 	
	    return selectedWicketKeeper;
	 }

///111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111
	 
public List<Playerinfomodle> XI_selection() {
	
	 List<Playerinfomodle> playing11 = new ArrayList<>();
	 List<Playerinfomodle> batsmen = selectBatsmen();
	    List<Playerinfomodle> allRounders = selectAllRounders();
	    List<Playerinfomodle> bowlers = selectBowlers();
	    List<Playerinfomodle> wicketKeeper = selectWicketKeeper();
	    
	    playing11.addAll(batsmen);
	    playing11.addAll(allRounders);
	    playing11.addAll(bowlers);
	    playing11.addAll(wicketKeeper);
	    
	
	    int count = 1;
	    for (Playerinfomodle p : playing11) {

	      

	        count++;
	    }
	    Playerinfomodle captain = selectCaptain(playing11);

	    Playerinfomodle viceCaptain = selectViceCaptain(playing11, captain);
	    

	    return playing11;
	}
	    

	
public Playerinfomodle selectCaptain(List<Playerinfomodle> playing11) {

	Playerinfomodle captain = null;
    double highestScore = -1;

    for (Playerinfomodle p : playing11) {

        double score =
                (p.getMatches() / 100.0) * 20
              + (p.getRuns() / 5000.0) * 40
              + (p.getFitness_status() / 100.0) * 10
              + (p.getStrike_rate() / 200.0) * 30;

        if (score > highestScore) {
            highestScore = score;
            captain = p;
        }
    }

    return captain;
}


public Playerinfomodle selectViceCaptain(List<Playerinfomodle> playing11, Playerinfomodle captain) {

	Playerinfomodle viceCaptain = null;
    double highestScore = -1;

    for (Playerinfomodle p : playing11) {

        if (p.getPlayerId() == captain.getPlayerId()) {
            continue;
        }

        double score =
                (p.getMatches() / 100.0) * 20
              + (p.getRuns() / 5000.0) * 40
              + (p.getFitness_status() / 100.0) * 10
              + (p.getStrike_rate() / 200.0) * 30;

        if (score > highestScore) {
            highestScore = score;
            viceCaptain = p;
        }
    }

    return viceCaptain;
}
}

	
	


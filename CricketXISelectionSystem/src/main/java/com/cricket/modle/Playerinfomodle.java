package com.cricket.modle;

import java.sql.Date;

public class Playerinfomodle {


	    private int playerId;
	    private String firstName;
	    private String lastName;
	    private int age;
	    private String address;
	    private String city;
	    private String role;
	    private String batting_style;
		private String bowling_style;
		private int matches;
		private int runs;
		private int wickets;
		private int balls_faced ;
		private int balls_bowled;
		private int runs_conceded;
		private String username;

		
		public Playerinfomodle(int playerId, String firstName, String lastName, int age, String address, String city,
				String role, String batting_style, String bowling_style, int matches, int runs, int wickets,
				int balls_faced, int balls_bowled, int runs_conceded, double strike_rate, double economy_rate,
				int fitness_status,String username) {
			super();
			this.playerId = playerId;
			this.firstName = firstName;
			this.lastName = lastName;
			this.age = age;
			this.address = address;
			this.city = city;
			this.role = role;
			this.batting_style = batting_style;
			this.bowling_style = bowling_style;
			this.matches = matches;
			this.runs = runs;
			this.wickets = wickets;
			this.balls_faced = balls_faced;
			this.balls_bowled = balls_bowled;
			this.runs_conceded = runs_conceded;
			this.strike_rate = strike_rate;
			this.economy_rate = economy_rate;
			this.fitness_status = fitness_status;
			this.username= username;
		}

		public Playerinfomodle(String firstName, String lastName, int age, String address, String city, String role,
				String batting_style, String bowling_style, int matches, int runs, int wickets, int balls_faced,
				int balls_bowled, int runs_conceded, int fitness_status,String username) {
			super();
			this.firstName = firstName;
			this.lastName = lastName;
			this.age = age;
			this.address = address;
			this.city = city;
			this.role = role;
			this.batting_style = batting_style;
			this.bowling_style = bowling_style;
			this.matches = matches;
			this.runs = runs;
			this.wickets = wickets;
			this.balls_faced = balls_faced;
			this.balls_bowled = balls_bowled;
			this.runs_conceded = runs_conceded;
			this.fitness_status = fitness_status;
			this.username= username;
		}

		public int getBalls_faced() {
			return balls_faced;
		}

		public void setBalls_faced(int balls_faced) {
			this.balls_faced = balls_faced;
		}

		public int getBalls_bowled() {
			return balls_bowled;
		}

		public void setBalls_bowled(int balls_bowled) {
			this.balls_bowled = balls_bowled;
		}

		public int getRuns_conceded() {
			return runs_conceded;
		}

		public void setRuns_conceded(int runs_conceded) {
			this.runs_conceded = runs_conceded;
		}




		private double strike_rate;
		private double economy_rate;
		private int fitness_status;
		

	    // Default Constructor
	    public Playerinfomodle() {
	    }

	    // Parameterized Constructor
	    public Playerinfomodle(int playerId, String firstName, String lastName,
	                      int age, String address, String city, String role) {
	        this.playerId = playerId;
	        this.firstName = firstName;
	        this.lastName = lastName;
	        this.age = age;
	        this.address = address;
	        this.city = city;
	        this.role = role;
	    }
	    

		public Playerinfomodle(String firstName, String lastName, int age,  String city, String role,
				String batting_style, String bowling_style, int matches, int runs, int wickets, int fitness_status) {
			super();
			this.firstName = firstName;
			this.lastName = lastName;
			this.age = age;
			this.city = city;
			this.role = role;
			this.batting_style = batting_style;
			this.bowling_style = bowling_style;
			this.matches = matches;
			this.runs = runs;
			this.wickets = wickets;
			this.fitness_status = fitness_status;
		}

	    // Getters and Setters

	    public int getPlayerId() {
	        return playerId;
	    }

	    public void setPlayerId(int playerId) {
	        this.playerId = playerId;
	    }

	    public String getFirstName() {
	        return firstName;
	    }

	    public void setFirstName(String firstName) {
	        this.firstName = firstName;
	    }

	    public String getLastName() {
	        return lastName;
	    }

	    public void setLastName(String lastName) {
	        this.lastName = lastName;
	    }

	    public int getAge() {
	        return age;
	    }

	    public void setAge(int age) {
	        this.age = age;
	    }

	    public String getAddress() {
	        return address;
	    }

	    public void setAddress(String address) {
	        this.address = address;
	    }

	    public String getCity() {
	        return city;
	    }

	    public void setCity(String city) {
	        this.city = city;
	    }

	    public String getRole() {
	        return role;
	    }

	    public void setRole(String role) {
	        this.role = role;
	    }
	    
	    public int getRuns() {
			return runs;
		}

		public void setRuns(int runs) {
			this.runs = runs;
		}
		
		public String getBatting_style() {
			return batting_style;
		}

		public void setBatting_style(String batting_style) {
			this.batting_style = batting_style;
		}

		public String getBowling_style() {
			return bowling_style;
		}

		public void setBowling_style(String bowling_style) {
			this.bowling_style = bowling_style;
		}

		public int getMatches() {
			return matches;
		}

		public void setMatches(int matches) {
			this.matches = matches;
		}

		public int getWickets() {
			return wickets;
		}

		public void setWickets(int wickets) {
			this.wickets = wickets;
		}

		public double getStrike_rate() {
			return strike_rate;
		}

		public void setStrike_rate(double strike_rate) {
			this.strike_rate = strike_rate;
		}

		public double getEconomy_rate() {
			return economy_rate;
		}

		public void setEconomy_rate(double economy_rate) {
			this.economy_rate = economy_rate;
		}

		public int getFitness_status() {
			return fitness_status;
		}

		public void setFitness_status(int fitness_status) {
			this.fitness_status = fitness_status;
		}

	    


		@Override
		public String toString() {
			return "Playerinfomodle [playerId=" + playerId + ", firstName=" + firstName + ", lastName=" + lastName
					+ ", age=" + age + ", address=" + address + ", city=" + city + ", role=" + role + ", batting_style="
					+ batting_style + ", bowling_style=" + bowling_style + ", matches=" + matches + ", runs=" + runs
					+ ", wickets=" + wickets + ", strike_rate=" + strike_rate + ", economy_rate=" + economy_rate
					+ ", fitness_status=" + fitness_status + ",username=" + username + "]";
		}

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

}

package com.cricket.modle;

public class registermodle {
	
	private String Username;
	private String firstname;
	private String lastname;
	private String email ;
	private String userrole;
	private String password;
	
	public registermodle() {}
	
	
	
	public registermodle(String username, String firstname, String lastname, String email, String userrole,
			String password) {
		super();
		Username = username;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.userrole = userrole;
		this.password = password;
	}



	@Override
	public String toString() {
		return "registermodle [Username=" + Username + ", firstname=" + firstname + ", lastname=" + lastname
				+ ", email=" + email + ", userrole=" + userrole + ", password=" + password + "]";
	}



	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserrole() {
		return userrole;
	}

	public void setUserrole(String userrole) {
		this.userrole = userrole;
	}
	

}

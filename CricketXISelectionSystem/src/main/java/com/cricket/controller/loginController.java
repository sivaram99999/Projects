package com.cricket.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.cricket.DAO.userdao;
import com.cricket.modle.Playerinfomodle;
import com.cricket.modle.loginmodle;

@WebServlet("/loginController")
public class loginController extends HttpServlet {
	//private static final long serialVersionUID = 1L;
       
    
    public loginController() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String userrole = request.getParameter("userrole");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		
		
		
		loginmodle lm = new loginmodle();
		lm.setUsername(username);
		lm.setPassword(password);
		lm.setUserrole(userrole);
		
		
		Playerinfomodle pm = new Playerinfomodle();
		
		pm.setFirstName(firstname);
		pm.setLastName(lastname);
		
		userdao ud = new userdao();
		String Status = ud.loginuser(lm);
		

		if (Status.equals("Success")) {
			
			 HttpSession session = request.getSession();

	           
	            session.setAttribute("username", username);
	            session.setAttribute("userrole", userrole);
	            session.setAttribute("firstname", firstname);
	            session.setAttribute("lastname", lastname);
	            

		    RequestDispatcher rd =
		            request.getRequestDispatcher("index.jsp");

		    rd.forward(request, response);

		} else {

		    System.out.println(" adding player failed");

		}

		
		
	}

}

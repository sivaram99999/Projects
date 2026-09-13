package com.cricket.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.cricket.DAO.userdao;
import com.cricket.modle.registermodle;

@WebServlet("/registerController")
public class registerController extends HttpServlet {
	//private static final long serialVersionUID = 1L;

    public registerController() {
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String Username = request.getParameter("username");
		String firstname= request.getParameter("firstname");
		String lastname= request.getParameter("lastname");
		String email = request.getParameter("email");
		String userrole = request.getParameter("userrole");
		String password = request.getParameter("password");
		
		registermodle rm = new registermodle();
		rm.setUsername(Username);
		rm.setFirstname(firstname);
		rm.setLastname(lastname);
		rm.setEmail(email);
		rm.setUserrole(userrole);
		rm.setPassword(password);
		
		userdao ud =new userdao();
		
		String Status = ud.registeruser(rm);
		
		if (Status.equals("Success")) {

		    RequestDispatcher rd =
		            request.getRequestDispatcher("login.jsp");

		    rd.forward(request, response);

		} else {
			
			 RequestDispatcher rd =
			            request.getRequestDispatcher("registation.jsp");

			    rd.forward(request, response);

		    System.out.println("registation failed");
		    

		}
		
		
		
		
	}

}

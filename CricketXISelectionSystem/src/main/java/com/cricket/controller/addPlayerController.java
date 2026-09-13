package com.cricket.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.cricket.DAO.Playerdao;
import com.cricket.modle.Playerinfomodle;

@WebServlet("/addPlayerController")
public class addPlayerController extends HttpServlet {

    public addPlayerController() {
        super();
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        // Get login session
        HttpSession session = request.getSession();

        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");

        int age = Integer.parseInt(
                request.getParameter("age"));

        String city = request.getParameter("city");
        String role = request.getParameter("role");

        String batting_style =
                request.getParameter("batting_style");

        String bowling_style =
                request.getParameter("bowling_style");

        int matches = Integer.parseInt(
                request.getParameter("matches"));

        int runs = Integer.parseInt(
                request.getParameter("runs"));

        int wickets = Integer.parseInt(
                request.getParameter("wickets"));

        int ballsfaced = Integer.parseInt(
                request.getParameter("ballsfaced"));

        int ballsbowled = Integer.parseInt(
                request.getParameter("ballsbowled"));

        int runsconceded = Integer.parseInt(
                request.getParameter("runsconceded"));

        int fitness_status = Integer.parseInt(
                request.getParameter("fitness_status"));


        // Create Player object
        Playerinfomodle pm = new Playerinfomodle();

        pm.setFirstName(firstName);
        pm.setLastName(lastName);
        pm.setAge(age);
        pm.setCity(city);
        pm.setRole(role);
        pm.setBatting_style(batting_style);
        pm.setBowling_style(bowling_style);
        pm.setMatches(matches);
        pm.setRuns(runs);
        pm.setWickets(wickets);
        pm.setBalls_faced(ballsfaced);
        pm.setBalls_bowled(ballsbowled);
        pm.setRuns_conceded(runsconceded);
        pm.setFitness_status(fitness_status);


        // Get username from login session
        String username =
                (String) session.getAttribute("username");

        pm.setUsername(username);


        // Add player
        Playerdao pd = new Playerdao();

        String status = pd.addplayers(pm);


        if (status.equals("Success")) {

            RequestDispatcher rd =
                    request.getRequestDispatcher("index.jsp");

            rd.forward(request, response);

        } else {

            System.out.println("Adding player failed");

        }
    }
}
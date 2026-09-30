<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import = "java.util.List, com.cricket.modle.Playerinfomodle, java.util.ArrayList, com.cricket.DAO.Playerdao" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">
        
         <style>

        html, body {
            height: 100%;
            margin: 0;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #071b12;
            color: white;
            display: flex;
            flex-direction: column;
        }

        /* ================= NAVBAR ================= */

        .navbar {
            background: rgba(0, 0, 0, 0.92) !important;
            backdrop-filter: blur(8px);
        }

        .navbar-brand {
            font-size: 24px;
            font-weight: bold;
        }

        .navbar-brand i {
            color: #ffc107;
        }

        .nav-link {
            color: white !important;
            font-weight: 500;
            margin-left: 10px;
            transition: 0.3s;
        }

        .nav-link:hover {
            color: #ffc107 !important;
        }
        
          /* ================= HERO ================= */

        .hero {
        

            background:
                linear-gradient(
                    rgba(0, 0, 0, 0.55),
                    rgba(0, 30, 15, 0.80)
                ),
                url("images/dhoni.gif");

            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;

            display: flex;
            align-items: flex-start;
            justify-content: center;

            text-align: center;
        }

        .hero-content {
            max-width: 900px;
            padding: 30px;
        }

        .hero h1 {
            font-size: clamp(20px, 7vw, 40px);
            font-weight: 600;
            text-transform: uppercase;
            text-shadow: 3px 3px 10px black;
        }

        .hero h1 span {
            color: #ffc107;
        }

        
        /* Table Container */
.table-container {
    width: 100%;
    overflow-x: auto;
    margin: 30px auto;
    padding: 10px;
}

/* Main Table */
.player-table {
    width: 100%;
    border-collapse: collapse;
    background: rgba(255, 255, 255, 0.95);
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 5px 20px rgba(0, 0, 0, 0.25);
}

/* Table Header */
.player-table thead {
    background: #064d2b;
    color: white;
}

.player-table th {
    padding: 14px 16px;
    text-align: center;
    font-size: 15px;
    font-weight: 600;
    border: 1px solid #ddd;
}

/* Table Body */
.player-table td {
    padding: 12px 16px;
    text-align: center;
    border: 1px solid #ddd;
    color: #222;
}

/* Alternate Rows */
.player-table tbody tr:nth-child(even) {
    background-color: #f2f7f4;
}

/* Hover Effect */
.player-table tbody tr:hover {
    background-color: #d9f0e2;
    transition: 0.3s;
}

/* Responsive */
@media (max-width: 768px) {
    .player-table {
        font-size: 13px;
    }

    .player-table th,
    .player-table td {
        padding: 8px 10px;
        white-space: nowrap;
    }
}
        
        </style>
        
        
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark sticky-top">

    <div class="container-fluid px-lg-5">

        <a class="navbar-brand" href="#">
            <i class="bi bi-trophy-fill"></i>
            Cricket XI
        </a>

        <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#mainNavbar">

            <span class="navbar-toggler-icon"></span>

        </button>

        <div class="collapse navbar-collapse" id="mainNavbar">

            <ul class="navbar-nav ms-auto">
            
             <li class="nav-item">
                    <a class="nav-link" href="dashbord.jsp" action  = "./dashbord.jsp">
                        Dashbord
                    </a>

                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">
                        Home
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#players">
                        Players
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#selection">
                        Selection
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#stats">
                        Statistics
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="about.jsp">
                        About
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp" action  = "./login.jsp">
                        Login
                    </a>
                </li>
                
               

            </ul>

        </div>

    </div>

</nav>


<section class="hero" id="home">

    <div class="hero-content">

        <h1>
            Eligible  <span>Players info</span>
        </h1>


    </div>
    


</section>

<%

List<Playerinfomodle> list = new ArrayList<>(); 
Playerinfomodle pm = new Playerinfomodle();
Playerdao pd=  new Playerdao();
list = pd.eligible_players();



%>
<div class="table-container">

<table  class="player-table" >

        <thead>
            <tr>
				<th>Player Id</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Age</th>
				<th>City</th>
				<th>Role</th>
				<th>Batting Style</th>
				<th>Bowling Style</th>
				<th>Matches</th>
				<th>Runs</th>
				<th>Wickets</th>
				<th>Balls Faced</th>
				<th>Balls Bowled</th>
				<th>Runs Conceded</th>
				<th> Strike Rate</th>
				<th>Economy Rate</th>
				<th>Fitness</th>
			</tr>
		</thead>
		
		 <tbody>
		 <% for(Playerinfomodle p : list){ %>
		 
            <tr>
            	<td><%=p.getPlayerId() %></td>
            	<td><%=p.getFirstName() %></td>
            	<td><%=p.getLastName() %></td>
            	<td><%=p.getAge() %></td>
            	<td><%=p.getCity() %></td>
            	<td><%=p.getRole() %></td>
            	<td><%=p.getBatting_style() %></td>
            	<td><%=p.getBowling_style() %></td>
            	<td><%=p.getMatches() %></td>
            	<td><%=p.getRuns()%></td>
            	<td><%=p.getWickets() %></td>
            	<td><%=p.getBalls_faced() %></td>
            	<td><%=p.getBalls_bowled() %></td>
            	<td><%=p.getRuns_conceded() %></td>
            	<td><%=p.getStrike_rate() %></td>
            	<td><%=p.getEconomy_rate() %></td>
            	<td><%=p.getFitness_status() %></td>
            	
            </tr>
            <%} %>
          </tbody>
          

</table>
</div>
</body>
</html>
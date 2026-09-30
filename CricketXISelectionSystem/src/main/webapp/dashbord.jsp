
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.List, com.cricket.modle.Playerinfomodle, java.util.ArrayList, com.cricket.DAO.Playerdao , com.cricket.DAO.userdao" %>
    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Dashboard - Cricket Selection System</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <style>

        body {
            background: #f4f7fb;
            font-family: Arial, sans-serif;
        }

        /* Navbar */
        .navbar {
            background: linear-gradient(90deg, #071952, #0B666A);
        }

        .navbar-brand {
            font-size: 24px;
            font-weight: bold;
            color: white !important;
        }

        .nav-link {
            color: white !important;
            margin-left: 10px;
        }

        .nav-link:hover {
            color: #ffd369 !important;
        }

        /* Dashboard */
        .dashboard-container {
            padding: 40px 20px;
        }

        .welcome {
            margin-bottom: 30px;
        }

        .welcome h2 {
            font-weight: bold;
            color: #071952;
        }

        /* User Card */
        .user-card {
            background: white;
            border-radius: 15px;
            padding: 25px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
            height: 100%;
        }

        .profile-icon {
            width: 80px;
            height: 80px;
            background: #071952;
            color: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 38px;
            margin-bottom: 15px;
        }

        .user-card h4 {
            color: #071952;
            font-weight: bold;
        }

        .user-info {
            margin-top: 20px;
        }

        .user-info p {
            margin-bottom: 12px;
        }

        .user-info i {
            color: #0B666A;
            margin-right: 8px;
        }

        /* Statistics */
        .stat-card {
            background: white;
            border-radius: 15px;
            padding: 25px;
            text-align: center;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .stat-icon {
            font-size: 40px;
            color: #0B666A;
        }

        .stat-number {
            font-size: 35px;
            font-weight: bold;
            color: #071952;
        }

        .stat-title {
            color: #777;
        }

        /* Players */
        .players-card {
            background: white;
            border-radius: 15px;
            padding: 25px;
            margin-top: 25px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .players-title {
            color: #071952;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .table thead {
            background: #071952;
            color: white;
        }

        .table th,
        .table td {
            vertical-align: middle;
            padding: 14px;
        }

        .badge-batsman {
            background: #198754;
        }

        .badge-bowler {
            background: #dc3545;
        }

        .badge-allrounder {
            background: #fd7e14;
        }

        .badge-wicketkeeper {
            background: #6f42c1;
        }

        /* Footer */
        footer {
            margin-top: 50px;
            background: #071952;
            color: white;
            text-align: center;
            padding: 20px;
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

<!-- ================= NAVBAR ================= -->

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


<!-- ================= DASHBOARD ================= -->

<%
String username = (String) session.getAttribute("username");
%>


<div class="container dashboard-container">

    <!-- Welcome -->

    <div class="welcome">

        <h2>
            Welcome, <%= username %> 👋
        </h2>

        <p class="text-muted">
            Manage your account and the players you have added.
        </p>

    </div>


    <div class="row g-4">

        <!-- ================= USER INFORMATION ================= -->

        <div class="col-lg-4">

            <div class="user-card">

                <div class="profile-icon">
                    <i class="bi bi-person"></i>
                </div>

                <h4>User Information</h4>

                <div class="user-info">

                    <p>
                        <i class="bi bi-person-fill"></i>
                        <strong>Username:</strong> <%= username %>
                    </p>

                
                    <p>
                        <i class="bi bi-shield-check"></i>
                        <strong>Account:</strong>
                        <span class="badge bg-success">Active</span>
                    </p>

                </div>

            </div>

        </div>


        <!-- ================= STATISTICS ================= -->
        
        <%
     username = (String) session.getAttribute("username");

    userdao ud = new userdao();

    int totalPlayers = 0;

    if (username != null) {
        totalPlayers = ud.no_of_playersaddedbyuser(username);
    }
%>

        <div class="col-lg-8">

            <div class="row g-4">

                <div class="col-md-6">

                    <div class="stat-card">

                        <div class="stat-icon">
                            <i class="bi bi-people-fill"></i>
                        </div>

                        <h2><%= totalPlayers %></h2>

                        <div class="stat-title">
                            Players Added
                        </div>

                    </div>

                </div>


                <div class="col-md-6">

                    <div class="stat-card">

                        <div class="stat-icon">
                            <i class="bi bi-trophy-fill"></i>
                        </div>

                        <div class="stat-number">
                            1
                        </div>

                        <div class="stat-title">
                            Teams Selected
                        </div>

                    </div>

                </div>

            </div>


            <!-- ================= QUICK ACTION ================= -->

            <div class="mt-4">

                <a href="addplayer.jsp"
                   class="btn btn-primary btn-lg">

                    <i class="bi bi-person-plus-fill"></i>
                    Add New Player

                </a>

            </div>

        </div>

    </div>


    <!-- ================= MY PLAYERS ================= -->

    <div class="players-card">

        <div class="d-flex justify-content-between align-items-center mb-3">

            <h4 class="players-title mb-0">

                <i class="bi bi-people-fill"></i>
                My Added Players

            </h4>

            <a href="addplayer.jsp"
               class="btn btn-success">

                <i class="bi bi-plus-circle"></i>
                Add Player

            </a>

        </div>
        
        


<%

List<Playerinfomodle> list = new ArrayList<>(); 
Playerinfomodle pm = new Playerinfomodle();
Playerdao pd=  new Playerdao();
list = pd.getplayerbyuser(username);



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
				<th colspan="2"> Action</th>
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
            	<td><a href=" modification.jsp">Edit</a></td>
            	<td><a href = " modification.jsp">Delete</a></td>
            	
            </tr>
            <%} %>
          </tbody>
          

</table>
</div>
      


<!-- ================= FOOTER ================= -->

<footer>

    <p class="mb-0">
        © 2026 Cricket Selection System |
        All Rights Reserved
    </p>

</footer>


<!-- Bootstrap JS -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>

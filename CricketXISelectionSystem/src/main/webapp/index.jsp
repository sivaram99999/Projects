<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@page import ="com.cricket.DAO.Playerdao,com.cricket.Service.Selection_Service  "  %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Cricket XI Selection System</title>

    <!-- Bootstrap 5 -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

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
            min-height: 600px;

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
            align-items: center;
            justify-content: center;

            text-align: center;
        }

        .hero-content {
            max-width: 900px;
            padding: 30px;
        }

        .hero h1 {
            font-size: clamp(40px, 7vw, 80px);
            font-weight: 800;
            text-transform: uppercase;
            text-shadow: 3px 3px 10px black;
        }

        .hero h1 span {
            color: #ffc107;
        }

        .hero p {
            font-size: 20px;
            color: #eeeeee;
            margin-top: 20px;
        }

        .hero-buttons {
            margin-top: 30px;
        }

        /* ================= SECTION ================= */

        .section {
            padding: 70px 0;
            background: #f4f6f5;
            color: #222;
        }

        .section-dark {
            background: #0b2117;
            color: white;
        }

        .section-title {
            text-align: center;
            margin-bottom: 45px;
        }

        .section-title h2 {
            font-weight: 700;
        }

        .section-title span {
            color: #198754;
        }

        /* ================= CARDS ================= */

        .feature-card {
            border: none;
            border-radius: 15px;
            padding: 30px;
            height: 100%;
            transition: 0.3s;
            box-shadow: 0 5px 20px rgba(0,0,0,0.10);
        }

        .feature-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.18);
        }

        .feature-icon {
            width: 65px;
            height: 65px;

            display: flex;
            align-items: center;
            justify-content: center;

            background: #198754;
            color: white;

            border-radius: 50%;

            font-size: 28px;

            margin-bottom: 20px;
        }

        /* ================= XI SECTION ================= */

        .xi-card {
            background: white;
            color: #222;
            border-radius: 15px;
            padding: 25px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.2);
        }

        .player {
            display: flex;
            align-items: center;
            justify-content: space-between;

            padding: 13px;
            margin-bottom: 10px;

            border-radius: 8px;
            background: #f1f3f2;
        }

        .player-number {
            width: 35px;
            height: 35px;

            background: #198754;
            color: white;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 50%;
            font-weight: bold;
        }

        /* ================= STATS ================= */

        .stat-box {
            background: rgba(255,255,255,0.08);
            padding: 30px;
            border-radius: 15px;
            text-align: center;
            height: 100%;
        }

        .stat-box i {
            font-size: 40px;
            color: #ffc107;
        }

        .stat-box h3 {
            font-size: 38px;
            margin-top: 15px;
        }

        /* ================= FOOTER ================= */

        footer {
            margin-top: auto;
            background: #020b06;
            padding: 30px 0;
            text-align: center;
        }

        footer a {
            color: #ffc107;
            text-decoration: none;
            margin: 0 10px;
        }

        footer a:hover {
            color: white;
        }

        /* ================= RESPONSIVE ================= */

        @media (max-width: 768px) {

            .hero {
                min-height: 520px;
            }

            .hero p {
                font-size: 16px;
            }

            .hero-buttons .btn {
                width: 100%;
                margin-bottom: 10px;
            }

            .navbar-brand {
                font-size: 19px;
            }
        }

    </style>
</head>

<body>

<!-- =====================================================
                         NAVBAR
===================================================== -->

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
                    <a class="nav-link" href="dashbord.jsp" >
                        Dashbord
                    </a>

                <li class="nav-item">
                    <a class="nav-link" href="#home">
                        Home
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="Displayall.jsp">
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



<%
String username = (String) session.getAttribute("username");
String usertype = (String) session.getAttribute("userrole");

%>
<h3>Welcome, <%= username %></h3>
<h4> <%= usertype %></h4>

<!-- =====================================================
                         HERO
===================================================== -->

<section class="hero" id="home">

    <div class="hero-content">

        <h1>
            Cricket <span>Playing XI</span>
        </h1>

        <p>
            Intelligent Player Selection System
            <br>
            Build your strongest Playing XI using player performance,
            fitness and statistics.
        </p>

        <div class="hero-buttons">

            <a href="PlayingXI.jsp"
               class="btn btn-warning btn-lg me-md-2">

                <i class="bi bi-trophy-fill"></i>
                View Playing XI

            </a>

            <a href="Displayall.jsp"
               class="btn btn-outline-light btn-lg">

                <i class="bi bi-people-fill"></i>
                View Players

            </a>

        </div>

    </div>

</section>


<!-- =====================================================
                     FEATURES
===================================================== -->

<section class="section" id="players">

    <div class="container-fluid px-lg-5">

        <div class="section-title">

            <h2>
                Player <span>Management</span>
            </h2>

            <p>
                Manage and evaluate cricket players
            </p>

        </div>


        <div class="row g-4">

            <!-- Add Player -->

            <div class="col-12 col-md-6 col-lg-3" >

                <div class="feature-card">

                    <div class="feature-icon">
                        <i class="bi bi-person-plus-fill"></i>
                    </div>

                    <h4>Add Player</h4>

                    <p>
                        Register players with batting,
                        bowling, fitness and performance details.
                    </p>

                    <a href="addplayer.jsp"
                       class="btn btn-success">

                        Add Player

                    </a>

                </div>

            </div>


            <!-- View Players -->

            <div class="col-12 col-md-6 col-lg-3">

                <div class="feature-card">

                    <div class="feature-icon">
                        <i class="bi bi-people-fill"></i>
                    </div>

                    <h4>Players</h4>

                    <p>
                        View all registered players
                        and their complete statistics.
                    </p>

                    <a href="Displayall.jsp"
                       class="btn btn-success">

                        View Players

                    </a>

                </div>

            </div>


            <!-- Eligible Players -->

            <div class="col-12 col-md-6 col-lg-3">

                <div class="feature-card">

                    <div class="feature-icon">
                        <i class="bi bi-check-circle-fill"></i>
                    </div>

                    <h4>Eligible Players</h4>

                    <p>
                        Identify players who meet the
                        minimum fitness and match criteria.
                    </p>

                    <a href="Eligibleplayers.jsp"
                       class="btn btn-success">

                        Check Eligibility

                    </a>

                </div>

            </div>


            <!-- Selection -->

            <div class="col-12 col-md-6 col-lg-3">

                <div class="feature-card">

                    <div class="feature-icon">
                        <i class="bi bi-trophy-fill"></i>
                    </div>

                    <h4>Playing XI</h4>

                    <p>
                        Select the best combination
                        based on player performance.
                    </p>

                    <a href="PlayingXI.jsp"
                       class="btn btn-success">

                        Playing XI

                    </a>

                </div>

            </div>

        </div>

    </div>

</section>





<!-- =====================================================
                         STATISTICS
===================================================== -->


<%  Playerdao pd = new Playerdao();
    Selection_Service ss = new Selection_Service();

int totalPlayers = 0;
int eligiblePlayers = 0;
int totalbatters = 0;
int totalbowllers = 0;
int totalallrounders = 0;
int totalwicketkeepers = 0;

if (username != null) {
    totalPlayers = pd.getall().size();
    eligiblePlayers = pd.eligible_players().size();
    totalbatters = pd.getallbatsmen().size();
    totalbowllers = pd.getallbowlers().size();
    totalallrounders =pd.getallAllrounders().size();
    totalwicketkeepers = pd.getallwicketkeeper().size();
    
} %>

<section class="section-dark section" id="stats">

    <div class="container-fluid px-lg-5">

        <div class="section-title">

            <h2>
                Team <span>Statistics</span>
            </h2>

        </div>


        <div class="row g-4">

            <div class="col-6 col-lg-3">

                <div class="stat-box">

                    <i class="bi bi-people-fill"></i>

                    <h3><%= totalPlayers %></h3>

                    <p>Total Players</p>

                </div>

            </div>


            <div class="col-6 col-lg-3">

                <div class="stat-box">

                    <i class="bi bi-check-circle-fill"></i>

                    <h3><%= eligiblePlayers %></h3>

                    <p>Eligible Players</p>

                </div>

            </div>


            <div class="col-6 col-lg-3">

                <div class="stat-box">

                    <i class="bi bi-person-badge-fill"></i>

                    <h3><%=totalbatters %></h3>

                    <p>Batsmens</p>

                </div>

            </div>


            <div class="col-6 col-lg-3">

                <div class="stat-box">

                    <i class="bi bi-lightning-charge-fill"></i>

                    <h3><%=totalbowllers %></h3>

                    <p>Bowlers</p>

                </div>

            </div>
            
            <div class="col-6 col-lg-3">

                <div class="stat-box">

                    <i class="bi bi-stars"></i>

                    <h3><%=totalallrounders %></h3>

                    <p>All-Rounders</p>

                </div>

            </div>
            
            <div class="col-6 col-lg-3">

                <div class="stat-box">

                    <i class="bi bi-shield-shaded"></i>

                    <h3><%=totalwicketkeepers %></h3>

                    <p>Wicket-Keepers</p>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- =====================================================
                          ABOUT
===================================================== -->

<section class="section" id="about">

    <div class="container-fluid px-lg-5">

        <div class="row align-items-center">

            <div class="col-12 col-lg-6">

                <h2>
                    About <span class="text-success">
                        Cricket XI Selection System
                    </span>
                </h2>

                <p class="mt-4">

                    The Cricket Playing XI Selection System is a
                    Java-based application designed to assist in
                    selecting players based on their performance,
                    fitness and playing statistics.

                </p>

                <p>

                    The system evaluates players and helps create
                    a balanced Playing XI consisting of batsmen,
                    bowlers, all-rounders and a wicket keeper.

                </p>

            </div>


            <div class="col-12 col-lg-6 mt-4 mt-lg-0">

                <div class="p-4 bg-dark rounded-4">

                    <h4>
                        <i class="bi bi-code-slash text-warning"></i>
                        Technology Stack
                    </h4>

                    <hr>

                    <p>
                        <strong>Frontend:</strong>
                        HTML, CSS, Bootstrap
                    </p>

                    <p>
                        <strong>Backend:</strong>
                        Java, JDBC, Servlets/JSP
                    </p>

                    <p>
                        <strong>Database:</strong>
                        MySQL
                    </p>

                    <p>
                        <strong>Architecture:</strong>
                        DAO + Service Layer
                    </p>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- =====================================================
                         FOOTER
===================================================== -->

<footer>

    <div class="container-fluid">

        <h5>
            🏏 Cricket Playing XI Selection System
        </h5>

        <p class="text-secondary mb-2">
            Built using Java, JDBC, MySQL & Bootstrap
        </p>

        <div>

            <a href="#home">Home</a>

            <a href="#players">Players</a>

            <a href="#selection">Selection</a>

            <a href="#stats">Statistics</a>

        </div>

        <hr class="border-secondary">

        <small class="text-secondary">
            © 2026 Cricket XI Selection System. All Rights Reserved.
        </small>

    </div>

</footer>


<!-- Bootstrap JS -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>

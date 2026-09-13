<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>About - Cricket Selection System</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <style>
        body {
            background: #f4f7fb;
            font-family: Arial, sans-serif;
        }

        .about-header {
            background: linear-gradient(rgba(0,0,0,0.65), rgba(0,0,0,0.65)),
                        url("images/cricket-bg.jpg");
            background-size: cover;
            background-position: center;
            color: white;
            padding: 90px 20px;
            text-align: center;
        }

        .about-header h1 {
            font-size: 45px;
            font-weight: bold;
        }

        .about-section {
            padding: 60px 0;
        }

        .info-card {
            border: none;
            border-radius: 15px;
            padding: 25px;
            height: 100%;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            transition: 0.3s;
        }

        .info-card:hover {
            transform: translateY(-8px);
        }

        .icon {
            font-size: 45px;
            margin-bottom: 15px;
        }

        .technology {
            background: #ffffff;
            padding: 60px 0;
        }

        .tech-badge {
            display: inline-block;
            padding: 12px 22px;
            margin: 8px;
            border-radius: 25px;
            background: #212529;
            color: white;
            font-weight: bold;
        }

        .footer {
            background: #212529;
            color: white;
            text-align: center;
            padding: 20px;
        }
    </style>
</head>

<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">

        <a class="navbar-brand fw-bold" href="index.jsp">
            🏏 Cricket Selection System
        </a>

        <button class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">

            <ul class="navbar-nav ms-auto">

                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" href="about.jsp">About</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="players.jsp">Players</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="selection.jsp">Selection</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Login</a>
                </li>

            </ul>
        </div>
    </div>
</nav>


<!-- Header -->
<section class="about-header">

    <div class="container">

        <h1>About Cricket Selection System</h1>

        <p class="lead mt-3">
            A smart and systematic platform for selecting the best
            Playing Eleven based on player performance and fitness.
        </p>

    </div>

</section>


<!-- About Project -->
<section class="about-section">

    <div class="container">

        <div class="text-center mb-5">

            <h2 class="fw-bold">About Our Project</h2>

            <p class="text-muted">
                Making cricket team selection easier, faster and more reliable.
            </p>

        </div>

        <div class="row g-4">

            <!-- Purpose -->
            <div class="col-md-4">

                <div class="card info-card text-center">

                    <div class="icon">🎯</div>

                    <h4>Our Purpose</h4>

                    <p>
                        The Cricket Selection System is designed to help
                        selectors identify suitable players and create
                        a balanced Playing Eleven using player statistics,
                        performance and fitness.
                    </p>

                </div>

            </div>


            <!-- Performance -->
            <div class="col-md-4">

                <div class="card info-card text-center">

                    <div class="icon">📊</div>

                    <h4>Performance Based</h4>

                    <p>
                        Players are evaluated using important cricket
                        parameters such as matches, runs, wickets,
                        strike rate, economy rate and fitness status.
                    </p>

                </div>

            </div>


            <!-- Team Selection -->
            <div class="col-md-4">

                <div class="card info-card text-center">

                    <div class="icon">🏏</div>

                    <h4>Playing Eleven</h4>

                    <p>
                        The system assists in selecting a balanced team
                        by considering batsmen, bowlers, all-rounders
                        and wicket-keepers according to predefined rules.
                    </p>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- How System Works -->
<section class="technology">

    <div class="container">

        <div class="text-center mb-5">

            <h2 class="fw-bold">How The System Works</h2>

            <p class="text-muted">
                A simple process for effective player selection.
            </p>

        </div>

        <div class="row text-center g-4">

            <div class="col-md-3">

                <div class="card info-card">

                    <div class="icon">👤</div>

                    <h5>1. Add Players</h5>

                    <p>
                        Player details and performance statistics
                        are stored in the system.
                    </p>

                </div>

            </div>


            <div class="col-md-3">

                <div class="card info-card">

                    <div class="icon">🔍</div>

                    <h5>2. Check Eligibility</h5>

                    <p>
                        Players are filtered based on minimum
                        experience and fitness requirements.
                    </p>

                </div>

            </div>


            <div class="col-md-3">

                <div class="card info-card">

                    <div class="icon">📈</div>

                    <h5>3. Calculate Score</h5>

                    <p>
                        Player performance is evaluated using
                        predefined scoring criteria.
                    </p>

                </div>

            </div>


            <div class="col-md-3">

                <div class="card info-card">

                    <div class="icon">🏆</div>

                    <h5>4. Select Team</h5>

                    <p>
                        The highest-performing eligible players
                        are considered for the Playing Eleven.
                    </p>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- Technologies -->
<section class="about-section">

    <div class="container text-center">

        <h2 class="fw-bold mb-4">Technologies Used</h2>

        <span class="tech-badge">Java</span>
        <span class="tech-badge">OOP</span>
        <span class="tech-badge">JDBC</span>
        <span class="tech-badge">Servlets</span>
        <span class="tech-badge">JSP</span>
        <span class="tech-badge">MySQL</span>
        <span class="tech-badge">HTML</span>
        <span class="tech-badge">CSS</span>
        <span class="tech-badge">Bootstrap</span>

    </div>

</section>


<!-- Key Features -->
<section class="technology">

    <div class="container">

        <div class="text-center mb-5">

            <h2 class="fw-bold">Key Features</h2>

        </div>

        <div class="row g-4">

            <div class="col-md-6">

                <ul class="list-group shadow">

                    <li class="list-group-item">
                        ✅ Add and manage player information
                    </li>

                    <li class="list-group-item">
                        ✅ Store player statistics in MySQL
                    </li>

                    <li class="list-group-item">
                        ✅ Check player eligibility
                    </li>

                    <li class="list-group-item">
                        ✅ Calculate player performance scores
                    </li>

                </ul>

            </div>


            <div class="col-md-6">

                <ul class="list-group shadow">

                    <li class="list-group-item">
                        ✅ Select top-performing players
                    </li>

                    <li class="list-group-item">
                        ✅ Consider player roles
                    </li>

                    <li class="list-group-item">
                        ✅ Maintain team balance
                    </li>

                    <li class="list-group-item">
                        ✅ Generate Playing Eleven
                    </li>

                </ul>

            </div>

        </div>

    </div>

</section>


<!-- Footer -->
<footer class="footer">

    <p class="mb-0">
        © 2026 Cricket Selection System | All Rights Reserved
    </p>

</footer>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>

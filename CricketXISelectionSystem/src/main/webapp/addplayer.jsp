<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Add Player - Cricket Selection System</title>

    <!-- Bootstrap CSS -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <style>

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background:
                linear-gradient(rgba(0,0,0,0.70), rgba(0,0,0,0.70)),
                url("images/cricket-bg.jpg");
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            min-height: 100vh;
        }

        /* Navbar */

        .navbar {
            background: rgba(0, 0, 0, 0.90) !important;
            padding: 12px 0;
        }

        .navbar-brand {
            font-size: 24px;
            font-weight: bold;
            color: white !important;
        }

        .navbar-brand i {
            margin-right: 8px;
        }

        .nav-link {
            color: #ddd !important;
            font-weight: 500;
            margin-left: 10px;
        }

        .nav-link:hover {
            color: #ffc107 !important;
        }

        .active {
            color: #ffc107 !important;
        }

        /* Main */

        .main-section {
            padding: 50px 15px;
        }

        .page-title {
            text-align: center;
            color: white;
            margin-bottom: 30px;
        }

        .page-title h1 {
            font-size: 38px;
            font-weight: bold;
        }

        .page-title p {
            color: #ddd;
        }

        /* Form Card */

        .form-card {
            background: rgba(255, 255, 255, 0.96);
            border-radius: 18px;
            padding: 35px;
            max-width: 1000px;
            margin: auto;
            box-shadow: 0 10px 35px rgba(0,0,0,0.5);
        }

        .section-title {
            font-size: 21px;
            font-weight: bold;
            margin-bottom: 20px;
            color: #222;
            border-left: 5px solid #ffc107;
            padding-left: 12px;
        }

        .form-label {
            font-weight: 600;
        }

        .form-control,
        .form-select {
            border-radius: 8px;
            padding: 11px;
        }

        .form-control:focus,
        .form-select:focus {
            border-color: #ffc107;
            box-shadow: 0 0 0 0.2rem rgba(255,193,7,0.20);
        }

        /* Buttons */

        .btn-add {
            background: #198754;
            color: white;
            font-weight: bold;
            padding: 12px 35px;
            border-radius: 8px;
        }

        .btn-add:hover {
            background: #157347;
            color: white;
        }

        .btn-reset {
            padding: 12px 35px;
            border-radius: 8px;
            font-weight: bold;
        }

        /* Footer */

        footer {
            margin-top: 50px;
            background: rgba(0,0,0,0.90);
            color: white;
            text-align: center;
            padding: 20px;
        }

        /* Mobile */

        @media (max-width: 768px) {

            .page-title h1 {
                font-size: 30px;
            }

            .form-card {
                padding: 22px;
            }

            .main-section {
                padding: 30px 12px;
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
                    <a class="nav-link" href="dashbord.jsp" >
                        Dashbord
                    </a>

                <li class="nav-item">
                    <a class="nav-link" href="#home">
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
                    <a class="nav-link" href="login.jsp" >
                        Login
                    </a>
                </li>
                
               

            </ul>

        </div>

    </div>

</nav>


<!-- ================= MAIN ================= -->

<section class="main-section">

    <div class="page-title">

        <h1>
            <i class="bi bi-person-plus-fill"></i>
            Add New Player
        </h1>

        <p>
            Enter player information to add them to the Cricket Selection System
        </p>

    </div>


    <!-- ================= FORM ================= -->

    <div class="form-card">

        <!-- IMPORTANT:
             Change action="PlayerServlet" to your actual servlet URL
        -->

        <form action="addPlayerController" method="post">

            <input type="hidden" name="action" value="add">


            <!-- PLAYER INFORMATION -->

            <h3 class="section-title">
                <i class="bi bi-person-vcard-fill"></i>
                Player Information
            </h3>

            <div class="row g-3">

             


                <div class="col-md-4">

                    <label class="form-label">
                        First Name
                    </label>

                    <input
                        type="text"
                        name="firstname"
                        class="form-control"
                        placeholder="Enter first name"
                        required>

                </div>


                <div class="col-md-4">

                    <label class="form-label">
                        Last Name
                    </label>

                    <input
                        type="text"
                        name="lastname"
                        class="form-control"
                        placeholder="Enter last name"
                        required>

                </div>


                <div class="col-md-4">

                    <label class="form-label">
                        Age
                    </label>

                    <input
                        type="number"
                        name="age"
                        class="form-control"
                        min="15"
                        max="50"
                        placeholder="Enter age"
                        required>

                </div>


                <div class="col-md-4">

                    <label class="form-label">
                        City
                    </label>

                    <input
                        type="text"
                        name="city"
                        class="form-control"
                        placeholder="Enter city"
                        required>

                </div>


                <div class="col-md-4">

                    <label class="form-label">
                        Player Role
                    </label>

                    <select name="role" class="form-select" required>

                        <option value="">
                            Select Role
                        </option>

                        <option value="Batsman">
                            Batsman
                        </option>

                        <option value="Bowler">
                            Bowler
                        </option>

                        <option value="All-Rounder">
                            All-Rounder
                        </option>

                        <option value="Wicket-Keeper">
                            Wicket-Keeper
                        </option>

                    </select>

                </div>

            </div>


            <hr class="my-4">


            <!-- PLAYING STYLE -->

            <h3 class="section-title">
                <i class="bi bi-activity"></i>
                Playing Style
            </h3>

            <div class="row g-3">

                <div class="col-md-6">

                    <label class="form-label">
                        Batting Style
                    </label>

                    <select
                        name="batting_style"
                        class="form-select">

                        <option value="">
                            Select Batting Style
                        </option>

                        <option value="Right Hand">
                            Right Hand
                        </option>

                        <option value="Left Hand">
                            Left Hand
                        </option>

                    </select>

                </div>


                <div class="col-md-6">

                    <label class="form-label">
                        Bowling Style
                    </label>

                    <select
                        name="bowling_style"
                        class="form-select">

                        <option value="">
                            Select Bowling Style
                        </option>

                        <option value="Right Arm Fast">
                            Right Arm Fast
                        </option>

                        <option value="Right Arm Medium">
                            Right Arm Medium
                        </option>

                        <option value="Left Arm Fast">
                            Left Arm Fast
                        </option>

                        <option value="Left Arm Medium">
                            Left Arm Medium
                        </option>

                        <option value="Right Arm Spin">
                            Right Arm Spin
                        </option>

                        <option value="Left Arm Spin">
                            Left Arm Spin
                        </option>

                        <option value="None">
                            None
                        </option>

                    </select>

                </div>

            </div>


            <hr class="my-4">


            <!-- PERFORMANCE -->

            <h3 class="section-title">
                <i class="bi bi-bar-chart-fill"></i>
                Player Performance
            </h3>

            <div class="row g-3">

                <div class="col-md-3">

                    <label class="form-label">
                        Matches
                    </label>

                    <input
                        type="number"
                        name="matches"
                        class="form-control"
                        min="0"
                        value="0"
                        required>

                </div>


                <div class="col-md-3">

                    <label class="form-label">
                        Runs
                    </label>

                    <input
                        type="number"
                        name="runs"
                        class="form-control"
                        min="0"
                        value="0"
                        required>

                </div>
                
                 <div class="col-md-3">

                    <label class="form-label">
                        Balls Faced
                    </label>

                    <input
                        type="number"
                        name="ballsfaced"
                        class="form-control"
                        min="0"
                        value="0"
                        required>

                </div>


                <div class="col-md-3">

                    <label class="form-label">
                        Wickets
                    </label>

                    <input
                        type="number"
                        name="wickets"
                        class="form-control"
                        min="0"
                        value="0"
                        required>

                </div>
                
                <div class="col-md-3">

                    <label class="form-label">
                        Balls Bowled
                    </label>

                    <input
                        type="number"
                        name="ballsbowled"
                        class="form-control"
                        min="0"
                        value="0"
                        required>

                </div>
                
                <div class="col-md-3">

                    <label class="form-label">
                       Runs Conceded
                    </label>

                    <input
                        type="number"
                        name="runsconceded"
                        class="form-control"
                        min="0"
                        value="0"
                        required>

                </div>


                <div class="col-md-3">

                    <label class="form-label">
                        Fitness
                    </label>

                    <input
                        type="number"
                        name="fitness_status"
                        class="form-control"
                        min="0"
                        max="100"
                        placeholder="0 - 100"
                        required>

                </div>

            </div>


            <hr class="my-4">


            <!-- STATISTICS -->


            <!-- BUTTONS -->

            <div class="text-center mt-5">

                <button
                    type="submit"
                    class="btn btn-add me-2" 
                  >

                    <i class="bi bi-person-plus-fill"></i>
                    Add Player

                </button>


                <button
                    type="reset"
                    class="btn btn-secondary btn-reset">

                    <i class="bi bi-arrow-counterclockwise"></i>
                    Reset

                </button>

            </div>

        </form>

    </div>

</section>


<!-- ================= FOOTER ================= -->

<footer>

    <div class="container">

        <p class="mb-1">
            <i class="bi bi-trophy-fill"></i>
            Cricket Selection System
        </p>

        <small>
            Player Management & Playing XI Selection
        </small>

        <br>

        <small>
            © 2026 Cricket Selection System. All Rights Reserved.
        </small>

    </div>

</footer>


<!-- Bootstrap JS -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>
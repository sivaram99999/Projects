<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Register - Cricket Selection System</title>

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
                linear-gradient(
                    rgba(0,0,0,0.72),
                    rgba(0,0,0,0.72)
                ),
                url("images/cricket-bg.jpg");

            background-size: cover;
            background-position: center;
            background-attachment: fixed;

            min-height: 100vh;
        }


        /* ================= NAVBAR ================= */

        .navbar {
            background: rgba(0,0,0,0.92) !important;
            padding: 12px 0;
        }

        .navbar-brand {
            color: white !important;
            font-size: 24px;
            font-weight: bold;
        }

        .navbar-brand i {
            color: #ffc107;
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


        /* ================= REGISTER SECTION ================= */

        .register-section {
            min-height: calc(100vh - 75px);
            display: flex;
            align-items: center;
            justify-content: center;

            padding: 40px 15px;
        }


        /* ================= REGISTER CARD ================= */

        .register-card {

            width: 100%;
            max-width: 650px;

            background: rgba(255,255,255,0.97);

            border-radius: 20px;

            padding: 35px;

            box-shadow:
                0 10px 40px rgba(0,0,0,0.55);
        }


        .register-header {
            text-align: center;
            margin-bottom: 25px;
        }


        .register-icon {

            width: 75px;
            height: 75px;

            background: #ffc107;

            border-radius: 50%;

            display: flex;
            align-items: center;
            justify-content: center;

            margin: auto;
        }


        .register-icon i {
            font-size: 38px;
            color: #212529;
        }


        .register-header h2 {

            margin-top: 15px;

            font-weight: bold;

            color: #212529;
        }


        .register-header p {
            color: #666;
        }


        /* ================= FORM ================= */

        .form-label {
            font-weight: 600;
        }


        .input-group-text {
            background: #212529;
            color: #ffc107;
            border: none;
        }


        .form-control,
        .form-select {

            padding: 11px;

            border-radius: 8px;

        }


        .form-control:focus,
        .form-select:focus {

            border-color: #ffc107;

            box-shadow:
                0 0 0 0.2rem
                rgba(255,193,7,0.20);
        }


        /* ================= BUTTON ================= */

        .register-btn {

            width: 100%;

            padding: 12px;

            border: none;

            border-radius: 8px;

            background: #198754;

            color: white;

            font-size: 17px;

            font-weight: bold;

            transition: 0.3s;
        }


        .register-btn:hover {
            background: #157347;
        }


        /* ================= LOGIN LINK ================= */

        .login-link {

            text-align: center;

            margin-top: 20px;

            color: #555;
        }


        .login-link a {

            color: #198754;

            text-decoration: none;

            font-weight: bold;
        }


        .login-link a:hover {
            text-decoration: underline;
        }


        /* ================= FOOTER ================= */

        footer {

            background: rgba(0,0,0,0.92);

            color: white;

            text-align: center;

            padding: 18px;
        }


        /* ================= MOBILE ================= */

        @media (max-width: 576px) {

            .register-card {
                padding: 25px 20px;
            }

            .register-header h2 {
                font-size: 26px;
            }

        }

    </style>

</head>


<body>


<!-- ================= NAVBAR ================= -->

<nav class="navbar navbar-expand-lg navbar-dark">

    <div class="container">

        <a class="navbar-brand" href="index.jsp">

            <i class="bi bi-trophy-fill"></i>

            Cricket Selection

        </a>


        <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarMenu">

            <span class="navbar-toggler-icon"></span>

        </button>


        <div
            class="collapse navbar-collapse"
            id="navbarMenu">

            <ul class="navbar-nav ms-auto">


                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="index.jsp">

                        <i class="bi bi-house-fill"></i>
                        Home

                    </a>

                </li>


                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="players.jsp">

                        <i class="bi bi-people-fill"></i>
                        Players

                    </a>

                </li>


                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="selection.jsp">

                        <i class="bi bi-award-fill"></i>
                        Playing XI

                    </a>

                </li>


                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="about.jsp">

                        <i class="bi bi-info-circle-fill"></i>
                        About

                    </a>

                </li>


                <li class="nav-item">

                    <a
                        class="nav-link"
                        href="login.jsp">

                        <i class="bi bi-box-arrow-in-right"></i>
                        Login

                    </a>

                </li>


                <li class="nav-item">

                    <a
                        class="nav-link active"
                        href="register.jsp">

                        <i class="bi bi-person-plus-fill"></i>
                        Register

                    </a>

                </li>


            </ul>

        </div>

    </div>

</nav>



<!-- ================= REGISTER SECTION ================= -->

<section class="register-section">


    <div class="register-card">


        <!-- HEADER -->

        <div class="register-header">

            <div class="register-icon">

                <i class="bi bi-person-plus-fill"></i>

            </div>


            <h2>Create Account</h2>

            <p>
                Register to access the Cricket Selection System
            </p>

        </div>



        <!-- ================= FORM ================= -->

        <form
            action="registerController"
            method="post">


            <!-- FIRST NAME + LAST NAME -->

            <div class="row g-3">


                <div class="col-md-6">

                    <label class="form-label">
                        First Name
                    </label>

                    <div class="input-group">

                        <span class="input-group-text">
                            <i class="bi bi-person"></i>
                        </span>

                        <input
                            type="text"
                            name="firstname"
                            class="form-control"
                            placeholder="Enter first name"
                            required>

                    </div>

                </div>



                <div class="col-md-6">

                    <label class="form-label">
                        Last Name
                    </label>

                    <div class="input-group">

                        <span class="input-group-text">
                            <i class="bi bi-person"></i>
                        </span>

                        <input
                            type="text"
                            name="lastname"
                            class="form-control"
                            placeholder="Enter last name"
                            required>

                    </div>

                </div>


            </div>



            <!-- EMAIL -->

            <div class="mt-3">

                <label class="form-label">
                    Email
                </label>

                <div class="input-group">

                    <span class="input-group-text">
                        <i class="bi bi-envelope"></i>
                    </span>

                    <input
                        type="email"
                        name="email"
                        class="form-control"
                        placeholder="Enter email address"
                        required>

                </div>

            </div>



            <!-- USERNAME -->

            <div class="mt-3">

                <label class="form-label">
                    Username
                </label>

                <div class="input-group">

                    <span class="input-group-text">
                        <i class="bi bi-person-badge"></i>
                    </span>

                    <input
                        type="text"
                        name="username"
                        class="form-control"
                        placeholder="Choose username"
                        required>

                </div>

            </div>



            <!-- ROLE -->

            <div class="mt-3">

                <label class="form-label">
                    User Role
                </label>

                <div class="input-group">

                    <span class="input-group-text">
                        <i class="bi bi-shield-check"></i>
                    </span>

                    <select
                        name="userrole"
                        class="form-select"
                        required>

                        <option value="">
                            Select role
                        </option>

                        <option value="Admin">
                            Admin
                        </option>

                        <option value="Selector">
                            Team Selector
                        </option>

                        <option value="User">
                            User
                        </option>

                    </select>

                </div>

            </div>



            <!-- PASSWORD -->

            <div class="mt-3">

                <label class="form-label">
                    Password
                </label>

                <div class="input-group">

                    <span class="input-group-text">
                        <i class="bi bi-lock-fill"></i>
                    </span>

                    <input
                        type="password"
                        name="password"
                        id="password"
                        class="form-control"
                        placeholder="Create password"
                        minlength="6"
                        required>

                </div>

            </div>



            <!-- CONFIRM PASSWORD -->

            <div class="mt-3">

                <label class="form-label">
                    Confirm Password
                </label>

                <div class="input-group">

                    <span class="input-group-text">
                        <i class="bi bi-lock-fill"></i>
                    </span>

                    <input
                        type="password"
                        name="confirm_password"
                        id="confirmPassword"
                        class="form-control"
                        placeholder="Confirm password"
                        minlength="6"
                        required>

                </div>

            </div>



            <!-- TERMS -->

            <div class="form-check mt-4">

                <input
                    class="form-check-input"
                    type="checkbox"
                    id="terms"
                    required>

                <label
                    class="form-check-label"
                    for="terms">

                    I agree to the terms and conditions

                </label>

            </div>



            <!-- REGISTER BUTTON -->

            <div class="mt-4">

                <button
                    type="submit"
                    class="register-btn">

                    <i class="bi bi-person-plus-fill"></i>

                    Create Account

                </button>

            </div>


        </form>



        <!-- LOGIN -->

        <div class="login-link">

            Already have an account?

            <a href="login.jsp">
                Login here
            </a>

        </div>


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


<!-- Password Validation -->

<script>

    document.querySelector("form").addEventListener(
        "submit",
        function(event) {

            let password =
                document.getElementById("password").value;

            let confirmPassword =
                document.getElementById("confirmPassword").value;


            if (password !== confirmPassword) {

                alert("Passwords do not match!");

                event.preventDefault();

            }

        }
    );

</script>


</body>
</html>

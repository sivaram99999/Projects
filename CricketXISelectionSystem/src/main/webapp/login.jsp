<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cricket XI Selection System - Login</title>

    <!-- Bootstrap CSS -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <style>
        body {
            background: linear-gradient(rgba(0, 0, 0, 0.65),
                                        rgba(0, 0, 0, 0.65)),
                        url("images/cricket-bg.jpg");

            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;

            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .login-card {
            width: 400px;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 15px;
            padding: 35px;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.5);
        }

        .logo {
            font-size: 45px;
            text-align: center;
        }

        .title {
            text-align: center;
            font-weight: bold;
            color: #198754;
        }

        .subtitle {
            text-align: center;
            color: #666;
            margin-bottom: 25px;
        }

        .btn-login {
            width: 100%;
            font-weight: bold;
            padding: 10px;
        }

        .form-control {
            padding: 11px;
        }

        .footer-text {
            text-align: center;
            margin-top: 20px;
            font-size: 13px;
            color: #777;
        }
    </style>
</head>

<body>

    <div class="login-card">

        <div class="logo">🏏</div>

        <h2 class="title">Cricket XI</h2>

        <p class="subtitle">
            Player Selection System
        </p>

        <form action="loginController" method="post">

            <!-- Username -->
            <div class="mb-3">
                <label class="form-label">
                    Username
                </label>

                <input type="text"
                       name="username"
                       class="form-control"
                       placeholder="Enter username"
                       required>
            </div>
            
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

            <!-- Password -->
            <div class="mb-3">
                <label class="form-label">
                    Password
                </label>

                <input type="password"
                       name="password"
                       class="form-control"
                       placeholder="Enter password"
                       required>
            </div>

            <!-- Login Button -->
            <button type="submit"
                    class="btn btn-success btn-login">
                Login
            </button>
            <a href = "registation.jsp">Don't have Account </a>

        </form>

        <div class="footer-text">
            © 2026 Cricket XI Selection System
        </div>

    </div>

</body>
</html>
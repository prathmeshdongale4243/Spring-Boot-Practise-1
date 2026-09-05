<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home | Student Management System</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>

body{
    min-height: 100vh;
    background: linear-gradient(135deg, #667eea, #764ba2);
    font-family: Arial, sans-serif;
}

/* Navbar */
.navbar{
    box-shadow: 0 3px 12px rgba(0,0,0,0.20);
}

.navbar-brand{
    font-size: 22px;
    letter-spacing: 0.3px;
}

.nav-link{
    font-size: 16px;
    margin-left: 8px;
}

.nav-link:hover{
    color: #ffc107 !important;
}

/* Main Hero Section */
.hero-section{
    padding: 150px 0 70px;
}

.home-container{
    background: rgba(255,255,255,0.96);
    border-radius: 22px;
    padding: 55px 45px;
    text-align: center;
    box-shadow: 0 15px 40px rgba(0,0,0,0.25);
}

.home-container h1{
    font-size: 42px;
    font-weight: bold;
    color: #343a40;
}

.home-container p{
    color: #6c757d;
    max-width: 650px;
    margin: 20px auto;
}

/* Buttons */
.btn-enroll{
    padding: 12px 25px;
    font-size: 17px;
    font-weight: 600;
    border-radius: 8px;
    transition: 0.3s;
}

.btn-enroll:hover{
    transform: translateY(-3px);
    box-shadow: 0 8px 15px rgba(13,110,253,0.35);
}

/* Feature Cards */
.feature-card{
    border: none;
    border-radius: 15px;
    padding: 25px 20px;
    height: 100%;
    transition: 0.3s;
    box-shadow: 0 7px 20px rgba(0,0,0,0.12);
}

.feature-card:hover{
    transform: translateY(-8px);
    box-shadow: 0 12px 28px rgba(0,0,0,0.20);
}

.feature-icon{
    font-size: 42px;
    color: #0d6efd;
    margin-bottom: 15px;
}

.feature-card h4{
    font-weight: bold;
    color: #343a40;
}

.feature-card p{
    color: #6c757d;
}

/* Footer */
.footer{
    color: white;
    text-align: center;
    padding: 20px 0;
    margin-top: 30px;
}

@media(max-width: 576px){

    .hero-section{
        padding-top: 110px;
    }

    .home-container{
        padding: 35px 20px;
    }

    .home-container h1{
        font-size: 30px;
    }
}

</style>

</head>

<body>

<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">

        <a class="navbar-brand fw-bold"
           href="${pageContext.request.contextPath}/home">
            <i class="bi bi-mortarboard-fill"></i>
            Student Management System
        </a>

        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarNav"
                aria-controls="navbarNav"
                aria-expanded="false"
                aria-label="Toggle navigation">

            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">

            <ul class="navbar-nav ms-auto">

                <li class="nav-item">
                    <a class="nav-link active"
                       href="${pageContext.request.contextPath}/home">
                        <i class="bi bi-house-door-fill"></i> Home
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link"
                       href="${pageContext.request.contextPath}/form">
                        <i class="bi bi-person-plus-fill"></i> Student Enrollment
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link"
                       href="${pageContext.request.contextPath}/display">
                        <i class="bi bi-people-fill"></i> Display Students
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link"
                       href="${pageContext.request.contextPath}/about">
                        <i class="bi bi-info-circle-fill"></i> About
                    </a>
                </li>

            </ul>

        </div>

    </div>
</nav>
<!-- Navbar End -->


<!-- Hero Section Start -->
<section class="hero-section">
    <div class="container">

        <div class="home-container">

            <i class="bi bi-mortarboard-fill display-1 text-primary"></i>

            <h1 class="mt-3">Welcome to Student Management System</h1>

            <p class="lead">
                Manage student records easily. Enroll new students, view registered
                students, update details, and maintain student information in one place.
            </p>

            <div class="mt-4">

                <a href="${pageContext.request.contextPath}/form"
                   class="btn btn-primary btn-enroll me-2">
                    <i class="bi bi-person-plus-fill"></i>
                    Enroll New Student
                </a>

                <a href="${pageContext.request.contextPath}/display"
                   class="btn btn-outline-dark btn-enroll">
                    <i class="bi bi-people-fill"></i>
                    View Students
                </a>

            </div>

        </div>


        <!-- Features Section -->
        <div class="row mt-5 g-4">

            <div class="col-md-4">
                <div class="card feature-card text-center">
                    <i class="bi bi-person-plus-fill feature-icon"></i>
                    <h4>Student Enrollment</h4>
                    <p>
                        Add new student details such as name, email, qualification,
                        department, and other information.
                    </p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card feature-card text-center">
                    <i class="bi bi-card-list feature-icon"></i>
                    <h4>View Student Records</h4>
                    <p>
                        Display all registered students in a clean and organized table.
                    </p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card feature-card text-center">
                    <i class="bi bi-pencil-square feature-icon"></i>
                    <h4>Manage Information</h4>
                    <p>
                        Update, edit, and delete student records whenever required.
                    </p>
                </div>
            </div>

        </div>

    </div>
</section>
<!-- Hero Section End -->


<!-- Footer -->
<div class="footer">
    <p class="mb-0">
        © 2026 Student Management System | Developed using Spring Boot, JSP and Bootstrap
    </p>
</div>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
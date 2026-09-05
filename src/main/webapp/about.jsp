<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About | Student Management System</title>

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

/* Main Section */
.about-section{
    padding: 130px 0 60px;
}

.about-container{
    background: rgba(255,255,255,0.97);
    border-radius: 22px;
    padding: 45px;
    box-shadow: 0 15px 40px rgba(0,0,0,0.25);
}

/* Heading */
.page-heading{
    text-align: center;
    margin-bottom: 40px;
}

.page-heading i{
    font-size: 55px;
    color: #0d6efd;
}

.page-heading h1{
    font-weight: bold;
    color: #343a40;
    margin-top: 10px;
}

.page-heading p{
    color: #6c757d;
}

/* Cards */
.info-card{
    border: none;
    border-radius: 15px;
    padding: 25px;
    height: 100%;
    box-shadow: 0 6px 18px rgba(0,0,0,0.12);
    transition: 0.3s;
}

.info-card:hover{
    transform: translateY(-6px);
    box-shadow: 0 12px 25px rgba(0,0,0,0.18);
}

.info-icon{
    font-size: 38px;
    color: #0d6efd;
    margin-bottom: 15px;
}

.info-card h4{
    font-weight: bold;
    color: #343a40;
}

.info-card p,
.info-card li{
    color: #6c757d;
}

/* Contact Section */
.contact-box{
    background: #f8f9fa;
    border-radius: 15px;
    padding: 30px;
    margin-top: 35px;
}

.contact-box h3{
    font-weight: bold;
    color: #343a40;
}

.contact-item{
    font-size: 17px;
    margin-top: 15px;
    color: #495057;
}

.contact-item i{
    color: #0d6efd;
    margin-right: 10px;
}

/* Footer */
.footer{
    color: white;
    text-align: center;
    padding: 20px 0;
}

@media(max-width: 576px){

    .about-section{
        padding-top: 105px;
    }

    .about-container{
        padding: 30px 20px;
    }

    .page-heading h1{
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
                    <a class="nav-link"
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
                    <a class="nav-link active"
                       href="${pageContext.request.contextPath}/about">
                        <i class="bi bi-info-circle-fill"></i> About
                    </a>
                </li>

            </ul>

        </div>

    </div>
</nav>
<!-- Navbar End -->


<!-- About Section -->
<section class="about-section">
    <div class="container">

        <div class="about-container">

            <!-- Page Heading -->
            <div class="page-heading">
                <i class="bi bi-info-circle-fill"></i>
                <h1>About Student Management System</h1>
                <p class="lead">
                    A simple and efficient application for managing student information.
                </p>
            </div>


            <div class="row g-4">

                <!-- Project Information -->
                <div class="col-md-6">
                    <div class="card info-card">

                        <i class="bi bi-book-fill info-icon"></i>

                        <h4>Project Information</h4>

                        <p>
                            Student Management System is a web-based application designed
                            to manage student records in an organized way.
                        </p>

                        <p>
                            It helps administrators add, view, update, and delete student
                            details easily without maintaining manual records.
                        </p>

                    </div>
                </div>


                <!-- Main Features -->
                <div class="col-md-6">
                    <div class="card info-card">

                        <i class="bi bi-stars info-icon"></i>

                        <h4>Main Features</h4>

                        <ul>
                            <li>Add new student information</li>
                            <li>Display all registered students</li>
                            <li>Update student details</li>
                            <li>Delete student records</li>
                            <li>Form validation for correct data entry</li>
                            <li>Responsive user interface using Bootstrap</li>
                        </ul>

                    </div>
                </div>


                <!-- Technologies -->
                <div class="col-md-6">
                    <div class="card info-card">

                        <i class="bi bi-code-slash info-icon"></i>

                        <h4>Technologies Used</h4>

                        <ul>
                            <li>Java</li>
                            <li>Spring Boot</li>
                            <li>Spring MVC</li>
                            <li>Spring Data JPA</li>
                            <li>Hibernate</li>
                            <li>JSP and JSTL</li>
                            <li>HTML, CSS and Bootstrap</li>
                            <li>MySQL Database</li>
                        </ul>

                    </div>
                </div>


                <!-- Developer Information -->
                <div class="col-md-6">
                    <div class="card info-card">

                        <i class="bi bi-person-workspace info-icon"></i>

                        <h4>Developer Information</h4>

                        <p>
                            This project is developed as a Java Full Stack learning project.
                        </p>

                        <p>
                            It demonstrates CRUD operations, form validation,
                            database connectivity, and MVC architecture.
                        </p>

                        <p class="mb-0">
                            <strong>Developer:</strong> Prathamesh Dongale
                        </p>

                    </div>
                </div>

            </div>


            <!-- Contact Information -->
            <div class="contact-box">

                <h3>
                    <i class="bi bi-envelope-fill text-primary"></i>
                    Contact Information
                </h3>

                <p class="text-muted">
                    For any query, suggestion, or project-related information,
                    you can contact us using the details below.
                </p>

                <div class="contact-item">
                    <i class="bi bi-person-fill"></i>
                    <strong>Name:</strong> Prathamesh Dongale
                </div>

                <div class="contact-item">
                    <i class="bi bi-envelope-fill"></i>
                    <strong>Email:</strong> prathamesh@example.com
                </div>

                <div class="contact-item">
                    <i class="bi bi-telephone-fill"></i>
                    <strong>Phone:</strong> +91 98765 43210
                </div>

                <div class="contact-item">
                    <i class="bi bi-geo-alt-fill"></i>
                    <strong>Location:</strong> Maharashtra, India
                </div>

            </div>

        </div>

    </div>
</section>


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
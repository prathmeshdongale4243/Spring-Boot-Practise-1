<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Students</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>

body{
    background: linear-gradient(135deg,#667eea,#764ba2);
    min-height:100vh;
    padding-top:90px;
    padding-bottom:30px;
}

/* Main white card */
.table-container{
    background:white;
    max-width:1400px;
    margin:auto;
    padding:30px;
    border-radius:18px;
    box-shadow:0px 10px 30px rgba(0,0,0,0.25);
}

/* Page title */
.page-title{
    text-align:center;
    font-weight:bold;
    color:#4a4a4a;
    margin-bottom:8px;
}

.page-subtitle{
    text-align:center;
    color:#777;
    margin-bottom:25px;
}

/* Table design */
.table{
    margin-bottom:0;
}

.table thead th{
    background:#667eea;
    color:white;
    text-align:center;
    vertical-align:middle;
    white-space:nowrap;
}

.table tbody td{
    text-align:center;
    vertical-align:middle;
}

.table tbody tr:hover{
    background:#f0f2ff;
}

/* Navbar brand */
.navbar-brand{
    font-size:20px;
}

</style>

</head>

<body>

<!-- ================= Navbar Start ================= -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">

        <a class="navbar-brand fw-bold" href="home">
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
                    <a class="nav-link" href="home">
                        Home
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="student-form">
                        Student Enrollment
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" href="display">
                        Display All Students
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="about">
                        About
                    </a>
                </li>

            </ul>

        </div>

    </div>
</nav>
<!-- ================= Navbar End ================= -->


<div class="container">

    <div class="table-container">

        <h2 class="page-title">All Registered Students</h2>

        <p class="page-subtitle">
            View all student registration details below
        </p>

        <!-- If list is empty -->
        <c:if test="${empty list}">
            <div class="alert alert-warning text-center">
                No Student Records Available
            </div>
        </c:if>

        <!-- If list has data -->
        <c:if test="${not empty list}">

            <div class="table-responsive">

                <table class="table table-bordered table-hover table-striped">

                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Qualification</th>
                            <th>Mobile No</th>
                            <th>Course</th>
                            <th>Duration</th>
                            <th>Gender</th>
                            <th>Address</th>
                            <th>Action</th>
                        </tr>
                    </thead>

                    <tbody>

                        <c:forEach items="${list}" var="data">

                            <tr>
                                <td>${data.id}</td>
                                <td>${data.name}</td>
                                <td>${data.email}</td>
                                <td>${data.qulification}</td>
                                <td>${data.mobileno}</td>
                                <td>${data.course}</td>
                                <td>${data.duration}</td>
                                <td>${data.gender}</td>
                                <td>${data.address}</td>
                            	<td>
                            	<a href="update?id=${data.id}" id="update">Update</a>
                            	<a href="delete?id=${data.id}" id="delete" onclick="return confirm('Are you sure you want to delete this student record?');">Delete</a>
                            	</td>
                            </tr>

                        </c:forEach>

                    </tbody>

                </table>

            </div>

        </c:if>

    </div>

</div>

<!-- Bootstrap JavaScript: required for mobile navbar toggle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Enrollment</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>

body{
    background: linear-gradient(135deg,#667eea,#764ba2);
    min-height:100vh;
    padding-top:90px;
    padding-bottom:30px;
}

.form-container{
    background:white;
    padding:35px;
    border-radius:15px;
    width:100%;
    max-width:700px;
    margin:auto;
    box-shadow:0px 10px 30px rgba(0,0,0,0.2);
}

.form-title{
    text-align:center;
    margin-bottom:25px;
    color:#4a4a4a;
    font-weight:bold;
}

.btn-custom{
    background:#667eea;
    color:white;
    width:100%;
    font-size:18px;
    font-weight:bold;
}

.btn-custom:hover{
    background:#5563d6;
    color:white;
}

.message-success{
    text-align:center;
    color:green;
    font-weight:bold;
}

.message-error{
    text-align:center;
    color:red;
    font-weight:bold;
}

</style>

</head>

<body>

<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">

        <a class="navbar-brand fw-bold" href="home">
            Student Management System
        </a>

        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarNav">

            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">

            <ul class="navbar-nav ms-auto">

                <li class="nav-item">
                    <a class="nav-link" href="home">Home</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" href="/form">
                        Student Enrollment
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="display">
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
<!-- Navbar End -->


<div class="form-container">

    <h2 class="form-title">Student Registration Form</h2>

    <h5 class="message-success">${msg1}</h5>
    <h5 class="message-error">${msg2}</h5>

    <form:form action="save" method="post" modelAttribute="student">

        <div class="mb-3">
            <label class="form-label">Name</label>
            <form:input path="name" cssClass="form-control"/>
            <form:errors path="name" cssClass="text-danger"/>
        </div>

        <div class="mb-3">
            <label class="form-label">Email</label>
            <form:input path="email" cssClass="form-control"/>
            <form:errors path="email" cssClass="text-danger"/>
        </div>

        <div class="mb-3">
            <label class="form-label">Password</label>
            <form:password path="password" cssClass="form-control"/>
            <form:errors path="password" cssClass="text-danger"/>
        </div>

        <div class="mb-3">
            <label class="form-label">Qualification</label>

            <form:select path="qulification" cssClass="form-select">
                <form:option value="">-- Select Qualification --</form:option>
                <form:option value="B.Tech">B.Tech</form:option>
                <form:option value="BE">BE</form:option>
                <form:option value="BCA">BCA</form:option>
                <form:option value="BCS">BCS</form:option>
                <form:option value="M.Tech">M.Tech</form:option>
                <form:option value="MCA">MCA</form:option>
                <form:option value="MCS">MCS</form:option>
            </form:select>

            <form:errors path="qulification" cssClass="text-danger"/>
        </div>

        <div class="mb-3">
            <label class="form-label">Mobile Number</label>
            <form:input path="mobileno" cssClass="form-control"/>
            <form:errors path="mobileno" cssClass="text-danger"/>
        </div>

        <div class="mb-3">
            <label class="form-label">Course</label>

            <form:select path="course" cssClass="form-select">
                <form:option value="">-- Select Course --</form:option>
                <form:option value="Java Full Stack">Java Full Stack</form:option>
                <form:option value="Python Full Stack">Python Full Stack</form:option>
                <form:option value="Core Java">Core Java</form:option>
                <form:option value="Core Python">Core Python</form:option>
                <form:option value="Machine Learning">Machine Learning</form:option>
                <form:option value="Web Development">Web Development</form:option>
                <form:option value="Data Engineer">Data Engineer</form:option>
            </form:select>

            <form:errors path="course" cssClass="text-danger"/>
        </div>

        <div class="mb-3">
            <label class="form-label">Gender</label>
            <form:input path="gender" cssClass="form-control"/>
            <form:errors path="gender" cssClass="text-danger"/>
        </div>

        <div class="mb-3">
            <label class="form-label">Address</label>
            <form:textarea path="address" cssClass="form-control" rows="3"/>
            <form:errors path="address" cssClass="text-danger"/>
        </div>

        <button type="submit" class="btn btn-custom">
            Register Student
        </button>

    </form:form>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
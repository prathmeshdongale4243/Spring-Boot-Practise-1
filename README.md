<div align="center">

<span style="color:#111827;">🎓 Student Management System</span>

<p>
  <strong>A Java Full Stack web application built using Spring Boot, Spring MVC, Spring Data JPA, Hibernate, JSP/JSTL, Bootstrap and MySQL.</strong>
</p>

<p>
  <img src="https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white" alt="Java">
  <img src="https://img.shields.io/badge/Spring%20Boot-6DB33F?style=for-the-badge&logo=springboot&logoColor=white" alt="Spring Boot">
  <img src="https://img.shields.io/badge/Spring%20MVC-6DB33F?style=for-the-badge&logo=spring&logoColor=white" alt="Spring MVC">
  <img src="https://img.shields.io/badge/Hibernate-59666C?style=for-the-badge&logo=hibernate&logoColor=white" alt="Hibernate">
  <img src="https://img.shields.io/badge/MySQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white" alt="MySQL">
  <img src="https://img.shields.io/badge/Maven-C71A36?style=for-the-badge&logo=apachemaven&logoColor=white" alt="Maven">
</p>

</div>

📌 Project Overview

Student Management System is a web-based application developed using Java and Spring Boot to manage student information efficiently.

The application provides a simple and user-friendly interface to:

Register new students

View registered student records

Update student information

Delete student records

Validate submitted form data

Prevent duplicate email registration

The project demonstrates practical implementation of a layered architecture, MVC pattern, CRUD operations, database connectivity, form validation, and custom exception handling.

🏗️ Architecture

The application follows a layered architecture:

Layer

Responsibility

Controller Layer

Handles HTTP requests, responses and page navigation

Service Layer

Contains application business logic

Repository Layer

Performs database operations using Spring Data JPA

Entity Layer

Represents database tables using JPA entities

Exception Layer

Handles application-specific exceptions

View Layer

Provides JSP/JSTL-based user interface

🔄 Application Flow

┌─────────────────────────┐
│          User           │
└────────────┬────────────┘
             ↓
┌─────────────────────────┐
│     JSP / HTML / CSS    │
│       Bootstrap         │
└────────────┬────────────┘
             ↓
┌─────────────────────────┐
│     Spring MVC          │
│       Controller        │
└────────────┬────────────┘
             ↓
┌─────────────────────────┐
│      Service Layer      │
└────────────┬────────────┘
             ↓
┌─────────────────────────┐
│    Repository Layer     │
│    Spring Data JPA      │
└────────────┬────────────┘
             ↓
┌─────────────────────────┐
│ Hibernate / JPA / ORM   │
└────────────┬────────────┘
             ↓
┌─────────────────────────┐
│      MySQL Database     │
└─────────────────────────┘

🚀 Features

✅ Student registration

✅ Display all registered students

✅ Update student information

✅ Delete student records

✅ Form validation

✅ Email uniqueness validation

✅ Custom exception handling

✅ MySQL database integration

✅ JSP/JSTL-based user interface

✅ Responsive UI using Bootstrap

✅ Complete CRUD operations

🛠️ Technologies Used

Technology

Purpose

Java

Core programming language

Spring Boot

Application development and configuration

Spring MVC

MVC architecture and HTTP request handling

Spring Data JPA

Database access and repository operations

Hibernate

ORM implementation

JSP

Server-side view technology

JSTL

JSP standard tag support

HTML5

Page structure

CSS3

Styling

Bootstrap

Responsive user interface

MySQL

Relational database

Maven

Build and dependency management

Eclipse IDE

Development environment

📂 Project Structure

src/main/java
│
├── RamBasePackage
│   └── SpringBoot5MvcApp3StudentFormApplication.java
│
├── RamBasePackage.Controller
│   └── StudentController.java
│
├── RamBasePackage.Entity
│   └── Student.java
│
├── RamBasePackage.Exception
│   └── EmailAlreadyExistsException.java
│
├── RamBasePackage.Repo
│   └── StudentRepository.java
│
└── RamBasePackage.Service
    └── StudentService.java

src/main
└── webapp
    ├── about.jsp
    ├── display.jsp
    ├── home.jsp
    ├── studentForm.jsp
    └── update.jsp

💾 CRUD Operations

🟢 Create — Student Registration

Users can register a student by entering:

Name

Email

Password

Qualification

Mobile Number

Course

Gender

Address

🔵 Read — Display Students

All registered student records are displayed in a structured table.

🟡 Update — Update Student

Existing student information can be edited and updated.

🔴 Delete — Delete Student

Student records can be deleted after confirmation.

✅ Form Validation

The application performs validation for:

Required fields

Email format

Password length

Mobile number format

Qualification selection

Course selection

Gender

Address length

Example validation messages:

Name is Required
Password must contain 6 character
Enter valid 10 digit number
Qualification is required
course required
Gender is required
Message should contain minimum 10 alphabets

⚠️ Exception Handling

A custom exception is implemented for duplicate email registration:

EmailAlreadyExistsException

This prevents a user from registering another student with an email address that already exists in the database.

🖥️ Application Screenshots

🏠 Home Page

<img width="1111" alt="Student Management System Home Page" src="https://github.com/user-attachments/assets/2ac7fdd5-c195-4d73-bd92-9e13eed6f775">

📝 Student Registration — Form Validation

<img width="1154" alt="Student Registration Form Validation" src="https://github.com/user-attachments/assets/bc7b6042-18f3-4dab-9819-00090280e7d2">

✅ Student Registration — Successful Submission

<img width="1108" alt="Successful Student Registration" src="https://github.com/user-attachments/assets/37f4c24a-02fb-4152-a345-1b0cc6b21f98">

📋 Display All Students

<img width="1145" alt="Display Students" src="https://github.com/user-attachments/assets/87369755-1c41-4ea9-ade9-de01691b71e0">

✏️ Update Student Record

<img width="1106" alt="Update Student Record" src="https://github.com/user-attachments/assets/6a029edc-61c1-4c59-bff5-8e18628e9ddb">

🗑️ Delete Student Record

<img width="1152" alt="Delete Student Record" src="https://github.com/user-attachments/assets/55e5830e-79d1-40ff-abba-ca7e32c5d508">

ℹ️ About Page

<img width="1127" alt="About Page" src="https://github.com/user-attachments/assets/7a557463-9c1f-4bf4-acae-0d853086ad62">

<img width="1117" alt="About Page Contact Section" src="https://github.com/user-attachments/assets/56cad153-32ce-42fa-ac82-120a3244f63a">

⚙️ How to Run the Project

Prerequisites

Install the following before running the project:

Java JDK

Maven

MySQL

Eclipse IDE or another Java IDE

1. Clone the Repository

git clone https://github.com/prathmeshdongale4243/E-Notes-Spring-Boot-Project-.git

2. Configure MySQL

Create a MySQL database and configure the database connection in the Spring Boot configuration file.

Example:

spring.datasource.url=jdbc:mysql://localhost:3306/your_database
spring.datasource.username=your_username
spring.datasource.password=your_password

Replace your_database, your_username, and your_password with your actual MySQL configuration.

3. Import the Project

Import the project into Eclipse as a Maven Project.

4. Update Maven Dependencies

Allow Eclipse/Maven to download all required dependencies.

5. Run the Application

Run the Spring Boot main application class:

SpringBoot5MvcApp3StudentFormApplication.java

6. Open in Browser

Open the configured local server URL, for example:

http://localhost:8080/

🎯 Learning Objectives

This project provides practical experience with:

Java

Spring Boot

Spring MVC

Dependency Injection

Spring Data JPA

Hibernate ORM

MVC architecture

CRUD operations

Form validation

Custom exception handling

JSP/JSTL

MySQL database connectivity

Maven project management

Git and GitHub

👨‍💻 Developer

<div align="center">

Prathamesh Dongale

Java Full Stack Development Project

</div>

📄 License

This project is created for learning and educational purposes.

<div align="center">

⭐ If you find this project useful, consider giving it a star!

</div>
Home Page
<img width="1111" height="865" alt="image" src="https://github.com/user-attachments/assets/2ac7fdd5-c195-4d73-bd92-9e13eed6f775" />



Student Registration Page
1. Form Data Validation
<img width="1154" height="907" alt="image" src="https://github.com/user-attachments/assets/bc7b6042-18f3-4dab-9819-00090280e7d2" />



2.Correct Data Enter And Register student
<img width="1108" height="915" alt="image" src="https://github.com/user-attachments/assets/37f4c24a-02fb-4152-a345-1b0cc6b21f98" />



Display Students
<img width="1145" height="334" alt="image" src="https://github.com/user-attachments/assets/87369755-1c41-4ea9-ade9-de01691b71e0" />



Update Students Records
<img width="1106" height="844" alt="image" src="https://github.com/user-attachments/assets/6a029edc-61c1-4c59-bff5-8e18628e9ddb" />



Delete Students Records
<img width="1152" height="345" alt="image" src="https://github.com/user-attachments/assets/55e5830e-79d1-40ff-abba-ca7e32c5d508" />



About Page
<img width="1127" height="859" alt="image" src="https://github.com/user-attachments/assets/7a557463-9c1f-4bf4-acae-0d853086ad62" /><imgwidth="1117" height="392" alt="image" src="https://github.com/user-attachments/assets/56cad153-32ce-42fa-ac82-120a3244f63a" />






Student Management System

A web-based Student Management System developed using Java and
Spring Boot.
The application provides a simple interface to register students, view
student records, update existing records, and delete records.

📌 Project Overview

This project demonstrates a Java Full Stack application using Spring
Boot, Spring MVC, Spring Data JPA, Hibernate, JSP/JSTL, Bootstrap, and
MySQL.

The application follows a layered architecture where the
responsibilities are separated into:

Controller Layer -- Handles HTTP requests and navigation.

Service Layer -- Contains business logic.

Repository Layer -- Communicates with the database using Spring
Data JPA.

Entity Layer -- Represents database tables using JPA entities.

Exception Layer -- Handles application-specific exceptions.

🚀 Features

Student registration

Display all registered students

Update student information

Delete student records

Form validation

Email uniqueness validation

Custom exception handling

MySQL database integration

JSP-based user interface

Responsive UI using Bootstrap

CRUD operations

🛠️ Technologies Used

Technology        Purpose

Java              Core programming language
Spring Boot       Application development and configuration
Spring MVC        Web/MVC architecture and request handling
Spring Data JPA   Database access and repository operations
Hibernate         ORM implementation
JSP               Server-side view technology
JSTL              JSP standard tag support
HTML5             Page structure
CSS3              Styling
Bootstrap         Responsive user interface
MySQL             Relational database
Maven             Build and dependency management
Eclipse IDE       Development environment

🏗️ Project Structure

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

🔄 Application Flow

User
  ↓
JSP / HTML / Bootstrap
  ↓
Spring MVC Controller
  ↓
Service Layer
  ↓
Repository Layer
  ↓
Spring Data JPA / Hibernate
  ↓
MySQL Database

💾 CRUD Operations

Create

Register a new student by entering details such as name, email,
qualification, mobile number, course, gender, and address.

Read

Display all registered students in a structured table.

Update

Edit existing student information and save the updated details.

Delete

Delete an existing student record after confirmation.

✅ Validation

The application includes form validation such as:

Required field validation

Email validation

Password validation

Mobile number validation

Qualification selection validation

Course selection validation

Gender validation

Address validation

⚠️ Exception Handling

A custom exception is used for duplicate email handling:

EmailAlreadyExistsException

This prevents registration when an email address already exists in the
student records.

🖥️ Application Pages

Home Page

Provides navigation and an overview of the Student Management System.

Student Registration

Allows users to enter and submit student details.

Display Students

Shows all registered student records with Update and Delete
operations.

Update Student

Allows existing student information to be modified.

About

Provides project information, technologies used, features, and developer
information.

⚙️ How to Run the Project

Prerequisites

Make sure the following are installed:

Java JDK

Maven

MySQL

Eclipse IDE or another Java IDE

Database Configuration

Create a MySQL database.

Configure the database URL, username, and password in the project's
Spring Boot configuration.

Make sure MySQL is running.

Example configuration:

spring.datasource.url=jdbc:mysql://localhost:3306/your_database
spring.datasource.username=your_username
spring.datasource.password=your_password

Use your own database name and credentials.

Run the Application

Import the project into Eclipse as a Maven project.

Update Maven dependencies.

Configure MySQL.

Run the Spring Boot main application class.

Open the application in a browser using the configured local server
port.

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






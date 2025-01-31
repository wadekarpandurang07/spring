<%@page import="edu.jspiders.springmvc.dto.Admin"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<!-- Adding some basic CSS for styling -->
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
    }

    h1 {
        text-align: center;
        color: #333;
        margin-top: 20px;
    }

    p {
        font-size: 1.2em;
        color: #555;
        text-align: center;
    }

    nav {
        background-color: #007BFF;
        padding: 10px 0;
        text-align: center;
    }

    nav a {
        color: white;
        text-decoration: none;
        padding: 10px 20px;
        margin: 0 15px;
        font-size: 16px;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    nav a:hover {
        background-color: #0056b3;
    }

    .message {
        text-align: center;
        color: #ff0000;
        font-weight: bold;
        margin-top: 20px;
    }

    .container {
        width: 80%;
        margin: 0 auto;
        padding: 20px;
        background-color: #ffffff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-top: 30px;
    }

    footer {
        background-color: #333;
        color: white;
        text-align: center;
        padding: 10px 0;
        position: fixed;
        bottom: 0;
        width: 100%;
    }
</style>

</head>
<body>

<h1>Welcome to the Admin Dashboard</h1>

<%
Admin admin = (Admin) session.getAttribute("authenticated_admin");
if (admin != null) {
    int id = admin.getId();
%>

<div class="container">
    <nav>
        <a href="login-page">Log in</a>
        <a href="sign-up-page">Sign up</a>
        <a href="add-student-page">Add Student</a>
        <a href="students">Student List</a>
        <a href="delete-admin?id=<%= id %>">Delete</a>
        <a href="edit-admin?id=<%= id %>">Edit</a>
        <a href="logout">Log out</a>
    </nav>

    <p>As an admin, you can manage students, modify your profile, and perform other administrative tasks. Use the links above to navigate through your options.</p>

<%
} else {
%>
    <div class="message">
        <p>You must be logged in to see this page.</p>
    </div>
<%
}

String messages = (String) request.getAttribute("message");
if (messages != null) {
%>
    <div class="message">
        <h4><%= messages %></h4>
    </div>
<%
}
%>

</div>

<footer>
    <p>&copy; 2025 Admin Dashboard. All rights reserved.</p>
</footer>

</body>
</html>

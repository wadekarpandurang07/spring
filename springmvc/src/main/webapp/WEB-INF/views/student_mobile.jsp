<%@ page import="edu.jspiders.springmvc.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            max-width: 900px;
            margin: 30px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th, td {
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        td a {
            text-decoration: none;
            padding: 6px 12px;
            margin: 5px;
            background-color: #4CAF50;
            color: white;
            border-radius: 4px;
        }

        td a:hover {
            background-color: #45a049;
        }

        .message {
            text-align: center;
            margin-top: 20px;
        }

        .message h4 {
            color: #ff5733;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Student Details</h1>

    <%
    @SuppressWarnings("unchecked")
    Student student = (Student) request.getAttribute("student");
    if (student != null) {
    %>
    <table>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>Course</th>
            <th colspan="2">Action</th>
        </tr>
        <tr>
            <td><%= student.getName() %></td>
            <td><%= student.getEmail() %></td>
            <td><%= student.getMobile() %></td>
            <td><%= student.getCourse() %></td>
            <td><a href="edit-student?id=<%= student.getId() %>">Edit</a></td>
            <td><a href="delete-student?id=<%= student.getId() %>">Delete</a></td>
        </tr>
    </table>
    <%
    }
    %>

    <div class="message">
        <%
        String message = (String) request.getAttribute("message");
        if (message != null) {
        %>
        <h4><%= message %></h4>
        <%
        }
        %>
    </div>
</div>

</body>
</html>

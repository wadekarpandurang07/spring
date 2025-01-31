<%@ page import = "edu.jspiders.springmvc.dto.Admin" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Admin Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .container {
        background-color: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 400px;
        text-align: center;
    }

    .container h2 {
        color: #333;
        margin-bottom: 20px;
    }

    form {
        width: 100%;
    }

    table {
        width: 100%;
        margin-bottom: 20px;
    }

    td {
        padding: 8px;
    }

    input[type="email"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 16px;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #4CAF50;
        border: none;
        color: white;
        font-size: 16px;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }

    p {
        margin-top: 20px;
        font-size: 14px;
    }

    a {
        color: #4CAF50;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<%
Admin admin = (Admin) session.getAttribute("authenticated_admin");
int id = admin.getId();
String email = admin.getEmail();
String password = admin.getPassword();
%>
<div class="container">
    <h2>Update Your Details</h2>
    <form action="./update-admin" method="post">
        <table>
            <tr>
                <td>Id</td>
                <td><input type="text" name="id" value="<%= id %>" readonly></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="email" name="email" value="<%= email %>"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password" value="<%= password %>"></td>
            </tr>
        </table>
        <input type="submit" value="Update">
    </form>
    <%
    String message = (String) request.getAttribute("message");
    if (message != null) {
    %>
    <h4><%=message%></h4>
    <%
    }
    %>
</div>

</body>
</html>

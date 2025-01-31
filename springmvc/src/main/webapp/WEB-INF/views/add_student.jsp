<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }
        td {
            padding: 10px;
            text-align: left;
            font-size: 16px;
        }
        input[type="text"],
        input[type="email"],
        input[type="tel"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        input[type="radio"] {
            margin-right: 5px;
        }
        label {
            font-size: 16px;
            margin-left: 5px;
        }
        .submit-btn {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 18px;
            cursor: pointer;
        }
        .submit-btn:hover {
            background-color: #45a049;
        }
        .message {
            text-align: center;
            font-size: 18px;
            color: #28a745;
            margin-top: 20px;
        }
        .message.error {
            color: #dc3545;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Add Student</h2>
        <form action="./add-student" method="post">
            <table>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" placeholder="Enter student name" required></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email" placeholder="Enter student email" required></td>
                </tr>
                <tr>
                    <td>Mobile</td>
                    <td><input type="tel" name="mobile" placeholder="Enter student mobile" required></td>
                </tr>
                <tr>
                    <td>Course</td>
                    <td>
                        <input type="radio" name="course" value="DEVELOPMENT" id="development">
                        <label for="development">Development</label>
                        <input type="radio" name="course" value="TESTING" id="testing">
                        <label for="testing">Testing</label>
                    </td>
                </tr>
            </table>
            <input type="submit" value="ADD" class="submit-btn">
        </form>

        <%
        String message = (String) request.getAttribute("message");
        if (message != null) {
        %>
        <div class="message">
            <%= message %>
        </div>
        <%
        }
        %>
    </div>

</body>
</html>

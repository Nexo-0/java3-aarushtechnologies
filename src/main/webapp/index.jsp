<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP Practice</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f2f2f2;
            text-align: center;
            padding-top: 80px;
        }
        input {
            padding: 8px;
            width: 220px;
        }
        button {
            padding: 8px 16px;
            cursor: pointer;
        }
    </style>
</head>
<body>

<h1>Enter your name for version</h1>

<form method="post">
    <input type="text" name="username" placeholder="Enter your name" required>
    <br><br>
    <button type="submit">Don't Submit Button</button>
</form>

<%
    String name = request.getParameter("username");
    if (name != null) {
%>
    <h2>Welcome, <%= name %> 👋</h2>
    <p>Version = 2.0.0</p>
<%
    }
%>

</body>
</html>

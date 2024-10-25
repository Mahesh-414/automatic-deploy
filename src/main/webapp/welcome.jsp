<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Result</title>
</head>
<body>
    <%
        // Retrieve username and password from request
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Hardcoded credentials for demonstration
        String correctUsername = "user1";
        String correctPassword = "password1";

        // Check if credentials match
        if (username != null && password != null &&
            username.equals(correctUsername) && password.equals(correctPassword)) {
    %>
        <h2>Login Successful!</h2>
        <p>Welcome, <%= username %>!</p>
    <%
        } else {
    %>
        <h2>Login Failed</h2>
        <p>Invalid username or password. Please <a href="login.jsp">try again</a>.</p>
    <%
        }
    %>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Home</title>
</head>
<body>
    <h2>Welcome, <%= session.getAttribute("username") %>!</h2>
    
    <!-- Display success or error messages -->
    <%
        String successMessage = request.getParameter("success");
        String errorMessage = request.getParameter("error");
        
        if (successMessage != null) {
            out.println("<p style='color: yellow;'>" + successMessage + "</p>");
        }
        if (errorMessage != null) {
            out.println("<p style='color: red;'>" + errorMessage + "</p>");
        }
    %>
    
    <!-- Navigation menu -->
    <ul>
        <li><a href="ViewAccountDetailsServlet">View Account Details</a></li>
        <li><a href="LogoutServlet">Log Out</a></li>
    </ul>
</body>
</html>
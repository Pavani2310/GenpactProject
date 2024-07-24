<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Account</title>
</head>
<body>
    <h2>Delete Account</h2>
    <form action="DeleteAccountServlet" method="post">
        <label for="accountNumber">Account Number:</label>
        <input type="text" id="accountNumber" name="accountNumber" required><br><br>
        <input type="submit" value="Delete Account">
    </form>
    <%
        String successMessage = request.getParameter("success");
        String errorMessage = request.getParameter("error");
        if (successMessage != null) {
            out.println("<p style='color: green;'>" + successMessage + "</p>");
        }
        if (errorMessage != null) {
            out.println("<p style='color: red;'>" + errorMessage + "</p>");
        }
    %>
</body>
</html>
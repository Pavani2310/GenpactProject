<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.model.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Account</title>
</head>
<body>
    <h2>Edit Account</h2>
    
    <!-- Form to find account -->
    <form action="FindAccountServlet" method="post">
        <label for="accountNumber">Account Number:</label>
        <input type="text" id="accountNumber" name="accountNumber" required><br><br>
        <input type="submit" value="Find Account">
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
        
        Account account = (Account)request.getAttribute("account");
        
        if (account != null) {
    %>
        <!-- Form to update account details -->
        <form action="EditAccountServlet" method="post">
            <input type="hidden" name="accountNumber" value="<%= account.getAccountNumber() %>">
            
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" value="<%= account.getUsername() %>" required><br><br>
            
            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="dob" value="<%= account.getDob() %>" required><br><br>
            
            <label for="phone">Phone Number:</label>
            <input type="text" id="phone" name="phone" value="<%= account.getPhone() %>" required><br><br>
            
            <label for="email">Email ID:</label>
            <input type="email" id="email" name="email" value="<%= account.getEmail() %>" required><br><br>
            
            <label for="address">Address:</label>
            <textarea id="address" name="address" required><%= account.getAddress() %></textarea><br><br>
            
            <label for="accountType">Account Type:</label>
            <select id="accountType" name="accountType" required>
                <option value="savings" <%= "savings".equals(account.getAccountType()) ? "selected" : "" %>>Savings</option>
                <option value="current" <%= "current".equals(account.getAccountType()) ? "selected" : "" %>>Current</option>
            </select><br><br>
            
            <label for="gender">Gender:</label>
            <select id="gender" name="gender" required>
                <option value="male" <%= "male".equals(account.getGender()) ? "selected" : "" %>>Male</option>
                <option value="female" <%= "female".equals(account.getGender()) ? "selected" : "" %>>Female</option>
                <option value="other" <%= "other".equals(account.getGender()) ? "selected" : "" %>>Other</option>
            </select><br><br>
            
            <input type="submit" value="Update Account">
        </form>
    <% } %>
</body>
</html>
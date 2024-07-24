<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Account Details</title>
</head>
<body>
    <h2>Account Details</h2>
    <c:if test="${not empty customer}">
        <table border="1">
            <tr><th>Account Number</th><td>${customer.accountNo}</td></tr>
            <tr><th>Full Name</th><td>${customer.fullName}</td></tr>
            <tr><th>Address</th><td>${customer.address}</td></tr>
            <tr><th>Mobile Number</th><td>${customer.mobileNo}</td></tr>
            <tr><th>Email ID</th><td>${customer.emailId}</td></tr>
            <tr><th>Account Type</th><td>${customer.accountType}</td></tr>
            <tr><th>Balance</th><td>${customer.initialBalance}</td></tr>
            <tr><th>Date of Birth</th><td>${customer.dob}</td></tr>
            <tr><th>ID Proof</th><td>${customer.idProof}</td></tr>
        </table>
    </c:if>
    <a href="customerDashboard.jsp">Back to Dashboard</a>
</body>
</html>
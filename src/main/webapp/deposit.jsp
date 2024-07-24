<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Deposit</title>
</head>
<body>
    <h2>Deposit Money</h2>
    <form action="DepositServlet" method="post">
        <label for="amount">Amount:</label>
        <input type="number" id="amount" name="amount" required><br>
        <input type="submit" value="Deposit">
    </form>
</body>
</html>
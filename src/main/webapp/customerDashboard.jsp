<!DOCTYPE html>
<html>
<head>
    <title>Customer Dashboard</title>
</head>
<body>
    <h2>Welcome 
    </h2>
    <table border="1">
    </table>
    <br>
    <a href="ViewAccountDetailsServlet?accountNo=${customer.accountNo}">View Account Details</a><br>
    <a href="deposit.jsp?accountNo=${customer.accountNo}">Deposit</a><br>
    <a href="withdraw.jsp?accountNo=${customer.accountNo}">Withdraw</a><br>
    <a href="transactionHistory.jsp?accountNo=${customer.accountNo}">Transaction History</a><br>
    <a href="closeAccount.jsp?accountNo=${customer.accountNo}">Close Account</a><br>
    <a href="logout.jsp">Logout</a><br>
    <a href="ViewAccountDetailsServlet?accountNo=${customer.accountNo}">View Account Details</a><br>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
<style>
body {
    margin: 0;
    padding: 0;
    font-family: 'Arial', sans-serif;
    background-color: #f8f9fa;
    display: flex;
    flex-direction: column;
    align-items: center;
    min-height: 100vh;
}

.header {
    width: 100%;
    background-color: #007bff;
    color: #ffffff;
    text-align: center;
    padding: 15px 0;
}

.header h1 {
    margin: 0;
    font-size: 28px;
}

.header a {
    color: #ffffff;
    text-decoration: none;
    font-size: 16px;
    margin: 15px;
    display: inline-block;
    transition: color 0.3s ease;
}

.header a:hover {
    color: #d4d4d4;
}

.container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    padding: 20px;
    max-width: 1200px;
}

.card {
    background: #ffffff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 280px;
    margin: 15px;
    text-align: center;
    padding: 20px;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.card:hover {
    transform: translateY(-5px);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
}

.card .title {
    font-size: 20px;
    margin-bottom: 10px;
    color: #007bff;
}

.card .description {
    font-size: 14px;
    margin-bottom: 20px;
    color: #6c757d;
}

.card button {
    background-color: #007bff;
    border: none;
    border-radius: 5px;
    color: #ffffff;
    cursor: pointer;
    font-size: 16px;
    padding: 10px 20px;
    transition: background-color 0.3s ease;
}

.card button:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
    <div class="header">
        <h1>Admin Dashboard</h1>
        <a href="index.html">Log Out</a>
    </div>

    <div class="container">
        <div class="card">
            <div class="title">Register Customer</div>
            <div class="description">Register new customer accounts.</div>
            <button onclick="redirectTo('register')">Register</button>
        </div>
        <div class="card">
            <div class="title">Modify Customer</div>
            <div class="description">Modify existing customer accounts.</div>
            <button onclick="redirectTo('modify')">Modify</button>
        </div>
        <div class="card">
            <div class="title">Delete Account</div>
            <div class="description">Delete customer accounts.</div>
            <button onclick="redirectTo('delete')">Delete</button>
        </div>
        <div class="card">
            <div class="title">Display Customer</div>
            <div class="description">Display customer account information.</div>
            <button onclick="redirectTo('display')">Display</button>
        </div>
    </div>

    <script>
        function redirectTo(action) {
            switch(action) {
                case 'register':
                    window.location.href = 'customerregistration.jsp'; // Replace with the actual URL for registration
                    break;
                case 'modify':
                    window.location.href = 'ModifyCustomer.html'; // Replace with the actual URL for modification
                    break;
                case 'delete':
                    window.location.href = 'DeleteCustomer.html'; // Replace with the actual URL for deletion
                    break;
                case 'display':
                    window.location.href = 'DisplayCustomer.html'; // Replace with the actual URL for display
                    break;
                default:
                    console.error('Unknown action:', action);
            }
        }
    </script>
</body>
</html>
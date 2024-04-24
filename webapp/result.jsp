<!DOCTYPE html>
<html>
<head>
    <title>ID Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
            padding: 0;
        }
        .container {
            text-align: center;
        }
        h1 {
            color: #333;
        }
        p {
            font-size: 18px;
            margin: 3rem;
        }
        a {
            text-decoration: none;
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
        }
        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>ID Result</h1>
        <p>Generated ID: <%= request.getAttribute("id") %></p>
        <a href="index.jsp">Generate Another ID</a>
    </div>
</body>
</html>

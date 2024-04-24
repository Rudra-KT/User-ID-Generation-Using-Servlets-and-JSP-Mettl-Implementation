<!DOCTYPE html>
<html>
<head>
    <title>ID Generator</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body{
            text-align:center;
            margin:0;
            padding:0;
           }

        .form {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
            padding: 0;
        }
        form {
            width: 300px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        input[type="text"], input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
     <h1>ID Generator</h1>
     <div class="form">
        <form action="GenerateID" method="post">
            First Name: <input type="text" name="firstName"><br>
            Last Name: <input type="text" name="lastName"><br>
            Pin: <input type="text" name="pin"><br>
            Number: <input type="text" name="number"><br>
            <input type="submit" value="Generate ID">
        </form>
    </div>
</body>
</html>


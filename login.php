<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <title>Giriş Yap</title>
</head>
<style>
   

body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    padding: 20px;
}

h2 {
    color: #333;
}

form {
    max-width: 400px;
    margin: 0 auto;
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
    display: block;
    font-weight: bold;
    margin-bottom: 10px;
}

input[type="text"],
input[type="password"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

button[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
}

button[type="submit"]:hover {
    background-color: #45a049;
}

button[type="submit"]:focus {
    outline: none;
}

/* Optional: Adjustments for smaller screens */
@media screen and (max-width: 600px) {
    form {
        width: 100%;
    }
}

    </style>
<body>
    <h2>Admin Panel</h2>
    <form action="login_process.php" method="POST">
        <label for="username">Kullanıcı Adı:</label>
        <input type="text" id="username" name="username" required><br><br>
        <label for="password">Şifre:</label>
        <input type="password" id="password" name="password" required><br><br>
       
        <button type="submit">Giriş Yap</button>
    </form>
</body>
</html>


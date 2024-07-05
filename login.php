<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <title>Giriş Yap</title>
</head>
<body>
    <h2>Giriş Yap</h2>
    <form action="login_process.php" method="POST">
        <label for="username">Kullanıcı Adı:</label>
        <input type="text" id="username" name="username" required><br><br>
        <label for="password">Şifre:</label>
        <input type="password" id="password" name="password" required><br><br>
        <label for="role">Rol:</label>
        <select id="role" name="role" required>
            <option value=$admin>$admin</option>
            <option value=$teknisyen>teknisyen</option>
            <option value=$misafir>misafir</option>
        </select><br><br>
        <button type="submit">Giriş Yap</button>
    </form>
</body>
</html>


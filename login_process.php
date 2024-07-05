<?php
require_once('config.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $role = $_POST['role'];

    // Kullanıcıyı veritabanından sorgula
    $stmt = $conn->prepare("SELECT * FROM kullanici WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 1) {
        $user = $result->fetch_assoc();

        // Parola doğrulaması
        if (password_verify($password, $user['password']) && $user['role'] == $role) {
            // Oturumu başlat
            $_SESSION['user_id'] = $user['user_id'];
            $_SESSION['username'] = $user['username'];
            $_SESSION['role'] = $user['role'];

            // Giriş başarılı, ana sayfaya yönlendir
            header("Location: index.php");
            exit();
        } else {
            // Hatalı kullanıcı adı, şifre veya rol
            echo "Hatalı kullanıcı adı, şifre veya rol.";
        }
    } else {
        // Kullanıcı bulunamadı
        echo "Kullanıcı bulunamadı.";
    }
}
?>
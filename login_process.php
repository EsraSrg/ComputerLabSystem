<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    $username = $_POST['username'];
    $password = $_POST['password'];

   
    $correctUsername = "Admin";
    $correctPassword = "egemyo123";

    
    if ($username === $correctUsername && $password === $correctPassword) {
        
        echo "Giriş başarılı! Hoş geldiniz, $username.";
        header("Location: admin_panel.php");
    } else {
        
        echo "Kullanıcı adı veya şifre hatalı.";
    }
}
?>

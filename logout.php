<?php
session_start(); // Oturumu başlat

// Oturumu sonlandır
session_unset();
session_destroy();

// Ana sayfaya yönlendir
header("Location: index.php");
exit();
?>

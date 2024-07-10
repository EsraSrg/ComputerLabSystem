<?php
require_once('config.php');

if (isset($_POST['tip'])) {
    $tip = $_POST['tip'];
    
    // tip_no'ya göre veritabanından bilgileri al
    $query = "SELECT * FROM tip_tbl WHERE tip_no = '$tip'";
    $result = $conn->query($query);
    
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        echo "<p><strong>İşletim Sistemi:</strong> {$row['isletim_sistemi']}</p>";
        echo "<p><strong>Ekran Kartı:</strong> {$row['ekran_kartı']}</p>";
        echo "<p><strong>RAM:</strong> {$row['RAM']}</p>";
        echo "<p><strong>Sistem Türü:</strong> {$row['sistem_türü']}</p>";
        echo "<p><strong>İşlemci:</strong> {$row['islemci']}</p>";
    } else {
        echo "<p>Bilgi bulunamadı.</p>";
    }
} else {
    echo "<p>Geçersiz istek.</p>";
}
?>


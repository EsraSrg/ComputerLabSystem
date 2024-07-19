<?php
// Veritabanı bağlantısını dahil et
require_once('config.php');

// Formdan gelen verileri al
$lab_id = $_POST['lab_id'];
$bilg_no = $_POST['bilg_no'];
$tip = $_POST['tip'];
$isletim_sistemi = $_POST['isletim_sistemi'];
$sistem_tür = $_POST['sistem_tür'];
$islemci = $_POST['islemci'];
$RAM = $_POST['RAM'];
$ekran_kartı = $_POST['ekran_kartı'];
$yüklü_programlar = $_POST['yüklü_programlar'];

// SQL sorgusunu hazırla
$query = "INSERT INTO bilgisayarlar (lab_id, bilg_no, tip, isletim_sistemi, sistem_tür, islemci, RAM, ekran_kartı, yüklü_programlar, status) 
          VALUES ('$lab_id', '$bilg_no', '$tip', '$isletim_sistemi', '$sistem_tür', '$islemci', '$RAM', '$ekran_kartı', '$yüklü_programlar', 'calisiyor')";

// Sorguyu çalıştır ve sonucu kontrol et
if ($conn->query($query) === TRUE) {
    // Başarılı bir şekilde eklendiğinde başarılı mesajıyla ana sayfaya yönlendir
    $message = "Bilgisayar başarıyla eklendi.";
    $message_type = "success";
} else {
    // Hata durumunda hata mesajıyla ana sayfaya yönlendir
    $message = "Bilgisayar eklenirken hata oluştu: " . $conn->error;
    $message_type = "danger";
}

// Veritabanı bağlantısını kapat  
$conn->close();

// Yönlendirme yapılacak sayfaya geri dön
header("Location: admin_panel.php?message=" . urlencode($message) . "&message_type=" . $message_type);
exit();
?>



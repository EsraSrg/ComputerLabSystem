<?php
// Veritabanı bağlantısını dahil et
require_once('config.php');

// Bilgisayar ID'sini al
if (isset($_GET['bilg_id'])) {
    $bilg_id = $_GET['bilg_id'];

    // Bilgisayarı veritabanından sil
    $query = "DELETE FROM bilgisayarlar WHERE bilg_id = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param('i', $bilg_id);
    
    if ($stmt->execute()) {
        // Silme işlemi başarılı olduysa, mesaj gönder
        header('Location: admin_panel.php?message=Bilgisayar başarılı bir şekilde silindi&message_type=success');
    } else {
        // Silme işlemi başarısız olduysa, hata mesajı gönder
        header('Location: admin_panel.php?message=Bilgisayar silinirken bir hata oluştu&message_type=danger');
    }

    $stmt->close();
} else {
    // Bilgisayar ID'si geçerli değilse, hata mesajı gönder
    header('Location: admin_panel.php?message=Geçersiz bilgisayar ID\'si&message_type=danger');
}

$conn->close();
exit();
?>


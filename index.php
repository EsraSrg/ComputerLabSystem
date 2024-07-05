<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <title>Ege Üniversitesi Bilgisayar Laboratuvarları Sistemi</title>
</head>
<body>
    <h1>Ege Üniversitesi Bilgisayar Laboratuvarları</h1>
    <ul>
        <?php
        // Labları veritabanından çekme ve listeleme
        require_once('config.php');
        
        $query = "SELECT * FROM labs";
        $result = $conn->query($query);
        
        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                echo "<li><a href='lab.php?id={$row['lab_id']}'>{$row['lab_name']}</a></li>";
            }
        } else {
            echo "<li>Kayıt bulunamadı.</li>";
        }
        ?>
    </ul>

    <div style="position: absolute; top: 10px; right: 10px;">
        <?php if (!isset($_SESSION['user_id'])): ?>
            <a href="login.php">Giriş Yap</a>
        <?php else: ?>
            <p>Hoş geldiniz, <?php echo $_SESSION['username']; ?>!</p>
            <a href="logout.php">Çıkış Yap</a>
        <?php endif; ?>
    </div>
</body>
</html>

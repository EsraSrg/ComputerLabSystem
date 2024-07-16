<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <title>Admin Paneli - Bilgisayar Yönetimi</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        
        .computer-table {
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <div class="container">
        <!-- Çıkış Yap ve Anasayfa Butonları -->
        <div class="mt-3">
            <a href="index.php" class="btn btn-primary">Anasayfa</a>
            <a href="logout.php" class="btn btn-danger float-right">Çıkış Yap</a>
        </div>

        <div class="header">
            <h2>Admin Paneli - Bilgisayar Yönetimi</h2>
        </div>
        
        <!-- İşlem Sonucu Mesajı -->
        <?php if (isset($_GET['message'])): ?>
            <div class="alert alert-<?php echo $_GET['message_type']; ?>" role="alert">
                <?php echo $_GET['message']; ?>
            </div>
        <?php endif; ?>
        
        <!-- Bilgisayar Ekleme Formu -->
        <div class="card">
            <div class="card-header">
                Bilgisayar Ekle
            </div>
            <div class="card-body">
                <form method="post" action="bilgisayar_ekle.php">
                    <div class="form-group">
                        <label for="lab_id">Laboratuvar ID:</label>
                        <input type="text" class="form-control" id="lab_id" name="lab_id" required>
                    </div>
                    <div class="form-group">
                        <label for="bilg_no">Bilgisayar No:</label>
                        <input type="text" class="form-control" id="bilg_no" name="bilg_no" required>
                    </div>
                    <div class="form-group">
                        <label for="tip">Tip:</label>
                        <input type="text" class="form-control" id="tip" name="tip" required>
                    </div>
                    <div class="form-group">
                        <label for="isletim_sistemi">İşletim Sistemi:</label>
                        <input type="text" class="form-control" id="isletim_sistemi" name="isletim_sistemi" required>
                    </div>
                    <div class="form-group">
                        <label for="sistem_tur">Sistem Türü:</label>
                        <input type="text" class="form-control" id="sistem_tur" name="sistem_tur" required>
                    </div>
                    <div class="form-group">
                        <label for="islemci">İşlemci:</label>
                        <input type="text" class="form-control" id="islemci" name="islemci" required>
                    </div>
                    <div class="form-group">
                        <label for="RAM">RAM:</label>
                        <input type="text" class="form-control" id="RAM" name="RAM" required>
                    </div>
                    <div class="form-group">
                        <label for="ekran_karti">Ekran Kartı:</label>
                        <input type="text" class="form-control" id="ekran_karti" name="ekran_karti" required>
                    </div>
                    <div class="form-group">
                        <label for="yuklu_programlar">Yüklü Programlar:</label>
                        <textarea class="form-control" id="yuklu_programlar" name="yuklu_programlar" rows="3" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Ekle</button>
                </form>
            </div>
        </div>
        
        <!-- Bilgisayarlar Tablosu -->
        <div class="card mt-5">
            <div class="card-header">
                Bilgisayarlar
            </div>
            <div class="card-body">
                <?php
                require_once('config.php');
                
                // Veritabanından bilgisayarları sorgula
                $query = "SELECT * FROM bilgisayarlar";
                $result = $conn->query($query);
                
                if ($result->num_rows > 0) {
                    echo "<div class='table-responsive'>";
                    echo "<table class='table table-bordered'>";
                    echo "<thead class='thead-light'>";
                    echo "<tr><th scope='col'>ID</th><th scope='col'>Laboratuvar ID</th><th scope='col'>Tip</th><th scope='col'>İşletim Sistemi</th><th scope='col'>Sistem Türü</th><th scope='col'>İşlemci</th><th scope='col'>RAM</th><th scope='col'>Ekran Kartı</th><th scope='col'>Yüklü Programlar</th><th scope='col'>Durum</th><th scope='col'>İşlemler</th></tr>";
                    echo "</thead>";
                    echo "<tbody>";
                    
                    while ($row = $result->fetch_assoc()) {
                        $status = $row['status'] == 'arizali' ? 'Arızalı' : 'Çalışıyor';
                        echo "<tr>";
                        echo "<td>{$row['bilg_id']}</td>";
                        echo "<td>{$row['lab_id']}</td>";
                       
                        echo "<td>{$row['tip']}</td>";
                        echo "<td>{$row['isletim_sistemi']}</td>";
                        echo "<td>{$row['sistem_tür']}</td>";
                        echo "<td>{$row['islemci']}</td>";
                        echo "<td>{$row['RAM']}</td>";
                        echo "<td>{$row['ekran_kartı']}</td>";
                        echo "<td>{$row['yüklü_programlar']}</td>";
                        echo "<td>{$status}</td>";
                        echo "<td><a href='bilgisayar_sil.php?bilg_id={$row['bilg_id']}' class='btn btn-danger btn-sm' onclick='return confirm(\"Bu bilgisayarı silmek istediğinize emin misiniz?\")'>Sil</a></td>";
                        echo "</tr>";
                    }
                    
                    echo "</tbody>";
                    echo "</table>";
                    echo "</div>";
                } else {
                    echo "<div class='alert alert-warning'>Hiç bilgisayar bulunamadı.</div>";
                }
                ?>
            </div>
        </div>
    </div>

    <!-- JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>



<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <title>Ege Meslek Yüksekokulu Bilgisayar Laboratuvarları</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Özel CSS stilleri */
        .header-with-icon {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 60px;
        }
        .header-with-icon img {
            width: 100px; 
            height: auto; 
        }
        .computer-table {
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header-with-icon" >
            <img src="images/ege.icon.png" >
            <h1>Ege Meslek Yüksekokulu Bilgisayar Laboratuvarları</h1>
        </div>
        
        <ul class="list-group">
            <?php
            require_once('config.php');
            
            // Labs tablosundan laboratuvarları sorgulayıp listeliyoruz
            $query = "SELECT * FROM labs";
            $result = $conn->query($query);
            
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<li class='list-group-item'><a href='index.php?lab_id={$row['lab_id']}'>{$row['lab_name']}</a></li>";
                    
                    // Eğer lab_id URL parametresi varsa ve geçerli bir lab_id ise, bilgisayarları listele
                    if (isset($_GET['lab_id']) && $_GET['lab_id'] == $row['lab_id']) {
                        $lab_id = $row['lab_id'];
                        
                        // Her laboratuvar için bilgisayarları sorguluyoruz
                        $query_computers = "SELECT * FROM bilgisayarlar WHERE lab_id = $lab_id";
                        $result_computers = $conn->query($query_computers);
                        
                        if ($result_computers->num_rows > 0) {
                            echo "<div class='computer-table'>";
                            echo "<table class='table table-bordered'>";
                            echo "<thead class='thead-light'>";
                            echo "<tr><th scope='col'>Bilgisayar ID</th><th scope='col'>İşletim Sistemi</th><th scope='col'>Sistem Türü</th><th scope='col'>İşlemci</th><th scope='col'>RAM</th><th scope='col'>Ekran Kartı</th><th scope='col'>Yüklü Programlar</th><th scope='col'>Durum</th></tr>";
                            echo "</thead>";
                            echo "<tbody>";
                            
                            while ($computer_row = $result_computers->fetch_assoc()) {
                                // Durum kontrolü
                                $status = ($computer_row['status'] == 'arızalı') ? 'Arızalı' : 'Normal';
                                
                                echo "<tr>";
                                echo "<td>{$computer_row['bilg_id']}</td>";
                                echo "<td>{$computer_row['isletim_sistemi']}</td>";
                                echo "<td>{$computer_row['sistem_tür']}</td>";
                                echo "<td>{$computer_row['islemci']}</td>";
                                echo "<td>{$computer_row['RAM']}</td>";
                                echo "<td>{$computer_row['ekran_kartı']}</td>";
                                echo "<td>{$computer_row['yüklü_programlar']}</td>";
                                echo "<td>{$status}</td>";
                                echo "</tr>";
                            }
                            
                            echo "</tbody>";
                            echo "</table>";
                            echo "</div>";
                        } else {
                            echo "<div class='alert alert-warning'>Bu laboratuvar için kayıtlı bilgisayar bulunamadı.</div>";
                        }
                    }
                }
            } else {
                echo "<li class='list-group-item'>Kayıt bulunamadı.</li>";
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
    </div>

    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>


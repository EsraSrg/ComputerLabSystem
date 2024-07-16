<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <title>Ege Meslek Yüksekokulu Bilgisayar Laboratuvarları</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
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
        <div class="header-with-icon">
            <img src="images/ege.icon.png" alt="Ege İkonu">
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
                        
                        // Filter options
                        $tip = isset($_GET['tip']) ? $_GET['tip'] : '';
                        $isletim_sistemi = isset($_GET['isletim_sistemi']) ? $_GET['isletim_sistemi'] : '';
                        $islemci = isset($_GET['islemci']) ? $_GET['islemci'] : '';
                        $RAM = isset($_GET['RAM']) ? $_GET['RAM'] : '';
                        $ekran_karti = isset($_GET['ekran_karti']) ? $_GET['ekran_karti'] : '';
                        
                        // SQL query for computers
                        $query_computers = "SELECT * FROM bilgisayarlar WHERE lab_id = $lab_id";
                        
                        // Add filters to SQL query if set
                        if (!empty($tip)) {
                            $query_computers .= " AND tip LIKE '%$tip%'";
                        }
                        if (!empty($isletim_sistemi)) {
                            $query_computers .= " AND isletim_sistemi LIKE '%$isletim_sistemi%'";
                        }
                        if (!empty($islemci)) {
                            $query_computers .= " AND islemci LIKE '%$islemci%'";
                        }
                        if (!empty($RAM)) {
                            $query_computers .= " AND RAM LIKE '%$RAM%'";
                        }
                        if (!empty($ekran_karti)) {
                            $query_computers .= " AND ekran_kartı LIKE '%$ekran_karti%'";
                        }
                        
                        $result_computers = $conn->query($query_computers);
                        
                        if ($result_computers->num_rows > 0) {
                            echo "<div class='computer-table'>";
                            echo "<table class='table table-bordered'>";
                            echo "<thead class='thead-light'>";
                            echo "<tr><th scope='col'>Bilgisayar No</th><th scope='col'>Tip</th><th scope='col'>İşletim Sistemi</th><th scope='col'>Sistem Türü</th><th scope='col'>İşlemci</th><th scope='col'>RAM</th><th scope='col'>Ekran Kartı</th><th scope='col'>Yüklü Programlar</th><th scope='col'>Durum</th></tr>";
                            echo "</thead>";
                            echo "<tbody>";
                            
                            while ($computer_row = $result_computers->fetch_assoc()) {
                                // Durum kontrolü
                                $status = ($computer_row['status'] == 'arızalı') ? 'Arızalı' : 'Çalışıyor';
                                
                                echo "<tr>";
                                echo "<td>{$computer_row['bilg_no']}</td>";
                                echo "<td><a href='#' class='computer-detail' data-tip='{$computer_row['tip']}'>{$computer_row['tip']}</a></td>";
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

        <!-- Filtering Section -->
        <div class="row mt-5">
            <div class="col-md-6">
                <h3>Filtrele</h3>
                <form method="get" action="index.php">
                    <input type="hidden" name="lab_id" value="<?php echo isset($_GET['lab_id']) ? $_GET['lab_id'] : ''; ?>">
                    <div class="form-group">
                        <label for="tip">Tip:</label>
                        <input type="text" class="form-control" id="tip" name="tip" value="<?php echo isset($_GET['tip']) ? $_GET['tip'] : ''; ?>">
                    </div>
                    <div class="form-group">
                        <label for="isletim_sistemi">İşletim Sistemi:</label>
                        <input type="text" class="form-control" id="isletim_sistemi" name="isletim_sistemi" value="<?php echo isset($_GET['isletim_sistemi']) ? $_GET['isletim_sistemi'] : ''; ?>">
                    </div>
                    <div class="form-group">
                        <label for="islemci">İşlemci:</label>
                        <input type="text" class="form-control" id="islemci" name="islemci" value="<?php echo isset($_GET['islemci']) ? $_GET['islemci'] : ''; ?>">
                    </div>
                    <div class="form-group">
                        <label for="RAM">RAM:</label>
                        <input type="text" class="form-control" id="RAM" name="RAM" value="<?php echo isset($_GET['RAM']) ? $_GET['RAM'] : ''; ?>">
                    </div>
                    <div class="form-group">
                        <label for="ekran_karti">Ekran Kartı:</label>
                        <input type="text" class="form-control" id="ekran_karti" name="ekran_karti" value="<?php echo isset($_GET['ekran_karti']) ? $_GET['ekran_karti'] : ''; ?>">
                    </div>
                    <button type="submit" class="btn btn-primary">Filtrele</button>
                </form>
            </div>
        </div>
        
        <!-- Admin Panel or Logout -->
        <div style="position: absolute; top: 10px; right: 10px;">
            <?php if (!isset($_SESSION['user_id'])): ?>
                <a href="login.php">Admin Paneli</a>
            <?php else: ?>
                <p>Hoş geldiniz, <?php echo $_SESSION['username']; ?>!</p>
                <a href="logout.php">Çıkış Yap</a>
            <?php endif; ?>
        </div>
    </div>

    <!-- Modal for Computer Detail -->
    <div class="modal fade" id="computerModal" tabindex="-1" role="dialog" aria-labelledby="computerModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="computerModalLabel">Tip Detayları</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div id="computerDetailContent"></div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- JavaScript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <script>
        $(document).ready(function() {
            $('.computer-detail').click(function() {
                var tip = $(this).data('tip');
                $.ajax({
                    url: 'tip_detaylari.php',
                    type: 'POST',
                    data: { tip: tip },
                    success: function(response) {
                        $('#computerDetailContent').html(response);
                        $('#computerModal').modal('show');
                    }
                });
            });
        });
    </script>
</body>
</html>




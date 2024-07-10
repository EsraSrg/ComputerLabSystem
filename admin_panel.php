<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <title>Admin Paneli - Lab Yönetimi</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 20px;
        }
        h2 {
            color: #333;
        }
        form {
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ccc;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
        select, input[type=text] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-right: 10px;
        }
        button:hover {
            background-color: #45a049;
        }
        a {
            display: inline-block;
            background-color: #008CBA;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            border-radius: 4px;
            margin-bottom: 10px;
        }
        a:hover {
            background-color: #005580;
        }
    </style>
</head>
<body>
    <h2>Lab Yönetimi</h2>

    <!-- View Website Link -->
    <a href="index.php" target="_blank">Websitesini Görüntüle</a>
    
    <!-- Logout Button -->
    <form action="logout.php" method="post" style="float: right;">
        <button type="submit" name="logout">Çıkış Yap</button>
    </form>
<?php
// Start session to store login status
session_start();

// Include database connection file
require_once 'config.php';

// Function to fetch all labs from the database
function getAllLabs() {
    global $conn;
    $sql = "SELECT * FROM labs";
    $result = $conn->query($sql);
    return $result;
}

// Function to fetch all computers in a lab
function getLabComputers($lab_id) {
    global $conn;
    $sql = "SELECT * FROM bilgisayarlar WHERE lab_id = $lab_id";
    $result = $conn->query($sql);
    return $result;
}

// Function to update lab information
function updateLab($lab_id, $lab_name) {
    global $conn;
    $sql = "UPDATE labs SET lab_name='$lab_name' WHERE lab_id=$lab_id";
    if ($conn->query($sql) === TRUE) {
        return true;
    } else {
        return false;
    }
}

// Function to delete a lab
function deleteLab($lab_id) {
    global $conn;
    // First, delete all computers in the lab
    $sql_delete_computers = "DELETE FROM bilgisayarlar WHERE lab_id = $lab_id";
    if ($conn->query($sql_delete_computers) === TRUE) {
        // Then, delete the lab itself
        $sql_delete_lab = "DELETE FROM labs WHERE lab_id = $lab_id";
        if ($conn->query($sql_delete_lab) === TRUE) {
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}

// Function to add a new lab
function addLab($lab_name) {
    global $conn;
    $sql = "INSERT INTO labs (lab_name) VALUES ('$lab_name')";
    if ($conn->query($sql) === TRUE) {
        return true;
    } else {
        return false;
    }
}

// Function to update computer information
function updateComputer($bilg_id, $data) {
    global $conn;
    $sql = "UPDATE bilgisayarlar SET 
           
            lab_id = '{$data['lab_id']}',
            tip = '{$data['tip']}',
            isletim_sistemi = '{$data['isletim_sistemi']}',
            sistem_tür = '{$data['sistem_tür']}',
            islemci = '{$data['islemci']}',
            RAM = '{$data['RAM']}',
            ekran_kartı = '{$data['ekran_kartı']}',
            yüklü_programlar = '{$data['yüklü_programlar']}',
            status = '{$data['status']}'
            WHERE bilg_id = $bilg_id";
    if ($conn->query($sql) === TRUE) {
        return true;
    } else {
        return false;
    }
}

// Function to delete a computer
function deleteComputer($bilg_id) {
    global $conn;
    $sql = "DELETE FROM bilgisayarlar WHERE bilg_id = $bilg_id";
    if ($conn->query($sql) === TRUE) {
        return true;
    } else {
        return false;
    }
}

// Function to add a new computer
function addComputer($data) {
    global $conn;
    $sql = "INSERT INTO bilgisayarlar 
            (lab_id, tip, isletim_sistemi, sistem_tür, islemci, RAM, ekran_kartı, yüklü_programlar, status) 
            VALUES 
            ('{$data['lab_id']}', '{$data['tip']}', '{$data['isletim_sistemi']}', '{$data['sistem_tür']}', 
            '{$data['islemci']}', '{$data['RAM']}', '{$data['ekran_kartı']}', '{$data['yüklü_programlar']}', '{$data['status']}')";
    if ($conn->query($sql) === TRUE) {
        return true;
    } else {
        return false;
    }
}

// Function to fetch all computer types
function getAllComputerTypes() {
    global $conn;
    $sql = "SELECT * FROM tip_tbl";
    $result = $conn->query($sql);
    return $result;
}

// Handle form submissions
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Update lab form submission
    if (isset($_POST['update_lab'])) {
        $lab_id = $_POST['lab_id'];
        $new_lab_name = $_POST['new_lab_name'];
        if (updateLab($lab_id, $new_lab_name)) {
            echo "Lab güncellendi.";
        } else {
            echo "Lab güncellenirken hata oluştu.";
        }
    }

    // Delete lab form submission
    if (isset($_POST['delete_lab'])) {
        $lab_id = $_POST['lab_id'];
        if (deleteLab($lab_id)) {
            echo "Lab silindi.";
        } else {
            echo "Lab silinirken hata oluştu.";
        }
    }

    // Add lab form submission
    if (isset($_POST['add_lab'])) {
        $new_lab_name = $_POST['new_lab_name'];
        if (addLab($new_lab_name)) {
            echo "Yeni lab eklendi.";
        } else {
            echo "Lab eklenirken hata oluştu.";
        }
    }

    // Update computer form submission
    if (isset($_POST['update_computer'])) {
        $bilg_id = $_POST['bilg_id'];
        $data = array(
            'lab_id' => $_POST['lab_id'],
            'tip' => $_POST['tip'],
            'isletim_sistemi' => $_POST['isletim_sistemi'],
            'sistem_tür' => $_POST['sistem_tür'],
            'islemci' => $_POST['islemci'],
            'RAM' => $_POST['RAM'],
            'ekran_kartı' => $_POST['ekran_kartı'],
            'yüklü_programlar' => $_POST['yüklü_programlar'],
            'status' => $_POST['status']
        );
        if (updateComputer($bilg_id, $data)) {
            echo "Bilgisayar güncellendi.";
        } else {
            echo "Bilgisayar güncellenirken hata oluştu.";
        }
    }

    // Delete computer form submission
    if (isset($_POST['delete_computer'])) {
        $bilg_id = $_POST['bilg_id'];
        if (deleteComputer($bilg_id)) {
            echo "Bilgisayar silindi.";
        } else {
            echo "Bilgisayar silinirken hata oluştu.";
        }
    }

    // Add computer form submission
    if (isset($_POST['add_computer'])) {
        $data = array(
            'lab_id' => $_POST['lab_id'],
            'tip' => $_POST['tip'],
            'isletim_sistemi' => $_POST['isletim_sistemi'],
            'sistem_tür' => $_POST['sistem_tür'],
            'islemci' => $_POST['islemci'],
            'RAM' => $_POST['RAM'],
            'ekran_kartı' => $_POST['ekran_kartı'],
            'yüklü_programlar' => $_POST['yüklü_programlar'],
            'status' => $_POST['status']
        );
        if (addComputer($data)) {
            echo "Yeni bilgisayar eklendi.";
        } else {
            echo "Bilgisayar eklenirken hata oluştu.";
        }
    }
}

// Fetch all labs and computer types
$labs = getAllLabs();
$computer_types = getAllComputerTypes();
?>

<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <title>Admin Paneli - Lab Yönetimi</title>
    <style>
        /* Add your CSS styles here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 20px;
        }
        h2 {
            color: #333;
        }
        form {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <h2>Lab Yönetimi</h2>

    <!-- Update Lab Form -->
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
        <h3>Labları Güncelle</h3>
        <select name="lab_id">
            <?php while ($lab = $labs->fetch_assoc()) : ?>
                <option value="<?php echo $lab['lab_id']; ?>"><?php echo $lab['lab_name']; ?></option>
            <?php endwhile; ?>
        </select>
        <input type="text" name="new_lab_name" placeholder="Yeni Lab Adı" required>
        <button type="submit" name="update_lab">Güncelle</button>
        <button type="submit" name="delete_lab">Sil</button>
    </form>

    <!-- Add New Lab Form -->
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
        <h3>Yeni Lab Ekle</h3>
        <input type="text" name="new_lab_name" placeholder="Lab Adı" required>
        <button type="submit" name="add_lab">Ekle</button>
    </form>

    <hr>

    <!-- Manage Computers Section -->
    <h2>Bilgisayar Yönetimi</h2>

    <!-- Update Computer Form -->
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
        <h3>Bilgisayarları Güncelle</h3>
        <select name="bilg_id">
            <?php foreach ($labs as $lab) : ?>
                <optgroup label="<?php echo $lab['lab_name']; ?>">
                    <?php
                    $computers = getLabComputers($lab['lab_id']);
                    while ($computer = $computers->fetch_assoc()) :
                    ?>
                        <option value="<?php echo $computer['bilg_id']; ?>"><?php echo $computer['islemci']; ?></option>
                    <?php endwhile; ?>
                </optgroup>
            <?php endforeach; ?>
        </select>
        <input type="text" name="lab_id" placeholder="Lab ID" required>
        <input type="text" name="tip" placeholder="Tip" required>
        <input type="text" name="isletim_sistemi" placeholder="İşletim Sistemi" required>
        <input type="text" name="sistem_tür" placeholder="Sistem Tür" required>
        <input type="text" name="islemci" placeholder="İşlemci" required>
        <input type="text" name="RAM" placeholder="RAM" required>
        <input type="text" name="ekran_kartı" placeholder="Ekran Kartı" required>
        <input type="text" name="yüklü_programlar" placeholder="Yüklü Programlar" required>
        <input type="text" name="status" placeholder="Status" required>
        <button type="submit" name="update_computer">Güncelle</button>
        <button type="submit" name="delete_computer">Sil</button>
    </form>

    <!-- Add New Computer Form -->
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
        <h3>Yeni Bilgisayar Ekle</h3>
        <input type="text" name="lab_id" placeholder="Lab ID" required>
        <input type="text" name="tip" placeholder="Tip" required>
        <input type="text" name="isletim_sistemi" placeholder="İşletim Sistemi" required>
        <input type="text" name="sistem_tür" placeholder="Sistem Tür" required>
        <input type="text" name="islemci" placeholder="İşlemci" required>
        <input type="text" name="RAM" placeholder="RAM" required>
        <input type="text" name="ekran_kartı" placeholder="Ekran Kartı" required>
        <input type="text" name="yüklü_programlar" placeholder="Yüklü Programlar" required>
        <input type="text" name="status" placeholder="Status" required>
        <button type="submit" name="add_computer">Ekle</button>
    </form>

    <hr>

    <!-- Manage Computer Types Section -->
    <h2>Bilgisayar Türleri Yönetimi</h2>

    <table border="1">
        <tr>
            <th>Tip No</th>
            <th>İşletim Sistemi</th>
            <th>Ekran Kartı</th>
            <th>RAM</th>
            <th>Sistem Türü</th>
            <th>İşlemci</th>
        </tr>
        <?php while ($type = $computer_types->fetch_assoc()) : ?>
            <tr>
                <td><?php echo $type['tip_no']; ?></td>
                <td><?php echo $type['isletim_sistemi']; ?></td>
                <td><?php echo $type['ekran_kartı']; ?></td>
                <td><?php echo $type['RAM']; ?></td>
                <td><?php echo $type['sistem_tür']; ?></td>
                <td><?php echo $type['islemci']; ?></td>
            </tr>
        <?php endwhile; ?>
    </table>

</body>
</html>

<?php
// Close database connection
$conn->close();
?>


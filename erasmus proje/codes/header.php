<?php
// Oturum kontrolü yapılıyor
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Header</title>
    <link rel="stylesheet" href="main.css">
</head>

<body>
    <header>
        <div class="container">
            <!-- Logo Bölümü -->
            <div class="logo">
                <h1>FlashBrain</h1>
            </div>
            <!-- Menü Bölümü -->
            <div class="menu">
                <?php
                // Kullanıcı oturum açmış mı kontrol ediliyor
                if (isset($_SESSION["uye_id"])) {
                    echo '
                    <a href="index.php" class="button">Main Page</a>
                    <a href="profil.php?kadi=' . htmlspecialchars($_SESSION["uye_kadi"]) . '" class="button">Profile</a>
                    <a href="uyelik.php?p=cikis" class="button">Log Out</a>
                    <a href="whoarewe.html" class="button">Who Are We</a>
                    <a href="packages.html" class="button">Packages</a>
                    <a href="comminication.html" class="button">Communication</a>';
                } else {
                    echo '
                    <a href="index.php" class="button">Main Page</a>
                    <a href="uyelik.php?p=kayit" class="button">Sign Up</a>
                    <a href="uyelik.php" class="button">Sign In</a>
                    <a href="whoarewe.html" class="button">Who Are We</a>
                    <a href="packages.html" class="button">Packages</a>
                    <a href="comminication.html" class="button">Communication</a>';
                }
                ?>
            </div>
        </div>
    </header>
</body>

</html>

<?php
session_start();
include 'ayar.php';

if (isset($_POST['giris'])) {
    $kadi = $_POST['kadi'];
    $sifre = $_POST['sifre'];

    $stmt = $pdo->prepare("SELECT * FROM uyeler WHERE uye_kadi = ?");
    $stmt->execute([$kadi]);
    $user = $stmt->fetch(PDO::FETCH_ASSOC);

    if ($user && password_verify($sifre, $user['uye_sifre'])) {
        $_SESSION['uye_id'] = $user['uye_id'];
        $_SESSION['uye_adsoyad'] = $user['uye_adsoyad'];
        header("Location: index.php");
    } else {
        echo "<p class='text-danger'>Kullanıcı adı veya şifre hatalı!</p>";
    }
}
?>

<!-- HTML Form -->
<h1>Giriş Yap</h1>
<form action="" method="POST">
    <strong>Kullanıcı Adı:</strong><br>
    <input type="text" name="kadi"><br>
    <strong>Şifre:</strong><br>
    <input type="password" name="sifre"><br />
    <input type="submit" name="giris" value="Giriş Yap">
</form>

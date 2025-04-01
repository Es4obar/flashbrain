<?php
session_start();
include 'ayar.php';

if (isset($_POST['odeme'])) {
    $odeme_tutar = $_POST['tutar'];
    $uye_id = $_SESSION['uye_id'];

    // Ödeme işlemi (bu kısmı ödeme sağlayıcı ile entegre etmelisiniz)
    $odeme_durum = "Başarılı"; // Ödeme durumunu ödeme sağlayıcısından almanız gerekecek

    $stmt = $pdo->prepare("INSERT INTO odemeler (uye_id, odeme_tutar, odeme_tarihi, odeme_durum) VALUES (?, ?, NOW(), ?)");
    $stmt->execute([$uye_id, $odeme_tutar, $odeme_durum]);

    echo "<p class='text-success'>Ödeme başarıyla gerçekleştirildi!</p>";
}
?>

<!-- HTML Form -->
<h1>Ödeme Yap</h1>
<form action="" method="POST">
    <strong>Ödeme Tutarı:</strong><br>
    <input type="text" name="tutar"><br>
    <input type="submit" name="odeme" value="Ödeme Yap">
</form>

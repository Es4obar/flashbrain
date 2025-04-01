<?php

$host = "localhost";
$dbname = "forumsitesi";
$charset = "utf8";
$username = "root"; // root kullanıcısının ismi burada "root" olmalı
$password = "";

try {
    // PDO bağlantısı oluşturuluyor
    $db = new PDO("mysql:host=$host;dbname=$dbname;charset=$charset", $username, $password);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // Hata ayıklama modu etkinleştirildi
} catch (PDOException $error) {
    die("Veritabanı bağlantı hatası: " . $error->getMessage()); // Daha açıklayıcı bir hata mesajı
}

// Kullanıcı girişi kontrolü
if (isset($_COOKIE["uye_eposta"])) {
    $uyecek = $db->prepare("SELECT * FROM uyeler WHERE uye_eposta = ?");
    $uyecek->execute([$_COOKIE["uye_eposta"]]);
    $fetch = $uyecek->fetch(PDO::FETCH_ASSOC);
}
?>

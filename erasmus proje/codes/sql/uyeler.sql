-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 14 Eyl 2023, 12:57:00
-- Sunucu sürümü: 5.7.42-cll-lve
-- PHP Sürümü: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `forumsitesi`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `uye_id` int(11) NOT NULL,
  `uye_adsoyad` varchar(300) COLLATE utf8_turkish_ci NOT NULL,
  `uye_kadi` varchar(300) COLLATE utf8_turkish_ci NOT NULL,
  `uye_sifre` varchar(300) COLLATE utf8_turkish_ci NOT NULL,
  `uye_eposta` varchar(300) COLLATE utf8_turkish_ci NOT NULL,
  `uye_onay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`uye_id`, `uye_adsoyad`, `uye_kadi`, `uye_sifre`, `uye_eposta`, `uye_onay`) VALUES
(1, 'Baha Baltacı (Admin)', 'baltacibaha', '2aee16e0ab65a7ca918ef8fbc63e08fc', 'baltacibaha476@gmail.com', 1),
(2, 'Catworld.et', 'Catworld.et', 'c90b20957c5ca6e11c848dc8b9fb55c8', 'emincinar0707@gmail.com', 0),
(3, 'Pro', 'Pro', '59617e41e8c6ac9fa216109824a62739', 'sdadadasdadwa@gmail.com', 0),
(4, 'Noob', 'Noob', '2b381a54bff6bdc9ec2aa6e4442831b7', 'sdmadwkamdk@gmail.com', 0),
(5, 'Hacker', 'Hacker', '3f217b4606589572043f031d4e96bebb', 'Hacker@gmail.com', 0),
(6, 'Axolotl (Moderatör)', 'Axolotl', '2f59b043b356662782a43d846e1bd2d0', 'merdanbirlik@gmail.com', 0),
(7, 'Yaren Eken', 'yarenekenn', '49c4af340a99d1a6f772b239c3549480', 'yaren_eken_07@hotmail.com', 0),
(8, 'Ege Kayseri', 'assassin', 'f778bcd71107471627aba5691a353b86', 'kayserege@gmail.com', 0),
(9, 'Almina Eliyazıcı', 'wLynn', 'b2223d1d7b1cbd243e79ed0a297bf996', 'alminaeliyazci@gmail.com', 0),
(10, 'Asya Su Özdemir', 'ALİCE', '6d060b60561f6ac06c253862b988ba6f', 'asya.su.29012010@qmail.com', 0),
(11, 'Ayaz Melih kose', 'Ahmetkayay', 'eaddcdb6b9ae744204b744b341a33329', 'koseayazmelih@gmail.com', 0),
(12, 'Mustafa Özkan', 'mustii07', '1b87cc320bed97d85b87f13ad8c65771', 'j.mustafaozkan107517@gmail.com', 0),
(13, 'cinar fidanboy', 'cinarfidanboy', '1caca1531ed3673d808d0cc26ac8163b', 'karaboga@yopmail.com', 1),
(14, 'oyle olsun', 'oyleolsun', '10b185c93a1be57bf53ce584fb04ca3e', 'oyleolsun@gmail.com', 0),
(15, 'asd asd', 'asdasd', '524d436bf60d6f293ae3b847177c2328', 'asdasd@asd.com', 0),
(16, 'Adms', 'Adms', 'c90b20957c5ca6e11c848dc8b9fb55c8', 'Blabla@gmail.com', 0),
(17, 'PlayerName', 'itsplayername', '315717228d36172e2dc86bff9c6824a0', 'timurkula9@gmail.com', 0),
(19, 'Berat', 'WARTHOGLOVER69', 'f972f08f07fc8e2a1c21a421486b8ddc', 'berat0713@hotmail.com', 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`uye_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `uye_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- Dersler Tablosu
CREATE TABLE `dersler` (
  `ders_id` int(11) NOT NULL AUTO_INCREMENT,
  `ders_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ders_aciklama` text COLLATE utf8_turkish_ci NOT NULL,
  `ders_video_url` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `ders_pdf_url` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ders_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- Ödemeler Tablosu
CREATE TABLE `odemeler` (
  `odeme_id` int(11) NOT NULL AUTO_INCREMENT,
  `uye_id` int(11) NOT NULL,
  `odeme_tutar` float NOT NULL,
  `odeme_tarihi` datetime NOT NULL,
  `odeme_durum` varchar(50) NOT NULL, -- "Başarılı" ya da "Başarısız"
  PRIMARY KEY (`odeme_id`),
  FOREIGN KEY (`uye_id`) REFERENCES `uyeler`(`uye_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;


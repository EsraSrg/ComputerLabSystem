-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 08 Tem 2024, 14:40:37
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `complabsystem`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `arızalı_bilgisayar`
--

CREATE TABLE `arızalı_bilgisayar` (
  `arızalı_bil_id` int(11) NOT NULL,
  `bilg_id` int(11) NOT NULL,
  `açıklama` text NOT NULL,
  `arıza_tarih` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bilgisayarlar`
--

CREATE TABLE `bilgisayarlar` (
  `bilg_id` int(11) NOT NULL,
  `lab_id` int(11) NOT NULL,
  `tip` varchar(50) NOT NULL,
  `isletim_sistemi` varchar(50) NOT NULL,
  `sistem_tür` varchar(50) NOT NULL,
  `islemci` text NOT NULL,
  `RAM` varchar(50) NOT NULL,
  `ekran_kartı` varchar(50) NOT NULL,
  `yüklü_programlar` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `bilgisayarlar`
--

INSERT INTO `bilgisayarlar` (`bilg_id`, `lab_id`, `tip`, `isletim_sistemi`, `sistem_tür`, `islemci`, `RAM`, `ekran_kartı`, `yüklü_programlar`, `status`) VALUES
(1, 6, '1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'intel core i3 4160 CPU@3.60 GHz , 3600 Mhz', '342E3030204742', 'AMD Radeon R7 200 Series', 'Delphi\r\nArduino\r\nProteus 8 Professional\r\nAdobe 2017 collection\r\nvisual studio 2010', 'Çalışıyor');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` enum('admin','tekniker','misafir','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`user_id`, `username`, `password`, `role`) VALUES
(1, 'Admin', 'egemyo98765', 'admin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `labs`
--

CREATE TABLE `labs` (
  `lab_id` int(11) NOT NULL,
  `lab_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `labs`
--

INSERT INTO `labs` (`lab_id`, `lab_name`) VALUES
(1, 'LAB-1'),
(2, 'LAB-2'),
(3, 'LAB-3'),
(4, 'LAB-4'),
(5, 'LAB-5'),
(6, 'LAB-6');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tip_tbl`
--

CREATE TABLE `tip_tbl` (
  `tip_no` varchar(50) NOT NULL,
  `isletim_sistemi` text NOT NULL,
  `ekran_kartı` text NOT NULL,
  `RAM` varchar(50) NOT NULL,
  `sistem_türü` varchar(50) NOT NULL,
  `islemci` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `arızalı_bilgisayar`
--
ALTER TABLE `arızalı_bilgisayar`
  ADD PRIMARY KEY (`arızalı_bil_id`),
  ADD KEY `fk_bilg_id` (`bilg_id`);

--
-- Tablo için indeksler `bilgisayarlar`
--
ALTER TABLE `bilgisayarlar`
  ADD PRIMARY KEY (`bilg_id`),
  ADD KEY `fk_lab_id` (`lab_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`user_id`);

--
-- Tablo için indeksler `labs`
--
ALTER TABLE `labs`
  ADD PRIMARY KEY (`lab_id`);

--
-- Tablo için indeksler `tip_tbl`
--
ALTER TABLE `tip_tbl`
  ADD PRIMARY KEY (`tip_no`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `arızalı_bilgisayar`
--
ALTER TABLE `arızalı_bilgisayar`
  ADD CONSTRAINT `fk_bilg_id` FOREIGN KEY (`bilg_id`) REFERENCES `bilgisayarlar` (`bilg_id`);

--
-- Tablo kısıtlamaları `bilgisayarlar`
--
ALTER TABLE `bilgisayarlar`
  ADD CONSTRAINT `fk_lab_id` FOREIGN KEY (`lab_id`) REFERENCES `labs` (`lab_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

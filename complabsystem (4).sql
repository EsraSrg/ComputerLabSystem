-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 10 Tem 2024, 13:26:22
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
(1, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(2, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(3, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(4, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(5, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(6, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(7, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(8, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(9, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(10, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(11, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(12, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(13, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(14, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(15, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(16, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(17, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(18, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(19, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(20, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(21, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(22, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(23, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(24, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(25, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(26, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(27, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(28, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(29, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(30, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(31, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(32, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(33, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(34, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(35, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(36, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(37, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(38, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(39, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(40, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(41, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor'),
(42, 6, 'Tip 1', 'Microsoft Windows 7 Professional', 'x86 based,32 bit', 'Intel Core i3-4160 CPU@ 3.60GHz,3600 Mhz', '4.00 GB', 'AMD Radeon R7 200 Series', '-AutoCAD 2007\r\n\r\n-Mastercam X5\r\n\r\n-Proteus 8 Professional\r\n\r\n-Adobe Dreamweaver CC 2017\r\n\r\n-Excel 2016\r\n\r\n-Acces 2016\r\n\r\n-Word 2016\r\n\r\n-AutoCAD 2019\r\n\r\n-AutoDesk3ds max 2013\r\n\r\n-CodeBlocks\r\n\r\n-Visual Studio 2010\r\n\r\n-Solid Works 2010\r\n\r\n-VS Code', 'Çalışıyor');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`user_id`, `username`, `password`) VALUES
(1, 'Admin', 'egemyo98765');

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
-- Tablo döküm verisi `tip_tbl`
--

INSERT INTO `tip_tbl` (`tip_no`, `isletim_sistemi`, `ekran_kartı`, `RAM`, `sistem_türü`, `islemci`) VALUES
('Tip 1', 'Microsoft Windows 7 Professional', 'AMD Radeon R7 200 Series', '4.00 GB', 'x86 based PC ,32 bit', 'Intel Core i3-4160 CPU@3.60GHz,3600 MHz'),
('Tip 2', 'Microsoft Windows 10 Education', 'Intel(R) HD Graphics 620', '8.00 GB', 'x64 based PC ,64 bit', 'Intel(R) Core(TM) i5-7200 CPU@ 2.50 GHz,2701 MHz'),
('Tip 3', 'Microsoft Windows 10 Pro', 'Intel(R) HD Graphics 630', '8.00 GB', 'x64 based PC ,64 bit', 'Intel(R) Core(TM) i5-7400 CPU@ 3.00 GHz,3000 MHz'),
('Tip 4', 'Microsoft Windows 10 Education', 'Intel(R) HD Graphics 730', '8.00 GB', 'x64 based PC ,64 bit', 'Intel(R) Core(TM) i5-11400 CPU@ 2.60 GHz,2592 MHz'),
('Tip 5', 'Microsoft Windows 10 Education', 'Intel(R) HD Graphics 630', '8.00 GB', 'x64 based PC ', 'Intel(R) Core(TM) i5-10400 CPU@ 2.90 GHz,2904 MHz'),
('Tip 6', 'Microsoft Windows 10 Education', 'Intel(R) HD Graphics 630', '8.00 GB', 'x64 based PC', 'Intel(R) Core(TM) i5-7400 CPU@ 3.00 GHz,2592 MHz');

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
  ADD KEY `fk_lab_id` (`lab_id`),
  ADD KEY `fk_tip_no` (`tip`);

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
-- Tablo için AUTO_INCREMENT değeri `bilgisayarlar`
--
ALTER TABLE `bilgisayarlar`
  MODIFY `bilg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

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
  ADD CONSTRAINT `fk_lab_id` FOREIGN KEY (`lab_id`) REFERENCES `labs` (`lab_id`),
  ADD CONSTRAINT `fk_tip_no` FOREIGN KEY (`tip`) REFERENCES `tip_tbl` (`tip_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

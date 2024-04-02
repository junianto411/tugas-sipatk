-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 5.7.33 - MySQL Community Server (GPL)
-- OS Server:                    Win64
-- HeidiSQL Versi:               11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Membuang struktur basisdata untuk kirimku
CREATE DATABASE IF NOT EXISTS `kirimku` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `kirimku`;

-- membuang struktur untuk table kirimku.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(5) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(150) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel kirimku.customer: ~0 rows (lebih kurang)
DELETE FROM `customer`;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`customer_id`, `customer_name`) VALUES
	(1, 'Fajar Amrullah'),
	(2, 'Nike Ardilla'),
	(3, 'Agustina Siregar'),
	(4, 'Levi Zubaidah');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- membuang struktur untuk table kirimku.destinasi
CREATE TABLE IF NOT EXISTS `destinasi` (
  `destinasi_id` int(5) NOT NULL AUTO_INCREMENT,
  `destinasi_name` varchar(150) NOT NULL,
  PRIMARY KEY (`destinasi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel kirimku.destinasi: ~0 rows (lebih kurang)
DELETE FROM `destinasi`;
/*!40000 ALTER TABLE `destinasi` DISABLE KEYS */;
INSERT INTO `destinasi` (`destinasi_id`, `destinasi_name`) VALUES
	(1, 'Jakarta'),
	(2, 'Bandung'),
	(3, 'Banten'),
	(4, 'Cirebon');
/*!40000 ALTER TABLE `destinasi` ENABLE KEYS */;

-- membuang struktur untuk table kirimku.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel kirimku.migrations: ~3 rows (lebih kurang)
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
	(1, '2024-01-21-083006', 'App\\Database\\Migrations\\Customer', 'default', 'App', 1705827900, 1),
	(2, '2024-01-21-083023', 'App\\Database\\Migrations\\Destinasi', 'default', 'App', 1705827900, 1),
	(3, '2024-01-21-083046', 'App\\Database\\Migrations\\Pengiriman', 'default', 'App', 1705827900, 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- membuang struktur untuk table kirimku.pengiriman
CREATE TABLE IF NOT EXISTS `pengiriman` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `customer_id` int(5) NOT NULL,
  `destinasi_id` int(5) NOT NULL,
  `biaya_pengiriman` decimal(10,2) DEFAULT NULL,
  `tanggal_sampai` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel kirimku.pengiriman: ~0 rows (lebih kurang)
DELETE FROM `pengiriman`;
/*!40000 ALTER TABLE `pengiriman` DISABLE KEYS */;
INSERT INTO `pengiriman` (`id`, `tanggal`, `customer_id`, `destinasi_id`, `biaya_pengiriman`, `tanggal_sampai`) VALUES
	(1, '2024-01-22', 1, 2, 120000.00, '2024-01-25'),
	(2, '2024-01-22', 1, 2, 120000.00, '2024-01-25'),
	(3, '2024-01-22', 1, 2, 120000.00, '2024-01-25'),
	(4, '2024-01-22', 1, 2, 120000.00, '2024-01-25'),
	(5, '2024-01-21', 1, 2, 7777.00, '2024-01-23'),
	(6, '2024-01-21', 4, 2, 456789.00, '2024-01-23'),
	(7, '2024-01-21', 4, 2, 456789.00, '2024-01-23'),
	(8, '2024-01-21', 4, 2, 456789.00, '2024-01-23'),
	(9, '2024-01-21', 3, 4, 99999999.99, '2024-01-24'),
	(10, '2024-01-21', 1, 3, 56788.00, '2024-01-25'),
	(11, '2024-01-21', 1, 3, 56788.00, '2024-01-25'),
	(12, '2024-01-21', 1, 3, 56788.00, '2024-01-25'),
	(13, '2024-01-21', 1, 3, 56788.00, '2024-01-25'),
	(14, '2024-01-21', 1, 4, 456789.00, '2024-01-23'),
	(15, '2024-01-21', 1, 4, 456789.00, '2024-01-23');
/*!40000 ALTER TABLE `pengiriman` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

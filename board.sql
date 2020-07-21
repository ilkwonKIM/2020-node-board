-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.20 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- board 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `board` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `board`;

-- 테이블 board.gbook 구조 내보내기
CREATE TABLE IF NOT EXISTS `gbook` (
  `id` int NOT NULL AUTO_INCREMENT,
  `writer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
mysql
-- 테이블 데이터 board.gbook:~24 rows (대략적) 내보내기
/*!40000 ALTER TABLE `gbook` DISABLE KEYS */;
REPLACE INTO `gbook` (`id`, `writer`, `comment`, `createdAt`) VALUES
	(1, 'ilkwon', 'hi', '2020-07-20 11:29:48'),
	(2, 'ilkwon', 'Hello', '2020-07-20 11:39:11'),
	(3, 'ilkwon', 'hEllo', '2020-07-20 11:39:21'),
	(4, 'ilkwon', 'bye', '2020-07-20 11:39:31'),
	(5, 'ilkwon', 'Guest', '2020-07-20 11:39:49'),
	(6, 'ilkwon', 'GuestHouse', '2020-07-20 11:39:57'),
	(7, 'ilkwon', 'LOL', '2020-07-20 11:40:04'),
	(8, 'ilkwon', 'Cool', '2020-07-20 11:40:10'),
	(9, 'ilkwon', 'nice', '2020-07-20 11:40:21'),
	(11, 'ilkwon', 'nice', '2020-07-20 11:40:21'),
	(12, 'ilkwon', 'nice', '2020-07-20 11:40:21'),
	(13, 'ilkwon', 'nice', '2020-07-20 11:40:21'),
	(14, 'ilkwon', 'nice', '2020-07-20 11:40:21'),
	(15, 'ilkwon', 'nice', '2020-07-20 11:40:21'),
	(16, 'ilkwon', 'nice', '2020-07-20 11:40:21'),
	(17, 'ilkwon', 'nice', '2020-07-20 11:40:21'),
	(18, 'ilkwon', 'nice', '2020-07-20 11:40:21'),
	(19, 'ilkwon', 'nice', '2020-07-20 11:40:21'),
	(20, 'ilkwon', 'nice', '2020-07-20 11:40:21'),
	(21, 'ilkwon', 'nice', '2020-07-20 11:40:21'),
	(22, 'ilkwon', 'nice', '2020-07-20 11:40:21'),
	(23, 'ilkwon', 'nice', '2020-07-20 11:40:21'),
	(24, 'ilkwon', 'nice', '2020-07-20 11:40:21'),
	(25, '777', '777', '2020-07-20 16:14:40');
/*!40000 ALTER TABLE `gbook` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

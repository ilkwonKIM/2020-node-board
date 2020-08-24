-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.20 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.6061
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 테이블 board.gallery 구조 내보내기
DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '고유값',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제목',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '내용',
  `writer` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '작성자',
  `realfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '원래 파일명',
  `savefile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '저장된 파일명',
  `realfile2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '원래 파일명',
  `savefile2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '저장된 파일명',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일',
  `readCount` int unsigned NOT NULL DEFAULT '0' COMMENT '조회수',
  `uid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_gallery_member` (`uid`),
  CONSTRAINT `FK_gallery_member` FOREIGN KEY (`uid`) REFERENCES `member` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 board.gallery:~0 rows (대략적) 내보내기
DELETE FROM `gallery`;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` (`id`, `title`, `content`, `writer`, `realfile`, `savefile`, `realfile2`, `savefile2`, `createdAt`, `readCount`, `uid`) VALUES
	(24, '김일권', 'A', 'A', 'F84DFEA6-0E39-24BCD8-0D9A84BCA1EF.jpg', '200810-ddde777e-967d-4fb3-91ce-284911a3a134.jpg', '541369F3-427C-482D-9BD9-09BBCBE63D62.jpeg', '200810-e0f6bc9c-894f-4b2d-8fa7-34953895625d.jpeg', '2020-08-10 13:21:34', 0, NULL);
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;

-- 테이블 board.gbook 구조 내보내기
DROP TABLE IF EXISTS `gbook`;
CREATE TABLE IF NOT EXISTS `gbook` (
  `id` int NOT NULL AUTO_INCREMENT,
  `writer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 board.gbook:~10 rows (대략적) 내보내기
DELETE FROM `gbook`;
/*!40000 ALTER TABLE `gbook` DISABLE KEYS */;
INSERT INTO `gbook` (`id`, `writer`, `comment`, `createdAt`) VALUES
	(1, '김일권', 'ilkwonKim', '2020-08-17 10:13:49'),
	(2, '김일권', 'hi', '2020-08-17 10:14:17'),
	(3, '김일권', 'df', '2020-08-17 13:07:30'),
	(4, '김일권', 'asdfsdf', '2020-08-17 13:08:40'),
	(5, '김일권', 'good', '2020-08-17 13:08:58'),
	(6, '김일권', '!', '2020-08-17 13:09:11'),
	(7, '김일권', '!!', '2020-08-17 13:09:14'),
	(8, '김일권', '!!!', '2020-08-17 13:09:16'),
	(9, '김일권', 'AAA', '2020-08-17 13:09:20'),
	(10, '김일권', 'CCC', '2020-08-17 13:09:23');
/*!40000 ALTER TABLE `gbook` ENABLE KEYS */;

-- 테이블 board.loginlog 구조 내보내기
DROP TABLE IF EXISTS `loginlog`;
CREATE TABLE IF NOT EXISTS `loginlog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `loginAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 board.loginlog:~0 rows (대략적) 내보내기
DELETE FROM `loginlog`;
/*!40000 ALTER TABLE `loginlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `loginlog` ENABLE KEYS */;

-- 테이블 board.member 구조 내보내기
DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '아이디',
  `userid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `api` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userpw` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sleepAt` datetime DEFAULT NULL,
  `grade` tinyint unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 board.member:~3 rows (대략적) 내보내기
DELETE FROM `member`;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`id`, `userid`, `api`, `userpw`, `username`, `email`, `createdAt`, `sleepAt`, `grade`) VALUES
	(5, 'ilkwon226', '', '$2b$07$NG36nKqgdD2s.MXNwfIjX.tyNTkElVbhuoXWXODQLTv0gtKJpDnkq', '김일권', 'ilkim226@gmail.com', '2020-08-13 11:31:52', NULL, 9),
	(6, '1449051321', 'kakao', NULL, '김일권', 'ilkim226@gmail.com', '2020-08-13 14:29:01', NULL, 2),
	(7, 'ilkwon0226', NULL, '$2b$07$49LRdJBHeAr1QsT3PraH0eewu6RItfiDsmnn9EYnqlM/2l4xfn3EO', '김일권', '', '2020-08-13 14:36:03', NULL, 2);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

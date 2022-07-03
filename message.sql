-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 30, 2022 at 01:11 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guestbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `author` varchar(10) NOT NULL DEFAULT '',
  `subject` tinytext NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `author`, `subject`, `content`, `date`) VALUES
(1, '陳小貞', '實境真人秀', '根據網路最新票選，網友心目中最想看到志凌姊姊參加實境真人秀節目，希望有一天真的可以看到志凌姊姊上陣。', '2020-01-01 15:28:36'),
(2, '阿榮', 'JJ發新片了', '好消息告訴大家，JJ發新片了，裡面的歌曲首首動聽，建議大家可以用力聽聽看喔～！', '2020-01-01 15:30:03'),
(3, '小咪', '小D和小K離婚了', '好勁爆的消息喔，甫生子的小D才剛和小K結婚，未料又旋風似的離婚了，令人不禁感嘆現代人的婚姻真難維繫。', '2020-01-01 15:32:34'),
(4, '孫小美', '好戲鹿鼎記上場', 'X視最近重播的鹿鼎記，不僅女主角們陣容堅強，美女如雲...，更維持了男主角一貫的搞笑風格，相當有看頭。', '2020-01-01 15:35:54'),
(5, 'Amily', '酷酷的阿鋒哥', '記得日前阿鋒哥在記者會上，原本愉快的他，卻被記者問了 「如何當好繼父」的問題，因而神情不快並斥責記者無聊，身為歌迷的我們，希望記者不要再老是問這類的問題，多給歌手們一點私人空間。', '2020-01-01 15:38:29'),
(6, '皮皮', '小東與小芝公佈戀情', '繼天后與阿鋒哥公開戀情之後，又有一對俊男美女公開戀情，那就是小東和小芝，如果藝人們都勇於承認戀情，那麼狗仔隊可要失業了。', '2020-01-01 15:40:55'),
(7, '颺', '阿棋出精選集了', '療癒歌手阿棋重新出發，推出了個人第一張精選集，內有許多動人好歌，值得一聽再聽。', '2020-01-01 15:43:24'),
(8, '阿淵', 'Hero重播', '曾經深受哈日族喜愛的Hero要重播了，這次是在東森綜合台，1 月 22 日 20:00 開始，喜歡木村的朋友們千萬不要錯過了。', '2020-01-01 15:48:06'),
(9, '阿淵', '熟男還不結婚來了', '阿部寬主演的熟男不結婚相隔十幾年推出續集－熟男還不結婚，大家趕快來看看熟男這次是否會終結單身生活。', '2020-01-01 15:52:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

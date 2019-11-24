-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2019 at 04:05 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookmaster`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `song_list`
--

CREATE TABLE `song_list` (
  `songlist_id` int(11) NOT NULL,
  `title` varchar(155) DEFAULT NULL,
  `artist` varchar(155) DEFAULT NULL,
  `lyrics` text,
  `songlist_status` enum('Active','Not Active') DEFAULT 'Active',
  `when_created` datetime NOT NULL,
  `when_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `song_list`
--

INSERT INTO `song_list` (`songlist_id`, `title`, `artist`, `lyrics`, `songlist_status`, `when_created`, `when_updated`) VALUES
(1, 'God Gave Me You', 'Bryan White', 'For all the times I felt cheated, I complained\nYou know how I love to complain\nFor all the wrongs I repeated, though I was to blame\nI still cursed that rain\nI didn''t have a prayer, didn''t have a clue\nThen out of the blue\nGod gave me you to show me what''s real\nThere''s more to life with just how I feel\nAnd all that I''m worth is right before my eyes\nAnd all that I live for though I didn''t know why\nNow I do, ''cause God gave me you\nFor all the times I wore my self pity like a favorite shirt\nAll wrapped up in that hurt\nFor every glass I saw, I saw half empty\nNow it overflows like a river through my soul\nFrom every doubt I had, I''m finally free\nAnd I truly believe\nGod gave me you to show me what''s real\nThere''s more to life than just how I feel\nAnd all that I''m worth is right before my eyes\nAnd all that I live for though I didn''t know why\nNow I do, ''cause God gave me you\nIn your arms I''m someone new\nWith ever tender kiss from you\nOh must confess\nI''ve been blessed\nGod gave me you to show me what''s real\nThere''s more to life than just how I feel\nAnd all that I''m worth is right before my eyes\nAnd all that I live for though I didn''t know why (didn''t know why)\nNow I do (I finally do), ''cause God gave me you (God gave me You)\nGod gave me you', 'Active', '2019-11-24 07:05:19', '2019-11-24 21:58:51'),
(6, 'Weak', 'SWV', 'I don''t know what it is that you''ve done to me\nBut it''s caused me to act in such a crazy way\nWhatever it is that you do when you do what you''re doing\nIt''s a feeling that I don''t understand\n''Cause my heart starts beating triple time\nWith thoughts of loving you on my mind\nI can''t figure out just what to do\nWhen the cause and cure is you\nI get so weak in the knees, I can hardly speak\nI lose all control and something takes over me\nIn a daze and it''s so amazing, it''s not a phase\nI want you to stay with me, by my side\nI swallow my pride, your love is so sweet\nIt knocks me right off of my feet\nCan''t explain why your loving makes me weak\nTime after time after time I''ve tried to fight it\nBut your love is strong it keeps on holding on\nResistance is down when you''re around, starts fading\nIn my condition I don''t want to be alone\n''Cause my heart starts beating triple time\nWith thoughts of loving you on my mind\nI can''t figure out just what to do\nWhen the cause and cure is you, oh\nI get so weak in the knees, I can hardly speak\nI lose all control and something takes over me\nIn a daze and it''s so amazing, it''s not a phase\nI want you to stay with me, by my side\nI swallow my pride, your love is so sweet\nIt knocks me right off of my feet\nCan''t explain why your loving makes me weak\nI try hard to fight it\nNo way can I deny it\nYour love''s so sweet\nIt knocks me off my feet\nI get so weak in the knees, I can hardly speak\nI lose all control and something takes over me\nIn a daze and it''s so amazing, it''s not a phase\nI want you to stay with me, by my side\nI swallow my pride, your love is so sweet\nIt knocks me right off of my feet\nCan''t explain why your loving makes me weak\nI get so weak\nBlood starts racing through my veins\nI get so weak\nBoy, it''s something I can''t explain\nI get so weak\nSomething ''bout the way you do the things you do, it\nKnocks me right off of my feet (off my feet)\nI can''t explain why your loving makes me weak\nI get so weak in the knees, I can hardly speak\nI lose all control and something takes over me\nIn a daze and it''s so amazing, it''s not a phase\nI want you to stay with me, by my side\nI swallow my pride, your love is so sweet\nIt knocks me right off of my feet', 'Active', '2019-11-24 20:10:20', '2019-11-24 21:59:04'),
(9, 'sdfsd', 'fsdf', 'sdf', 'Not Active', '2019-11-24 21:01:44', NULL),
(10, 'It''s My Life', 'Bon Jovi', 'This ain''t a song for the broken-hearted\nNo silent prayer for the faith-departed\nI ain''t gonna be just a face in the crowd\nYou''re gonna hear my voice\nWhen I shout it out loud\nIt''s my life\nIt''s now or never\nI ain''t gonna live forever\nI just want to live while I''m alive\n(It''s my life)\nMy heart is like an open highway\nLike Frankie said\nI did it my way\nI just want to live while I''m alive\nIt''s my life\nThis is for the ones who stood their ground\nIt''s for Tommy and Gina who never backed down\nTomorrow''s getting harder, make no mistake\nLuck ain''t enough\nYou''ve got to make your own breaks\nIt''s my life\nAnd it''s now or never\nI ain''t gonna live forever\nI just want to live while I''m alive\n(It''s my life)\nMy heart is like an open highway\nLike Frankie said\nI did it my way\nI just want to live while I''m alive\nIt''s my life\nYou better stand tall when they''re calling you out\nDon''t bend, don''t break, baby, don''t back down\nIt''s my life\nAnd it''s now or never\nI ain''t gonna live forever\nI just want to live while I''m alive\n(It''s my life)\nMy heart is like an open highway\nLike Frankie said\nI did it my way\nI just want to live while I''m alive\n(It''s my life)', 'Active', '2019-11-24 22:01:55', '2019-11-24 22:03:44'),
(11, 'd', 'd', 'd', 'Not Active', '2019-11-24 22:03:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'DJ70ES', 'vkpnpm@gmail.com', '$2y$10$9AOccyVRayOuIAq76afP4OJOKhyyoeRmi5vpD4SQSgxNcDkzY/uPi', 'rZTGDvEOSldAmHjIIY0nw3gBUkLn7Wu9CEqvj6Q8iqmY52kgBGayXNbFE00e', '2019-11-23 22:26:13', '2019-11-24 06:03:51'),
(2, 'yfROL9', 'xetbjf@gmail.com', '$2y$10$N2DMjYSLC3KjHF9H6.QztOtAsyO57pCW5cHNkWdKX.TBo3WFjRBcm', 'fFRI4IChQfPYTvMgDRVKzBXMDgfrgoJPMEpLvOnfJIysqAuFPP9L6opD8DnW', '2019-11-23 22:26:13', '2019-11-23 23:41:14'),
(3, 'beGZrx', '3uunnr@gmail.com', '$2y$10$IQjZNSUV5uiW5IrNUvuQa.P.ASlTLQzigcj9lNtGzoJhXxG8u/jYi', NULL, '2019-11-23 22:26:13', '0000-00-00 00:00:00'),
(4, 'l52xK8', 'iau0wr@gmail.com', '$2y$10$DEkWsicrvfA7k3ODLQBbKOKEZ76kM35urkEm2bBjXdHP31FSCWhRa', NULL, '2019-11-23 22:26:13', '0000-00-00 00:00:00'),
(5, 'dQ5jWp', 'gl4ofz@gmail.com', '$2y$10$x9lODLjtolDbZHqRYEo.gO6sumf3/c3x/D5Tbpa3mCcLv5riF2dKy', NULL, '2019-11-23 22:26:14', '0000-00-00 00:00:00'),
(6, 'Aerl4D', 'djdiox@gmail.com', '$2y$10$3o93eVjXD8Ias5PsUtkCmuIgXz2MzzPQGzwetIgOF1rcxStgU3sBK', NULL, '2019-11-23 22:26:14', '0000-00-00 00:00:00'),
(7, '9ReK2c', '6ahrnl@gmail.com', '$2y$10$NxBoWGdnsBG3v4c7m/agfOcJ6aZgtINij79tX/XxgYehp05CaNC9O', NULL, '2019-11-23 22:26:14', '0000-00-00 00:00:00'),
(8, '0sJWts', '4fchzm@gmail.com', '$2y$10$eFKOr9S6d88xkyhdiDijJOUCcXoblh7.ubd72lmOEqus81rXHvrF2', NULL, '2019-11-23 22:26:14', '0000-00-00 00:00:00'),
(9, '57TtX9', 'h5yekc@gmail.com', '$2y$10$6IlgvPu0y32ktp5kUvtt6exhG8jryy9WlN0Unlc2.qgXw6nMUZ0.2', NULL, '2019-11-23 22:26:14', '0000-00-00 00:00:00'),
(10, 'rOxsIk', '6fvm7o@gmail.com', '$2y$10$z9DshDrjQPFGP6MEo6FXLuJy1s5FfLJ9W5X7er.AJ/FWDAxK1Kp4C', NULL, '2019-11-23 22:26:14', '0000-00-00 00:00:00'),
(11, 'jEjgFc', 'bdeehs@gmail.com', '$2y$10$Zx9V6ptYmMUJXfjrCdL3G.IYStn/2KAaeJ8Zkcr/o9RJ9a1yEum62', NULL, '2019-11-23 22:26:14', '0000-00-00 00:00:00'),
(12, 'Pnwqiv', 'k1sjud@gmail.com', '$2y$10$uLT9/XvO2HjtAlODyGFWC.JNOP8uhxrsBBFIJxeyx04ZKOEHSiMLq', NULL, '2019-11-23 22:26:14', '0000-00-00 00:00:00'),
(13, 'xbN7TZ', 'txducl@gmail.com', '$2y$10$q4QxAT4zR8l1Mvqt1uVBcOu7osVesefxUPmZizRn/PpJ2m1NxfSnu', NULL, '2019-11-23 22:26:14', '0000-00-00 00:00:00'),
(14, 'XyWKtj', 'dp3pla@gmail.com', '$2y$10$tBHXKck7fUd3efrKlS0sRurHJj8AaKv1RtZ9xs0ZW.3BEDabViDHm', NULL, '2019-11-23 22:26:15', '0000-00-00 00:00:00'),
(15, 'oDfR2z', 'hsemhq@gmail.com', '$2y$10$scmt1XjV/rFC0N9EfrdOV.bEmLygiCwWoFH3gsXysZnKotmofTeki', NULL, '2019-11-23 22:26:15', '0000-00-00 00:00:00'),
(16, 'AQVKAi', 'hf2z4d@gmail.com', '$2y$10$XD.XhEMh5ieP0/v5hj3/1u5u1L/.W3jpCxdUMbP/zgabF/4GH/Txi', NULL, '2019-11-23 22:26:15', '0000-00-00 00:00:00'),
(17, 'yjezTU', 'gaeojp@gmail.com', '$2y$10$7pJ0mDs1lPyxAZXgc92Iq.Pswkl1/PnLzK.VaHxamKpta0v2sQElK', NULL, '2019-11-23 22:26:15', '0000-00-00 00:00:00'),
(18, 'DrJcy1', 'vtirvv@gmail.com', '$2y$10$oe7/R6u3kycFnMGVMVY.o.6fxMOcGC78/ale/FJhAps8CekQ9Jppa', NULL, '2019-11-23 22:26:15', '0000-00-00 00:00:00'),
(19, 'cLNV5t', 'bq2fgj@gmail.com', '$2y$10$JEphSBz2sFhX3CwwKcYhgOjnN4hfIyeoMuH1gMhvDBN.4OzH6CEsG', NULL, '2019-11-23 22:26:15', '0000-00-00 00:00:00'),
(20, 'NPJEsW', 'qvu7ca@gmail.com', '$2y$10$1lrd6997P8BWgsLljBDCieCRdd2KqDO6vbQSn.GZlNwt4.VqzyF9q', NULL, '2019-11-23 22:26:15', '0000-00-00 00:00:00'),
(21, 'x89mJr', 'xmv7hk@gmail.com', '$2y$10$hxGVhM/S9IuDVTairseaR.1HwdRf8D09f15d.v5hVWEwAIjFFbTpW', NULL, '2019-11-23 22:26:15', '0000-00-00 00:00:00'),
(22, 'DlSO5l', 'mhhxai@gmail.com', '$2y$10$vmZClwtgO6KkVbpYgs15SOSSZJRWFbUcPfbT1mUwPiAX2.0VIu4Ee', NULL, '2019-11-23 22:26:15', '0000-00-00 00:00:00'),
(23, 'w35F5L', 'iasjnq@gmail.com', '$2y$10$oQYUq4fJS8qpL.J1FlWKpuhe96/2gHaGmx9mWqfYgefawgxrK9mYS', NULL, '2019-11-23 22:26:16', '0000-00-00 00:00:00'),
(24, 'k5YyGj', 'bw01gn@gmail.com', '$2y$10$PH/gQj0FfI7a8D1q0HF/3enQKkTKMfqolttHXC7JUfFPvbxQWrIaK', NULL, '2019-11-23 22:26:16', '0000-00-00 00:00:00'),
(25, 'uH2ilr', 'rsfrwv@gmail.com', '$2y$10$/iq9qIqNXsMwnPRKbuhmQu8KTuBFwrM/ExzyLB9WTgBzzs0oYuQ1K', NULL, '2019-11-23 22:26:16', '0000-00-00 00:00:00'),
(26, '0uwJSo', '5curnl@gmail.com', '$2y$10$18EE3AaKX7P/nrPJ6FUvcOGNqTilUCYSB9m./LmkLLxEhBX066X76', NULL, '2019-11-23 22:26:16', '0000-00-00 00:00:00'),
(27, 'oZZzMk', '5adlcc@gmail.com', '$2y$10$p0LPPg9DqSELFY5jR4zn6eRGse.m23lpHerQeJUAyO6hw/nzJQOMy', NULL, '2019-11-23 22:26:16', '0000-00-00 00:00:00'),
(28, 'MUQA5c', 'ybavm1@gmail.com', '$2y$10$5IP951rgsPP6QxYYvKZO7eiMaD1qzHQKr7tv.EFbMJYjcb09yKB0.', NULL, '2019-11-23 22:26:16', '0000-00-00 00:00:00'),
(29, 'nbAFtQ', 'nqhtpb@gmail.com', '$2y$10$KLo3bSAg2VjHo1hFxvp0XudVpRTKpZHsK4BXmIfUvjudfwXUuv4kW', NULL, '2019-11-23 22:26:16', '0000-00-00 00:00:00'),
(30, 'v7Q0Cz', 'zpdidw@gmail.com', '$2y$10$Hy5fEQpsEWYis2OyCn0v/e3Crr6XEFwWvPtoE4vTTVLJz.EHNJeWq', NULL, '2019-11-23 22:26:16', '0000-00-00 00:00:00'),
(31, 'D4mTLV', 'pyptb8@gmail.com', '$2y$10$dmWiKvQQ7qjrc70MT/2y1Ol9MgnSr3t4XLT2V7U2ZeZnX91oahz6a', NULL, '2019-11-23 22:26:16', '0000-00-00 00:00:00'),
(32, 'QFFkyN', '3yzzge@gmail.com', '$2y$10$Wk79NjCip0HVxied1C9.Z.AVIcIlZKhs/D.e/N4DUyLs/P8sKQ4xy', NULL, '2019-11-23 22:26:17', '0000-00-00 00:00:00'),
(33, 'YaTn7t', 'ht8z7p@gmail.com', '$2y$10$f.oFpb1jvBgsyHXvJPAkeusBXuZaYB322iDEcx78FQSuYfNQT.h4m', NULL, '2019-11-23 22:26:17', '0000-00-00 00:00:00'),
(34, 's4rEL8', 'wue22v@gmail.com', '$2y$10$LSy0t8eRTKK34pSSwAt41.KyZ5TP/iUreBREhsR7Iy1VuCuFntcGC', NULL, '2019-11-23 22:26:17', '0000-00-00 00:00:00'),
(35, 'kxKten', 'fbufkd@gmail.com', '$2y$10$WyJ14QjSZONokrdluUvyZ.JwMzT2/8njfX4tKP.JvacQ3RUSvVh2e', NULL, '2019-11-23 22:26:17', '0000-00-00 00:00:00'),
(36, 'QEuM6t', 'orunmb@gmail.com', '$2y$10$/NUaVzyyElaCKl8yxsByieUP/gpEqjdOrMUduz5WnmG7RIGw.DVmu', NULL, '2019-11-23 22:26:17', '0000-00-00 00:00:00'),
(37, '2FHtDq', 'yly4kf@gmail.com', '$2y$10$I4lXFE08eUhKCYlM/MoDwuC60q7R.v/RowMsv6mlauBz1nHG5tdRW', NULL, '2019-11-23 22:26:17', '0000-00-00 00:00:00'),
(38, '7NvKPR', 'fnullh@gmail.com', '$2y$10$a1fetC5AvhWHcOil7RxgdOZ4OnPLSU0ZSdrjx2RgNu4cqwP1o3QBS', NULL, '2019-11-23 22:26:17', '0000-00-00 00:00:00'),
(39, 'Sw0PGz', 'dv9egl@gmail.com', '$2y$10$v2xge5Irt/tOw8R000g5AeVpicPS2g8dVSCJ2uncmR5oRvO.kYsOK', NULL, '2019-11-23 22:26:17', '0000-00-00 00:00:00'),
(40, 'mZcVO5', 'xxv27w@gmail.com', '$2y$10$0J6hy2gxecS4jA4gfH87Tu6PXE6aRhLhHp57ddsnX3.l7KyJY1dqK', NULL, '2019-11-23 22:26:17', '0000-00-00 00:00:00'),
(41, 'OEZ2pp', 'rbwegn@gmail.com', '$2y$10$VFc3ojKubd5pe.cbNOt13OuyvXQKX85t12oammLaeGKMJOjY/5RTy', NULL, '2019-11-23 22:26:17', '0000-00-00 00:00:00'),
(42, 'XH8hUz', 'co1hse@gmail.com', '$2y$10$TyBzkPDYAlxwqFYIiIxksuhO7nM4hH.cLC5laZzDmm9fLnH9I9b3i', NULL, '2019-11-23 22:26:18', '0000-00-00 00:00:00'),
(43, 'Wh058X', 'ypdhee@gmail.com', '$2y$10$M.EJkgm3rgoeAqlYhQqaUur1.lZ.vOQjVgJY5WwqGxJfuzulOBXx.', NULL, '2019-11-23 22:26:18', '0000-00-00 00:00:00'),
(44, 'or70dW', 'hniepb@gmail.com', '$2y$10$O2r5asGqgh3Z5wOt93Mhi.MdiVHMkiAQT/omWyyzYu97sSDqJeUlm', NULL, '2019-11-23 22:26:18', '0000-00-00 00:00:00'),
(45, 'aURn4q', 'qgvuce@gmail.com', '$2y$10$3Km3ao5uclBEK9uvLvNOvOyv4.ekp2AdBtftku..dp2dYRsr1r2c6', NULL, '2019-11-23 22:26:18', '0000-00-00 00:00:00'),
(46, 'mianuz', 'vtxoj3@gmail.com', '$2y$10$oNg272nfMPRljbIouHqHoeFKnCCkWGSJQRVVTP2ibKuPeznS3pVQa', NULL, '2019-11-23 22:26:18', '0000-00-00 00:00:00'),
(47, 'AGAakW', 'iza1mr@gmail.com', '$2y$10$eoNK5RnpOaQ.m8Z42i2sEuyR6igNdeZuESUX7EpJgoconucQuZzIi', NULL, '2019-11-23 22:26:18', '0000-00-00 00:00:00'),
(48, 'nkR4pm', '6rgahz@gmail.com', '$2y$10$rfHYIYsIcFt9RBT9oD1cEuPXoZHvP3mHswWlL.pUOljBzL0gzDmyG', NULL, '2019-11-23 22:26:18', '0000-00-00 00:00:00'),
(49, '3WLO08', 'ibbevp@gmail.com', '$2y$10$F3.7zEtDebe7nHyrZOhXSuZncdXGNlNwWh/n6YFfRcbBailLUjhDe', NULL, '2019-11-23 22:26:18', '0000-00-00 00:00:00'),
(50, 'BeiE5Y', 'artasl@gmail.com', '$2y$10$wzm2fuT5k93e6diZqeuWPuHstSe8hWdgTqEqG0e1x66lDIL..qphW', NULL, '2019-11-23 22:26:19', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `song_list`
--
ALTER TABLE `song_list`
  ADD PRIMARY KEY (`songlist_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `song_list`
--
ALTER TABLE `song_list`
  MODIFY `songlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

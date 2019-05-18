-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 08 Mei 2019 pada 16.00
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity`
--

CREATE TABLE `activity` (
  `kd_activity` varchar(125) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id_categories` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id_categories`, `name`) VALUES
(1, 'Model Prediksi'),
(2, 'Edu 4.0'),
(3, 'Smart System'),
(4, 'Computer Vision'),
(5, 'Sistem Pakar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `collaboration`
--

CREATE TABLE `collaboration` (
  `kd_collab` int(11) NOT NULL,
  `title` text NOT NULL,
  `project` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `kd_inst` varchar(125) NOT NULL,
  `img` varchar(100) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `collaboration`
--

INSERT INTO `collaboration` (`kd_collab`, `title`, `project`, `description`, `kd_inst`, `img`, `date_created`) VALUES
(1, 'Robot', 'Mengenai semuanya', 'kdhakshdkj', '001', '5ccb1d2c08c88.jpg', 1556815148),
(2, 'kecerdasang mengukur', 'sipil bersama', 'jksfajksfkajsfjakhsjk', '002', '5ccb2bde9b434.jpg', 1556818910);

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(4) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(2) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `comment`
--

INSERT INTO `comment` (`id_comment`, `name`, `email`, `comment`, `status`, `date_created`) VALUES
(1, 'alfin', 'alfin.fauza90@gmail.com', 'sdsdnm', 'T', 1557127786),
(2, 'alfin', 'alfin.fauza90@gmail.com', 'asdas', 'T', 1557195268);

-- --------------------------------------------------------

--
-- Struktur dari tabel `institution`
--

CREATE TABLE `institution` (
  `kd_inst` varchar(125) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `institution`
--

INSERT INTO `institution` (`kd_inst`, `name`, `description`) VALUES
('001', 'Teknik Mesin', 'akjhskjahsdkjahsdkjah'),
('002', 'Teknik Sipil', 'akjsdajks');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `name` varchar(128) NOT NULL,
  `id_member` int(3) NOT NULL,
  `email` varchar(100) NOT NULL,
  `kd_status` int(11) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`name`, `id_member`, `email`, `kd_status`, `img`) VALUES
('Puspa Eosina, S.Si., M.Kom', 12, 'eosina@gmail.com', 1, '5cc83f9478714.jpg'),
('Gibtha Fitri Laxmi, S.Kom., M.Kom', 13, 'gibtha.fitri.laxmi@ft.uika-bogor.ac.id', 1, '5cc8401ecf35d.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id_news` int(125) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id_news`, `title`, `description`, `img`, `date_created`) VALUES
(1, 'Robot', 'qhwejkwkjqhwejqhwjeqhjwe', '.jpg', 1557309728),
(2, 'ssasasasasasas', 'Definition - What does Artificial Intelligence (AI) mean?\r\nArtificial intelligence (AI) is an area of computer science that emphasizes the creation of intelligent machines that work and react like humans. Some of the activities computers with artificial intelligence are designed for include:\r\n\r\nSpeech recognition\r\nLearning\r\nPlanning\r\nProblem solving', '', 1557322567);

-- --------------------------------------------------------

--
-- Struktur dari tabel `publication`
--

CREATE TABLE `publication` (
  `kd_publication` varchar(125) NOT NULL,
  `title` text NOT NULL,
  `author` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `published` varchar(100) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `publication`
--

INSERT INTO `publication` (`kd_publication`, `title`, `author`, `description`, `published`, `date_created`) VALUES
('2019kece', 'Kecerdasar Buatan', 'Alfin', 'sakjakjs', 'askjdhakjd', 1556890311);

-- --------------------------------------------------------

--
-- Struktur dari tabel `research`
--

CREATE TABLE `research` (
  `kd_research` varchar(125) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `id_categories` int(11) NOT NULL,
  `grant` varchar(100) NOT NULL,
  `date_created` int(11) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `research`
--

INSERT INTO `research` (`kd_research`, `title`, `description`, `id_categories`, `grant`, `date_created`, `img`) VALUES
('1adsa2019', 'adsasdh', 'ASasghjkagdahgdhjagdhakjsgdjhaksgdhajsgdhajsgdhajsgdahjsgdjahsgdjhasgdhasjgdhjasgdhjagdjaskhgdajhsgdhjsa', 1, 'djajkshdakjsdka', 1556604960, ''),
('2adsa2019', 'adsasdhdsadas', '<p>Jakarta, Humas LIPI. Perkembangan ilmu pengetahuan dan teknologi menuntut semakin meningkatnya kompetensi profesi peneliti. Pemerintah telah menyusun Peraturan Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi No.34 Tahun 2018 tentang Jabatan Fungsional Peneliti.</p>\r\n\r\n</p>Wakil Kepala LIPI, Bambang Subiyanto menjelaskan bahwa saat ini kita sudah mulai masuk pada masa revolusi industry 4.0. Kegiatan dimana manufaktur di kawasan industry tidak saja merambah bidang teknologi tetapi juga menyerbu bidang social. “Fenomena 4.0 menjadi perhatian inrevitalisasi manufaktur dan akan mempercepat perkembangan pembangunan,” ungkap Bambang pada Sosialisasi Jabatan Fungsional Peneliti Senin (1/10) di Jakarta.</p>\r\n\r\n“Indonesia akan mendapatkan bonus demografi pada tahun 2030 dimana SDM menjadi kunci faktor keberhasilan pembangunan," tegas Bambang pada sambutan pembukaan sosilaisasi tersebut. Pada saatnya nanti syarat untuk menjadi peneliti adalah minimal S2 dan untuk menjadi peneliti utama minimal S3.\r\n\r\nSementara itu, pada acara talkshow “Manajemen Riset di Era 4.0” , Kepala LIPI, Laksana Tri Handoko memaparkan bahwa pada intinya pada manajemen 4.0 ini adalah harus masuk pada teknologi kunci dan bukan teknologi produk. “Inti industri 4.0 merupakan perubahan produk improvement menjadi tantangan peneliti Indonesia ke depan,” jelasnya.\r\n\r\nLebih dalam dijelaskan apa yang didapat pada manajemen Riset 4.0 adalah bahwa riset harus dilakukan dari hulu sampai hilir. “Diantara hulu dan hilir ini nantinya ada pihak lain yang akan bertindak menjadi middle man, yaitu pihak yang akan menyelesaikan riset tersebut. Sebenarnya middle man ini adalah bentuk start up yang akan bertindak sebagai penyelesai akhir hasil riset,” jelas Handoko.\r\n\r\nHandoko mengungkapkan bahwa nantinya satuan kerja di litbang baik kementerian maupun lembaga penelitian didorong untuk mengeksplorasi anggaran penelitian dari eksternal sehingga harapannya nanti dapat berkolaborasi dengan Bapennas, hal ini akan lebih baik yaitu akumulasi knowledge. “Harapannya lagi kedepan kita mampu “menjual” modal yang kita miliki yaitu dengan akumulasi knowledge,” pungkasnya.(Rdn/ed:lyr)', 2, 'sdasdasdasd', 1556635906, '2adsa2019.jpg'),
('2menc2019', 'mencari yang terbaik', 'asdbamnsbdanmsdbanmsbdnasmbdnmasbdnmsabdmnsabdnmasbdnabsdnmasbnmdbsamndbasmndbasmndbamnsd', 2, 'ahdjhajdhsa', 1556692847, '2menc2019.jpg'),
('3robo2019', 'Robot', 'skhjsfhskjd', 3, 'asdas', 1556801111, '3robo2019.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `kd_status` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`kd_status`, `status`) VALUES
(1, 'Dosen'),
(2, 'Mahasiswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `address` text NOT NULL,
  `expertise` text NOT NULL,
  `password` varchar(256) NOT NULL,
  `is_active` int(2) NOT NULL,
  `role_id` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `expertise`, `password`, `is_active`, `role_id`, `image`, `date_created`) VALUES
(1, 'Bagus Fatwan Alfiat', 'fatwanbagus.99@gmail.com', 'Pamijahan Bogor', 'gabisa apapa', '$2y$10$J0dLj/VkDcUXi/SBceuvoeJeic8sDMG.7LqS0bTgAq0Pkhz7KO0GW', 1, 1, '5cac916635ecb.jpg', 1552750035),
(3, 'Robi Maulana', 'fatwanbagus.99@gmail.com', 'jl. pancasan', 'pinter', '$2y$10$J0dLj/VkDcUXi/SBceuvoeJeic8sDMG.7LqS0bTgAq0Pkhz7KO0GW', 1, 2, '5cc3256ebf560.jpg', 1556292727),
(4, 'alfin fauza', 'alfin.fauza90@gmail.com', '', '', '$2y$10$OrvJ9dcQDE5oJRodRfVz/OTq176ie0FGHJHxtW5TYr4MJtPfXvbeG', 1, 2, 'default.jpg', 1556781706);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_acces_menu`
--

CREATE TABLE `user_acces_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_acces_menu`
--

INSERT INTO `user_acces_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 1, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `menu_id` int(11) NOT NULL,
  `menu` varchar(50) NOT NULL,
  `menuType_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`menu_id`, `menu`, `menuType_id`) VALUES
(1, 'admin', 1),
(2, 'user', 1),
(3, 'System', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu_type`
--

CREATE TABLE `user_menu_type` (
  `menuType_id` int(11) NOT NULL,
  `menu_type` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_menu_type`
--

INSERT INTO `user_menu_type` (`menuType_id`, `menu_type`) VALUES
(1, 'default'),
(2, 'dropdown');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`role_id`, `role`) VALUES
(1, 'adminisator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(11) NOT NULL,
  `menuType_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`, `menuType_id`) VALUES
(1, 1, 'Dashboard', 'admin', 'fa fa-fw fa-tachometer-alt', 1, 1),
(2, 2, 'My Profile', 'user', 'fa fa-fw fa-user', 1, 1),
(3, 3, 'Management Menu', 'menu', 'fas fa-fw fa-folder', 1, 1),
(4, 3, 'Management Submenu', 'submenu', 'fas fa-fw fa-folder-open', 1, 1),
(5, 3, 'Management Information', '-', 'fas fa-fw fa-chevron-circle-down', 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `token` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`kd_activity`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categories`);

--
-- Indexes for table `collaboration`
--
ALTER TABLE `collaboration`
  ADD PRIMARY KEY (`kd_collab`),
  ADD KEY `kd_inst` (`kd_inst`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`);

--
-- Indexes for table `institution`
--
ALTER TABLE `institution`
  ADD PRIMARY KEY (`kd_inst`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD KEY `kd_status` (`kd_status`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`);

--
-- Indexes for table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`kd_publication`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`kd_research`),
  ADD KEY `id_categories` (`id_categories`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`kd_status`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `user_acces_menu`
--
ALTER TABLE `user_acces_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menuType_id` (`menuType_id`);

--
-- Indexes for table `user_menu_type`
--
ALTER TABLE `user_menu_type`
  ADD PRIMARY KEY (`menuType_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_sub_menu_ibfk_1` (`menuType_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(125) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_acces_menu`
--
ALTER TABLE `user_acces_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_menu_type`
--
ALTER TABLE `user_menu_type`
  MODIFY `menuType_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `collaboration`
--
ALTER TABLE `collaboration`
  ADD CONSTRAINT `collaboration_ibfk_1` FOREIGN KEY (`kd_inst`) REFERENCES `institution` (`kd_inst`);

--
-- Ketidakleluasaan untuk tabel `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`kd_status`) REFERENCES `status` (`kd_status`);

--
-- Ketidakleluasaan untuk tabel `research`
--
ALTER TABLE `research`
  ADD CONSTRAINT `research_ibfk_1` FOREIGN KEY (`id_categories`) REFERENCES `categories` (`id_categories`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`role_id`);

--
-- Ketidakleluasaan untuk tabel `user_acces_menu`
--
ALTER TABLE `user_acces_menu`
  ADD CONSTRAINT `user_acces_menu_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `user_menu` (`menu_id`),
  ADD CONSTRAINT `user_acces_menu_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`role_id`);

--
-- Ketidakleluasaan untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD CONSTRAINT `user_menu_ibfk_1` FOREIGN KEY (`menuType_id`) REFERENCES `user_menu_type` (`menuType_id`);

--
-- Ketidakleluasaan untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD CONSTRAINT `user_sub_menu_ibfk_1` FOREIGN KEY (`menuType_id`) REFERENCES `user_menu_type` (`menuType_id`),
  ADD CONSTRAINT `user_sub_menu_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `user_menu` (`menu_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

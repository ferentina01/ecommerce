-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 04:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommer`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_admin`
--

CREATE TABLE `tabel_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `admin_telepon` varchar(20) NOT NULL,
  `admin_email` varchar(30) NOT NULL,
  `admin_addres` text NOT NULL,
  `user_type` varchar(10) NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_admin`
--

INSERT INTO `tabel_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telepon`, `admin_email`, `admin_addres`, `user_type`) VALUES
(5, 'feren cristina tambu', 'ferentina', 'feren', '+6285880201215', 'feren@gmail.com', 'Jl.Pinang Ranti timur', 'admin'),
(6, 'Feren Cristina T', 'veren_tina', 'feren', '+6285880201215', 'ferentina@gmail.com', 'Sunter, kelapa gading', 'user'),
(7, 'Veren tina', 'feren', 'asdfg', '0858-9265-0810', 'feren@gmail.com', 'pinang rantin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_kategori`
--

CREATE TABLE `tabel_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_kategori`
--

INSERT INTO `tabel_kategori` (`kategori_id`, `kategori_nama`) VALUES
(1, 'Pakaian Wanita'),
(2, 'Pakaian pria'),
(3, 'elektronik'),
(4, 'aksesoris'),
(5, 'perawatan dan kecantikan'),
(6, 'olahraga'),
(7, 'sepatu'),
(8, 'tas'),
(9, 'perlengkapan rumah'),
(10, 'makanan'),
(11, 'sayuran'),
(12, 'minuman'),
(13, 'Pakaian Wanita'),
(14, 'Pakaian pria'),
(15, 'elektronik'),
(16, 'aksesoris'),
(17, 'perawatan dan kecantikan'),
(18, 'olahraga'),
(19, 'sepatu'),
(20, 'tas'),
(21, 'perlengkapan rumah'),
(22, 'makanan'),
(23, 'sayuran'),
(24, 'minuman');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_produk`
--

CREATE TABLE `tabel_produk` (
  `produk_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `produk_nama` varchar(50) NOT NULL,
  `produk_harga` int(12) NOT NULL,
  `produk_descripsi` text NOT NULL,
  `produk_image` varchar(50) NOT NULL,
  `produk_status` tinyint(1) NOT NULL,
  `tanggal_buat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabel_produk`
--

INSERT INTO `tabel_produk` (`produk_id`, `kategori_id`, `produk_nama`, `produk_harga`, `produk_descripsi`, `produk_image`, `produk_status`, `tanggal_buat`) VALUES
(33, 13, 'baju non lengan    ', 150000, '<p>baju dengan bahan yang lembut</p>\r\n', 'foto1658053523.jpg', 1, '2022-07-17 10:03:56'),
(34, 13, 'Baju Dress Panjang    ', 100000, '<p>Naila premium dress<br />\r\n<br />\r\nMat : moscrepe mix renda<br />\r\nBahan : moscrepe<br />\r\nBahan moscrepe adalah jenis bahan kain crepe yang memiliki tekstur kulit jeruknya paling halus alias tidak terlalu nampak. Kain moscrepe jika diraba cukup halus dengan sensasi tekstur crepe di permukaan kainnya. diatasnya. Selain itu, sebagaimana kebanyakan bahan crepe secara umum, bahwa kainnya tidak mudah kusut, ketebalan kainnya yang pas dan sifat kainnya yang jatuh alias tidak kaku dan tekstur kainnya cukup halus dan cukup adem.<br />\r\n&nbsp;</p>\r\n', 'foto1658120942.jpg', 1, '2022-07-18 05:00:06'),
(35, 13, 'Baju tunik', 500000, '<p>Dress tunik ini terlihat simple. Tapi jika dilihat detilnya sangat menggoda untuk dipakai. Pada bagian samping leher diberi aksen pita besar yang menjuntai, memberikan kesan edgy yang maksimal. Bentuknya yang melebar kesamping dengan motif line cocok untuk Anda yang berbadan ramping atau berisi.</p>\r\n\r\n<p>Kalau merasa kurang pede dengan pola lebar ini, Anda bisa memberikan sentuhan ikat pinggang metal silver untuk membentuk lekuk tubuh lebih ramping. High heels tipe gladiator atau open toe shoes bisa Anda pilih agar terlihat percaya diri.</p>\r\n', '3.jpg', 1, '2022-07-18 05:13:43'),
(36, 13, 'Baju tunik line black', 100000, '<p>Mini dress tunic yang satu ini sangat elegan. Perpaduan warna hitam dan rainbow colour menjadikannya cocok sebagai busana pesta. Mau lebih flawless lagi, Anda bisa pakai gelang boho atau gispy dari bebatuan. Jangan lupa chunky shoes warna hitam favorit Anda sebagai paduannya. Masih kurang? Sling bag mungil bisa dipilih sebagai aksesoris tambahan.</p>\r\n', '5.jpg', 1, '2022-07-18 05:14:53'),
(37, 13, 'Baju tunik chiffon shiller', 150000, '<p>Sederhana tapi elegan, kesan yang tercipta jika Anda mengenakan desain tunik ini. Dengan kerah Shillernya memberikan aura formal jadi cocok untuk busana kerja, tinggal padukan dengan celana jeans atau legging akan keren terlihat. Tak perlu tambahan aksesoris, cukup gelang berdiameter kecil dan tote bag atau sadle bag berwarna natural.</p>\r\n', '6.jpg', 1, '2022-07-18 05:16:11'),
(38, 13, 'Baju etnic tunic dress', 500000, '<p>Kesan simple memang sangat terlihat dari desain tunik ini. Motif polkadot asimetris satu warna jadi ciri desain ini serta lengan lipit hingga siku. Jika Anda mau tambah pede, gunakan legging warna gelap sebagai bawahannya. Tak lupa sepatu kets bagi yang ingin terlihat sporty atau high heels jika ingin aura feminimnya terlihat jelas.</p>\r\n\r\n<p>Soal aksesoris, mini back pack atau bucket bag bisa Anda pilih sesuai kebutuhan. Kalau mau dipakai santai, mini back pack adalah pilihan tepat.</p>\r\n', '7.jpg', 1, '2022-07-18 05:17:38'),
(39, 24, 'ice bland', 50000, '<p>Jenis minuman yang sangat digemari, terutama kalangan remaja dan anak muda. Minuman ini terbentuk dari: es batu yang dihancurkan hingga halus, biasanya menggunakan mesin blender, dan dicampurkan dengan kopi, perasa minuman (flavor powder) atau sirup beraroma, sehingga menciptakan rasa minuman yang nikmat dan memberi sensasi dingin.</p>\r\n\r\n<p>Minuman Ice Blend seringkali diberi tambahan topping whip cream untuk menambah citarasa dan keindahan dalam penyajiannya.<br />\r\nMenu Ice Blend favorit:<br />\r\n&ndash; Ice Blend Coffee<br />\r\n&ndash; Ice Blend Strawberry Javachip<br />\r\n&ndash; Ice Blend Cookies &amp; Cream</p>\r\n', '9.webp', 1, '2022-07-18 05:21:40'),
(40, 24, 'Ice drink', 15000, '<p>Jenis minuman yang paling populer, karena sangat ampuh menghilangkan rasa haus. Yaitu minuman yang dicampur dengan es batu. Hampir semua jenis minuman cocok disajikan dengan cara ini.</p>\r\n\r\n<p>Menu Ice Drink favorit:<br />\r\n&ndash; Ice Tea<br />\r\n&ndash; Ice Syrup<br />\r\n&ndash; Ice Squash</p>\r\n', '10.webp', 1, '2022-07-18 05:22:39'),
(41, 24, 'Milk shake', 35000, '<p>Minuman manis dan dingin yang biasanya terbuat dari es krim, susu panas ataupun susu dingin. Dipadukan dengan bubuk perasa (flavor powder) ataupun sirup yang dibuat dengan cara dikocok (shake) menggunakan shaker, atau diblend menggunakan mesin blender. Agar lebih nikmat Milkshake biasanya diberi tambahan (topping) berupa saus pemanis (coklat, karamel, stroberi)</p>\r\n\r\n<p>Menu Milkshake favorit:<br />\r\n&ndash; Strawberry Milkshake<br />\r\n&ndash; Chocolate Milkshake<br />\r\n&ndash; Banana Milkshake</p>\r\n', '11.webp', 1, '2022-07-18 05:23:23'),
(42, 24, 'Fruit tea', 20000, '<p>Salah satu minuman yang cukup favorit di Restoran, karena rasanya yang terbilang aman untuk selera kebanyakan orang.</p>\r\n\r\n<p>Fruit Tea adalah minuman teh yang dicampurkan dengan sirup / konsentrat jus buah sebagai pemberi rasa teh tersebut. Biasanya sirup yang digunakan tidak terlalu pekat (weak taste), agar tidak menghilangkan aroma dari teh itu sendiri.</p>\r\n\r\n<p>Menu Fruit Tea favorit:<br />\r\n&ndash; Lychee Tea<br />\r\n&ndash; Sour Plum Tea<br />\r\n&ndash; Blackcurrant Tea</p>\r\n', '12.webp', 1, '2022-07-18 05:24:33'),
(43, 24, 'Smoothie', 25000, '<p>Minuman segar dengan karakteristik sama seperti Ice Blend, yaitu es yang dihancurkan sampai halus (smooth), tetapi menggunakan bahan dasar sayuran (vegetable) dan buah asli (real fruit).</p>\r\n\r\n<p>Sehingga minuman ini lebih sering dikonsumsi dengan alasan kesehatan atau diet. Dalam penerapannya smoothie seringkali dicampurkan dengan susu ataupun yogurt.</p>\r\n\r\n<p>Menu Smoothie Favorit:<br />\r\n&ndash; Banana Smoothie<br />\r\n&ndash; Strawberry Smoothie<br />\r\n&ndash; Mango Smoothie</p>\r\n', '13.webp', 1, '2022-07-18 05:25:45'),
(44, 23, 'Bayam', 150000, '<p>Sayur bayam atau daun bayam merupakan tanaman berbunga dan memiliki daun warna hujau gelap. Bayam berasal dari Asia Barat dan Tengah yang bisa tumbuh diketinggian 30 cm. Tanaman ini bisa bertahan hidup di musim dingin di daerah beriklim.</p>\r\n\r\n<p>Bayam merupakan jenis sayuran yang bermanfaat untuk kesehatan dan nilai gizi yang tinggi. Sayur ini bisa dimakan mentah misalnya sebagai salad, karena menjaga nutrisi didalamnya.</p>\r\n', '14.webp', 1, '2022-07-18 05:27:18'),
(45, 23, 'Brokoli', 20000, '<p>Brokoli merupakan sayuran dari jenis kubis dan dikategorikan sebagai tanaman sayuran hijau yang bisa dimakan. Sayuran ini juga dikenal sebagai sayuran yang kaya akan nutrisi.</p>\r\n\r\n<p>Sayuran brokoli merupakan sayuran yang dapat membangkitkan tenaga. Selain itu, sayuran ini tidak mempunyai lemak. Adapun manfaat brokoli yang lainnya, sebagai berikut :</p>\r\n\r\n<ul>\r\n	<li>Mencegah penyakit kanker</li>\r\n	<li>Menyehatkan tulang dan gigi</li>\r\n	<li>Menjaga kesehatan jantung</li>\r\n	<li>Memperlancar pencernaan</li>\r\n</ul>\r\n', 'brokoli.webp', 1, '2022-07-18 05:28:20'),
(46, 23, 'Cabai', 150000, '<p>Cabai merupakan jenis sayuran yang hampir semua orang pernah memakannya, cabai ini sering dijadikan penyedap masakan dengan rasanya yang pedas.</p>\r\n\r\n<p>Cabai ini tidak sedikit juga yang menghindarinya, karena rasa pedas yang diyakini mendatangkan penyakit. Tetapi, ternyata sayuran ini juga memiliki manfaat untuk kita, diantaranya adalah :</p>\r\n\r\n<ul>\r\n	<li>Menurunkan berat badan</li>\r\n	<li>Meningkatkan kekebalan tubuh</li>\r\n	<li>Meredam rasa nyeri</li>\r\n	<li>Mengurangi sakit kepala</li>\r\n	<li>Melancarkan pencernaan</li>\r\n</ul>\r\n\r\n<p>Tetapi, apabila kita terlalu sering dan mengonsumsinya berlebihan, justru manfaat yang terkandung dalam cabai ini tidak ada, malah beresiko mendatangkan gangguan kesehatan.</p>\r\n', 'cabai.webp', 1, '2022-07-18 05:29:07'),
(47, 23, 'Jagung      ', 10000, '<p>Jagung yang sering dijadikan sayur adalah jenis jagung yang masih muda, kanungan yang dimilikinya sangat banyak dan menjadikan jagung ini kaya akan manfaat, diantaranya adalah:</p>\r\n\r\n<ul>\r\n	<li>Meningkatkan imunitas tubuh,</li>\r\n	<li>Menurunkan berat badan,</li>\r\n	<li>Mengandung protein,</li>\r\n	<li>Mencegah diabetes,</li>\r\n	<li>Mempercantik kulit dan masih banyak lagi manfaat yang dimiliki jagung ini.</li>\r\n</ul>\r\n', 'foto1658122584.jpg', 1, '2022-07-18 05:29:52'),
(48, 20, 'Tas Minaudiere ', 500000, '<p>Jenis tas yang berikutnya adalah minaudiere bag. Tas ini sering digunakan untuk menghadiri pesta yang membutuhkan aksesori berkelas.</p>\r\n\r\n<p>Tas ini biasanya memiliki tekstur yang lebih keras dari jenis tas yang lainnya karena terbuat dari rangka stainless steel. Dihiasi dengan manik-manik membuat tas ini cocok untuk menemani Anda ke pesta.</p>\r\n', '20.jpg', 1, '2022-07-18 05:32:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_admin`
--
ALTER TABLE `tabel_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tabel_kategori`
--
ALTER TABLE `tabel_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tabel_produk`
--
ALTER TABLE `tabel_produk`
  ADD PRIMARY KEY (`produk_id`),
  ADD KEY `kategori_id_2` (`kategori_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_admin`
--
ALTER TABLE `tabel_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tabel_kategori`
--
ALTER TABLE `tabel_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tabel_produk`
--
ALTER TABLE `tabel_produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

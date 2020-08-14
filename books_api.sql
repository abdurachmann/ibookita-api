-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jun 2020 pada 07.06
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books_api`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `list_books`
--

CREATE TABLE `list_books` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(80) NOT NULL,
  `image` text NOT NULL,
  `page` int(11) NOT NULL,
  `tags` varchar(30) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `list_books`
--

INSERT INTO `list_books` (`id`, `title`, `author`, `image`, `page`, `tags`, `description`) VALUES
(1, '5 CM', 'Dhony Dhirgantoro', 'https://cdn.gramedia.com/uploads/items/5cm.jpg', 382, 'Romance', 'Lima sahabat telah menjalin persahabatan selama tujuh tahun. Mereka adalah Arial yang paling tampan, Riani sebagai satu-satunya wanita dalam kelompok itu, Zafran yang berlagak seperti seorang penyair, Ian yang paling subur badannya, dan Genta yang dianggap sebagai leader dalam kelompok itu. Kegemaran mereka adalah mengeksekusi hal-hal yang tidak mungkin dan mencoba segala hal, mulai dari kafe paling terkenal di Jakarta, sampai nonton layar tancap. Semuanya penggemar film, dari film Hollywood sampai film yang nggak Jelas—kecuali film India karena mereka punya prinsip bahwa semua persoalan di dunia atau masalah pasti ada jalan keluarnya, tetapi bukan dalam bentuk joget.Suatu saat, karena terdorong oleh rasa bosan di antara satu dan yang lain, mereka memutuskan untuk tidak saling berkomunikasi dan bertemu satu sama lain selama tiga bulan. Selama tiga bulan berpisah itulah telah terjadi banyak hal yang membuat hati mereka lebih kaya dari sebelumnya. Pertemuan setelah tiga bulan yang penuh dengan rasa kangen akhirnya terjadi dan dirayakan dengan sebuah perjalanan. Sebuah perjalanan untuk mendaki Gunung Semeru sampai menuju puncak. Sebuah perjalanan yang telah mengubah mereka menjadi manusia sesungguhnya, bukan Cuma seonggok daging yang bisa berbicara, berjalan, dan punya nama.'),
(2, 'Belajar Sendiri Pasti Bisa Javascript', 'Abdul kadir', 'https://cdn.gramedia.com/uploads/items/9789792951035_Belajar-Sendi.jpg', 320, 'Komputer', 'Buku Belajar Sendiri Pasti Bisa Javascript mengupas tentang bahasa pemrograman javascript yang sangat membantu'),
(3, 'Belajar Sendiri Adobe Photoshop Cc 2020', 'Jubilee Enterprise', 'https://cdn.gramedia.com/uploads/items/9786230015830_Cov_Belajar_Sendiri_Adobe_Photoshop__w149_hauto.jpg', 256, 'Komputer', 'Photoshop CC 2020 merupakan peranti lunak versi paling mutakhir yang dapat dimanfaatkan untuk pembuatan desain, ilustrasi, dan mengedit foto-foto digital. Buku ini ditulis bagi pengguna pemula yang ingin mempelajari Photoshop. Materi yang disajikan mencakup: • Pengenalan Photoshop CC 2020. • Menggunakan tool-tool standar yang sering digunakan. • Menulis teks di dalam kanvas. • Membuat seleksi dan mengenal Select and Mask. • Pengenalan Layers dan pembuatan layer mask. • Mengenal dan mengoptimalkan Channel untuk seleksi. • Memanfaatkan adjustment layer. • Pengenalan terhadap menu Filters. • Dan sebagainya. Buku ini juga dilengkapi dengan video tutorial-video tutorial yang di-posting di Youtube dan Udemy untuk semua orang. Semakin sering Anda melihat video tutorial, maka semakin canggih pengetahuan Anda dalam dunia desain grafis.'),
(4, 'The Naked Traveler 8', 'Trinity', 'https://cdn.gramedia.com/uploads/items/9786024261061_The-Naked-Traveler-8_ERbXj6t.jpg', 256, 'Travel', 'Dalam edisi terakhir dari seri The Naked Traveler ini, kita melihat perjalanan panjang Trinity menuliskan\nrekaman perjalanannya menggenapi kunjungan ke-88 negara di dunia.Trinity menumpahkan hal-hal seru, yang bikin senang, kesal, geli, haru, sedih, dan bikin nagih - semua lagi-\nlagi menularkan virus untuk traveling. Dari perjalanan menyaksikan pesona Iceland yang overrated,\nmenikmati megahnya alam Afganistan dari perbatasaan saat road trip di Asia Tengah, merasakan\natmosfer Islam di Iran, menderitanya menjadi traveler difabel, hingga mencoba peruntungan kencan\nonline di Eropa.Simak juga curhatan pembaca setia yang hidupnya berubah setelah membaca seri The Naked Traveler.\nKali ini dua di antaranya turut berkontribusi menuliskan pengalaman mereka dalam bab #TNTEffect yang\nmenambah keseruan buku ini.The Naked Traveler is over, but its spirit is immortalized right here, in print, forever.'),
(5, 'My Journey To Heaven', 'Marvin J. Besteman, Lorilee Cracker', 'https://cdn.gramedia.com/uploads/items/9789792964035_9789792964035__w149_hauto.jpg', 196, 'Spritual', 'PERJALANAN TAK TERLUPAKAN MENUJU SURGA\nSaat Marv Besteman terbaring di ranjang rumah sakit, gambaran tentang surga yang indah tidak terbayangkan dalam pikirannya. Ia baru saja melakukan operasi untuk mengangkat tumor pankreas langka yang dideritanya. Sendirian setelah kunjungan yang terus-menerus selama beberapa jam, Marv berbaring memutar, hanya ada satu hal yang benar-benar ia inginkan saat ini, yaitu tidur untuk sementara waktu dan mengalihkan rasa sakitnya yang luar biasa menyiksa.\nIa mendapat pengalaman yang tidak pernah ia bayangkan sebelumnya—sesuatu yang tidak dapat ia lupakan.\nDalam buku ini, Marv Besteman membagikan kisah nyata mengenai pengalamannya mengenai surga dengan detail yang menakjubkan. Anda akan bertemu dengan para malaikat yang mendampingi dirinya menuju pintu gerbang surga, mendengar percakapannya dengan Rasul Petrus, dan merasakan sukacita saat ia mengenali teman-ternan dan anggota keluarganya yang telah menyentuh hidupnya.\nJika Anda sedang berduka karena kehilangan seseorang yang Anda kasihi, atau Anda bahkan khawatir tentang hal yang akan terjadi setelah kita meninggal, Anda akan menemukan kedamaian, rasa nyaman, dan kekuatan dalam cerita Marv.'),
(6, 'Marriage Contract', 'Diossa', 'https://cdn.gramedia.com/uploads/items/176396166-352-k354098__w149_hauto.jpg', 302, 'Romance', 'Lebih gampang bagi Haebin untuk mengakui, pernikahan ini terjadi karena kesepakatan bisnis.\nDia tak perlu memaksakan diri untuk mencintai Jimin, atau berpura-pura sebagai istri bahagia di sisinya. Karena dirinya sendiri adalah contoh yang tak terbantahkan, ternyata bisa saja menikahi seseorang tanpa harus mencintainya.\nDan demi apa pun Haebin tak akan mengulangi dosa yang sama, membuat hatinya remuk redam karena kehilangan seseorang yang tak pernah jadi miliknya....');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'rachman', 'abrchmn@gmail.com', '$2b$10$BQiYICRxICeBxj5gOSo1Reg6nzCF8LmhW.gWJifUKYLHXiDMb5UzO');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `list_books`
--
ALTER TABLE `list_books`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `list_books`
--
ALTER TABLE `list_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jun 2019 pada 02.33
-- Versi server: 10.1.32-MariaDB
-- Versi PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog`
--
CREATE DATABASE IF NOT EXISTS `ciblog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ciblog`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`) VALUES
(4, 5, 'Bussines', '2019-06-02 22:16:59'),
(5, 3, 'Food', '2019-06-04 03:29:07'),
(6, 3, 'Technology', '2019-06-04 03:30:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(2, 22, 'didik am', 'diidkam@gmai.com', 'this is body', '2019-06-02 23:06:57'),
(3, 22, 'didik am', 'jane@yahoo.com', 'Thank You for awesome post', '2019-06-02 23:25:28'),
(4, 22, 'mukmin', 'mukmin@gmail.com', 'you are welcome', '2019-06-03 03:51:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(21, 4, 3, 'Post Two', 'Post-Two', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed convallis nibh a enim tempus, et varius urna pretium. Morbi imperdiet magna et volutpat tempus. Morbi sit amet condimentum risus, id dapibus ex. Etiam scelerisque tincidunt ex, sed elementum leo interdum a. Etiam suscipit pharetra dolor non elementum. Proin non rhoncus massa, at rutrum urna. Duis ornare metus non turpis tempor laoreet. Morbi id nisl arcu. In nisi orci, rhoncus et odio at, pretium cursus odio. Quisque sodales imperdiet diam id commodo. Aliquam sollicitudin interdum suscipit. Aliquam id est eu elit blandit dignissim. Donec venenatis in urna in ultrices. Vivamus non elit sed elit bibendum maximus eu eu eros. Sed vitae laoreet ipsum, non rhoncus urna. Suspendisse potenti.</p>\r\n\r\n<p>Suspendisse blandit, massa non vestibulum hendrerit, tortor mauris volutpat ipsum, id mollis nisl eros vel dui. Integer tellus erat, feugiat at luctus vitae, suscipit id velit. Proin dignissim, erat eu aliquet molestie, magna enim fermentum enim, eu fermentum sem purus at nibh. Sed massa quam, sollicitudin sit amet justo ac, gravida molestie lorem. Maecenas auctor enim in nunc viverra, non bibendum dolor volutpat. Aliquam placerat mattis leo eu tristique. Sed placerat mi in ante pharetra, ac consequat ligula ornare. Vivamus nec erat neque. Vivamus eleifend arcu ex, ac molestie neque posuere sed. Mauris sagittis fringilla massa in dictum. Quisque eu mi nec quam eleifend cursus id nec nisl. Sed tincidunt blandit velit, in congue libero aliquam ut. Nulla orci augue, auctor id suscipit vel, finibus sed elit.</p>\r\n', 'logo_TI.png', '2019-06-02 22:29:06'),
(22, 3, 3, 'Post Three', 'Post-Three', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed convallis nibh a enim tempus, et varius urna pretium. Morbi imperdiet magna et volutpat tempus. Morbi sit amet condimentum risus, id dapibus ex. Etiam scelerisque tincidunt ex, sed elementum leo interdum a. Etiam suscipit pharetra dolor non elementum. Proin non rhoncus massa, at rutrum urna. Duis ornare metus non turpis tempor laoreet. Morbi id nisl arcu. In nisi orci, rhoncus et odio at, pretium cursus odio. Quisque sodales imperdiet diam id commodo. Aliquam sollicitudin interdum suscipit. Aliquam id est eu elit blandit dignissim. Donec venenatis in urna in ultrices. Vivamus non elit sed elit bibendum maximus eu eu eros. Sed vitae laoreet ipsum, non rhoncus urna. Suspendisse potenti.</p>\r\n\r\n<p>Suspendisse blandit, massa non vestibulum hendrerit, tortor mauris volutpat ipsum, id mollis nisl eros vel dui. Integer tellus erat, feugiat at luctus vitae, suscipit id velit. Proin dignissim, erat eu aliquet molestie, magna enim fermentum enim, eu fermentum sem purus at nibh. Sed massa quam, sollicitudin sit amet justo ac, gravida molestie lorem. Maecenas auctor enim in nunc viverra, non bibendum dolor volutpat. Aliquam placerat mattis leo eu tristique. Sed placerat mi in ante pharetra, ac consequat ligula ornare. Vivamus nec erat neque. Vivamus eleifend arcu ex, ac molestie neque posuere sed. Mauris sagittis fringilla massa in dictum. Quisque eu mi nec quam eleifend cursus id nec nisl. Sed tincidunt blandit velit, in congue libero aliquam ut. Nulla orci augue, auctor id suscipit vel, finibus sed elit.</p>\r\n', 'logo-k13-png-6.png', '2019-06-02 22:29:51'),
(23, 3, 3, 'Post Three', 'Post-Three', '<h2>Etiam nec ante</h2>\r\n\r\n<p>et nibh elementum feugiat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nullam ac vehicula risus. Curabitur vel est magna. Proin mauris odio, congue at pulvinar quis, tristique in ex. Vivamus dictum felis vitae molestie posuere. Suspendisse gravida eros ac elit pharetra luctus. Ut in ipsum odio. Aenean interdum hendrerit lacinia. Quisque massa felis, dictum id enim nec, convallis scelerisque magna. Donec dignissim dui eros, ut porta mi commodo nec. Suspendisse potenti. Donec pretium, tortor a suscipit rutrum, tortor risus cursus sem, quis hendrerit quam odio at orci. Morbi placerat tempus commodo.</p>\r\n\r\n<p>Morbi nec nibh sit amet erat mattis dictum. Fusce ullamcorper nisi eget laoreet elementum. Etiam non arcu mollis magna pharetra aliquam. Donec accumsan pretium lectus. Nullam et gravida nunc. Integer sodales, mi eu finibus sagittis, sapien libero consequat massa, in laoreet elit tortor at justo. Sed non ex at tortor sodales auctor efficitur nec nulla. Nullam venenatis id odio at maximus. Duis vulputate pharetra eros, et lobortis justo maximus in.</p>\r\n', '123.png', '2019-06-03 01:00:34'),
(24, 3, 3, 'Post five', 'Post-five', '<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', 'logo-kemenag.png', '2019-06-04 03:01:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(3, 'didik am', '12345', 'diidkam@gmai.com', 'dikam', 'c20ad4d76fe97759aa27a0c99bff6710', '2019-06-03 00:59:42'),
(5, 'Mukmin', '12345', 'mukmin@gmail.com', 'mukmin', 'c20ad4d76fe97759aa27a0c99bff6710', '2019-06-03 03:45:51');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

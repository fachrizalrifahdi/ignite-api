-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 27 Sep 2019 pada 15.07
-- Versi server: 5.7.19
-- Versi PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ignite`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `adonis_schema`
--

CREATE TABLE `adonis_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `adonis_schema`
--

INSERT INTO `adonis_schema` (`id`, `name`, `batch`, `migration_time`) VALUES
(1, '1503250034279_user', 1, '2019-09-27 11:25:04'),
(2, '1503250034280_token', 1, '2019-09-27 11:25:05'),
(3, '1569570146072_ignite_schema', 1, '2019-09-27 11:25:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ignites`
--

CREATE TABLE `ignites` (
  `id` int(10) UNSIGNED NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `t_today` float(8,2) DEFAULT NULL,
  `r_today` float(8,2) DEFAULT NULL,
  `a_today` float(8,2) DEFAULT NULL,
  `t_month` float(8,2) DEFAULT NULL,
  `r_month` float(8,2) DEFAULT NULL,
  `a_month` float(8,2) DEFAULT NULL,
  `t_year` float(8,2) DEFAULT NULL,
  `r_year` float(8,2) DEFAULT NULL,
  `a_year` float(8,2) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ignites`
--

INSERT INTO `ignites` (`id`, `location`, `t_today`, `r_today`, `a_today`, `t_month`, `r_month`, `a_month`, `t_year`, `r_year`, `a_year`, `region`, `created_at`, `updated_at`) VALUES
(1, 'Balikpapan', 147.00, 2.00, 1.00, 3.53, 2.11, 60.00, 40.37, 24.71, 60.00, 'Witel', '2019-09-27 19:25:11', '2019-09-27 19:25:11'),
(2, 'Kalbar', 204.00, 3.00, 1.00, 4.90, 3.50, 71.00, 50.28, 36.09, 72.00, 'Witel', '2019-09-27 19:27:02', '2019-09-27 19:27:02'),
(3, 'Kalsel', 188.00, 1.00, 1.00, 4.51, 3.27, 73.00, 47.95, 33.24, 69.00, 'Witel', '2019-09-27 19:28:41', '2019-09-27 19:28:41'),
(4, 'Kaltara', 134.00, 0.00, 0.00, 3.22, 1.07, 33.00, 27.14, 19.05, 70.00, 'Witel', '2019-09-27 19:30:54', '2019-09-27 19:30:54'),
(5, 'Kalteng', 143.00, 1.00, 1.00, 3.43, 2.08, 61.00, 34.18, 24.15, 71.00, 'Witel', '2019-09-27 19:31:53', '2019-09-27 19:31:53'),
(6, 'Samarinda', 184.00, 1.00, 1.00, 4.42, 3.02, 68.00, 46.34, 32.13, 69.00, 'Witel', '2019-09-27 19:33:13', '2019-09-27 19:33:13'),
(7, 'Balikpapan', 103.00, 2.00, 2.00, 2.47, 1.76, 71.00, 32.80, 20.66, 63.00, 'Datel', '2019-09-27 19:34:49', '2019-09-27 19:34:49'),
(8, 'Banjarbaru', 57.00, 1.00, 2.00, 1.37, 770.00, 56.00, 10.61, 8.40, 79.00, 'Datel', '2019-09-27 19:35:38', '2019-09-27 19:35:38'),
(9, 'Banjarmasin', 68.00, 0.00, 0.00, 1.63, 1.22, 75.00, 21.11, 12.86, 61.00, 'Datel', '2019-09-27 19:36:24', '2019-09-27 19:36:24'),
(10, 'Batulicin', 29.00, 0.00, 0.00, 696.00, 535.00, 77.00, 7.59, 5.81, 77.00, 'Datel', '2019-09-27 19:37:04', '2019-09-27 19:37:04'),
(11, 'Bontang', 49.00, 0.00, 0.00, 1.18, 675.00, 57.00, 13.17, 8.27, 63.00, 'Datel', '2019-09-27 19:37:40', '2019-09-27 19:37:40'),
(12, 'Bulungan Berau', 47.00, 0.00, 0.00, 1.13, 528.00, 47.00, 11.63, 6.85, 59.00, 'Datel', '2019-09-27 19:38:30', '2019-09-27 19:38:30'),
(13, 'Ketapang', 19.00, 0.00, 0.00, 456.00, 221.00, 48.00, 5.08, 2.66, 52.00, 'Datel', '2019-09-27 19:39:15', '2019-09-27 19:39:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tokens`
--

CREATE TABLE `tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `type` varchar(80) NOT NULL,
  `is_revoked` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(80) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `adonis_schema`
--
ALTER TABLE `adonis_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ignites`
--
ALTER TABLE `ignites`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tokens_token_unique` (`token`),
  ADD KEY `tokens_user_id_foreign` (`user_id`),
  ADD KEY `tokens_token_index` (`token`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `adonis_schema`
--
ALTER TABLE `adonis_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ignites`
--
ALTER TABLE `ignites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

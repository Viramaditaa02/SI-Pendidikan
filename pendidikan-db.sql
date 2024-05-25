-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 25, 2024 at 01:48 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendidikan-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_admin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `nama_admin`, `password`, `jenis_kelamin`, `email`, `created_at`, `updated_at`) VALUES
(3, 'Viramadita', '123', 'perempuan', 'viramaditaarthamia@gmail.com', '2024-05-25 05:40:51', '2024-05-25 05:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `eks`
--

CREATE TABLE `eks` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_eks` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_siswa` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guruses`
--

CREATE TABLE `guruses` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_guru` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guruses`
--

INSERT INTO `guruses` (`id`, `nama_guru`, `password`, `jenis_kelamin`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Vira', '123', 'perempuan', 'salsabillainayah07@gmail.com', '2024-05-25 03:11:17', '2024-05-25 03:11:17');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` bigint UNSIGNED NOT NULL,
  `absensi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_pelajaran` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_guru` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `absensi`, `jam_pelajaran`, `id_guru`, `created_at`, `updated_at`) VALUES
(2, 'Hadir', 'Pertama', 1, '2024-05-25 05:44:55', '2024-05-25 05:44:55');

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajarans`
--

CREATE TABLE `mata_pelajarans` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_pelajaran` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_pelajaran` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_ajaran` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_24_055419_create_admins_table', 2),
(6, '2024_05_24_055623_create_gurus_table', 2),
(7, '2024_05_24_055701_create_siswas_table', 2),
(8, '2024_05_24_055802_create_matapelajarans_table', 2),
(9, '2024_05_24_071055_create_admins_table', 3),
(10, '2024_05_24_071159_create_guruses_table', 4),
(11, '2024_05_24_071504_create_siswas_table', 5),
(12, '2024_05_24_071549_create_mata_pelajarans_table', 6),
(13, '2024_05_24_071945_create_kelaas_table', 7),
(14, '2024_05_24_072241_create_tahun_ajarans_table', 8),
(15, '2024_05_24_072412_create_penggunas_table', 9),
(16, '2024_05_24_072515_create_wali_murids_table', 10),
(17, '2024_05_24_073446_create_eks_table', 11),
(18, '2024_05_24_073631_create_penilaians_table', 12),
(19, '2024_05_24_074026_create_rapots_table', 13),
(20, '2024_05_25_073149_create_admins_table', 14),
(21, '2024_05_25_073159_create_penggunas_table', 15),
(22, '2024_05_25_075107_create_admins_table', 16),
(23, '2024_05_25_075308_create_penggunas_table', 17),
(24, '2024_05_25_090636_create_guruses_table', 18),
(25, '2024_05_25_094109_create_kelas_table', 19),
(26, '2024_05_25_094804_create_kelas_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penggunas`
--

CREATE TABLE `penggunas` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_admin` bigint UNSIGNED NOT NULL,
  `id_guru` bigint UNSIGNED NOT NULL,
  `id_siswa` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penilaians`
--

CREATE TABLE `penilaians` (
  `id` bigint UNSIGNED NOT NULL,
  `id_guru` bigint UNSIGNED NOT NULL,
  `id_siswa` bigint UNSIGNED NOT NULL,
  `id_mapel` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rapots`
--

CREATE TABLE `rapots` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_siswa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_mapel` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_nilai` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswas`
--

CREATE TABLE `siswas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_siswa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tahun_ajarans`
--

CREATE TABLE `tahun_ajarans` (
  `id` bigint UNSIGNED NOT NULL,
  `tahun_ajaran` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_guru` bigint UNSIGNED NOT NULL,
  `id_mapel` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wali_murids`
--

CREATE TABLE `wali_murids` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_ortu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_guru` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eks`
--
ALTER TABLE `eks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `eks_id_siswa_foreign` (`id_siswa`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `guruses`
--
ALTER TABLE `guruses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelas_id_guru_foreign` (`id_guru`);

--
-- Indexes for table `mata_pelajarans`
--
ALTER TABLE `mata_pelajarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `penggunas`
--
ALTER TABLE `penggunas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penggunas_id_admin_foreign` (`id_admin`),
  ADD KEY `penggunas_id_guru_foreign` (`id_guru`),
  ADD KEY `penggunas_id_siswa_foreign` (`id_siswa`);

--
-- Indexes for table `penilaians`
--
ALTER TABLE `penilaians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penilaians_id_guru_foreign` (`id_guru`),
  ADD KEY `penilaians_id_siswa_foreign` (`id_siswa`),
  ADD KEY `penilaians_id_mapel_foreign` (`id_mapel`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rapots`
--
ALTER TABLE `rapots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rapots_id_nilai_foreign` (`id_nilai`);

--
-- Indexes for table `siswas`
--
ALTER TABLE `siswas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tahun_ajarans`
--
ALTER TABLE `tahun_ajarans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tahun_ajarans_id_guru_foreign` (`id_guru`),
  ADD KEY `tahun_ajarans_id_mapel_foreign` (`id_mapel`);

--
-- Indexes for table `wali_murids`
--
ALTER TABLE `wali_murids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wali_murids_id_guru_foreign` (`id_guru`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `eks`
--
ALTER TABLE `eks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guruses`
--
ALTER TABLE `guruses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mata_pelajarans`
--
ALTER TABLE `mata_pelajarans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `penggunas`
--
ALTER TABLE `penggunas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penilaians`
--
ALTER TABLE `penilaians`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rapots`
--
ALTER TABLE `rapots`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswas`
--
ALTER TABLE `siswas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tahun_ajarans`
--
ALTER TABLE `tahun_ajarans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wali_murids`
--
ALTER TABLE `wali_murids`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `eks`
--
ALTER TABLE `eks`
  ADD CONSTRAINT `eks_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswas` (`id`);

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_id_guru_foreign` FOREIGN KEY (`id_guru`) REFERENCES `guruses` (`id`);

--
-- Constraints for table `penggunas`
--
ALTER TABLE `penggunas`
  ADD CONSTRAINT `penggunas_id_admin_foreign` FOREIGN KEY (`id_admin`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `penggunas_id_guru_foreign` FOREIGN KEY (`id_guru`) REFERENCES `guruses` (`id`),
  ADD CONSTRAINT `penggunas_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswas` (`id`);

--
-- Constraints for table `penilaians`
--
ALTER TABLE `penilaians`
  ADD CONSTRAINT `penilaians_id_guru_foreign` FOREIGN KEY (`id_guru`) REFERENCES `guruses` (`id`),
  ADD CONSTRAINT `penilaians_id_mapel_foreign` FOREIGN KEY (`id_mapel`) REFERENCES `mata_pelajarans` (`id`),
  ADD CONSTRAINT `penilaians_id_siswa_foreign` FOREIGN KEY (`id_siswa`) REFERENCES `siswas` (`id`);

--
-- Constraints for table `rapots`
--
ALTER TABLE `rapots`
  ADD CONSTRAINT `rapots_id_nilai_foreign` FOREIGN KEY (`id_nilai`) REFERENCES `penilaians` (`id`);

--
-- Constraints for table `tahun_ajarans`
--
ALTER TABLE `tahun_ajarans`
  ADD CONSTRAINT `tahun_ajarans_id_guru_foreign` FOREIGN KEY (`id_guru`) REFERENCES `guruses` (`id`),
  ADD CONSTRAINT `tahun_ajarans_id_mapel_foreign` FOREIGN KEY (`id_mapel`) REFERENCES `mata_pelajarans` (`id`);

--
-- Constraints for table `wali_murids`
--
ALTER TABLE `wali_murids`
  ADD CONSTRAINT `wali_murids_id_guru_foreign` FOREIGN KEY (`id_guru`) REFERENCES `guruses` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

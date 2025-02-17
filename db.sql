-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table wallstreet_bs.branches
CREATE TABLE IF NOT EXISTS `branches` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `address_line_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wallstreet_bs.branches: ~4 rows (approximately)
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` (`id`, `address_line_1`, `address_line_2`, `city`, `pin_code`, `state`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'kaushalpuri colony', 'phase-2', 'Ayodhya', '224001', 'Uttar Pradesh', NULL, '2021-11-08 09:05:50', '2021-11-08 09:05:50'),
	(2, 'Flat no-319,Sangam Enclave Appartment', 'Navi Basti,Kydganj', 'Prayagraj', '211003', 'Uttar Pradesh', NULL, '2021-11-08 09:09:07', '2021-11-08 09:09:07'),
	(3, 'Ring road ,Phase-2', 'Korouti marglapur, near Bank of Baroda', 'Varanasi', '221105', 'Uttar Pradesh', NULL, '2021-11-12 05:41:10', '2021-11-12 05:41:10'),
	(4, 'Uslapur, sagar homes phase-2', 'House-no A-21', 'Bilaspur', '495001', 'Chhattisgarh', NULL, '2021-11-12 05:44:52', '2021-11-12 05:44:52');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;

-- Dumping structure for table wallstreet_bs.enquiries
CREATE TABLE IF NOT EXISTS `enquiries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wallstreet_bs.enquiries: ~0 rows (approximately)
/*!40000 ALTER TABLE `enquiries` DISABLE KEYS */;
/*!40000 ALTER TABLE `enquiries` ENABLE KEYS */;

-- Dumping structure for table wallstreet_bs.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wallstreet_bs.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table wallstreet_bs.loans
CREATE TABLE IF NOT EXISTS `loans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_needed` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aadhar_front` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aadhar_back` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gst` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wallstreet_bs.loans: ~11 rows (approximately)
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
INSERT INTO `loans` (`id`, `first_name`, `last_name`, `email`, `mobile_no`, `address`, `amount_needed`, `business_duration`, `business_type`, `business_photo`, `aadhar_front`, `aadhar_back`, `pan`, `gst`, `created_at`, `updated_at`) VALUES
	(1, 'Pravin', 'Singh Rana', 'info@wallstreetpvtltd.com', '8318658485', '2/9243 tulsibadi ayodhya faizabad', '2000000', '2 to 5 Years', 'Own', 'clients_documents/GjjTxOqh8vfs2O8N4ntEHSLJibPnftdLjlgr5MIP.jpg', 'clients_documents/CofQbQN9z4108drHCzqGPl4cHluaWLRU3dyS1j59.jpg', 'clients_documents/SfujsUHqBuubibx9tuxLZqtDcoNZdD2r3Wbp8cG7.jpg', 'clients_documents/Wzg4CFZ8DB27ZN983RvIYyP79cpvE6kIdHPYqTQ1.jpg', 'clients_documents/kBS1VPz1vc0fznb64j5onqPXKOAPgWasSSiXKjOy.jpg', '2021-11-16 06:08:00', '2021-11-16 06:08:00'),
	(2, 'Pravin', 'Singh Rana', 'info@wallstreetpvtltd.com', '8318658485', '2/9243 tulsibadi ayodhya faizabad', '2000000', '2 to 5 Years', 'Own', 'clients_documents/7tVLQfuu7myC5NQPYznGjjP9TIJ7u0kMPVdE4aWQ.jpg', 'clients_documents/xbhiPBra7V4zYJIec8XFdwxAhD5RrnmdYh5x6BMv.jpg', 'clients_documents/fOmAvftFMCH9WvTFhWsbq1J6hOPhRYtpWJ4jHZIp.jpg', 'clients_documents/4oBfrdJyWJTNUqTK4W0nTHIC0BiK6cMQbj1RZntP.jpg', 'clients_documents/drw0e7I08zgX4tWko5Ib2Cn5LtYtCJBcPKgfQsae.jpg', '2021-11-16 06:09:22', '2021-11-16 06:09:22'),
	(3, 'Pravin', 'Singh Rana', 'info@wallstreetpvtltd.com', '8318658485', '2/9243 tulsibadi ayodhya faizabad', '2000000', '2 to 5 Years', 'Own', 'clients_documents/0E1rkVAjbwWuPQetzj9Whsrd4C87wyQOj6bUYVzU.jpg', 'clients_documents/8ksPYhgZq8PmXOxFnwGYBTFjqIojHYZMtrJhEtqX.jpg', 'clients_documents/jWBqVqI9h1t9cfLygknmCIcXP2HOHKTJoDMypSMU.jpg', 'clients_documents/5Za18M38hYnsrZj5sVtW1SP8d1rpPhD3Ef783jks.jpg', 'clients_documents/PupXqAXPY2OCyjkEEFqZfXC13MkWy48304U0EFun.jpg', '2021-11-16 06:10:19', '2021-11-16 06:10:19'),
	(4, 'Pravin', 'Singh Rana', 'info@wallstreetpvtltd.com', '8318658485', '2/9243 tulsibadi ayodhya faizabad', '2000000', '2 to 5 Years', 'Own', 'clients_documents/ldnxl2ss0K9idYsYOGGDPnmGo7lIw0Gt4WRDAruk.jpg', 'clients_documents/0hbJZEleBNMrXAlifh3P6mtizHlv4G4LeLQZDGFw.jpg', 'clients_documents/Bc3kvCEVEtcLFD7mJteLIc5Ke1lSEfWL9rMTDT7K.jpg', 'clients_documents/8erpX6VXnXBq6oWys4aCxOeZpPeL9JCIbvzzvXxK.jpg', 'clients_documents/7qtv6TbdP95fVf87ajU9gYGV5732VE41OJBE3sA9.jpg', '2021-11-16 06:18:44', '2021-11-16 06:18:44'),
	(5, 'Pravin', 'Singh Rana', 'info@wallstreetpvtltd.com', '8318658485', '2/9243 tulsibadi ayodhya faizabad', '2000000', '2 to 5 Years', 'Own', 'clients_documents/nNiZgqYASCGBscddrc4x04NgFWi1fPxxMHDoXtti.jpg', 'clients_documents/q8XPQ1l2cylWZjcRbqMjXn7H8kaxuAgn4VpxAWKv.jpg', 'clients_documents/cTZ0HKsexTFZj9Xi23D6K5CgIGzhoVBaF5HSYoJL.jpg', 'clients_documents/puv4rjPgjgJaOuXDQaykFQxxQNdpqB10bpeAErWZ.jpg', 'clients_documents/FeOJHCbfq7jxCSlH2d7991Vs4oAqyGLgUF9DuOnk.jpg', '2021-11-16 06:19:23', '2021-11-16 06:19:23'),
	(6, 'Pravin', 'Singh Rana', 'info@wallstreetpvtltd.com', '8318658485', '2/9243 tulsibadi ayodhya faizabad', '2000000', '2 to 5 Years', 'Own', 'clients_documents/88PqF9BXPdKujCnuoAmMBh3IrpnxfpH5r9V0grdz.jpg', 'clients_documents/1wevjwyaNo1W0MjjvNE7Hh8RVIlUsCvNbIcRv6CR.jpg', 'clients_documents/DM0xOf6vVAFnvQat6tdLRp6oDKqq931Oae1ia0q1.jpg', 'clients_documents/wRsrJGBumMhhUWTX0F4OKHaPRb81nYTxUTZAshQb.jpg', 'clients_documents/7rWRYjB5UefFDONEHlS3IXEmLXQEKIVfaZX0fnyT.jpg', '2021-11-16 06:19:59', '2021-11-16 06:19:59'),
	(7, 'Pravin', 'Singh Rana', 'info@wallstreetpvtltd.com', '8318658485', '2/9243 tulsibadi ayodhya faizabad', '2000000', '2 to 5 Years', 'Own', 'clients_documents/I55bVw96tv5qYCOe5G2Q4GO9OxIVwZTvq3UR0r35.jpg', 'clients_documents/zOJuE1JDKpoCJd55ogFe6jfpkQ3IFdt8EaSBKc1d.jpg', 'clients_documents/wLcPwebDdODzcjYJB2ya9PAfwjqEHhgqgkRXXe5T.jpg', 'clients_documents/mR63S2abUjciEotjlNOLjXMr8mRI6S4Jo8RHZ44N.jpg', 'clients_documents/32SRc9Gdu4YtAApbuUyfvRhzSfSj1y3xeEdtXHGx.jpg', '2021-11-16 06:24:36', '2021-11-16 06:24:36'),
	(8, 'Pravin', 'Singh Rana', 'info@wallstreetpvtltd.com', '8318658485', '2/9243 tulsibadi ayodhya faizabad', '2000000', '2 to 5 Years', 'Own', 'clients_documents/jmRmi3cwEZWh2zeu6g8pMnKWKFmHLW3iR2Wghmr3.jpg', 'clients_documents/6FJKV8adYUXHHEgRwQzjZPsqMlt32WPKheUfVHiC.jpg', 'clients_documents/j4f5UWYTSwUVmvVQoXVxAqsxiyj3PCiINijYGe9q.jpg', 'clients_documents/T4GfyVs77GOgQVKEnCKd8EBuqrrJZpeit9FBHKP4.jpg', 'clients_documents/xAC3NypZgeKQBzqe6WLh8AvueSeN66dx5g3O9dZR.jpg', '2021-11-16 06:25:38', '2021-11-16 06:25:38'),
	(9, 'Pravin', 'Singh Rana', 'info@wallstreetpvtltd.com', '8318658485', '2/9243 tulsibadi ayodhya faizabad', '2000000', '2 to 5 Years', 'Own', 'clients_documents/JjRaTC2lfiamBtPM2m0bMeDbfpT8HzbukzpiCkws.jpg', 'clients_documents/CCJTiw6AleA5V0fR6Ps9Lqi9emFTPRafLP1gzWkW.jpg', 'clients_documents/A1kknCvdGyXm2l4yxm9gCGeehLkRuu2sAEdlFZtp.jpg', 'clients_documents/h2tMVzl3nhZucaD8xNz09GDyxABkaNY3LlmGmDZM.jpg', 'clients_documents/ta7HPLbxnPEXEzTA8i3C206yxxDvux0dliavNnl0.jpg', '2021-11-16 06:26:11', '2021-11-16 06:26:11'),
	(10, 'Pravin', 'Singh Rana', 'info@wallstreetpvtltd.com', '8318658485', '2/9243 tulsibadi ayodhya faizabad', '2000000', '2 to 5 Years', 'Own', 'clients_documents/BqGIj1hAd1ksiXYY5fC57GnGtHc3qv5nR4qUH84A.jpg', 'clients_documents/f74hLky9hwOyxyM0eicOuTbZ3ZS1g55fNQCD1utG.jpg', 'clients_documents/EOBe7eIGLkOJhT2JMNfHEfsZoOTuYCNLUqN1eE2V.jpg', 'clients_documents/IRh7WUawE3AynwveI9RRB7M81RZs4TBFm8Ta19ka.jpg', 'clients_documents/kgmytCbdcZdh12qWDJKLtNUTTIqpGFkokMuDVSAK.jpg', '2021-11-16 06:33:32', '2021-11-16 06:33:32'),
	(11, 'Pravin', 'Singh Rana', 'info@wallstreetpvtltd.com', '8318658485', '2/9243 tulsibadi ayodhya faizabad', '2000000', '2 to 5 Years', 'Own', 'clients_documents/rwk9VU9TAUqBdHOdkh8qj1BnBVLW5cYc8ZW3w3i8.jpg', 'clients_documents/JkPjWE6iCRgVe8QDMlHqjflSthabocqdeUjhqt80.jpg', 'clients_documents/bi2M9anf4gDSmEKQQYlGz4CV8bVForOaOPoHIfXN.jpg', 'clients_documents/3MeGOHRkgsyv7GMa9KKIyu1qFONGmHZoRNTGB4SE.jpg', 'clients_documents/XI7UJ6bII3D65s7bOLrrXsvYBwZWyMlG797UUpzM.jpg', '2021-11-16 06:34:11', '2021-11-16 06:34:11'),
	(12, 'Pravin', 'Singh Rana', 'info@wallstreetpvtltd.com', '8318658485', '2/9243 tulsibadi ayodhya faizabad', '2000000', '2 to 5 Years', 'Own', 'clients_documents/EcP0KiBctWHU7tODV12JGRY3XYGtgjwYxjcqfDkI.jpg', 'clients_documents/N1iAfLQd0Xj440PIvvLlov7rQSE1yQoXAohYsL3l.jpg', 'clients_documents/lsBRtbEt6azJfQsR6aHTy74XVvH4DYOGYKlqtKgX.jpg', 'clients_documents/IGNPjRmMcQb5ZFGtFqjvKO8YaOecvHfuBdSY0laT.jpg', 'clients_documents/gqWkUKyt37nCsJTxUv5eQR5nrkaPhGNXgiD3GWUk.jpg', '2021-11-16 06:38:24', '2021-11-16 06:38:24'),
	(13, 'Pravin', 'Singh Rana', 'admin@demo.com', '8318658485', '2/9243 tulsibadi ayodhya faizabad', '2000000', '2 to 5 Years', 'Own', 'clients_documents/PgvcsKledVCc7ymWKeqzoN38qkFv6Jx4zsDlSRA5.png', 'clients_documents/pkqTKvv0lQGht1MMT1xhc5wDiCDLnDI13nLytLe0.png', 'clients_documents/8YNKhrt3gdj6HsdmDs7d1A9M7mmvSI8npNpTQlVw.png', 'clients_documents/plt4S4FfI4ogvNixlaLawM2JIXV9MK0AfbpSNuoS.png', 'clients_documents/vaWwf82QPwBgp1EhPhRAGCxzaywG1wfRaAU1v2BO.png', '2021-11-16 06:40:43', '2021-11-16 06:40:43');
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;

-- Dumping structure for table wallstreet_bs.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wallstreet_bs.migrations: ~5 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(16, '2014_10_12_000000_create_users_table', 1),
	(17, '2014_10_12_100000_create_password_resets_table', 1),
	(18, '2019_08_19_000000_create_failed_jobs_table', 1),
	(19, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(20, '2021_11_07_072717_create_branches_table', 1),
	(21, '2021_11_08_143628_create_loans_table', 2),
	(22, '2021_11_10_093609_create_enquiries_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table wallstreet_bs.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wallstreet_bs.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table wallstreet_bs.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wallstreet_bs.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table wallstreet_bs.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table wallstreet_bs.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Harsh', 'info@wallstreetpvtltd.com', NULL, '$2y$10$b/e.CDvBv4UxHyaK2yAwd.vWb3c7LKLKUdKdS5Q6DgzLcpC9ik3nK', NULL, '2021-11-08 17:13:22', '2021-11-08 17:13:22');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

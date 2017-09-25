-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ago 03, 2017 alle 11:53
-- Versione del server: 10.1.21-MariaDB
-- Versione PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `album_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `albums`
--

INSERT INTO `albums` (`id`, `album_name`, `description`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'come u uappo ballarinosss', 'lo guarracinogfgfjjjjj', 23, NULL, '2017-07-25 13:44:38', '2017-07-25 13:44:38'),
(2, 'bene gesserit strega', 'dio bon', 10, NULL, '2017-07-25 13:44:38', '2017-07-25 13:44:38'),
(3, 'u cravattin', 'Tempore corrupti itaque maxime veniam et excepturi dolor. Dolor ipsa sint et mollitia facere quos numquam.', 24, NULL, '2017-07-25 13:44:38', '2017-07-25 13:44:38'),
(11, 'Aspett', 'Pork', 1, NULL, NULL, NULL),
(12, 'mio nipot', 'il dalai lama', 1, NULL, NULL, NULL),
(13, 'ciao', 'ciao', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2017_06_30_160907_create_album_table', 2),
(6, '2017_06_30_161045_create_photos_table', 2),
(7, '2017_07_03_170037_albums_update_column_name', 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `album_id` int(10) UNSIGNED NOT NULL,
  `img_path` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `photos`
--

INSERT INTO `photos` (`id`, `deleted_at`, `name`, `description`, `album_id`, `img_path`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Quis reprehenderit fugiat animi delectus nihil.', 'Voluptatem repudiandae ut sint nulla cupiditate. Aut qui sit aliquid dicta. Voluptates doloribus ea sit sit quaerat.', 3, 'http://lorempixel.com/640/480/cats/?82026', '2017-07-25 13:44:40', '2017-07-25 13:44:40'),
(4, NULL, 'Accusamus tempore sint ipsam tempora itaque.', 'Pariatur quibusdam quis eius quia eius quam earum quia. Facere veniam nulla quae. Voluptas voluptate est blanditiis quis.', 1, 'http://lorempixel.com/640/480/cats/?36852', '2017-07-25 13:44:40', '2017-07-25 13:44:40'),
(5, NULL, 'Nulla hic dolorum est quidem et eos.', 'Quo ea laudantium ut ullam sunt non suscipit. Et aspernatur quibusdam quo. Possimus maxime qui qui reiciendis aut praesentium.', 3, 'http://lorempixel.com/640/480/cats/?28566', '2017-07-25 13:44:40', '2017-07-25 13:44:40'),
(8, NULL, 'Libero delectus qui quibusdam. Optio eos doloremque iste.', 'Aut eum et quam deleniti. Sit omnis nisi repudiandae vel soluta. Reprehenderit quod cupiditate voluptates illo aut totam saepe.', 1, 'http://lorempixel.com/640/480/cats/?23726', '2017-07-25 13:44:40', '2017-07-25 13:44:40'),
(10, NULL, 'Hic sed voluptatem voluptatum qui cum impedit dolores quis.', 'Nihil sit natus ullam blanditiis maxime est fugit. Necessitatibus quod pariatur omnis iste. Enim vero hic minima provident.', 3, 'http://lorempixel.com/640/480/cats/?54098', '2017-07-25 13:44:41', '2017-07-25 13:44:41'),
(16, NULL, 'Dignissimos ullam distinctio autem.', 'Repellat sapiente aliquam molestiae autem natus. Hic pariatur dolore officiis ex ipsam quam ipsam harum.', 3, 'http://lorempixel.com/640/480/cats/?74901', '2017-07-25 13:44:41', '2017-07-25 13:44:41'),
(20, NULL, 'Dolores cupiditate dolores consectetur non.', 'Qui reprehenderit natus magni cumque aut consequatur esse. Et neque voluptates sit sed. Culpa harum quo mollitia iure ipsam.', 3, 'http://lorempixel.com/640/480/cats/?27917', '2017-07-25 13:44:41', '2017-07-25 13:44:41'),
(22, NULL, 'Voluptatem ullam ut rerum quibusdam architecto voluptatem.', 'Illo ad nisi delectus molestias. Error qui officia qui dolor nihil laboriosam. Reprehenderit illo nam praesentium voluptas.', 2, 'http://lorempixel.com/640/480/cats/?84244', '2017-07-25 13:44:41', '2017-07-25 13:44:41'),
(26, NULL, 'Quia sed porro aut autem odit.', 'Sunt sunt praesentium enim debitis. Temporibus corporis quaerat sed illo vero perspiciatis iusto.', 1, 'http://lorempixel.com/640/480/cats/?17333', '2017-07-25 13:44:41', '2017-07-25 13:44:41'),
(32, NULL, 'Omnis unde debitis quo mollitia fugiat ut.', 'Est qui molestiae molestias laborum debitis. Doloremque voluptate ex cupiditate quas quisquam cupiditate reprehenderit.', 2, 'http://lorempixel.com/640/480/cats/?80354', '2017-07-25 13:44:41', '2017-07-25 13:44:41'),
(41, NULL, 'Non non aut consequatur asperiores necessitatibus quos.', 'Saepe molestiae qui officiis quaerat voluptate ipsa. Beatae rem occaecati officia. Dolores asperiores vel fugit.', 1, 'http://lorempixel.com/640/480/cats/?90103', '2017-07-25 13:44:42', '2017-07-25 13:44:42'),
(42, NULL, 'Iste rem nisi rem illo quos sit qui ad.', 'In similique quasi fugit facere. Expedita velit distinctio iure nesciunt.', 1, 'http://lorempixel.com/640/480/cats/?95049', '2017-07-25 13:44:42', '2017-07-25 13:44:42'),
(45, NULL, 'Quos numquam iure voluptas velit fuga.', 'Nulla quibusdam quis molestiae fugit ad. Et facere provident reiciendis at odit. Pariatur qui necessitatibus omnis.', 3, 'http://lorempixel.com/640/480/cats/?18435', '2017-07-25 13:44:42', '2017-07-25 13:44:42'),
(49, NULL, 'Consequatur enim autem ipsum nemo natus ut quo.', 'Laboriosam blanditiis exercitationem dolor eos sit consequatur. Natus omnis fuga dicta vel. Iste rem modi error non ullam.', 3, 'http://lorempixel.com/640/480/cats/?16007', '2017-07-25 13:44:42', '2017-07-25 13:44:42'),
(52, NULL, 'Est quo sit dolores quis impedit atque.', 'Id aut minus quae cumque. Velit suscipit culpa dicta ratione perferendis.', 1, 'http://lorempixel.com/640/480/cats/?64735', '2017-07-25 13:44:42', '2017-07-25 13:44:42'),
(57, NULL, 'Aut voluptas voluptatum recusandae cum.', 'Sequi eum nihil enim ad. Sit commodi illum necessitatibus debitis sapiente. Illo quam deleniti omnis aut voluptatibus quia.', 1, 'http://lorempixel.com/640/480/cats/?93685', '2017-07-25 13:44:42', '2017-07-25 13:44:42'),
(60, NULL, 'Omnis amet est qui illum omnis porro inventore.', 'Labore nesciunt a doloremque praesentium. Nam iusto quas dolorem. Aliquid velit et aut minima ut ducimus.', 2, 'http://lorempixel.com/640/480/cats/?13352', '2017-07-25 13:44:42', '2017-07-25 13:44:42'),
(68, NULL, 'Ut ducimus sapiente laborum unde dolorem aut deleniti velit.', 'Vel doloribus nihil corporis sunt in qui aperiam. Consequatur eveniet corporis odit et.', 3, 'http://lorempixel.com/640/480/cats/?37021', '2017-07-25 13:44:43', '2017-07-25 13:44:43'),
(69, NULL, 'Quod qui non ut ipsum iste.', 'Blanditiis saepe et eos. Quam quas laborum quo architecto consequatur architecto molestias. Sit atque animi corporis et.', 2, 'http://lorempixel.com/640/480/cats/?41926', '2017-07-25 13:44:43', '2017-07-25 13:44:43'),
(71, NULL, 'Necessitatibus sunt sunt iste.', 'Beatae dolore quia a quos omnis. Rerum nihil suscipit iusto quam.', 1, 'http://lorempixel.com/640/480/cats/?31201', '2017-07-25 13:44:43', '2017-07-25 13:44:43'),
(72, NULL, 'Molestiae quasi dicta iusto perspiciatis.', 'Facere ut placeat dolorem cumque autem rerum. Quis incidunt et aut nulla asperiores.', 2, 'http://lorempixel.com/640/480/cats/?24497', '2017-07-25 13:44:43', '2017-07-25 13:44:43'),
(73, NULL, 'Autem explicabo nam ratione aut fugiat atque.', 'Qui corrupti quod autem pariatur sit vel velit. Sint saepe nam dolore. Deleniti omnis eos accusamus cumque nulla illo possimus.', 1, 'http://lorempixel.com/640/480/cats/?84338', '2017-07-25 13:44:43', '2017-07-25 13:44:43'),
(83, NULL, 'Nostrum omnis sed pariatur hic et totam iusto.', 'Eum a voluptas unde. Quae dolores et qui est. Voluptas at minima facere id dolorem possimus. Suscipit maxime enim deleniti.', 1, 'http://lorempixel.com/640/480/cats/?53848', '2017-07-25 13:44:44', '2017-07-25 13:44:44'),
(84, NULL, 'Maxime aut et quia doloremque et maxime.', 'Cum est ipsam voluptatibus. Consequatur vel qui maxime. Omnis nobis adipisci repellendus accusamus.', 2, 'http://lorempixel.com/640/480/cats/?80862', '2017-07-25 13:44:44', '2017-07-25 13:44:44'),
(89, NULL, 'Fugiat eum et sit quibusdam dolor aspernatur.', 'Non repellat voluptas consequatur sint minima. Commodi dicta debitis culpa. Quidem fugit sed quia ex.', 2, 'http://lorempixel.com/640/480/cats/?82231', '2017-07-25 13:44:44', '2017-07-25 13:44:44'),
(90, NULL, 'Dolorum ipsum molestiae illo velit qui.', 'Omnis quia non vel et cumque. Quos nihil commodi aut animi earum.', 1, 'http://lorempixel.com/640/480/cats/?35351', '2017-07-25 13:44:44', '2017-07-25 13:44:44'),
(93, NULL, 'Voluptas ut dolor quo iure.', 'Ad et ex labore quod. Molestias vel minima eos vitae.', 2, 'http://lorempixel.com/640/480/cats/?94325', '2017-07-25 13:44:44', '2017-07-25 13:44:44'),
(94, NULL, 'Animi mollitia nihil fugit a aliquid.', 'Illum ex ducimus sequi qui qui repellat sunt. Voluptatem unde tempora ex est tenetur.', 3, 'http://lorempixel.com/640/480/cats/?91513', '2017-07-25 13:44:44', '2017-07-25 13:44:44'),
(97, NULL, 'Quidem nihil quia maiores voluptate nulla.', 'Minima ut et eaque. Commodi quas adipisci tempore earum. Voluptatem id ut est consectetur. Facilis doloremque sit sed neque.', 2, 'http://lorempixel.com/640/480/cats/?82675', '2017-07-25 13:44:44', '2017-07-25 13:44:44'),
(99, NULL, 'Non molestiae debitis consequatur.', 'Illum autem soluta et quo aspernatur non. Et facere laudantium unde doloremque voluptatem. Et dolor recusandae eius fugiat.', 3, 'http://lorempixel.com/640/480/cats/?76303', '2017-07-25 13:44:44', '2017-07-25 13:44:44'),
(100, NULL, 'Ea officia nemo consequuntur atque odit aut.', 'Veritatis ipsum dolorum laudantium nulla similique. Ipsam dolorem id corporis natus saepe possimus.', 3, 'http://lorempixel.com/640/480/cats/?98465', '2017-07-25 13:44:44', '2017-07-25 13:44:44'),
(101, NULL, 'Labore consequatur et veniam at quisquam.', 'Eligendi quibusdam et eveniet optio necessitatibus dicta. Quod nisi et delectus. Non facere quia qui nulla ut.', 3, 'http://lorempixel.com/640/480/cats/?60375', '2017-07-25 13:44:44', '2017-07-25 13:44:44'),
(107, NULL, 'Non et quo quaerat repudiandae.', 'Nesciunt vel quo rerum qui ut. Velit dicta similique quasi. Et nihil sequi laborum sit minima recusandae.', 3, 'http://lorempixel.com/640/480/cats/?75745', '2017-07-25 13:44:45', '2017-07-25 13:44:45'),
(110, NULL, 'Qui eos animi consequuntur.', 'Molestias reiciendis aliquid commodi. Odio expedita qui impedit eum. Enim et et exercitationem est.', 2, 'http://lorempixel.com/640/480/cats/?25788', '2017-07-25 13:44:45', '2017-07-25 13:44:45'),
(112, NULL, 'Vel iusto nam perferendis doloribus.', 'Enim sed voluptatem quibusdam accusamus. Sequi quo et maiores odio reiciendis occaecati repellat.', 3, 'http://lorempixel.com/640/480/cats/?49258', '2017-07-25 13:44:45', '2017-07-25 13:44:45'),
(114, NULL, 'Omnis rerum odio tempora recusandae ad et.', 'Molestiae sed minima provident provident. Ut sequi sit quibusdam ut. Voluptatem corrupti dolores voluptate id.', 2, 'http://lorempixel.com/640/480/cats/?74550', '2017-07-25 13:44:45', '2017-07-25 13:44:45'),
(120, NULL, 'Odio iure corrupti officiis et deserunt.', 'Perferendis iusto aut qui porro. Sit consequatur tenetur laboriosam dolor quisquam.', 3, 'http://lorempixel.com/640/480/cats/?53320', '2017-07-25 13:44:45', '2017-07-25 13:44:45'),
(124, NULL, 'Dicta accusantium quae sed amet velit. Qui ut rerum ut qui et.', 'Odit quasi enim nihil sed eligendi. Non eveniet rerum natus corporis laboriosam quidem labore.', 2, 'http://lorempixel.com/640/480/cats/?95747', '2017-07-25 13:44:45', '2017-07-25 13:44:45'),
(125, NULL, 'Ullam quas ut laudantium quo ut.', 'Sint qui et et soluta. Quam quidem aliquam neque dolorum deleniti aut. Non voluptatem alias et expedita voluptate.', 1, 'http://lorempixel.com/640/480/cats/?86286', '2017-07-25 13:44:45', '2017-07-25 13:44:45'),
(130, NULL, 'Voluptatum illo dolorum aut quidem et est omnis.', 'Sit et est quaerat sit ut voluptatum. Et pariatur odit placeat dolor veritatis.', 1, 'http://lorempixel.com/640/480/cats/?70625', '2017-07-25 13:44:46', '2017-07-25 13:44:46'),
(132, NULL, 'Ut sed est incidunt impedit aperiam nesciunt.', 'Quisquam enim nobis esse quibusdam ea sed dolores. Hic nam molestias voluptatem facere sint dolor accusantium in.', 3, 'http://lorempixel.com/640/480/cats/?81744', '2017-07-25 13:44:46', '2017-07-25 13:44:46'),
(147, NULL, 'Enim tempore aliquid qui occaecati dolorem consequatur.', 'Vel asperiores ducimus voluptatem exercitationem at suscipit. Officiis voluptatem omnis quasi sapiente eligendi.', 2, 'http://lorempixel.com/640/480/cats/?20364', '2017-07-25 13:44:46', '2017-07-25 13:44:46'),
(149, NULL, 'Molestiae ducimus ea quae id. Aut quia autem ex et.', 'Sunt quo aut dolore reprehenderit corporis. Et fugiat dolore harum recusandae unde. Minima consequatur ratione cupiditate vero.', 3, 'http://lorempixel.com/640/480/cats/?83150', '2017-07-25 13:44:46', '2017-07-25 13:44:46'),
(152, NULL, 'Corrupti harum rem repellendus corrupti id magni eligendi.', 'Cum hic porro explicabo. Iste laudantium fugit vel. Qui omnis harum minus exercitationem ea et eaque.', 2, 'http://lorempixel.com/640/480/cats/?88599', '2017-07-25 13:44:46', '2017-07-25 13:44:46'),
(153, NULL, 'Eaque ullam maiores repellendus alias et laudantium.', 'Id ut ullam ullam molestiae animi et vero. A fugiat ut qui distinctio quibusdam. Reprehenderit consequatur tempora porro.', 2, 'http://lorempixel.com/640/480/cats/?39313', '2017-07-25 13:44:46', '2017-07-25 13:44:46'),
(156, NULL, 'Nemo in enim facilis adipisci distinctio accusantium.', 'Exercitationem ullam aut sit omnis soluta. Qui voluptatem voluptas voluptas quo culpa et reprehenderit animi.', 1, 'http://lorempixel.com/640/480/cats/?82186', '2017-07-25 13:44:46', '2017-07-25 13:44:46'),
(157, NULL, 'Modi placeat iste molestias nam molestias.', 'Molestias sed doloribus ut aut nisi error. Magnam non qui tenetur omnis perferendis.', 3, 'http://lorempixel.com/640/480/cats/?47004', '2017-07-25 13:44:46', '2017-07-25 13:44:46'),
(162, NULL, 'Nihil sint est modi voluptate veniam.', 'Sunt temporibus alias ipsam neque veritatis. Molestiae fuga velit nemo odit. Ex ut voluptatem quia.', 1, 'http://lorempixel.com/640/480/cats/?60564', '2017-07-25 13:44:47', '2017-07-25 13:44:47'),
(163, NULL, 'Assumenda tenetur autem nobis ut fugiat porro dolorem.', 'Debitis distinctio eligendi eum est. Quo et saepe quia.', 2, 'http://lorempixel.com/640/480/cats/?13498', '2017-07-25 13:44:47', '2017-07-25 13:44:47'),
(168, NULL, 'Ad et ut aut eligendi quia assumenda.', 'Odit quia officiis molestias et et enim. Voluptatem odit blanditiis et rem sint nihil repellendus.', 1, 'http://lorempixel.com/640/480/cats/?95647', '2017-07-25 13:44:47', '2017-07-25 13:44:47'),
(170, NULL, 'Ipsam esse ut a inventore iure et.', 'Quibusdam sit qui quo nulla iure error nulla. Fugiat modi molestiae sit sed dolor quia omnis.', 1, 'http://lorempixel.com/640/480/cats/?90239', '2017-07-25 13:44:47', '2017-07-25 13:44:47'),
(172, NULL, 'Vel enim ut adipisci praesentium.', 'Dolorem et blanditiis dolore sit quis. In fugit eligendi aperiam quis deserunt id. Repellendus velit totam repellat autem.', 1, 'http://lorempixel.com/640/480/cats/?24408', '2017-07-25 13:44:47', '2017-07-25 13:44:47'),
(177, NULL, 'Repudiandae vero dolore magni autem eaque.', 'Reprehenderit et est in minima corrupti dolores. Harum aliquid iste nam et. Repellat cupiditate rerum et.', 2, 'http://lorempixel.com/640/480/cats/?71270', '2017-07-25 13:44:47', '2017-07-25 13:44:47'),
(178, NULL, 'Ea odit id pariatur nihil maiores vitae sit.', 'Velit praesentium distinctio omnis. Soluta cupiditate laborum voluptas pariatur aut. Excepturi iure qui sit cum unde.', 1, 'http://lorempixel.com/640/480/cats/?13890', '2017-07-25 13:44:47', '2017-07-25 13:44:47'),
(186, NULL, 'Blanditiis reprehenderit iste est amet quam molestiae facilis.', 'Totam aperiam sequi maiores qui ut. Ab et necessitatibus omnis hic. Ad et et modi aut.', 1, 'http://lorempixel.com/640/480/cats/?23138', '2017-07-25 13:44:47', '2017-07-25 13:44:47'),
(189, NULL, 'Occaecati alias ex aut sunt enim numquam ut ab.', 'Aut suscipit numquam atque aut. Nulla provident laborum aut dolor. Eos officia nemo officia aut debitis ex et.', 3, 'http://lorempixel.com/640/480/cats/?85703', '2017-07-25 13:44:48', '2017-07-25 13:44:48'),
(198, NULL, 'Est reiciendis quis perferendis accusantium libero velit et.', 'Quibusdam autem voluptate repellendus quis dignissimos. Iste aut sapiente velit. Omnis a libero optio nostrum est aut.', 3, 'http://lorempixel.com/640/480/cats/?32189', '2017-07-25 13:44:48', '2017-07-25 13:44:48'),
(199, NULL, 'Eum ipsa esse eveniet quibusdam voluptatum ut aliquid.', 'Et voluptatem ea temporibus placeat. Repellendus quia voluptatem autem magni. Facilis nisi maxime sed impedit velit.', 1, 'http://lorempixel.com/640/480/cats/?97491', '2017-07-25 13:44:48', '2017-07-25 13:44:48');

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Savion Hegmann', 'rhilll@example.com', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', 'ohMwuZPCPM', '2017-07-25 13:44:37', '2017-07-25 13:44:37'),
(2, 'Adah Casper', 'lmoen@example.org', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', 'YYyZ8VEDYb', '2017-07-25 13:44:37', '2017-07-25 13:44:37'),
(3, 'Aryanna Hoeger', 'cartwright.howard@example.org', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', '5x7Lbykc76', '2017-07-25 13:44:37', '2017-07-25 13:44:37'),
(4, 'Dr. Katelynn Price IV', 'raoul90@example.com', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', 'aG7priB2H6', '2017-07-25 13:44:37', '2017-07-25 13:44:37'),
(5, 'Tanner Hauck', 'annette.torp@example.com', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', 'fzFii6IuLV', '2017-07-25 13:44:37', '2017-07-25 13:44:37'),
(6, 'Orlando Feest', 'shany52@example.net', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', '0oYL76x4Fz', '2017-07-25 13:44:37', '2017-07-25 13:44:37'),
(7, 'Titus Bernier', 'beer.cristopher@example.net', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', 'aa8yEKFVMO', '2017-07-25 13:44:37', '2017-07-25 13:44:37'),
(8, 'Ahmed Gusikowski', 'pdubuque@example.org', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', 'zE7W237yhy', '2017-07-25 13:44:37', '2017-07-25 13:44:37'),
(9, 'Oran Carroll', 'xwelch@example.org', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', 'DBNr0Zhbpg', '2017-07-25 13:44:37', '2017-07-25 13:44:37'),
(10, 'Henriette Ortiz', 'davon76@example.org', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', 'dkAT5lrgog', '2017-07-25 13:44:37', '2017-07-25 13:44:37'),
(11, 'Lonie Rippin', 'catalina24@example.org', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', 'tUcitweEsa', '2017-07-25 13:44:37', '2017-07-25 13:44:37'),
(12, 'Teresa Murphy', 'cjerde@example.org', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', '2MvQygWjLo', '2017-07-25 13:44:37', '2017-07-25 13:44:37'),
(13, 'Jensen Anderson', 'rreinger@example.org', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', 'zavKCA5xWB', '2017-07-25 13:44:37', '2017-07-25 13:44:37'),
(14, 'Ms. Rosanna Glover', 'nkihn@example.org', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', '1GJZsHElQG', '2017-07-25 13:44:37', '2017-07-25 13:44:37'),
(15, 'Frances Schmeler IV', 'kayley.murray@example.net', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', 'WWgdhZxGPT', '2017-07-25 13:44:38', '2017-07-25 13:44:38'),
(16, 'Dovie Bogan', 'melba05@example.org', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', '8OtZNyQoKd', '2017-07-25 13:44:38', '2017-07-25 13:44:38'),
(17, 'Mr. Prince O\'Kon PhD', 'aliza.beahan@example.net', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', 'hYq2jj7R0a', '2017-07-25 13:44:38', '2017-07-25 13:44:38'),
(18, 'Alisa Franecki', 'mylene.gulgowski@example.net', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', '8rjTZ3rsiu', '2017-07-25 13:44:38', '2017-07-25 13:44:38'),
(19, 'Ms. Eula Gorczany', 'lakin.nils@example.org', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', 'jyva2O5Jtl', '2017-07-25 13:44:38', '2017-07-25 13:44:38'),
(20, 'Davin Kulas', 'stuart48@example.org', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', '5cNflfP47t', '2017-07-25 13:44:38', '2017-07-25 13:44:38'),
(21, 'Damion Cassin', 'winifred35@example.org', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', 'TygPvoBkCj', '2017-07-25 13:44:38', '2017-07-25 13:44:38'),
(22, 'Matilda Johns DDS', 'gleason.mohammad@example.net', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', '0YCouon0px', '2017-07-25 13:44:38', '2017-07-25 13:44:38'),
(23, 'Ms. Else Berge DDS', 'bklocko@example.net', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', 'AS6obczx4n', '2017-07-25 13:44:38', '2017-07-25 13:44:38'),
(24, 'Prof. Devon Stokes III', 'madge68@example.org', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', '0ic6ovPVGm', '2017-07-25 13:44:38', '2017-07-25 13:44:38'),
(25, 'Miss Shanel Rogahn MD', 'anita.dietrich@example.org', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', 'OLpn9UlqMV', '2017-07-25 13:44:38', '2017-07-25 13:44:38'),
(26, 'Dr. Skylar Simonis Sr.', 'wschulist@example.net', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', '0nBhOJYFFS', '2017-07-25 13:44:38', '2017-07-25 13:44:38'),
(27, 'Harmony Hermiston III', 'blanda.rudolph@example.com', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', 'yq14V4Tbtb', '2017-07-25 13:44:38', '2017-07-25 13:44:38'),
(28, 'Josiane Rempel', 'alessia37@example.com', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', 'TMmMAXQtCC', '2017-07-25 13:44:38', '2017-07-25 13:44:38'),
(29, 'Sharon Schowalter', 'haylie.champlin@example.org', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', 'b3fC9Cxbnu', '2017-07-25 13:44:38', '2017-07-25 13:44:38'),
(30, 'Mr. Alexys Waelchi', 'isaac.romaguera@example.org', '$2y$10$uUT2AnJYu/OqnSRxMFp.kOt/XN949QignZ9CMX9iArVXP5xzcP5ey', 'WbqU39UBMk', '2017-07-25 13:44:38', '2017-07-25 13:44:38');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `albums_user_id_foreign` (`user_id`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indici per le tabelle `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_album_id_foreign` (`album_id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT per la tabella `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

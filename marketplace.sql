-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Set-2021 às 01:00
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `marketplace`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Informática', 'Insumos para informática', 'informatica', '2021-09-22 22:43:08', '2021-09-22 22:43:08'),
(2, 'Acessórios', 'produtos e acessórios femininos', 'acessorios', '2021-09-22 22:44:25', '2021-09-22 22:44:25'),
(3, 'Games', 'Produtos e acessórios para games', 'games', '2021-09-22 22:44:37', '2021-09-22 22:45:23'),
(4, 'Fotografia', 'Produtos e acessórios para fotografia', 'fotografia', '2021-09-22 22:46:22', '2021-09-22 22:46:22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `category_product`
--

CREATE TABLE `category_product` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `category_product`
--

INSERT INTO `category_product` (`product_id`, `category_id`) VALUES
(41, 2),
(41, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(27, '2014_10_12_000000_create_users_table', 1),
(28, '2014_10_12_100000_create_password_resets_table', 1),
(29, '2019_08_19_000000_create_failed_jobs_table', 1),
(30, '2021_03_04_185844_create_table_store', 1),
(31, '2021_03_04_191802_create_products_table', 1),
(32, '2021_04_15_133435_create_categories_table', 1),
(33, '2021_04_15_134702_create_category_product_table', 1),
(34, '2021_07_22_183825_create_product_photos_table', 1),
(35, '2021_07_22_184003_alter_table_stores_add_column_logo', 1),
(36, '2021_08_09_235243_create_user_orders_table', 1),
(37, '2021_08_18_190703_create_order_store_table', 1),
(38, '2021_08_27_193639_create_notifications_table', 1),
(39, '2021_09_13_132853_alter_user_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('059fbfde-e1f6-40f1-a60d-31464620231b', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 39, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-23 16:57:34', '2021-09-23 16:57:34'),
('0b6f455b-a532-41d7-8a60-2f5523da75c1', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 38, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-23 16:57:34', '2021-09-23 16:57:34'),
('0cee923c-a002-4c82-bb68-997dd59b233e', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 40, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-15 02:11:50', '2021-09-15 02:11:50'),
('15accdc0-9e15-404b-b43c-8d0b0aec88af', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 41, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-23 16:20:32', '2021-09-23 16:20:32'),
('17664ade-2b2c-476a-ae88-18ff6a37e83a', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 36, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-20 21:03:11', '2021-09-20 21:03:11'),
('1f09f15e-a546-4dfb-8a48-dfe6528f46da', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 36, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-20 21:02:04', '2021-09-20 21:02:04'),
('32eb346f-4a3b-4060-a0b1-dbce95206668', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 39, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-17 16:47:00', '2021-09-17 16:47:00'),
('37db52ee-c362-4927-949d-694cec81b378', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 40, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-15 02:19:55', '2021-09-15 02:19:55'),
('3f193107-7b12-48b0-83e0-67620c945df9', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 37, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-17 18:02:31', '2021-09-17 18:02:31'),
('47836410-d0db-4dee-8f54-e64909afdfaf', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 39, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-17 16:47:33', '2021-09-17 16:47:33'),
('4d5c3619-48ee-4378-b30d-e09ca85b5f0f', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 40, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-23 16:57:34', '2021-09-23 16:57:34'),
('62fc1b55-58e9-4ca9-b750-56791a0b2495', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 36, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-20 21:01:13', '2021-09-20 21:01:13'),
('66771da5-7128-454d-8e5f-fb8d5e07513d', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 41, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-23 16:57:35', '2021-09-23 16:57:35'),
('6a8967f8-4747-4171-9178-5c98749f9710', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 39, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-15 02:10:59', '2021-09-15 02:10:59'),
('6d3684da-1f96-4b99-a213-31c37d48c07f', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 38, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-20 18:02:36', '2021-09-20 18:02:36'),
('82e0ef26-7714-44eb-b8c0-2c1b751f971a', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 38, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-20 17:42:17', '2021-09-20 17:42:17'),
('940e263a-7ff5-4cc0-86f2-39d810fe0740', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 38, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-17 16:28:03', '2021-09-17 16:28:03'),
('b56c46be-c256-4dd8-96af-1d9cbbd8cd36', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 36, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-20 21:31:27', '2021-09-20 21:31:27'),
('c7981631-e4ab-4470-b06b-d44f24ab4a20', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 40, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-15 02:19:05', '2021-09-15 02:19:05'),
('ca7ef8f8-36fd-412c-a4aa-cb86c4e8148c', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 38, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-20 17:55:00', '2021-09-20 17:55:00'),
('cc9ec862-b07d-4989-b4a3-20e66761269e', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 40, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-15 02:12:28', '2021-09-15 02:12:28'),
('e7cfafbf-5d3d-484b-8ad5-8f51b2533c7b', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 36, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-20 21:29:46', '2021-09-20 21:29:46'),
('eb98e3c3-ac1f-4e8b-8048-8f17be812d36', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 36, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-20 21:06:29', '2021-09-20 21:06:29'),
('ef825800-1e5a-4b6c-a6c4-7d8ec7055490', 'App\\Notifications\\StoreReceiveNewOrder', 'App\\User', 40, '{\"message\":\"Voc\\u00ea t\\u00eam um novo pedido solicitado!\"}', NULL, '2021-09-15 02:18:31', '2021-09-15 02:18:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `order_store`
--

CREATE TABLE `order_store` (
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `order_store`
--

INSERT INTO `order_store` (`store_id`, `order_id`) VALUES
(39, 1),
(40, 1),
(40, 2),
(40, 3),
(40, 4),
(40, 5),
(40, 6),
(38, 7),
(39, 8),
(39, 9),
(37, 10),
(38, 11),
(38, 12),
(38, 13),
(36, 14),
(36, 15),
(36, 16),
(36, 17),
(36, 18),
(36, 19),
(41, 20),
(41, 21),
(40, 21),
(39, 21),
(38, 21);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `store_id`, `name`, `description`, `body`, `price`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ms. Antonette Carter', 'Vel architecto ut delectus quidem nobis.', 'Amet enim maxime ad non voluptas. Ab a dolores omnis. Suscipit distinctio quasi veniam aut ut rerum ipsum quia. Accusantium animi maiores labore illum sunt. Laudantium non dolore voluptas. Aliquam impedit quaerat voluptatem numquam sint.', '5.46', 'ad-quasi-perferendis-quod-nemo-cum-dolores-quidem-et', '2021-09-15 02:08:55', '2021-09-15 02:08:55'),
(2, 2, 'Ciara Legros PhD', 'Ducimus eaque ut sit quae.', 'Delectus consequatur sed veniam enim. Est ipsa doloremque sequi cumque dignissimos quod amet. Cumque id et velit qui autem. Nulla in in suscipit voluptatem tenetur ipsa. Quos sint distinctio modi soluta sapiente et temporibus.', '9.46', 'iste-est-explicabo-eos-tempora-pariatur-exercitationem', '2021-09-15 02:08:56', '2021-09-15 02:08:56'),
(3, 3, 'Marques Murphy V', 'Cumque itaque tenetur praesentium et officiis cum dolor.', 'Aliquam nesciunt quia voluptatem nulla modi veritatis incidunt. Voluptatem reiciendis assumenda iste maiores quo. Est vel dicta fugiat harum laborum. Recusandae labore aperiam voluptatibus fugit consequatur. Consectetur mollitia architecto occaecati pariatur asperiores dolorem voluptatem doloribus. Sequi dolor nam quis rerum nihil blanditiis.', '1.11', 'maiores-aperiam-unde-neque-corporis-magni-voluptatem-expedita', '2021-09-15 02:08:56', '2021-09-15 02:08:56'),
(4, 4, 'Emmalee Anderson', 'Sunt laudantium est eos sit.', 'Iusto magnam hic deserunt repellendus. Non sit ipsa et sed accusantium soluta nihil. Delectus esse rerum at. Et expedita sapiente nobis non. Dolor assumenda deserunt molestiae facilis nam et est. Ducimus dolore aliquid assumenda.', '9.53', 'ea-deleniti-in-sint-reiciendis-aut-suscipit', '2021-09-15 02:08:56', '2021-09-15 02:08:56'),
(5, 5, 'Mr. Declan Leannon III', 'Aliquam fugiat rerum doloremque rem.', 'Fuga cumque adipisci aperiam est tempore inventore. Ratione perspiciatis soluta perspiciatis. Non laboriosam et voluptatem eveniet sunt quaerat explicabo. Et hic et facere voluptatem a quisquam iste. Voluptatum quia qui eius dolore ullam necessitatibus et. Nesciunt consequatur accusamus quis in ab impedit.', '5.31', 'consectetur-dolorem-porro-ipsa-quia', '2021-09-15 02:08:56', '2021-09-15 02:08:56'),
(6, 6, 'Makenzie Pfeffer', 'Aliquam iure sunt est minima.', 'In exercitationem libero et blanditiis quia consequatur beatae. Error atque voluptatem quo voluptas. Assumenda sed molestiae rerum dolorem odio saepe. Earum rerum quia quam et eaque reprehenderit qui. Sapiente fugit quibusdam nesciunt impedit. Et sit laborum hic eum voluptatem.', '4.34', 'consequatur-quam-recusandae-sed-veritatis-ipsam-voluptatibus-consequatur', '2021-09-15 02:08:56', '2021-09-15 02:08:56'),
(7, 7, 'Juliet Kris', 'Excepturi voluptatem laborum ab sit temporibus qui labore.', 'Doloremque vitae et et. In odit quod ex qui. Sunt explicabo doloribus facere est sint odio sed. Itaque id unde qui aut. Sint molestias unde voluptas saepe excepturi dolor. Modi quibusdam omnis qui temporibus beatae assumenda cupiditate.', '5.77', 'quo-at-consectetur-et-illum-soluta-minus-maxime', '2021-09-15 02:08:56', '2021-09-15 02:08:56'),
(8, 8, 'Carolyn Kuhn', 'Et cum pariatur vel cumque.', 'Suscipit error officia voluptatum. Dolorum esse voluptatum autem possimus rerum a. Rerum magni nostrum numquam et eum hic autem. Sequi commodi aut assumenda itaque laudantium. Molestias necessitatibus nulla sint voluptates officia. Omnis eum quas odio odio.', '8.34', 'eos-sed-iusto-facere-quaerat-itaque', '2021-09-15 02:08:56', '2021-09-15 02:08:56'),
(9, 9, 'Dr. Raleigh Pacocha', 'Molestiae modi ipsam sit eos impedit soluta omnis.', 'Quia quisquam sint alias ipsa iusto. Rerum nulla est amet ut. Enim sed voluptas eum veniam repudiandae amet enim. Similique asperiores culpa recusandae dolore ut praesentium pariatur.', '9.81', 'beatae-nulla-velit-expedita-est', '2021-09-15 02:08:56', '2021-09-15 02:08:56'),
(10, 10, 'Idella Hyatt', 'Ipsam illum esse odit voluptas occaecati dolorem inventore totam.', 'Ea facere ut adipisci consequatur distinctio. Non fugiat blanditiis distinctio aliquid non. Et fuga soluta corporis vitae. Harum nobis ducimus quia sed voluptatum voluptas.', '3.91', 'quos-fugit-eos-ab', '2021-09-15 02:08:56', '2021-09-15 02:08:56'),
(11, 11, 'Keaton Schowalter', 'Hic voluptatem doloribus eveniet.', 'Architecto quos voluptas aut quia officia est dolorem sit. Et in rerum natus quaerat suscipit. Dolorem nisi qui quam nam ea at eligendi. Facere libero accusantium quo non ut soluta. Est assumenda facilis quasi commodi quis dolorum aut.', '9.10', 'quia-quia-molestiae-vel-voluptate-veritatis-ut-id', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(12, 12, 'Adolph Krajcik', 'Nihil velit enim necessitatibus nihil autem.', 'Et quia dolore fugit velit et magnam consequuntur dicta. Qui in accusamus est accusantium. Asperiores suscipit temporibus facere labore qui. Et cum voluptatem deleniti voluptatibus molestiae inventore. Et nobis sed numquam architecto error.', '9.57', 'est-repellendus-voluptatem-necessitatibus-et-eaque-voluptates', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(13, 13, 'Shyann Frami', 'Ipsa aut molestiae voluptatem aut vero.', 'Aliquid non in est at rerum quos eum. Doloribus voluptas et excepturi aut at tenetur ducimus. Rerum enim eum quia exercitationem quam consequatur ut ea. Facilis accusamus asperiores eaque tempora. Animi qui est consequuntur et id sit.', '3.74', 'aut-non-repellat-aut-qui-unde-aut-deleniti', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(14, 14, 'Gloria Streich', 'Velit laudantium non reiciendis doloribus minus.', 'Cumque ea nemo consequatur id quae. Dignissimos sunt voluptate et ducimus. Et qui velit odit dignissimos atque. Nostrum tempore neque necessitatibus aut. Dolores blanditiis laborum voluptatum aut ab.', '2.62', 'sint-cumque-consequatur-sed-consequatur-porro-ut-sapiente-voluptatum', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(15, 15, 'Mr. Herminio Tillman I', 'Tempore et ab eaque ea.', 'Numquam aut ipsum ipsa est quia. Assumenda voluptas in debitis excepturi quam rem. Ipsam qui est temporibus officiis. Est perferendis consequuntur id consequatur in praesentium. Ut harum fugiat qui voluptatum libero sed.', '9.02', 'repellendus-enim-cum-ad-facere-quasi', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(16, 16, 'Audrey Dickens', 'Dolor commodi vel laborum nobis ipsum et animi.', 'Sunt occaecati officia velit dolor nostrum hic sit. Autem molestias cupiditate ut. Nihil minus placeat nesciunt dolores nesciunt. Sit nesciunt illo cum. Debitis ducimus pariatur non velit. Et qui pariatur labore itaque ad nam.', '2.26', 'reiciendis-quia-vitae-et-quaerat-id', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(17, 17, 'Britney Hudson', 'Quas odit nesciunt sed ullam enim et.', 'Esse repellendus quibusdam et voluptatibus corporis. Qui eaque cupiditate ut et alias. Perspiciatis animi inventore blanditiis id totam autem a. Qui optio cumque culpa rem vel aperiam. Consectetur totam expedita impedit quod.', '2.75', 'non-et-iste-eveniet-et-quo-repellat-iusto', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(18, 18, 'Gerhard Zieme', 'Fugiat voluptas quia in aut doloremque inventore et.', 'Vero velit voluptatibus a in esse ut dolor. Nihil et veritatis sed nobis quos ut. Illum et consequatur pariatur laboriosam ut sed nam. Non voluptas molestias quod iusto aspernatur fugit aut.', '9.45', 'voluptas-deleniti-quam-nobis-quas-nihil-commodi-qui', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(19, 19, 'Dr. Kacey King', 'Quisquam neque eius sit ad quam.', 'Consequatur repellat ipsum voluptatem nihil. Debitis doloribus voluptatem sunt. Qui voluptate quia ut eos ducimus. Sed aspernatur tempora neque ut molestiae iusto et. Doloremque magnam laudantium sunt autem eos aut.', '2.51', 'autem-nihil-eveniet-possimus', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(20, 20, 'Taryn DuBuque', 'Vel a illo consectetur repellendus sit debitis.', 'Amet tempora dolores quam dolores. Unde eligendi in porro voluptatem. Est modi in quis autem rerum. Quo quidem est nisi unde aut deleniti quia.', '4.54', 'magni-quod-non-modi-voluptatem-officiis', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(21, 21, 'Mr. Sherwood Muller DDS', 'Ut itaque mollitia similique facere magnam.', 'Nihil et fugiat at accusamus nostrum non. Rem velit et eaque. Laboriosam pariatur ipsum expedita exercitationem voluptatum. Dolores dolor reiciendis maxime excepturi. Voluptatum necessitatibus magnam molestiae enim vel. Dolores vel quam qui accusantium atque.', '7.06', 'et-deleniti-nostrum-sed-excepturi-dolor', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(22, 22, 'Dr. Reina Spencer MD', 'Perferendis enim doloremque cum omnis inventore ipsa.', 'Qui iusto est dolore autem qui cum. Sunt voluptas est qui quo assumenda cum. Et sunt necessitatibus omnis alias esse quisquam. Labore et veritatis nobis iste.', '5.48', 'error-quam-reiciendis-excepturi-reprehenderit-libero-ad-vel-molestiae', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(23, 23, 'Taylor Emmerich', 'Dolore nihil vel fugit ipsa unde.', 'Non et ducimus distinctio ullam et. Corporis molestiae quia ex. Sed voluptatem voluptas cum inventore dolore excepturi voluptates. Ut repudiandae et doloribus quas aut ad ipsa.', '3.94', 'ducimus-incidunt-nulla-error-omnis', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(24, 24, 'Mateo Ullrich MD', 'Quaerat quas laudantium sunt et quia.', 'Consequatur consectetur ut dolor. Optio nihil fuga voluptatem occaecati impedit. Beatae veniam alias doloremque iusto neque quidem aspernatur. Cupiditate consectetur voluptatem provident. Sequi enim eligendi et officia voluptatibus molestiae et.', '9.87', 'aut-at-doloremque-architecto-vel-rem', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(25, 25, 'Cleve Predovic I', 'Quam occaecati et nemo aut quo molestiae laudantium.', 'Sit voluptas molestiae vel maiores qui. Molestias consequuntur officia quia placeat officiis. Laboriosam et natus natus facilis in nihil. Sunt molestiae dignissimos quis debitis. Ut eum aspernatur ut est mollitia omnis vel.', '4.23', 'vitae-optio-numquam-aut-adipisci-iste-tempore-rerum-consequuntur', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(26, 26, 'Mrs. Tessie McGlynn', 'Accusantium iste adipisci corrupti repellendus voluptas delectus eaque.', 'Tenetur recusandae ut quod debitis nihil dolorem. Eum sed recusandae excepturi dolores eum. Quae harum fugiat tenetur quia deleniti. Unde voluptatem quibusdam mollitia. Quia fuga cumque harum.', '1.95', 'a-esse-ratione-magni-perferendis-quia-fugiat-sed-eligendi', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(27, 27, 'Kaleigh Collins', 'Consequuntur distinctio ratione eum neque et.', 'Illo ut ullam ex et est et consequatur. Voluptatem minus dignissimos ut fugiat inventore minima temporibus. A et earum qui quia eos non voluptates. Et atque odio assumenda. Omnis libero corporis itaque voluptatem sit vel.', '1.35', 'tempore-delectus-in-dolorum-dolorem-ipsum', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(28, 28, 'Miss Phoebe Hayes', 'Cumque vel corporis est et dolorem suscipit recusandae dolorem.', 'Possimus laborum quidem est consectetur commodi. Officia neque quas quia. Cumque quia rerum quaerat accusantium. Temporibus et laborum distinctio voluptas aut totam.', '8.19', 'sed-repellat-temporibus-et-facilis-consectetur-dolorem-vel', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(29, 29, 'Chandler Beatty PhD', 'Iste amet eos qui.', 'Autem quis est fuga laudantium omnis consequatur. Maiores possimus possimus voluptas adipisci veritatis repellendus autem. Totam laudantium magni a assumenda explicabo. Cum amet est dolor dolorum. Minus necessitatibus ad asperiores omnis quas rerum.', '4.09', 'aliquam-aliquam-itaque-blanditiis', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(30, 30, 'Alex Franecki', 'Deleniti repudiandae perferendis non unde ducimus voluptas.', 'Quas eum beatae atque incidunt possimus. Debitis dolorum porro voluptatem dolore. Explicabo rerum quo inventore ex. Impedit doloribus fugiat et quam. Aut vel perspiciatis sed culpa a quidem iusto. Quidem deserunt magni esse.', '5.24', 'dolores-a-iusto-rerum-assumenda-deleniti-officia', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(31, 31, 'Elliott Cronin', 'Tempore quidem odio totam ex consequuntur.', 'Distinctio ipsum perspiciatis omnis. Vitae libero dignissimos laborum asperiores. Soluta aspernatur consequatur explicabo voluptas. Fugiat odio iste qui et harum quia est maxime. Qui quis sunt recusandae qui dolorem aspernatur.', '7.39', 'rerum-neque-neque-odit-dolores', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(32, 32, 'Elody Bogisich', 'Earum deleniti rerum accusantium totam iusto sit.', 'Ut cum sint pariatur aliquam ut. Aperiam rerum provident reiciendis praesentium. Adipisci rerum optio libero qui inventore. Omnis inventore sunt voluptate quos. Nostrum similique ut laboriosam omnis. Aliquam laborum quaerat quod nemo ut.', '7.64', 'in-quia-modi-distinctio-ea', '2021-09-15 02:08:57', '2021-09-15 02:08:57'),
(33, 33, 'Prof. Madge Quitzon', 'Ex unde atque recusandae quis qui rem commodi.', 'Sed quia qui nihil aut id nihil. Sit aut odio distinctio assumenda incidunt autem. Aspernatur error velit eveniet minima qui corporis. Enim voluptas voluptatem possimus hic repellendus et inventore. Quod aut doloremque ratione.', '1.15', 'delectus-porro-sit-qui-velit-doloribus-voluptate', '2021-09-15 02:08:58', '2021-09-15 02:08:58'),
(34, 34, 'Newell Hackett', 'Rem nihil a rerum fugiat voluptas voluptatibus ipsa.', 'Recusandae inventore possimus ea molestias iure itaque dolor ut. Voluptatem et accusantium voluptate similique quia ea. Quod dolorum eum debitis fugit qui rerum. Rem est repellat possimus eveniet fugit nam molestiae. Et officiis tempora quas laboriosam similique est eum. Assumenda ut facilis debitis esse eaque reprehenderit. Sint laborum nisi sunt iure animi ducimus itaque.', '8.78', 'quia-maxime-aut-quibusdam-sunt-eos-corporis', '2021-09-15 02:08:58', '2021-09-15 02:08:58'),
(35, 35, 'Era Adams', 'Maiores facere corrupti itaque sed voluptatem nemo inventore porro.', 'Eaque ipsum saepe magnam voluptates. Ut beatae quisquam dolor. Numquam optio incidunt sint eum veritatis. Sequi ab neque vitae quo et. Sed sit provident ut. Doloribus sit distinctio enim. Officiis quia possimus neque quidem qui laborum id odit.', '3.62', 'esse-modi-quibusdam-qui-facere-esse-eum', '2021-09-15 02:08:58', '2021-09-15 02:08:58'),
(36, 36, 'Prof. Emmanuel Pfeffer', 'Quia mollitia possimus quo minus sed.', 'In impedit aliquam voluptatum sed nobis consequuntur. Quasi quos consectetur quae qui repudiandae qui. Qui distinctio occaecati in laudantium expedita ex porro. Quia nihil asperiores quae sint rerum sit. Omnis accusantium corporis ut atque. Voluptatem quae eum quibusdam assumenda blanditiis molestiae.', '2.78', 'recusandae-distinctio-deleniti-fuga-debitis-facere-consequuntur', '2021-09-15 02:08:58', '2021-09-15 02:08:58'),
(37, 37, 'Ashlynn Pacocha', 'Fuga repellat numquam soluta voluptas exercitationem ut.', 'Debitis ut qui voluptatibus. Odio nostrum sapiente soluta excepturi. Laboriosam blanditiis quia qui amet et dolorum. Et veniam voluptatem ut labore. Et rem ab ipsam quia. Nihil quia quam autem recusandae est. Corrupti tempora adipisci eum et.', '7.45', 'omnis-vitae-optio-omnis-sit-molestias-sit-quibusdam-explicabo', '2021-09-15 02:08:58', '2021-09-15 02:08:58'),
(38, 38, 'Imogene Stamm', 'Ab quia est est dolores sint provident rem eligendi.', 'Vitae pariatur atque amet dolor totam cumque. Incidunt laborum necessitatibus alias accusantium perferendis. Molestias maxime quia qui aperiam in nam perspiciatis. Unde maiores labore impedit porro sit id aliquam. Ab perferendis sint consequuntur aliquam eius velit. Est animi vitae cum incidunt.', '8.41', 'dignissimos-neque-libero-ipsa-quo-animi', '2021-09-15 02:08:58', '2021-09-15 02:08:58'),
(39, 39, 'Jackson Nolan', 'Consequuntur officia velit eveniet dolor.', 'Amet consequatur facilis ullam aut similique. Animi doloribus et nostrum accusantium. Enim atque occaecati debitis. Non officiis similique neque ratione quis eveniet.', '5.07', 'voluptas-sit-assumenda-ab-quod-ut-mollitia', '2021-09-15 02:08:58', '2021-09-15 02:08:58'),
(40, 40, 'Ansel Weber', 'Reiciendis aut dolores illum ipsa veniam et nam.', 'Quidem sint itaque natus eaque dolorem eius. Consequatur perspiciatis qui incidunt ducimus provident maxime. Et quo fuga et ut quia. A id non tenetur inventore est magnam. Non sed itaque facilis ducimus voluptas incidunt.', '6.75', 'vel-quia-at-eum-sunt', '2021-09-15 02:08:58', '2021-09-15 02:08:58'),
(41, 41, 'mochila Brilhosa', 'Após três testes negativos para o coronavírus, o presidente confirma a infecção. Bolsonaro afirma estar \"muito bem\", minimiza novamente a pandemia.', 'Após três testes negativos para o coronavírus, o presidente confirma a infecção.', '259.90', 'mochila-brilhosa', '2021-09-22 22:41:52', '2021-09-22 23:35:43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_photos`
--

CREATE TABLE `product_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `product_photos`
--

INSERT INTO `product_photos` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 41, 'products/nk8gmLGA96zeX8SzWZMpS2s6KN4Ij7SeqTwvAUMB.jpg', '2021-09-22 23:06:27', '2021-09-22 23:06:27'),
(2, 41, 'products/ZxzhHJKoHG22nLwMrjVLfO0qime4k8GgGmnYzC6H.jpg', '2021-09-22 23:06:27', '2021-09-22 23:06:27'),
(3, 41, 'products/xHi7uJT1K0VMViL8UuYUC6lj8DAhD0rm5cXKppSb.jpg', '2021-09-22 23:06:27', '2021-09-22 23:06:27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `stores`
--

INSERT INTO `stores` (`id`, `user_id`, `name`, `description`, `phone`, `mobile_phone`, `slug`, `created_at`, `updated_at`, `logo`) VALUES
(1, 1, 'Prof. Amparo Price IV', 'Ad qui autem consectetur minus.', '710.668.2169', '(221) 710-7458', 'quis-totam-aliquam-aut-voluptas-incidunt', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(2, 2, 'Eliezer Purdy', 'Rerum iste accusantium delectus.', '1-791-648-7419', '891-256-1164', 'reiciendis-distinctio-cupiditate-ut-sunt-eum-voluptates-asperiores-est', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(3, 3, 'Prof. Nella Thompson', 'Quia veniam fugit veritatis qui dolores officia.', '+1 (303) 591-1358', '249.952.9903', 'est-sed-sed-dolorem-itaque-et-est-dignissimos', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(4, 4, 'Euna Anderson DDS', 'Fuga velit animi rem architecto.', '+1.514.887.4044', '+1-940-872-0759', 'quas-ducimus-saepe-voluptate', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(5, 5, 'Christiana Brekke', 'Molestiae corrupti amet deserunt unde accusantium rerum porro.', '1-352-984-9950', '421-714-0517', 'vitae-numquam-quod-molestias-voluptas-nesciunt-animi-cum', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(6, 6, 'Joan Yost', 'Ut voluptates quos autem id.', '460-522-2171', '+15857699283', 'et-veniam-qui-qui', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(7, 7, 'Marcelina Leffler', 'Similique fugit est tempora commodi commodi eos atque ipsum.', '+1-547-935-9278', '+1.962.665.3889', 'sit-sequi-aut-dolores-id-fugiat-repellendus-ea-reiciendis', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(8, 8, 'Wayne Cole', 'Minus quia voluptatum aut quibusdam deleniti ut blanditiis.', '+17753138830', '576-814-8996', 'eos-nemo-ut-velit-reiciendis-sed', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(9, 9, 'Skye White DDS', 'Accusamus iusto omnis voluptas ad.', '+1-436-487-9079', '960-443-4820', 'consequatur-autem-enim-inventore-nam-iure-est', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(10, 10, 'Dr. Westley Kemmer II', 'Vel distinctio blanditiis sed iusto qui.', '+1.997.488.4069', '+1-697-648-7194', 'fugiat-quia-maiores-vitae-quia', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(11, 11, 'Lyda Pouros MD', 'Porro tempore dolores dicta eligendi.', '973-242-1349', '(730) 305-8919', 'magni-facilis-repudiandae-quam-amet-iste', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(12, 12, 'Dr. Mariam Klocko', 'Labore rem tempore nisi adipisci et beatae quis.', '531-627-7498', '617.433.6161', 'a-quisquam-quia-aliquam-reiciendis-laboriosam-soluta-ipsum', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(13, 13, 'Julius Simonis', 'Rerum illum provident ipsum doloremque cumque ea quos.', '+1-998-270-4048', '+1 (384) 882-3645', 'aut-aut-voluptas-culpa-hic-veritatis-nostrum-ea-quia', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(14, 14, 'Marquis Schmidt', 'Nihil rerum est quia quae dolor assumenda provident.', '575.916.6702', '850.435.1165', 'mollitia-et-aut-sed-recusandae-voluptatem-qui', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(15, 15, 'Dr. Gracie Erdman', 'Architecto dolorem voluptatem quidem delectus incidunt sit.', '(367) 221-7424', '+1 (948) 594-0185', 'ducimus-reprehenderit-maxime-ea-quia-laboriosam-qui-voluptatem', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(16, 16, 'Ms. Juliana Mohr', 'Voluptatem architecto sapiente animi adipisci incidunt.', '+1 (756) 660-3009', '+1-630-816-1186', 'omnis-sit-quaerat-quia-hic-aut-nam-dolores', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(17, 17, 'Jettie Goldner MD', 'Libero blanditiis quo et sit.', '958.898.9380', '+15344343907', 'sed-exercitationem-eum-in-eligendi-maxime-totam', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(18, 18, 'Emmanuelle Kemmer', 'Molestiae est autem debitis earum vel veritatis quibusdam.', '515.786.8810', '774.668.1324', 'in-et-dolorem-velit-exercitationem-optio', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(19, 19, 'Miss Rosalyn Braun DVM', 'Totam cum repellendus molestias placeat id fuga qui.', '+16879949950', '928-834-2673', 'accusantium-molestiae-illum-voluptates-veniam-libero-cumque', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(20, 20, 'Itzel Erdman', 'Velit totam accusantium beatae voluptate sit tempore.', '+1 (445) 626-5275', '507-750-3464', 'commodi-officiis-alias-error-natus-amet-voluptatibus-quia', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(21, 21, 'Dillan Lowe', 'Nulla magnam et molestiae placeat voluptate.', '(327) 399-3665', '447.967.8104', 'nam-ipsum-quaerat-sint-aut', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(22, 22, 'Prof. Justina Marks', 'Beatae magni voluptas eos modi omnis.', '775-455-8574', '+1-350-593-4196', 'est-officiis-officiis-quia-veritatis-et-aut-architecto-sunt', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(23, 23, 'Ena Larson', 'Voluptatum quo quidem accusantium illum dolore libero.', '996.552.8707', '(823) 317-4981', 'occaecati-earum-molestias-quia-molestiae-et-qui-est', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(24, 24, 'Brenda Kunze', 'Et distinctio sit aliquid impedit non.', '558-380-9480', '(909) 881-2733', 'tenetur-voluptatum-quia-quo-quae-ut-ad-maiores-debitis', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(25, 25, 'Ms. Erica Ortiz', 'Delectus quod pariatur voluptatibus enim nisi.', '624-633-1903', '(245) 709-7323', 'aut-et-adipisci-libero-quis-error-quia-veniam-libero', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(26, 26, 'Nyah Steuber', 'Nisi commodi nisi praesentium id consectetur.', '1-887-680-6199', '(516) 554-7122', 'perspiciatis-suscipit-earum-distinctio', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(27, 27, 'Ms. Otha Rosenbaum', 'Commodi est in laudantium autem animi laboriosam.', '1-664-968-9393', '563.510.6609', 'sed-nemo-quis-neque-est-officia', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(28, 28, 'Davion Mohr', 'Saepe laboriosam commodi ad corrupti harum porro repellendus.', '579-824-9921', '1-814-806-3785', 'ab-iusto-quo-est-ullam-consequuntur-a-alias', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(29, 29, 'Prof. Giovanna Crist', 'Nobis odio explicabo voluptatum ex.', '+1 (635) 810-8229', '1-937-306-6047', 'maxime-dolorem-suscipit-neque-quis-earum-quo-est', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(30, 30, 'Sibyl Hoeger', 'Nam error possimus ipsa molestiae recusandae velit sequi qui.', '+1 (761) 788-6979', '1-308-543-3199', 'et-sapiente-non-quibusdam-ut', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(31, 31, 'Dr. Danny Zieme II', 'Doloribus ducimus beatae sit eum nesciunt officiis quidem.', '+1.632.969.0856', '476.772.5605', 'repellat-illo-odio-odio-voluptatem-id-non-autem', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(32, 32, 'Pierce Erdman DDS', 'Sunt facilis quos natus.', '+1-241-989-9565', '(871) 515-9352', 'voluptatem-qui-et-dolore-aut', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(33, 33, 'Loyce Thiel', 'Vel voluptatum ab voluptas ut eaque est qui enim.', '513-844-8444', '1-247-630-9331', 'autem-similique-iusto-fugiat-accusamus', '2021-09-15 02:06:47', '2021-09-15 02:06:47', NULL),
(34, 34, 'Dr. Sid Corkery', 'Minus dolorem sunt saepe in sint aut.', '1-295-268-6372', '1-204-913-4603', 'qui-vitae-et-atque-dolorum-quae-iusto', '2021-09-15 02:06:48', '2021-09-15 02:06:48', NULL),
(35, 35, 'Bettye Veum', 'Vel accusamus exercitationem nihil minima quidem.', '1-497-649-7041', '1-598-257-6615', 'odio-voluptatum-quod-nisi-quidem-dolores-voluptas-suscipit', '2021-09-15 02:06:48', '2021-09-15 02:06:48', NULL),
(36, 36, 'Cara Windler PhD', 'Quia fugit temporibus dolor voluptate itaque iure porro.', '865-361-7275', '813.816.0698', 'dolore-modi-eos-voluptas', '2021-09-15 02:06:48', '2021-09-15 02:06:48', NULL),
(37, 37, 'Zoey Fadel', 'Vel dolor ut laboriosam qui sint impedit omnis.', '+16653497565', '+1.962.238.8228', 'sit-tempore-autem-natus-quisquam', '2021-09-15 02:06:48', '2021-09-15 02:06:48', NULL),
(38, 38, 'Paxton Rodriguez', 'Qui porro ipsa ipsa sunt ea iste et.', '(941) 686-7035', '+1.454.431.9476', 'iusto-iusto-asperiores-facere-animi-asperiores-et', '2021-09-15 02:06:48', '2021-09-15 02:06:48', NULL),
(39, 39, 'Dante Hills', 'Omnis voluptatem odit qui nobis ut.', '1-296-942-9155', '(817) 232-6192', 'maxime-aut-eligendi-enim-voluptatem-sit-sunt-perspiciatis', '2021-09-15 02:06:48', '2021-09-15 02:06:48', NULL),
(40, 40, 'Mr. Lloyd Gusikowski', 'Voluptatem quo aliquid ut sequi quod magni voluptatum.', '+1 (518) 704-3889', '290.600.8432', 'exercitationem-sint-velit-est-delectus-est-mollitia', '2021-09-15 02:06:48', '2021-09-15 02:06:48', NULL),
(41, 41, 'Lojinha da Cris', 'Loja de acessórios femininos', '(48) 3374-2032', '(48) 99102-6248', 'lojinha-da-cris', '2021-09-22 22:33:42', '2021-09-22 22:33:42', 'logo/4s3qqRHX7qaTperiaOalATwlpmBfj17iVHLqjKHf.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ROLE_USER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Abdiel Kirlin', 'ckunze@example.org', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wtpr82UJBrztM78eC81zpv0TxUNSpQAblrJvP0Wfd5ivBYOk7FiX0rTV6GBS', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(2, 'Alysson Torphy', 'orrin96@example.com', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fWs1gfwuWw', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(3, 'Prof. Abigayle Hoeger IV', 'ward.vanessa@example.com', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tXBP7k9hAj', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(4, 'Dr. Jameson Kerluke III', 'neal92@example.org', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0cORDoWRQUfv8nQlwKptCBnSLSvbQqNkmQarTaPziX0buVkFr9GV37Xx4Ieu', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(5, 'Erick West', 'mclaughlin.keagan@example.net', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'isrMWby70g', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(6, 'Dr. Sedrick Schinner', 'kassulke.judge@example.org', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VLfvxrPM13', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(7, 'Mrs. Caleigh Wisoky', 'justina99@example.org', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qj7QW4xzt0', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(8, 'Dr. Gillian Koch DDS', 'lewis79@example.com', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rFnp5JM0MA', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(9, 'Ms. Susie Abernathy', 'torrance.dach@example.com', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4FxJFZBhAN', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(10, 'Miss Rebekah Hintz DVM', 'leuschke.christy@example.org', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kDCYTLQM0Y', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(11, 'Sibyl Mayer', 'eli.gibson@example.org', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uBG0Wt9Lux', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(12, 'Myles Schuster', 'rhermann@example.net', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sTFqkWo2zp', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(13, 'Olen Shields', 'pspinka@example.net', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I527nAorKg', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(14, 'Allison Lockman', 'ureichel@example.com', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PpKjSaiQK9', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(15, 'Bessie Kovacek', 'cheyenne10@example.net', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RQm0UsiK1D', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(16, 'Elmer Prohaska', 'oconnell.margarette@example.net', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BJIDSCHBdG', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(17, 'Ella Koepp', 'else36@example.com', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'loJ1KNcLef', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(18, 'Ms. Gloria O\'Conner', 'ohaag@example.org', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'usS2vfGjeR', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(19, 'Dr. Jo Brakus DDS', 'hagenes.alda@example.net', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p8FIKbOhRX', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(20, 'Forrest Mohr MD', 'grimes.loren@example.com', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mLFvLe1x8a', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(21, 'Grant Morissette IV', 'thea.nader@example.org', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iD2CAHtdIn', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(22, 'Darrin Hoppe', 'linda.legros@example.org', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lJW0Y2sox9', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(23, 'Moses Hegmann PhD', 'sjast@example.org', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q10xZ2UU5w', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(24, 'Miss Piper Rodriguez', 'reinger.markus@example.org', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8j82Ip30S5', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(25, 'Dr. Alden Botsford', 'alexis82@example.net', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DbGNtaY245', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(26, 'Miss Ara Runte', 'erich.dickens@example.net', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MsUawrXe5o', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(27, 'Zoila Ruecker', 'eladio.reynolds@example.com', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sDMS8HjxDd', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(28, 'Mr. Ceasar Fay', 'josianne.hyatt@example.net', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ReUwCk9fFg', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(29, 'Prof. Estella Farrell', 'kevon.schimmel@example.org', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'faznv0ST7i', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(30, 'Mac Koss', 'fauer@example.org', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EeA614yliL', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(31, 'Alexandria Stehr', 'feest.domingo@example.org', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0RYY1hntXx', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(32, 'Mr. Stephan Koch MD', 'zoey13@example.net', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9NectB3Une', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(33, 'Guy Zieme', 'berdman@example.com', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FXiswvWm7G', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(34, 'Dr. Margaretta Carter', 'anissa98@example.net', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V4cEAj8UCl', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(35, 'Lucinda Lowe', 'strosin.liliane@example.com', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sm5scUJxuw', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(36, 'Nicole Leannon', 'elmo26@example.com', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LVXw2UTtwq', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(37, 'Kody Wilderman', 'stephany.bogisich@example.net', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dq3k1uK47X', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(38, 'Clovis Kuhn III', 'trevor04@example.org', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fuqZSoCtwF', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(39, 'Mrs. Maribel Boehm IV', 'hickle.cordie@example.org', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QAZlD824Ri', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(40, 'Lindsey Tremblay', 'wjones@example.com', '2021-09-15 02:06:47', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'shtOZXCWfiyKrsFjIySKd1lseCM1atxtLafaHMifhs3Qyz8eQfLFdJu0Pg6e', '2021-09-15 02:06:47', '2021-09-15 02:06:47', 'ROLE_USER'),
(41, 'Cristina Silva', 'programadora01@gmail.com', NULL, '$2y$10$16vcnvMaGv6vSaQeX/nGzeG.AT/GwWnGy5chudpXuDH5Z3xWH4ahq', 'AoiZ3QEwEiHI7HJJpzdfE0hPyXKJbzaZvgPvj24K3iP0xtE6BNCfH5cwIVKB', '2021-09-22 22:30:26', '2021-09-22 22:30:26', 'ROLE_OWNER');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_orders`
--

CREATE TABLE `user_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pagseguro_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pagseguro_status` int(11) NOT NULL,
  `items` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `user_orders`
--

INSERT INTO `user_orders` (`id`, `user_id`, `reference`, `pagseguro_code`, `pagseguro_status`, `items`, `created_at`, `updated_at`) VALUES
(1, 1, 'XPTO1', 'D373066E-1AB6-4675-B7F9-0B80E6529294', 1, 'a:2:{i:0;a:5:{s:4:\"name\";s:11:\"Curtis Rice\";s:5:\"price\";s:4:\"2.09\";s:4:\"slug\";s:43:\"non-illum-eveniet-laborum-in-dolorem-dolore\";s:6:\"amount\";i:7;s:8:\"store_id\";i:39;}i:1;a:5:{s:4:\"name\";s:11:\"Ansel Weber\";s:5:\"price\";s:4:\"6.75\";s:4:\"slug\";s:20:\"vel-quia-at-eum-sunt\";s:6:\"amount\";s:1:\"5\";s:8:\"store_id\";i:40;}}', '2021-09-15 02:10:58', '2021-09-15 02:10:58'),
(2, 1, 'XPTO2', 'C70E5686-A636-4DF7-B6BA-0426D2B8F8BA', 1, 'a:1:{i:1;a:5:{s:4:\"name\";s:11:\"Ansel Weber\";s:5:\"price\";s:4:\"6.75\";s:4:\"slug\";s:20:\"vel-quia-at-eum-sunt\";s:6:\"amount\";s:1:\"5\";s:8:\"store_id\";i:40;}}', '2021-09-15 02:11:50', '2021-09-15 02:11:50'),
(3, 1, 'XPTO3', '2FC5379A-1AB7-4EEF-8AA9-F7980DF4C74B', 1, 'a:1:{i:1;a:5:{s:4:\"name\";s:11:\"Ansel Weber\";s:5:\"price\";s:4:\"6.75\";s:4:\"slug\";s:20:\"vel-quia-at-eum-sunt\";s:6:\"amount\";s:1:\"5\";s:8:\"store_id\";i:40;}}', '2021-09-15 02:12:28', '2021-09-15 02:12:28'),
(4, 1, 'XPTO4', 'F7D019B6-8051-4BCC-A487-4D3A4ACB12F4', 1, 'a:1:{i:1;a:5:{s:4:\"name\";s:11:\"Ansel Weber\";s:5:\"price\";s:4:\"6.75\";s:4:\"slug\";s:20:\"vel-quia-at-eum-sunt\";s:6:\"amount\";s:1:\"5\";s:8:\"store_id\";i:40;}}', '2021-09-15 02:18:31', '2021-09-15 02:18:31'),
(5, 1, 'XPTO5', '6BD5A7AF-5B81-4ABD-8E42-E69CAAA187A5', 1, 'a:1:{i:1;a:5:{s:4:\"name\";s:11:\"Ansel Weber\";s:5:\"price\";s:4:\"6.75\";s:4:\"slug\";s:20:\"vel-quia-at-eum-sunt\";s:6:\"amount\";s:1:\"5\";s:8:\"store_id\";i:40;}}', '2021-09-15 02:19:05', '2021-09-15 02:19:05'),
(6, 1, 'XPTO6', 'C960CB7E-8664-40DA-AD0E-86CD2C00F9C4', 1, 'a:1:{i:1;a:5:{s:4:\"name\";s:11:\"Ansel Weber\";s:5:\"price\";s:4:\"6.75\";s:4:\"slug\";s:20:\"vel-quia-at-eum-sunt\";s:6:\"amount\";s:1:\"5\";s:8:\"store_id\";i:40;}}', '2021-09-15 02:19:55', '2021-09-15 02:19:55'),
(7, 1, 'XPTO7', 'A5B065EC-0393-4E15-9B3A-581D2C3A4D85', 1, 'a:1:{i:0;a:5:{s:4:\"name\";s:13:\"Imogene Stamm\";s:5:\"price\";s:4:\"8.41\";s:4:\"slug\";s:39:\"dignissimos-neque-libero-ipsa-quo-animi\";s:6:\"amount\";s:1:\"5\";s:8:\"store_id\";i:38;}}', '2021-09-17 16:28:01', '2021-09-17 16:28:01'),
(8, 1, 'XPTO8', '223299E2-BBB0-4EB1-AE73-D11FE2007321', 1, 'a:1:{i:0;a:5:{s:4:\"name\";s:13:\"Jackson Nolan\";s:5:\"price\";s:4:\"5.07\";s:4:\"slug\";s:42:\"voluptas-sit-assumenda-ab-quod-ut-mollitia\";s:6:\"amount\";i:4;s:8:\"store_id\";i:39;}}', '2021-09-17 16:47:00', '2021-09-17 16:47:00'),
(9, 1, 'XPTO9', '7E575D34-29DB-4772-9B64-81EE4F50009E', 1, 'a:1:{i:0;a:5:{s:4:\"name\";s:13:\"Jackson Nolan\";s:5:\"price\";s:4:\"5.07\";s:4:\"slug\";s:42:\"voluptas-sit-assumenda-ab-quod-ut-mollitia\";s:6:\"amount\";i:4;s:8:\"store_id\";i:39;}}', '2021-09-17 16:47:33', '2021-09-17 16:47:33'),
(10, 4, 'XPTO', '711A6411-C0CB-445E-B696-61EE65E717F5', 3, 'a:1:{i:0;a:5:{s:4:\"name\";s:15:\"Ashlynn Pacocha\";s:5:\"price\";s:4:\"7.45\";s:4:\"slug\";s:61:\"omnis-vitae-optio-omnis-sit-molestias-sit-quibusdam-explicabo\";s:6:\"amount\";s:1:\"4\";s:8:\"store_id\";i:37;}}', '2021-09-17 18:02:31', '2021-09-20 17:12:00'),
(11, 4, 'XPTO', '8664B439-EF8E-4131-AB6B-2C37A09FF8A5', 1, 'a:1:{i:0;a:6:{s:4:\"name\";s:13:\"Imogene Stamm\";s:5:\"price\";s:4:\"8.41\";s:4:\"slug\";s:39:\"dignissimos-neque-libero-ipsa-quo-animi\";s:6:\"amount\";s:2:\"10\";s:2:\"id\";i:38;s:8:\"store_id\";i:38;}}', '2021-09-20 17:42:12', '2021-09-20 17:42:12'),
(12, 4, '9587b152-d088-47f3-9b05-c442c1262b95', '59007AEC-7894-46F0-B9AA-E5AB277A0846', 1, 'a:1:{i:0;a:6:{s:4:\"name\";s:13:\"Imogene Stamm\";s:5:\"price\";s:4:\"8.41\";s:4:\"slug\";s:39:\"dignissimos-neque-libero-ipsa-quo-animi\";s:6:\"amount\";s:2:\"10\";s:2:\"id\";i:38;s:8:\"store_id\";i:38;}}', '2021-09-20 17:55:00', '2021-09-20 17:55:00'),
(13, 4, 'c8793159-ba49-4496-9b3a-7fc9619b2889', 'E830F687-DAFC-41CA-9F7D-7A90020C3CE5', 1, 'a:1:{i:0;a:6:{s:4:\"name\";s:13:\"Imogene Stamm\";s:5:\"price\";s:4:\"8.41\";s:4:\"slug\";s:39:\"dignissimos-neque-libero-ipsa-quo-animi\";s:6:\"amount\";s:2:\"10\";s:2:\"id\";i:38;s:8:\"store_id\";i:38;}}', '2021-09-20 18:02:36', '2021-09-20 18:02:36'),
(14, 4, 'b33a8fd2-e8b2-446a-a0eb-ccc437deca29', '67354111-A126-4CFD-9BA2-BA2099EDC20B', 1, 'a:1:{i:0;a:6:{s:4:\"name\";s:22:\"Prof. Emmanuel Pfeffer\";s:5:\"price\";s:4:\"2.78\";s:4:\"slug\";s:63:\"recusandae-distinctio-deleniti-fuga-debitis-facere-consequuntur\";s:6:\"amount\";s:1:\"5\";s:2:\"id\";i:36;s:8:\"store_id\";i:36;}}', '2021-09-20 21:01:13', '2021-09-20 21:01:13'),
(15, 4, '6126a600-cd48-441e-b8a2-ed8a3a04ae09', 'DD82D2F1-EDC9-4700-A3CE-A3D2565903CA', 1, 'a:1:{i:0;a:6:{s:4:\"name\";s:22:\"Prof. Emmanuel Pfeffer\";s:5:\"price\";s:4:\"2.78\";s:4:\"slug\";s:63:\"recusandae-distinctio-deleniti-fuga-debitis-facere-consequuntur\";s:6:\"amount\";s:1:\"5\";s:2:\"id\";i:36;s:8:\"store_id\";i:36;}}', '2021-09-20 21:02:04', '2021-09-20 21:02:04'),
(16, 4, '49bf7600-6f6f-408e-a04b-dd99e43a9bbc', 'B47871C3-083B-46BF-80E6-57881F9BA86C', 1, 'a:1:{i:0;a:6:{s:4:\"name\";s:22:\"Prof. Emmanuel Pfeffer\";s:5:\"price\";s:4:\"2.78\";s:4:\"slug\";s:63:\"recusandae-distinctio-deleniti-fuga-debitis-facere-consequuntur\";s:6:\"amount\";s:1:\"5\";s:2:\"id\";i:36;s:8:\"store_id\";i:36;}}', '2021-09-20 21:03:10', '2021-09-20 21:03:10'),
(17, 4, '5fec330c-b8cc-4b73-93f1-e5ad353ceed5', 'A90A1CB1-5345-415B-8369-47C44312F3AE', 7, 'a:1:{i:0;a:6:{s:4:\"name\";s:22:\"Prof. Emmanuel Pfeffer\";s:5:\"price\";s:4:\"2.78\";s:4:\"slug\";s:63:\"recusandae-distinctio-deleniti-fuga-debitis-facere-consequuntur\";s:6:\"amount\";s:1:\"5\";s:2:\"id\";i:36;s:8:\"store_id\";i:36;}}', '2021-09-20 21:06:29', '2021-09-20 21:17:42'),
(18, 4, 'f38b23f8-32aa-4228-b9f4-21595e293e3a', 'D13AC828-E337-4A4B-B489-DDD708B88EF7', 1, 'a:1:{i:0;a:6:{s:4:\"name\";s:22:\"Prof. Emmanuel Pfeffer\";s:5:\"price\";s:4:\"2.78\";s:4:\"slug\";s:63:\"recusandae-distinctio-deleniti-fuga-debitis-facere-consequuntur\";s:6:\"amount\";s:1:\"5\";s:2:\"id\";i:36;s:8:\"store_id\";i:36;}}', '2021-09-20 21:29:46', '2021-09-20 21:29:46'),
(19, 4, '52a53d1e-fc8e-4f22-aa97-cd1dad7c40a0', 'BA829BEA-608D-4DC7-BF90-1FB143BCAA32', 1, 'a:1:{i:0;a:6:{s:4:\"name\";s:22:\"Prof. Emmanuel Pfeffer\";s:5:\"price\";s:4:\"2.78\";s:4:\"slug\";s:63:\"recusandae-distinctio-deleniti-fuga-debitis-facere-consequuntur\";s:6:\"amount\";s:1:\"5\";s:2:\"id\";i:36;s:8:\"store_id\";i:36;}}', '2021-09-20 21:31:27', '2021-09-20 21:31:27'),
(20, 41, '38d41326-942e-4206-ace4-4701fec17bd7', '14E2C20B-090F-4C38-B402-4660E06D426F', 1, 'a:1:{i:0;a:6:{s:4:\"name\";s:16:\"mochila Brilhosa\";s:5:\"price\";s:6:\"259.90\";s:4:\"slug\";s:16:\"mochila-brilhosa\";s:6:\"amount\";s:1:\"5\";s:2:\"id\";i:41;s:8:\"store_id\";i:41;}}', '2021-09-23 16:20:29', '2021-09-23 16:20:29'),
(21, 40, 'facba329-fc24-4bec-bc58-e4fa82b31b48', '316B73F3-19D2-407D-8F29-7B45FBC19D11', 1, 'a:4:{i:0;a:6:{s:4:\"name\";s:16:\"mochila Brilhosa\";s:5:\"price\";s:6:\"259.90\";s:4:\"slug\";s:16:\"mochila-brilhosa\";s:6:\"amount\";s:1:\"1\";s:2:\"id\";i:41;s:8:\"store_id\";i:41;}i:1;a:6:{s:4:\"name\";s:11:\"Ansel Weber\";s:5:\"price\";s:4:\"6.75\";s:4:\"slug\";s:20:\"vel-quia-at-eum-sunt\";s:6:\"amount\";s:1:\"1\";s:2:\"id\";i:40;s:8:\"store_id\";i:40;}i:2;a:6:{s:4:\"name\";s:13:\"Jackson Nolan\";s:5:\"price\";s:4:\"5.07\";s:4:\"slug\";s:42:\"voluptas-sit-assumenda-ab-quod-ut-mollitia\";s:6:\"amount\";s:1:\"1\";s:2:\"id\";i:39;s:8:\"store_id\";i:39;}i:3;a:6:{s:4:\"name\";s:13:\"Imogene Stamm\";s:5:\"price\";s:4:\"8.41\";s:4:\"slug\";s:39:\"dignissimos-neque-libero-ipsa-quo-animi\";s:6:\"amount\";s:1:\"1\";s:2:\"id\";i:38;s:8:\"store_id\";i:38;}}', '2021-09-23 16:57:33', '2021-09-23 16:57:33');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `category_product`
--
ALTER TABLE `category_product`
  ADD KEY `category_product_product_id_foreign` (`product_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Índices para tabela `order_store`
--
ALTER TABLE `order_store`
  ADD KEY `order_store_store_id_foreign` (`store_id`),
  ADD KEY `order_store_order_id_foreign` (`order_id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_store_id_foreign` (`store_id`);

--
-- Índices para tabela `product_photos`
--
ALTER TABLE `product_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_photos_product_id_foreign` (`product_id`);

--
-- Índices para tabela `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stores_user_id_foreign` (`user_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Índices para tabela `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_orders_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `product_photos`
--
ALTER TABLE `product_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de tabela `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Limitadores para a tabela `order_store`
--
ALTER TABLE `order_store`
  ADD CONSTRAINT `order_store_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `user_orders` (`id`),
  ADD CONSTRAINT `order_store_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Limitadores para a tabela `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `product_photos`
--
ALTER TABLE `product_photos`
  ADD CONSTRAINT `product_photos_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Limitadores para a tabela `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `user_orders`
--
ALTER TABLE `user_orders`
  ADD CONSTRAINT `user_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

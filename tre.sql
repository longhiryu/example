-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 05, 2021 at 11:58 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tre`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên tài khoản',
  `value` double UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Giá trị hiện tại của tài khoản',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Cash' COMMENT 'Loại tài khoản: Cash | Bank',
  `note` text COLLATE utf8mb4_unicode_ci COMMENT 'Ghi chú',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `value`, `type`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Tài khoản ACB 82868888', 0, 'bank', '<p>day la note 123</p>', '2021-09-22 23:02:20', '2021-09-22 23:51:40'),
(2, 'Sổ quỹ tiền mặt', 0, 'cash', '<p>Tiền mặt</p>', '2021-09-22 23:09:16', '2021-09-22 23:09:16'),
(3, 'Tài khoản TPBank cá nhân', 0, 'bank', NULL, '2021-09-22 23:13:29', '2021-09-23 22:41:34');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sku` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_id` bigint(20) NOT NULL DEFAULT '0',
  `img` text COLLATE utf8mb4_unicode_ci,
  `desc` longtext COLLATE utf8mb4_unicode_ci,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `feature` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sum` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `sku`, `name`, `cate_id`, `img`, `desc`, `enable`, `feature`, `title`, `keyword`, `sum`, `created_at`, `updated_at`) VALUES
(1, '12785186', 'Annie Hettinger PhD', 5, 'https://lorempixel.com/640/480/?27081', 'Voluptas consequatur quis aut voluptates. Id quam nostrum officiis consequatur. Neque et rerum ut debitis sed libero eum.', 1, 0, 'Eos eius voluptas repellat quos veritatis sed sunt omnis.', 'keywords', 'Deserunt velit libero quos iusto dolor nostrum.', '2021-08-25 23:14:51', '2021-08-25 23:14:51'),
(2, '45967177', 'Liam Stark', 9, 'https://lorempixel.com/640/480/?95424', 'Qui aut voluptatem voluptas dolorem. Molestiae velit dolores et a quidem.', 1, 0, 'Commodi quidem voluptas nisi eaque.', 'keywords', 'Modi ipsum fugiat dolorem.', '2021-08-25 23:14:51', '2021-08-25 23:14:51'),
(3, '09520370', 'Jettie Tromp', 19, 'https://lorempixel.com/640/480/?16843', 'Aliquam incidunt error ut commodi ipsa nisi facilis doloribus. Vel sapiente eum odit et. Accusantium et sequi dolorem fuga soluta veritatis. Reiciendis ut omnis tempora ipsa molestiae.', 1, 0, 'Aut sint debitis recusandae laboriosam.', 'keywords', 'Harum natus omnis eos aut dolor maiores amet dicta.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(4, '84992208', 'Prof. Pete Barrows', 89, 'https://lorempixel.com/640/480/?52184', 'Sint ut iusto reprehenderit ducimus et. Aut consectetur nisi rerum reprehenderit consectetur et. Accusantium corporis et suscipit expedita qui id.', 1, 0, 'Dicta ad magni eveniet doloribus mollitia molestias fugiat qui.', 'keywords', 'Enim aspernatur eos distinctio debitis et qui dolores non.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(5, '05551750', 'Kavon Schamberger', 65, 'https://lorempixel.com/640/480/?43868', 'Autem perspiciatis corporis qui. Necessitatibus voluptates aut quaerat. Vel error temporibus ducimus repellat iure aliquid sequi.', 1, 0, 'Reprehenderit quo delectus earum.', 'keywords', 'Itaque delectus earum eveniet animi voluptatem qui dolorum.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(6, '05006045', 'Prof. Raymond Tillman II', 2, 'https://lorempixel.com/640/480/?25209', 'Voluptas quo dolor adipisci quo et natus. Illo et voluptatum aspernatur quis et dolore praesentium. Dolor aut saepe consequatur doloribus qui et amet. Autem dolorum aut eveniet rerum culpa.', 1, 0, 'Itaque sed omnis voluptas et.', 'keywords', 'Beatae qui et eius laboriosam suscipit.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(7, '57338606', 'Zoila Sporer', 77, 'https://lorempixel.com/640/480/?78144', 'Voluptas dolores voluptas ut. Ipsa qui quasi qui at quos. Culpa aut consequuntur in sed magnam blanditiis voluptas. Quas occaecati in officia repellat excepturi.', 1, 0, 'Aut ut sapiente autem doloribus hic numquam.', 'keywords', 'Et distinctio ipsam quidem repellendus aspernatur id nihil maiores.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(8, '59183709', 'Leila Kshlerin Jr.', 62, 'https://lorempixel.com/640/480/?65383', 'Est eum vel inventore quis. Et ut delectus iure id sit doloremque et. Occaecati reiciendis error id tempora voluptatum ut. Qui dolorem est autem id. Atque est soluta ipsum laborum.', 1, 0, 'Quo fugit sunt enim optio quo eaque.', 'keywords', 'Inventore fugit accusamus explicabo.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(9, '21267390', 'Prof. Misael Schmeler', 6, 'https://lorempixel.com/640/480/?81236', 'Odio officiis consequatur nisi aut distinctio. Nemo iste et quae nihil dolor qui beatae. Odio magnam sed corporis nihil qui. Qui et sunt est placeat adipisci unde illo minus.', 1, 0, 'Soluta quia quia quas sed iste animi qui.', 'keywords', 'Deserunt fuga omnis id nisi eum.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(10, '41965450', 'Wilmer Murray', 18, 'https://lorempixel.com/640/480/?28582', 'Vero minima tempora et assumenda est consequatur eaque. Eum quisquam autem quas ad.', 1, 0, 'Consequatur soluta amet illo dolor nostrum adipisci saepe commodi.', 'keywords', 'Rerum in iusto qui voluptates sunt quia.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(11, '33821986', 'Christa O\'Kon PhD', 69, 'https://lorempixel.com/640/480/?63606', 'Repellat soluta iste iusto quae ad. Minus fugit modi voluptatem vero est neque ut eligendi.', 1, 0, 'Ea odit sequi sed eos eum ut.', 'keywords', 'Ut enim aut ipsam quas praesentium esse facere et.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(12, '37632335', 'Mrs. Gilda Corkery MD', 98, 'https://lorempixel.com/640/480/?78559', 'Et consequuntur sunt commodi dicta. Quis incidunt iusto similique beatae. Facilis et possimus maxime quas placeat culpa ea. Excepturi numquam saepe aut necessitatibus reiciendis consectetur.', 1, 0, 'Quidem dolorum voluptatem optio molestias sit et.', 'keywords', 'Et voluptatem suscipit aut tempore ipsum nisi consequatur.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(13, '75904791', 'Rey Little', 12, 'https://lorempixel.com/640/480/?92979', 'Laudantium quo aut doloremque occaecati expedita sed. Voluptatem ut ad consectetur quia sunt est sint. Repudiandae nemo dolores consequatur accusamus neque molestias. Ullam voluptate ut molestiae.', 1, 0, 'Qui neque dolores amet dolor sed dolor.', 'keywords', 'Ipsam adipisci mollitia aspernatur sed.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(14, '59745402', 'Jeramie Legros', 39, 'https://lorempixel.com/640/480/?67804', 'Consequatur quos voluptatibus maiores sunt velit. Aspernatur voluptate repellendus eius ea. Voluptate aut mollitia ratione ullam.', 1, 0, 'Sunt est sed fugiat.', 'keywords', 'Voluptate quis molestiae mollitia impedit.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(15, '51024048', 'Raymundo Sawayn', 39, 'https://lorempixel.com/640/480/?24237', 'In quisquam deserunt ut ad voluptates ea fugiat. Voluptatibus est impedit rerum minus culpa.', 1, 0, 'Odit quisquam repellendus quos et.', 'keywords', 'Libero soluta porro soluta beatae doloribus eius.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(16, '66535119', 'Trinity Miller', 60, 'https://lorempixel.com/640/480/?59459', 'Perferendis quos repudiandae corporis atque et laudantium. Animi nihil qui at at temporibus laborum. Aut amet est esse molestias quasi repellat assumenda. Sapiente sint et veritatis esse occaecati.', 1, 0, 'Ducimus nisi ut nostrum.', 'keywords', 'Non omnis asperiores impedit recusandae.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(17, '91271082', 'Franz Schiller', 38, 'https://lorempixel.com/640/480/?13094', 'Quidem natus perspiciatis velit aut aut quod eaque. Inventore vel error et minus temporibus asperiores. Eos in quam cupiditate sed eaque sapiente.', 1, 0, 'Quo in aliquam ea consequatur.', 'keywords', 'Ipsam nesciunt nesciunt alias sint necessitatibus minus et ut.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(18, '51679767', 'Keeley Jaskolski', 94, 'https://lorempixel.com/640/480/?29695', 'Rerum unde et at ea distinctio iure sed rem. Qui porro assumenda doloremque quod temporibus quibusdam sunt. Dignissimos eius optio repellat amet rerum. Qui culpa perspiciatis est.', 1, 0, 'Consequatur dolores quae blanditiis ex eaque laboriosam ratione.', 'keywords', 'Neque architecto deserunt enim id id.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(19, '16878624', 'Delbert Sauer', 55, 'https://lorempixel.com/640/480/?41683', 'Voluptates eveniet quidem neque vitae eos error. Aut quaerat est numquam est voluptas. Molestiae maxime dolor modi aut.', 1, 0, 'Sit voluptatum est laboriosam.', 'keywords', 'Neque ullam eum sequi fuga accusamus aliquid voluptates.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(20, '90381867', 'Sabrina Blick', 72, 'https://lorempixel.com/640/480/?38881', 'Tempora est omnis placeat dolor est. Deserunt blanditiis consequatur praesentium. Illo vel quibusdam omnis eos et officia.', 1, 0, 'Soluta voluptates veritatis possimus quisquam.', 'keywords', 'Consequatur magnam autem et nam quas.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(21, '21404412', 'Jeanne Harvey', 74, 'https://lorempixel.com/640/480/?77629', 'Molestiae harum facilis unde magnam. Nemo sit quisquam in neque et corporis incidunt. Quibusdam non necessitatibus ut aut velit laboriosam.', 1, 0, 'Et molestiae consequatur libero placeat ullam ut.', 'keywords', 'Eum similique quidem officia amet molestiae aut repellat.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(22, '52809101', 'Mr. Diamond Hill Jr.', 19, 'https://lorempixel.com/640/480/?16072', 'Libero minus nobis ut. Consectetur nisi eveniet qui omnis debitis. Dolorem est culpa omnis consectetur reiciendis. Ullam error occaecati quidem provident consectetur veritatis odio perspiciatis.', 1, 0, 'Ab exercitationem veritatis sit sit sequi.', 'keywords', 'Ipsam dolore doloribus et inventore quo inventore distinctio aut.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(23, '84910639', 'Davion Boehm', 85, 'https://lorempixel.com/640/480/?93272', 'Quidem unde voluptatibus impedit error incidunt consequatur in ut. Architecto est omnis consequuntur sed. Qui sed ut ut reiciendis voluptas cupiditate ipsam. Odio dolor magni ratione qui ipsam.', 1, 0, 'Ullam dolor mollitia sed minus.', 'keywords', 'Quasi recusandae placeat repellat tempore corrupti dicta.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(24, '37278762', 'Oceane Feil Jr.', 47, 'https://lorempixel.com/640/480/?71225', 'Enim eius voluptatem ut qui. Nihil reiciendis veniam facere non repudiandae odio sit. Sunt ut aperiam laborum numquam et sint hic.', 1, 0, 'Numquam ipsa non velit.', 'keywords', 'Similique reiciendis nostrum rerum qui aut animi exercitationem.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(25, '79242035', 'Rosamond Crooks', 70, 'https://lorempixel.com/640/480/?40941', 'Magni aspernatur animi quas recusandae delectus autem. Et voluptatem deserunt tempora voluptates. Est consectetur vitae sed quas eos. Sint voluptatem qui quo omnis sit.', 1, 0, 'Ducimus corporis voluptatum animi qui sequi ut.', 'keywords', 'Ea mollitia animi repellendus quos.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(26, '83396403', 'Mr. Santos Hamill V', 5, 'https://lorempixel.com/640/480/?22039', 'Nisi maxime ut asperiores ut animi mollitia. Quia rerum amet sunt omnis ut. Eius et mollitia commodi velit laudantium non.', 1, 0, 'Natus veritatis omnis consequuntur consequatur autem id et.', 'keywords', 'Magnam necessitatibus quis fugiat provident.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(27, '38741753', 'Nova Runte', 64, 'https://lorempixel.com/640/480/?98008', 'Corrupti assumenda voluptatem occaecati ducimus nihil ut voluptatem. Vel et est natus. Esse non et in nobis. Consequuntur eos enim quidem a consequatur reiciendis fuga.', 1, 0, 'Eligendi incidunt suscipit at soluta aut.', 'keywords', 'Porro sunt excepturi ea ad et et eaque.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(28, '05549986', 'Dr. Isaac Dach', 83, 'https://lorempixel.com/640/480/?20693', 'Quisquam eos ullam in rem qui doloribus. Et blanditiis delectus ut corporis quo qui reprehenderit accusantium. Ratione et voluptatem aut animi ut.', 1, 0, 'Perspiciatis quas perspiciatis inventore iure consequuntur officiis.', 'keywords', 'Ut eius non et in cumque aut.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(29, '14006050', 'Prof. Bennie Ward I', 82, 'https://lorempixel.com/640/480/?90764', 'Qui qui aut explicabo doloremque eaque cum. Labore dolorem ullam possimus amet qui iure est. Praesentium itaque placeat aut doloribus nulla. Voluptas vitae voluptas sapiente doloribus sed.', 1, 0, 'Dolores earum nostrum officia ex.', 'keywords', 'Perferendis commodi architecto ullam suscipit fugiat exercitationem et.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(30, '76812873', 'Krista Leffler', 46, 'https://lorempixel.com/640/480/?69760', 'Ut nesciunt ea ut recusandae. Voluptatem suscipit et est ut corrupti. Sed rem nam labore ipsam ipsum. Inventore animi autem et sunt.', 1, 0, 'Dolore consectetur numquam rem fuga consequatur earum.', 'keywords', 'Quisquam accusamus sed id maiores earum veniam repudiandae.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(31, '78640153', 'Kiana Johns', 85, 'https://lorempixel.com/640/480/?54124', 'Cupiditate provident optio nam minima labore doloribus. Fuga quod qui qui. Explicabo quia et est. Minus omnis suscipit facilis et est aliquid.', 1, 0, 'Ipsa odit dolores maiores iste qui molestiae.', 'keywords', 'Sed quod quia et quo animi et asperiores.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(32, '51463427', 'Giovanny Lind', 80, 'https://lorempixel.com/640/480/?81828', 'Ea aliquid beatae deserunt quos voluptatem est voluptatibus. Ut fugiat et laudantium est voluptatum accusamus tenetur sequi. Aut officia consequatur fugiat modi ullam et sed.', 1, 0, 'Non vero qui porro veritatis ipsa rerum et rerum.', 'keywords', 'Rerum nam similique itaque eaque non nihil qui.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(33, '84573667', 'Mrs. Joy Ratke DDS', 60, 'https://lorempixel.com/640/480/?46258', 'Fuga et ducimus ut animi ipsam sed quaerat. Ad quo voluptatum mollitia qui quam necessitatibus quia expedita. Architecto ducimus vitae quia qui rerum. Quos voluptatem velit nostrum vero itaque.', 1, 0, 'Eos voluptatem maxime et rerum commodi.', 'keywords', 'Error delectus ducimus dolorum quis laudantium quis.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(34, '41998564', 'Laron Effertz', 48, 'https://lorempixel.com/640/480/?60416', 'Fugiat id et et sed quod. Deserunt autem aspernatur fuga iure aut numquam. Et nesciunt ullam quidem expedita illum repellendus nulla.', 1, 0, 'Autem ipsum quia alias.', 'keywords', 'Adipisci tempora reiciendis reprehenderit id.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(35, '18074505', 'Prof. Ephraim Streich PhD', 11, 'https://lorempixel.com/640/480/?52186', 'Quam quia consequatur ut blanditiis culpa commodi. Laudantium quo natus sunt beatae laborum modi at. Saepe rerum quis est soluta minima tempore inventore.', 1, 0, 'Similique ad voluptas numquam aspernatur quia.', 'keywords', 'Et qui voluptates voluptatem sit repellendus et qui.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(36, '73044789', 'Beverly Smitham', 35, 'https://lorempixel.com/640/480/?49439', 'Labore quam dignissimos distinctio reprehenderit iure. Voluptas et ad saepe ut voluptas. Minus optio sunt et atque atque. Ducimus molestiae alias repellendus vero.', 1, 0, 'Consequatur quos et placeat exercitationem.', 'keywords', 'Laudantium numquam omnis iure harum sit dolor aut.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(37, '56028911', 'Carolina Jones', 68, 'https://lorempixel.com/640/480/?68379', 'Sit et quia culpa repudiandae beatae consequatur. Odit quaerat quas nemo ut laborum ipsa nobis.', 1, 0, 'Rerum laboriosam quia nesciunt placeat.', 'keywords', 'Voluptas repellat minus ut architecto consequuntur est.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(38, '80427810', 'Mr. Brice Morar', 14, 'https://lorempixel.com/640/480/?72181', 'Omnis sequi ullam qui sit dolor officiis ipsam. Repudiandae mollitia quia autem ut ut.', 1, 0, 'Rerum sit autem modi asperiores et esse corporis aperiam.', 'keywords', 'Quos doloribus porro repellendus officia error.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(39, '10321324', 'Lenny Marks', 50, 'https://lorempixel.com/640/480/?12278', 'Incidunt commodi illum et aut maiores fugiat. Consequatur quo nulla architecto eos quibusdam occaecati laudantium. Autem expedita consequatur asperiores et magnam. Distinctio id rerum commodi quia.', 1, 0, 'Aut qui est sequi consequatur molestiae excepturi nisi.', 'keywords', 'Vero sequi vel occaecati.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(40, '24059435', 'Mrs. Brittany Hackett IV', 89, 'https://lorempixel.com/640/480/?77292', 'Optio fugit sunt distinctio perferendis voluptatibus placeat. Fuga occaecati qui cum et deserunt qui. Est doloremque qui mollitia nesciunt accusantium.', 1, 0, 'Minus dolores accusamus ea sint praesentium quia.', 'keywords', 'Quia mollitia aut quis aliquam vel.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(41, '63646924', 'Caterina Wiegand', 24, 'https://lorempixel.com/640/480/?72490', 'Dicta non illum minus quia qui. Sint voluptas aspernatur optio ut labore. Ipsam dolorem libero sunt voluptatem alias voluptatem.', 1, 0, 'Rerum molestias maxime excepturi ex sint dicta enim beatae.', 'keywords', 'Esse aliquam nihil aut labore fuga ad et.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(42, '13981563', 'Marquise Spinka', 40, 'https://lorempixel.com/640/480/?34401', 'Laboriosam repellendus quas rerum aut nulla reprehenderit. Soluta architecto iusto id sed distinctio. Quia fugit iste voluptas ut labore error aut natus.', 1, 0, 'Enim quam aut adipisci temporibus.', 'keywords', 'Vel tenetur commodi sequi earum consequatur reiciendis reprehenderit.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(43, '82547530', 'Shayna Rogahn', 12, 'https://lorempixel.com/640/480/?29399', 'Fuga dolor molestias hic. Ea placeat et occaecati dolor rem amet minima ipsam. Aut quis qui minus pariatur. Eveniet omnis maxime est similique.', 1, 0, 'Molestiae nemo eos qui eaque.', 'keywords', 'Quas id ab et aliquam aut qui eos voluptas.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(44, '05380640', 'Dandre Kerluke', 98, 'https://lorempixel.com/640/480/?64587', 'Similique et voluptatem quia quod corporis recusandae. Id sunt labore recusandae dignissimos et nisi consequatur. Ut aut sint expedita nihil qui. Voluptatem ut molestias nam itaque illum.', 1, 0, 'Deserunt quaerat perferendis ea nisi molestias sed.', 'keywords', 'Ut veritatis libero voluptatem blanditiis occaecati totam.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(45, '57217895', 'Sandrine Bogisich DVM', 13, 'https://lorempixel.com/640/480/?80974', 'Quisquam sit perferendis tenetur blanditiis est natus. Et perspiciatis ad et provident vel. Excepturi pariatur et ipsa recusandae nihil cumque a ut.', 1, 0, 'Nobis quas ratione quia est cum voluptatum iste cumque.', 'keywords', 'Laborum laudantium labore exercitationem non.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(46, '70603217', 'Lupe Mayert', 87, 'https://lorempixel.com/640/480/?72923', 'Temporibus enim quasi aut voluptas nesciunt explicabo velit. Culpa qui aliquid officiis odit temporibus sed. Est deserunt excepturi doloribus.', 1, 0, 'Dolore et sunt non sed pariatur earum ut.', 'keywords', 'Natus tempore dignissimos tempore sequi non eos.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(47, '29998142', 'Lavern Ferry I', 72, 'https://lorempixel.com/640/480/?75374', 'Dolores expedita nam deleniti temporibus consequuntur accusamus aliquid doloremque. Ut consequatur alias qui et quos. Ut ipsum saepe a ratione. Explicabo provident sint quae laborum harum at.', 1, 0, 'Et id voluptates esse fugiat quis quis voluptatibus.', 'keywords', 'Eveniet est voluptate alias ex aperiam.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(48, '24053990', 'Twila Hahn', 97, 'https://lorempixel.com/640/480/?32657', 'Et amet quam ut nemo. Nobis sed recusandae eligendi qui consequatur praesentium atque. Pariatur corrupti corporis voluptatem provident facere odit.', 1, 0, 'Officiis modi expedita culpa hic omnis vero eligendi adipisci.', 'keywords', 'Reprehenderit expedita aut unde.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(49, '65096789', 'Mr. Clair Balistreri V', 36, 'https://lorempixel.com/640/480/?19712', 'Recusandae pariatur et qui nulla. Dicta debitis necessitatibus ut porro. Harum placeat sapiente possimus impedit quisquam.', 1, 0, 'Consequatur autem amet tenetur expedita tempora.', 'keywords', 'Iusto et harum laboriosam illum minima fugiat voluptates porro.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(50, '19105017', 'Lavon Wisoky', 55, 'https://lorempixel.com/640/480/?55538', 'Voluptatem facilis repellat beatae. Et nihil debitis dolorem nihil. Qui voluptates temporibus dolorem qui nihil.', 1, 0, 'Tempora corporis laborum hic.', 'keywords', 'Quo pariatur quaerat modi omnis impedit quo.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(51, '90809866', 'Patsy Runte', 28, 'https://lorempixel.com/640/480/?57078', 'Cum numquam qui aut officia eius velit deleniti. Odit ducimus ut consequuntur voluptates. Sit veniam labore qui ipsam molestiae. Odit perspiciatis nulla vel ducimus est enim est.', 1, 0, 'Quis aspernatur voluptas voluptas labore dolores.', 'keywords', 'Numquam officiis nulla ea et officiis autem incidunt eos.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(52, '56158052', 'Greta Kemmer', 63, 'https://lorempixel.com/640/480/?93314', 'Pariatur blanditiis dolores aspernatur ut quod. Consequatur officiis eveniet et quos corporis est inventore. Voluptatum in fuga magnam modi in.', 1, 0, 'Aliquid occaecati reprehenderit non.', 'keywords', 'Omnis quasi recusandae et et.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(53, '31215893', 'Opal Durgan III', 28, 'https://lorempixel.com/640/480/?16496', 'Eos odit enim sequi molestiae quia. Et voluptas incidunt omnis ea dolorum. Laudantium sunt ut fuga porro. Enim nostrum fuga nihil sint et deserunt.', 1, 0, 'Quo est esse consequatur eos et odio corrupti.', 'keywords', 'Esse repudiandae dolorem ipsam perspiciatis sed voluptas dicta.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(54, '60146885', 'Morris Cronin', 94, 'https://lorempixel.com/640/480/?25862', 'Ea laborum at odit eum quo ad. Accusamus aut sapiente id ab et. Vitae odit et eos assumenda eos doloremque.', 1, 0, 'Qui autem ipsa voluptas et sit mollitia.', 'keywords', 'Voluptatem ut molestias culpa optio qui ab.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(55, '10913888', 'Prof. Michaela Mueller', 99, 'https://lorempixel.com/640/480/?96906', 'Deserunt et voluptas est provident molestiae. Dolore voluptatem sed voluptatibus iste. Exercitationem officia deserunt ea consectetur quaerat reprehenderit eaque. Nulla libero aspernatur fugit esse.', 1, 0, 'Accusantium neque fugit error quis ut et.', 'keywords', 'Sunt tenetur eius sit et fugiat voluptas.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(56, '75710163', 'Ms. Jessica Carter PhD', 92, 'https://lorempixel.com/640/480/?40900', 'Ipsa nam neque et veniam. Ducimus voluptate aliquam maiores vel libero adipisci at. Voluptates earum velit voluptatem aperiam nostrum cumque. Eaque eum eum amet eius eum eaque nisi dolor.', 1, 0, 'Expedita vitae totam perferendis facere esse omnis.', 'keywords', 'Nihil sequi voluptatum quae dignissimos repudiandae ea nihil quaerat.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(57, '12510177', 'Addie Wiza', 91, 'https://lorempixel.com/640/480/?86751', 'Ullam omnis temporibus fugit at totam veritatis distinctio. Ipsum consectetur quaerat consequatur libero et beatae. Deleniti fugiat aut est soluta voluptate totam.', 1, 0, 'Nihil enim maxime nobis et.', 'keywords', 'Cumque enim distinctio deleniti rerum ut esse.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(58, '62039130', 'Mrs. Kaci Wuckert II', 64, 'https://lorempixel.com/640/480/?55070', 'Totam eos iste consequuntur eius sunt nulla. Eveniet et quo accusamus modi. Consequatur laborum laborum voluptate atque iste.', 1, 0, 'Velit sed voluptate dolorem qui debitis.', 'keywords', 'Eligendi in recusandae velit quis cumque.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(59, '83816154', 'Mr. Jacques Hintz IV', 45, 'https://lorempixel.com/640/480/?29957', 'Aut sit aut ut expedita. Sequi natus necessitatibus velit quae ut. Esse nobis maiores atque doloremque. Magnam sit voluptatum aut. Est amet soluta eius.', 1, 0, 'Quae quasi corrupti ut omnis maxime aut.', 'keywords', 'Cupiditate voluptatibus eaque facere ut qui est.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(60, '62788298', 'Amani Kunde', 36, 'https://lorempixel.com/640/480/?16756', 'Cum omnis qui consequatur perspiciatis ut eos. Enim veniam facilis omnis quis. Omnis et consectetur rem et.', 1, 0, 'Cumque fugiat veritatis quas amet.', 'keywords', 'In id enim vero officiis dolores.', '2021-08-25 23:14:52', '2021-08-25 23:14:52'),
(61, '64798820', 'Leopoldo Kling', 32, 'https://lorempixel.com/640/480/?87414', 'Cupiditate eum blanditiis modi veniam dolorem voluptas. Assumenda quis in neque aut reprehenderit. At non laborum et odit corrupti. Cumque eveniet excepturi quo corporis facere est dicta.', 1, 0, 'Eum consequatur nihil magnam.', 'keywords', 'Hic aut ut necessitatibus sunt.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(62, '82633370', 'Reece Jacobson', 27, 'https://lorempixel.com/640/480/?40223', 'Reprehenderit modi facilis nobis molestias hic consectetur ab. Neque necessitatibus iure delectus eius laboriosam excepturi ut. Id nisi ea possimus et laboriosam distinctio laboriosam nesciunt.', 1, 0, 'Iste dolor est consectetur expedita eaque et est.', 'keywords', 'Quis incidunt est veritatis repudiandae eum.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(63, '55946902', 'Prof. Khalid Dooley', 4, 'https://lorempixel.com/640/480/?54520', 'Velit qui dolorum totam. Fuga ullam asperiores recusandae ut tempore ab ratione.', 1, 0, 'Sed sed est maiores.', 'keywords', 'Non impedit voluptates veniam est.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(64, '57379104', 'Vernie Murphy Jr.', 50, 'https://lorempixel.com/640/480/?79197', 'Inventore perferendis dolor nemo hic non. Unde vel quas maxime ipsa aut deleniti qui. Similique molestias tenetur aut. Voluptas fugit molestiae id numquam aliquam.', 1, 0, 'Possimus incidunt ex in velit qui labore quo.', 'keywords', 'Et voluptatum ex quo esse sequi.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(65, '44469375', 'River Haley', 10, 'https://lorempixel.com/640/480/?39832', 'Voluptatem vel corporis minus explicabo quia dolore et consequatur. Vel nemo omnis omnis ullam quibusdam porro placeat. Vitae unde esse veritatis repellat. Saepe et quis qui nemo et eaque.', 1, 0, 'Quod non modi id quos sit ut.', 'keywords', 'Esse cum aut libero ratione alias atque quo impedit.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(66, '63387285', 'Prof. Lesley Lind', 70, 'https://lorempixel.com/640/480/?45661', 'Sit fugit libero est. In vel culpa dolor illo consectetur qui unde. Est saepe reprehenderit perspiciatis cum iste illum recusandae. Possimus deserunt reiciendis ea facere omnis tempore eveniet.', 1, 0, 'Sapiente totam error dolorum sed mollitia ut labore.', 'keywords', 'Nihil maxime maxime sed error consectetur laudantium maxime blanditiis.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(67, '12862290', 'Dax Metz', 83, 'https://lorempixel.com/640/480/?72079', 'Nobis et qui corporis eum eum. Doloribus quia quia eius libero saepe eveniet assumenda. Quia aut cumque officiis saepe. Sed vitae quaerat nobis eveniet dolorum dolorum assumenda.', 1, 0, 'Consequatur cumque numquam molestiae ut.', 'keywords', 'Accusamus quia mollitia aut asperiores error modi quae.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(68, '07677816', 'Ms. Flossie Walsh', 24, 'https://lorempixel.com/640/480/?37693', 'Ratione cumque dolorum molestiae aut impedit dolorem et commodi. Ea qui molestias nobis ullam. Voluptas libero atque quam. Repellat voluptas enim cupiditate autem modi dolores tenetur doloribus.', 1, 0, 'Quas dignissimos necessitatibus sed aliquid nulla consequatur.', 'keywords', 'Dolores in cum sapiente.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(69, '01314359', 'Dandre Buckridge', 54, 'https://lorempixel.com/640/480/?88542', 'Expedita quos nostrum quo aperiam repellat molestiae debitis. Soluta asperiores esse iusto fugiat error alias dolores. Sed eaque eius quam quod voluptates sint nesciunt in.', 1, 0, 'Est sapiente voluptas adipisci quia.', 'keywords', 'Expedita ea et alias.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(70, '86468428', 'Easter Kovacek', 83, 'https://lorempixel.com/640/480/?83127', 'Ea et qui voluptatem maxime repudiandae voluptatem. Ratione placeat necessitatibus aut. Praesentium sint voluptatem omnis cupiditate fugiat debitis tempora ut.', 1, 0, 'Nobis qui fugit occaecati sit aliquam.', 'keywords', 'Dicta omnis omnis blanditiis deleniti facilis eum.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(71, '53171115', 'Stefanie Sanford', 5, 'https://lorempixel.com/640/480/?67805', 'In quasi ad maxime optio debitis voluptatem minima et. Enim enim optio ratione ut. Reiciendis rerum aut pariatur eos. Molestiae quasi saepe tempora debitis.', 1, 0, 'Occaecati enim ut nisi et quis.', 'keywords', 'Voluptatem et facere voluptas voluptatibus amet.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(72, '73137948', 'Demarcus Kuphal', 50, 'https://lorempixel.com/640/480/?64600', 'Voluptates sint architecto hic. Odit dolorum fugiat ea aut sequi incidunt. Omnis facere occaecati sed voluptates dolor sit quidem.', 1, 0, 'Suscipit id tenetur quia dignissimos aut sit doloremque.', 'keywords', 'Beatae rerum vel veniam vel voluptatem possimus.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(73, '73564010', 'Willie Effertz DVM', 4, 'https://lorempixel.com/640/480/?83059', 'Expedita et qui numquam qui et delectus sed adipisci. Recusandae reiciendis vitae quia excepturi impedit sed. Labore aliquid rem voluptate dolores in esse est qui.', 1, 0, 'Quibusdam reprehenderit sint accusamus minima voluptate molestiae.', 'keywords', 'Id eos aperiam et quasi necessitatibus aperiam quia facilis.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(74, '69615771', 'Ms. Nina Crooks DVM', 30, 'https://lorempixel.com/640/480/?42804', 'Et sed quo consequuntur dolores eius. Sit saepe quae est sequi pariatur aliquam occaecati. Saepe eum ducimus dolore aspernatur nesciunt est. Consequatur quaerat et sunt eveniet nulla quia esse.', 1, 0, 'Id esse facilis et facere.', 'keywords', 'Voluptatem ut iste et officiis quae.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(75, '50248643', 'Prof. Retha Dare Jr.', 80, 'https://lorempixel.com/640/480/?97490', 'Laudantium ut similique totam dignissimos. Ipsum ipsa commodi dolor ducimus. Beatae numquam id doloribus temporibus. Et illo ut placeat sed.', 1, 0, 'Ducimus temporibus ea beatae voluptatem.', 'keywords', 'Aut debitis ratione aliquid autem omnis eaque sit.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(76, '66773788', 'Mr. Gerard Moore', 15, 'https://lorempixel.com/640/480/?33374', 'Voluptas earum qui tempora rerum. Ut est qui vel sed omnis quaerat ut. Impedit accusantium distinctio aut veniam. In iste omnis mollitia.', 1, 0, 'Recusandae hic blanditiis corporis necessitatibus.', 'keywords', 'Dolores voluptates est quis est.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(77, '25216509', 'Reese Franecki IV', 84, 'https://lorempixel.com/640/480/?98162', 'Illo perspiciatis voluptas similique illum alias dolorum incidunt. Libero sequi maiores et nulla. Laudantium quo aut molestias repudiandae dolorem voluptatem.', 1, 0, 'Officiis inventore et sint occaecati.', 'keywords', 'Tempore ducimus reiciendis corporis dolore porro.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(78, '12878512', 'Madalyn Waelchi', 18, 'https://lorempixel.com/640/480/?61850', 'Commodi ut esse illo repellendus. Itaque numquam odit voluptas.', 1, 0, 'Ut ut error et suscipit omnis reiciendis omnis autem.', 'keywords', 'Blanditiis magni culpa nam vel voluptate sunt enim.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(79, '12894123', 'Jules Altenwerth', 16, 'https://lorempixel.com/640/480/?36402', 'Quia aut voluptas repellat labore dolores quae ducimus. Libero distinctio doloremque fuga rerum tenetur. Quia et tenetur labore.', 1, 0, 'Recusandae est quae dolor nam mollitia.', 'keywords', 'Id ipsum voluptas ad ut assumenda sed.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(80, '01410273', 'Korbin O\'Keefe MD', 16, 'https://lorempixel.com/640/480/?30953', 'Sed dolorum explicabo aut quis incidunt nobis. Quia amet ad aut ut deleniti harum sit aut. Autem quidem eligendi deserunt molestias.', 1, 0, 'Maxime amet alias et autem omnis earum officia.', 'keywords', 'Consequatur fuga et voluptatem cupiditate voluptas inventore tenetur.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(81, '25014198', 'Gudrun Hettinger', 29, 'https://lorempixel.com/640/480/?33280', 'Nihil itaque ut non et. Non modi atque et ipsum et reprehenderit est magnam. Dignissimos non maxime molestiae ea.', 1, 0, 'Possimus veritatis deleniti libero repudiandae.', 'keywords', 'Illo facilis rerum sed esse quia inventore debitis rerum.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(82, '98352340', 'Dr. Brooks Crona', 89, 'https://lorempixel.com/640/480/?30733', 'Autem qui vel deleniti natus sapiente molestiae autem. Quod quia officia sapiente at quas est dolorum veniam.', 1, 0, 'Molestiae qui et laboriosam eius quos aspernatur sed error.', 'keywords', 'Neque autem at dolorem.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(83, '59516538', 'Mr. Marquis Lemke', 36, 'https://lorempixel.com/640/480/?68196', 'Non sequi et esse tempore modi eum quo. Eos quibusdam non dolorem ipsa. Voluptates et consequatur commodi voluptatem ducimus consequuntur. Et dolor vitae et ab delectus.', 1, 0, 'Aspernatur harum fugit commodi architecto ad repellat.', 'keywords', 'Quae accusamus molestias est ipsam fuga cupiditate.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(84, '10668542', 'Prof. Ceasar Rath', 72, 'https://lorempixel.com/640/480/?23147', 'Deserunt quibusdam aut totam. Consequatur corrupti vel ratione dolores delectus expedita. Id omnis nihil officiis in nemo. Adipisci molestias nostrum aut corporis.', 1, 0, 'Nam culpa molestias commodi placeat dolorem reiciendis.', 'keywords', 'Porro amet qui aliquid nihil.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(85, '61908796', 'Gilberto Gaylord', 72, 'https://lorempixel.com/640/480/?45203', 'Sapiente voluptatem non quia. Occaecati repellendus omnis sit modi repellendus provident. Eaque aspernatur exercitationem dolorum ipsam culpa porro deleniti.', 1, 0, 'Ea et minus et dignissimos rerum.', 'keywords', 'Voluptate tempore in illum tempore qui explicabo.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(86, '96425053', 'Prof. Bailey Waters', 34, 'https://lorempixel.com/640/480/?33039', 'Doloremque sit doloribus quia autem excepturi. In sunt occaecati et omnis et sapiente. Placeat voluptatem cumque neque aliquid ex error. Non ullam dignissimos quia deserunt tempora iste.', 1, 0, 'Eum facilis sed qui aut accusantium culpa.', 'keywords', 'Ab dolor qui sit praesentium in.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(87, '73991748', 'Wellington Willms', 46, 'https://lorempixel.com/640/480/?58059', 'Saepe aspernatur asperiores nobis ducimus nemo. Quis soluta nihil possimus exercitationem provident. Ut fuga iure excepturi enim. Omnis quae provident iusto non velit.', 1, 0, 'Tempore atque dolorem quas.', 'keywords', 'Ut neque sint earum corrupti minus nihil.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(88, '27183724', 'Myrtis Koepp Jr.', 3, 'https://lorempixel.com/640/480/?60287', 'Aspernatur amet rerum quidem repellendus. Facilis reiciendis nihil quis rerum voluptates blanditiis. Ut et quis aut qui. Numquam molestiae eos eos nihil enim.', 1, 0, 'Et qui voluptatibus fugit voluptas.', 'keywords', 'Omnis voluptas aperiam incidunt sit omnis.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(89, '28086543', 'Althea Powlowski', 60, 'https://lorempixel.com/640/480/?29635', 'Beatae nihil vel porro repudiandae. Nemo ab aperiam dolorem unde architecto cum. Necessitatibus repellat beatae sit sint iure. Corporis eveniet ut animi consequatur voluptatibus amet.', 1, 0, 'Quos blanditiis et voluptate qui ad aut.', 'keywords', 'Quis aut ut laboriosam repudiandae.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(90, '14304323', 'Colin Hermiston', 38, 'https://lorempixel.com/640/480/?94572', 'Enim qui in sed doloremque non temporibus sed. Mollitia tenetur cum autem explicabo. Voluptatum atque iusto commodi ullam.', 1, 0, 'Assumenda accusantium quia aut vero sequi sint.', 'keywords', 'Voluptatem nesciunt repellat laudantium unde voluptas et.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(91, '01734935', 'Bennie Daugherty I', 99, 'https://lorempixel.com/640/480/?49602', 'Sapiente sed ipsa voluptas doloremque. Quia quia sed adipisci voluptatem. Magnam laudantium et quis libero sit.', 1, 0, 'Et quo in non ex ratione.', 'keywords', 'Voluptatibus soluta ullam voluptatum quo.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(92, '93246392', 'Eddie Walsh', 73, 'https://lorempixel.com/640/480/?53099', 'Ducimus voluptates illo ea modi qui maxime molestiae. Harum facilis et nobis error dicta. Aut nihil sed repudiandae.', 1, 0, 'Ut placeat voluptatem qui asperiores eum consequatur.', 'keywords', 'Dolorum sed illum saepe rerum quo.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(93, '96704707', 'Miss Trisha Haley', 97, 'https://lorempixel.com/640/480/?96909', 'Saepe porro voluptatem repudiandae eum facilis. Maiores rem aut magnam optio. Qui omnis et porro nemo consequatur non.', 1, 0, 'Alias modi cupiditate velit dolore pariatur corporis.', 'keywords', 'Fuga labore eius quo sed animi vel officia.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(94, '19368986', 'Frances Watsica', 96, 'https://lorempixel.com/640/480/?37642', 'Sunt iusto totam numquam ut modi quaerat ad. Est et est et delectus exercitationem. Iure tempore expedita impedit tempore perferendis dicta. Quo incidunt ut rerum rerum numquam ea rerum.', 1, 0, 'Autem est iste distinctio beatae.', 'keywords', 'Autem quibusdam quaerat similique voluptates voluptatem molestiae ut.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(95, '26294940', 'Immanuel Pouros', 55, 'https://lorempixel.com/640/480/?87596', 'Dolor veniam est minus inventore qui earum. Hic laborum et architecto et non amet quidem. Dolore rerum odit deserunt nisi.', 1, 0, 'Nobis ut aut officiis corrupti.', 'keywords', 'Aut sint et magni quia ut dolorum at.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(96, '12323081', 'Zola Emard', 47, 'https://lorempixel.com/640/480/?53206', 'Id excepturi quam rerum quasi natus neque dolor. Reprehenderit ratione est quibusdam tempora dolorem. Laudantium animi ut deleniti et voluptatem a.', 1, 0, 'Illum dolores molestiae nobis qui aut.', 'keywords', 'Pariatur ipsam ut corrupti beatae delectus aspernatur consequuntur.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(97, '98716890', 'Susana Lemke', 78, 'https://lorempixel.com/640/480/?31546', 'Nostrum commodi molestiae ut. Id dolor illo voluptas corporis. Consectetur laborum ut consequatur. Neque velit nemo dolore ad a nostrum enim quod. Qui nihil fugit et occaecati.', 1, 0, 'Occaecati deserunt unde enim qui reiciendis aperiam fugiat molestiae.', 'keywords', 'Nisi consectetur vel nemo cupiditate vero dignissimos ratione.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(98, '50441105', 'Tyree Kiehn', 73, 'https://lorempixel.com/640/480/?21210', 'Aut quo maxime saepe deserunt numquam eum. Dolore rerum iure rem quibusdam aliquam et. Facere aut animi non.', 1, 0, 'Numquam reiciendis doloribus est expedita et.', 'keywords', 'Laborum voluptas cum nulla dicta dolorem dignissimos quas.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(99, '34371541', 'Mr. Fred Stokes V', 42, 'https://lorempixel.com/640/480/?84714', 'Blanditiis est sunt officia. Nihil laborum voluptatem incidunt. Eos ut consectetur non vel.', 1, 0, 'Sint ex animi omnis et id dolores libero.', 'keywords', 'Et doloremque laudantium reprehenderit ut corporis in nihil.', '2021-08-25 23:14:53', '2021-08-25 23:14:53'),
(100, '47890343', 'Gia Aufderhar', 63, 'https://lorempixel.com/640/480/?89595', 'Sed quidem qui et velit excepturi. Aut possimus autem id placeat. Corporis quas ut sunt esse optio.', 1, 0, 'Maiores corrupti ut nam ad quis ullam.', 'keywords', 'Nihil sint natus excepturi expedita id rerum voluptatem.', '2021-08-25 23:14:53', '2021-08-25 23:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `cates`
--

CREATE TABLE `cates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table` char(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'products',
  `img` text COLLATE utf8mb4_unicode_ci,
  `desc` longtext COLLATE utf8mb4_unicode_ci,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `feature` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sum` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cates`
--

INSERT INTO `cates` (`id`, `name`, `table`, `img`, `desc`, `enable`, `feature`, `title`, `keyword`, `sum`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'users', 'https://lorempixel.com/640/480/?21260', 'Ea ducimus fuga veritatis qui ea. Aut nulla consequatur ab voluptate est asperiores. Ipsam esse beatae ea nihil.', 1, 0, 'Inventore vel accusantium temporibus repellendus reprehenderit eaque cumque.', 'keywords', 'Dolores eum dolores omnis saepe veniam.', '2021-08-29 00:25:26', '2021-08-29 00:25:26'),
(2, 'Moderator', 'users', 'https://lorempixel.com/640/480/?61668', 'Deleniti cum et ut molestias et. Est vero non qui aut. Velit labore dolor eos qui veritatis. Sed aut id occaecati rerum quaerat illo.', 1, 0, 'Possimus eum quo rerum sit autem.', 'keywords', 'Quia quia est voluptatem sit.', '2021-08-29 00:25:26', '2021-08-29 00:25:26'),
(3, 'Staff', 'users', 'https://lorempixel.com/640/480/?57826', 'Ex vero architecto explicabo aliquam molestias minima. Accusantium blanditiis voluptatum quia possimus. Eius ut qui magni laborum id a. Et sint sed vitae sit. Tenetur veritatis et id itaque.', 1, 0, 'Sequi deleniti non accusamus explicabo suscipit.', 'keywords', 'Sit maxime commodi et sint.', '2021-08-29 00:25:27', '2021-08-29 00:25:27'),
(4, 'Customer', 'users', 'https://lorempixel.com/640/480/?37501', 'Sed quos dignissimos recusandae placeat dolores aut. Rerum laborum necessitatibus ipsum eius voluptas explicabo et.', 1, 0, 'Harum fugiat occaecati magnam vero.', 'keywords', 'Expedita quaerat eveniet similique atque nobis et.', '2021-08-29 00:25:27', '2021-08-29 00:25:27'),
(5, 'Ghế', 'products', 'https://lorempixel.com/640/480/?49738', 'Consectetur vel unde architecto incidunt eos aliquid tempora. Nesciunt ipsum molestias atque ut harum veritatis molestiae. Quis officia dolor beatae nulla est atque reiciendis.', 1, 0, 'Aliquid labore animi labore.', 'keywords', 'Architecto totam facere aut delectus eum consectetur.', '2021-08-29 00:25:27', '2021-08-29 00:25:27'),
(6, 'Bàn', 'products', 'https://lorempixel.com/640/480/?99790', 'Odit similique facilis adipisci omnis corporis. Eveniet distinctio explicabo est distinctio voluptatem. Quae quibusdam odio non ut. Non eum vel dolor architecto molestias.', 1, 0, 'Dolores mollitia eos rerum debitis sequi nesciunt quis.', 'keywords', 'Assumenda porro consequatur et et.', '2021-08-29 00:25:27', '2021-08-29 00:25:27'),
(7, 'Giường', 'products', 'https://lorempixel.com/640/480/?10654', 'Nobis temporibus ab debitis repellat temporibus porro. Molestiae eos velit ut illo et doloremque aut. Consequatur voluptates consequuntur ea sint sapiente.', 1, 0, 'Nobis deleniti occaecati rerum ex.', 'keywords', 'Necessitatibus sed voluptatum nemo pariatur neque vel.', '2021-08-29 00:25:27', '2021-08-29 00:25:27'),
(8, 'Sofa', 'products', 'https://lorempixel.com/640/480/?98411', 'Voluptatum quod id officia. Eius quo neque excepturi autem autem. Dicta ex et error dolores in consequatur.', 1, 0, 'Repellendus culpa error et quia vel non deserunt.', 'keywords', 'Et ab quaerat quis modi ut.', '2021-08-29 00:25:27', '2021-08-29 00:25:27'),
(9, 'Blog', 'articles', 'https://lorempixel.com/640/480/?27127', 'Eos vel reiciendis autem nihil ut omnis est. Fuga et architecto perferendis. Qui itaque voluptatem culpa nihil.', 1, 0, 'Qui tenetur sunt eius ipsam velit officia at.', 'keywords', 'Magni ut maxime id iure eos ut qui.', '2021-08-29 00:25:27', '2021-08-29 00:25:27'),
(10, 'Document', 'articles', 'https://lorempixel.com/640/480/?17261', 'Qui dolorum cum earum perferendis. Ut dolores et tempora. Voluptates eum rem voluptas incidunt. Totam sed maiores ad labore ut aut impedit.', 1, 0, 'Nesciunt ut eius et tenetur ea qui porro.', 'keywords', 'Molestias esse atque sunt aut vel.', '2021-08-29 00:25:27', '2021-08-29 00:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `partner_id` int(10) DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `partner_id`, `fullname`, `address`, `position`, `tel`, `phone`, `email`, `note`, `created_at`, `updated_at`) VALUES
(52, NULL, 'Ms. Hoa', 'Số 9, Đường số 44, Phường 14, Quận Gò Vấp', NULL, '0983899409', NULL, 'hoangtam2507@gmail.com', NULL, '2020-08-19 15:14:00', '2020-08-19 15:14:00'),
(54, NULL, 'Chị Thơm', '296 Trung Thắng, Bình Thắng, Dĩ An, Bình Dương', 'Kế toán', '0931348246', NULL, 'trinhvyxuannga@gmail.com', '<p>Số điện thoại zalo: 0988 173 679</p>\n\n<p>Địa chỉ cụ thể đặt grab:&nbsp;https://www.google.com/maps?q=10.9000648,106.8147329&amp;z=14&amp;t=m&amp;mapclient=embed</p>', '2020-08-31 10:06:06', '2020-08-31 10:06:06'),
(55, NULL, 'CAO THỊ MINH NGUYỆT', 'TẦNG 43A, TÒA NHÀ BITEXCO, 02 HẢI TRIỀU PHƯỜNG BẾN NGHÉ QUẬN 1 THÀNH PHỐ HCM.', 'Sourcing Staff', '+84 7777 00 324', NULL, 'nguyetctm@aacorporation.com', '<p>MINH NGUYỆT( PH&Ograve;NG MUA H&Agrave;NG- AADH)<br />\nCTY CP XD KIẾN TR&Uacute;C AA<br />\nTẦNG 43A, T&Ograve;A NH&Agrave; BITEXCO, 02 HẢI TRIỀU PHƯỜNG BẾN NGH&Eacute; QUẬN 1 TH&Agrave;NH PHỐ HCM.</p>', '2020-10-21 10:58:22', '2020-10-21 10:58:22'),
(56, NULL, 'Lê Tấn Lợi', NULL, 'Tender Executive', '0906758568', NULL, 'loi.le@alliancevn.com', NULL, '2020-10-26 08:56:56', '2020-10-26 08:56:56'),
(57, NULL, 'Lê Thị Mĩ Li', NULL, NULL, '0982789757', NULL, 'muiflkg@gmail.com', NULL, '2020-10-26 09:02:48', '2020-10-26 09:02:48'),
(58, NULL, 'Nguyễn Viết Sơn', NULL, 'Giám đốc', '0933207889', NULL, 'sonnguyenviet7889@gmail.com', NULL, '2020-10-26 16:45:07', '2020-10-26 16:45:07'),
(59, NULL, 'Ms Thảo', '215B16 Nguyễn Văn Hưởng, Phường Thảo Điền, Quận 2, TP Hồ Chí Minh', NULL, '0938601286', NULL, 'dothanhthaokt@gmail.com', NULL, '2020-11-03 13:23:55', '2020-11-03 13:31:59'),
(60, NULL, 'Mr Toàn', 'Đường số 4, Định Hòa, Thủ Dầu Một, Bình Dương', NULL, '0937003392, 0939274085', NULL, 'toan.noithatthienan@gmail.com', NULL, '2020-11-03 13:36:20', '2020-11-03 13:36:20'),
(61, NULL, 'Ms Nhung', 'Đức Hòa , Long An', NULL, '0908157451', NULL, 'nhung.wintec@gmail.com', NULL, '2020-11-03 13:38:15', '2020-11-03 13:38:15'),
(62, NULL, 'Mr Dũng - Composite', 'Quận 9', NULL, '0913897762', NULL, 'haiduongfrp@gmail.com', NULL, '2020-11-03 13:44:46', '2020-11-03 13:44:46'),
(63, NULL, 'Mr Kiên', NULL, NULL, '0974496726', NULL, 'Trantrungkien.nt@gmail.com', NULL, '2020-11-03 13:48:58', '2020-11-03 13:48:58'),
(64, NULL, 'Ms Yến', NULL, NULL, '0908799339', NULL, 'yen.ntp@minhhuyhoang.vn', NULL, '2020-11-03 13:49:45', '2020-11-03 13:49:45'),
(65, NULL, 'Ms Quân', NULL, NULL, '0916393586', NULL, 'nhgianhi@gmail.com', NULL, '2020-11-03 13:54:56', '2020-11-03 13:54:56'),
(66, NULL, 'Mr Vinh', NULL, NULL, '0913797454', NULL, 'ngdgmgmkjhgjk@gmail.com', NULL, '2020-11-03 14:16:08', '2020-11-03 14:16:08'),
(67, NULL, 'Ms Hương', NULL, NULL, '0938679267', NULL, 'nhomngoisaoct@gmail.com', NULL, '2020-11-03 14:18:15', '2020-11-03 14:18:15'),
(68, NULL, 'Mr Găng', NULL, NULL, '0909349333', NULL, 'gang.tongvan@vietdanplastic.com', NULL, '2020-11-03 14:19:03', '2020-11-03 14:19:03'),
(69, NULL, 'Ms Chi', NULL, NULL, '0941969398', NULL, 'nguyenchi.kwt@gmail.com', NULL, '2020-11-03 14:25:26', '2020-11-03 14:25:26'),
(70, NULL, 'Mr Mạnh Tuyên', NULL, NULL, '0986630495', NULL, 'tuyen.vipora@gmail.com', NULL, '2020-11-03 14:26:52', '2020-11-03 14:26:52'),
(71, NULL, 'Ms Huyền', '10/21 ấp 4,xã Đông Thạnh,huyện Hóc Môn,TP.HCM', NULL, '0908283966', NULL, 'kinhluan1909@gmail.com', NULL, '2020-11-03 14:30:28', '2020-11-03 14:30:28'),
(72, NULL, 'Ms Phụng', '65 đường Nguyễn Du, Phường Bến Nghé, Quận 1, Tp.HCM, Việt Nam', 'Procurement Excutive', '0932 923 986', NULL, 'phung.lungoc@novaland.com.vn', NULL, '2020-11-03 14:33:18', '2020-11-03 14:33:18'),
(73, NULL, 'Phùng Thị Phương Linh', '65 Nguyen Du Street, Ben Nghe Ward, District 1, HCMC, Viet Nam', 'Procurement Department (PRO)', '0936552257', NULL, 'linh.phungthiphuong@novaland.com.vn', NULL, '2020-11-03 14:37:23', '2020-11-03 14:37:23'),
(74, NULL, 'Nguyễn Thanh Hải (Mr)', '65 đường Nguyễn Du, Phường Bến Nghé, Quận 1, Tp.HCM, Việt Nam', 'BU Procurement Dept', '0912699816', NULL, 'hai.nguyenthanh2@novaland.com.vn', NULL, '2020-11-03 14:38:59', '2020-11-03 14:38:59'),
(75, NULL, 'Đinh Mạnh Quân ( Quân nhỏ )', NULL, 'Quantity Surveyor', '0776774018', NULL, 'quandm@bohodecor.vn', NULL, '2020-11-03 14:44:18', '2020-11-03 14:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_24_080028_create_products_table', 1),
(5, '2021_08_25_052843_create_articles_table', 1),
(6, '2021_08_25_053018_create_cates_table', 1),
(13, '2021_09_04_073044_create_quotation_table', 2),
(14, '2021_09_04_082612_create_quotation_details_table', 2),
(15, '2021_09_07_065335_create_sessions_table', 3),
(16, '2021_09_22_064932_create_tranfers_table', 4),
(17, '2021_09_22_074854_create_payments_table', 4),
(18, '2021_09_22_075624_create_table_accounts', 5),
(19, '2021_09_26_060129_create_project_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) DEFAULT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `representativeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxCode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `cate_id`, `sku`, `type`, `companyName`, `shortName`, `representativeName`, `taxCode`, `address`, `phone`, `email`, `note`, `created_at`, `updated_at`) VALUES
(1, NULL, 'KH.0001', 'KH', 'CÔNG TY TNHH XÂY DỰNG VÀ THƯƠNG MẠI LIÊN MINH', 'ALLIANCE CONSTRUCTION AND TRADING COMPANY LIMITED', 'Lâm Công Tín', '0304317552', '56 - 58 Đường D3, Phường 25, Quận Bình Thạnh, TP Hồ Chí Minh', '0838992759', NULL, NULL, '2020-05-19 09:44:54', '2020-05-19 09:44:54'),
(2, NULL, 'KH.0002', 'KH', 'CÔNG TY TNHH NỘI THẤT NEM', 'NEM FURNITURE  CO., LTD', 'Phạm Thanh Tuấn', '0305901922', '103D/32/8 Lê Văn Thọ, Phường 8, Quận Gò Vấp, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-05-19 09:46:15', '2020-05-19 09:46:15'),
(3, NULL, 'KH.0003', 'KH', 'CÔNG TY CỔ PHẦN XÂY DỰNG KIẾN TRÚC AA', 'CÔNG TY AA', 'OOI WEE TAT', '0302166869', 'Tòa Nhà Bitexco Financial Tower,Tầng 43A, 02 Hải Triều, Phường Bến Nghé, Quận 1, TP Hồ Chí Minh', '02862875111', NULL, NULL, '2020-05-19 09:47:24', '2020-05-19 09:47:24'),
(4, NULL, 'KH.0004', 'KH', 'CÔNG TY CỔ PHẦN TRANG TRÍ NỘI THẤT AND', 'AND DECOR', 'Huỳnh  Hữu  Đức', '0307638089', 'Lầu 7 Tòa nhà số 34A Phạm Ngọc Thạch, Phường 06, Quận 3, TP Hồ Chí Minh', '02838227135', NULL, NULL, '2020-05-19 09:48:20', '2020-05-19 09:48:20'),
(5, NULL, 'KH.0005', 'KH', 'CÔNG TY TRÁCH NHIỆM HỮU HẠN THƯƠNG MẠI DỊCH VỤ HẢI SẢN ĐẠI LONG', 'DAI LONG SEAFOOD', 'Trần Ngọc Hùng', '0312616299', 'Số G23 Đường D3, Khu Tái định cư 10 Ha, phường Tân Thới Nhất, Quận 12, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-05-19 09:48:42', '2020-05-19 09:48:42'),
(6, NULL, 'KH.0006', 'KH', 'CÔNG TY TNHH ROCHDALE SPEARS', 'ROCHDALE SPEARS CO., LTD', 'Hoàng Yến', '3700370643', 'Khu phố Đông Ba, Phường Bình Hòa, TX Thuận An, Bình Dương', '06503782323', NULL, NULL, '2020-05-19 09:49:08', '2020-05-19 09:49:08'),
(7, NULL, 'KH.0007', 'KH', 'CÔNG TY CỔ PHẦN XÂY DỰNG FICONS', 'FICONS', 'Trương Văn Tâm', '0311520805', '231, 233 (Lầu 6), Đường Lê Thánh Tôn, Phường Bến Thành, Quận 1, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-05-19 09:49:34', '2020-05-19 09:49:34'),
(8, NULL, 'KH.0008', 'KH', 'CÔNG TY TNHH SẢN XUẤT THƯƠNG MẠI DỊCH VỤ HHLDECOR', 'HHLDECOR CO.,LTD', 'Lâm Công Huy', '0312533613', '119 Chu Văn An, Phường 26, Quận Bình Thạnh, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-05-19 13:45:19', '2020-05-19 13:45:19'),
(9, NULL, 'KH.0009', 'KH', 'CÔNG TY CỔ PHẦN AN ÁNH HÙNG', 'AAH CORPORATION', 'Lê Trọng Nhân', '0304048211', '178D Hai Bà Trưng, Phường Đa Kao, Quận 1, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-05-19 13:45:58', '2020-05-19 13:45:58'),
(10, NULL, 'KH.0010', 'KH', 'CÔNG TY TNHH 4C DECOR', '4C DECOR CO.,LTD', 'Trà Thanh Thụy Thu Hằng', '0310276921', '229/50/21 Tây Thạnh, Phường Tây Thạnh, Quận Tân phú, TP Hồ Chí Minh', '0839919926', NULL, NULL, '2020-05-19 13:46:24', '2020-05-19 13:46:24'),
(11, NULL, 'KH.0011', 'KH', 'CÔNG TY CỔ PHẦN THƯƠNG MẠI DỊCH VỤ AN BA', 'AN BA TRADING SERVICE JOINT STOCK COMPANY', 'Lê Phương Thanh', '0302187717', '60 Xuân Diệu, Phường 4, Quận Tân Bình, TP Hồ Chí Minh', '028 39205060', NULL, NULL, '2020-05-19 13:47:38', '2020-05-19 13:47:38'),
(12, NULL, 'KH.0012', 'KH', 'CÔNG TY CỔ PHẦN XÂY DỰNG LÂM HOÀNG ANH', 'LHA.,JSC', 'Đỗ Văn Hiểu', '0102363242', 'Số 215 đường Thạch Bàn, Phường Thạch Bàn, Quận Long Biên, Hà Nội', NULL, NULL, NULL, '2020-05-19 13:51:19', '2020-05-19 13:51:19'),
(13, NULL, 'KH.0013', 'KH', 'CÔNG TY CỔ PHẦN THƯƠNG MẠI - XÂY DỰNG TRANG TRÍ NỘI THẤT RADIANT', 'RAD CORP', 'Huỳnh Gia Bảo', '0315509312', 'Số 58 Võ Thị Sáu, Phường Tân Định, Quận 1, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-05-19 13:51:59', '2020-05-19 13:51:59'),
(14, NULL, 'KH.0014', 'KH', 'CÔNG TY TNHH SẢN XUẤT- THƯƠNG MẠI- XUẤT NHẬP KHẨU NỘI THẤT TLT', 'TLT LIMITED COMPANY', 'Nguyễn Vũ Thúy Thanh', '3702742375', 'Số 45/15a, Khu phố Đông Chiêu, PhườngTân Đông Hiệp, TX Dĩ An, Bình Dương', NULL, NULL, NULL, '2020-05-20 09:43:04', '2020-05-20 09:43:04'),
(15, NULL, 'KH.0015', 'KH', 'CÔNG TY TNHH SẢN XUẤT & THƯƠNG MẠI HẢI KIM MINH', 'HAI KIM MINH M&T CO.,LTD', 'Võ Văn Lành', '3702560618', 'Số 267, ấp An Mỹ, Xã An Sơn, TX Thuận An, Bình Dương', NULL, NULL, NULL, '2020-05-20 09:43:43', '2020-05-20 09:43:43'),
(16, NULL, 'KH.0016', 'KH', 'CÔNG TY TNHH KIẾN TRÚC NỘI THẤT MAY MẮN', 'MM ARCHITECT CO.,LTD', 'Bùi Thị Hoàng Hải', '0302332058', '50/47 Nhất Chi Mai - Phường 13 - Quận Tân Bình - TP Hồ Chí Minh.', '0835901686', NULL, NULL, '2020-10-27 16:09:11', '2020-10-27 16:09:11'),
(17, NULL, 'KH.0017', 'KH', 'VĂN PHÒNG ĐẠI DIỆN TẠI THÀNH PHỐ HỒ CHÍ MINH CÔNG TY TNHH BOHO DECOR', 'BOHO Decor', 'Nguyễn Minh Hoàng', '0313382614-004', '40 Phạm Ngọc Thạch, Phường 06, Quận 3, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-05-20 09:44:20', '2020-09-03 09:38:24'),
(18, NULL, 'KH.0018', 'KH', 'CÔNG TY TNHH SẢN XUẤT THƯƠNG MẠI DỊCH VỤ XÂY DỰNG KHANG', 'KHANG Interior', 'Huỳnh Thị Chân', '0314040652', '3/17 Đường Chương Dương, Phường Linh Chiểu, Quận Thủ Đức, TP Hồ Chí Minh', '0836206508', NULL, NULL, '2020-05-20 09:44:41', '2020-05-20 09:44:41'),
(19, NULL, 'KH.0019', 'KH', 'CÔNG TY CỔ PHẦN Đ.H.C', 'D.H.C CORP', 'Phạm Tấn Hảo', '0302982257', '86/47 Phổ Quang - Phường 2 - Quận Tân Bình - TP Hồ Chí Minh.', '02839483695', NULL, NULL, '2020-05-20 09:47:18', '2020-05-20 09:47:18'),
(20, NULL, 'KH.0020', 'KH', 'CÔNG TY CỔ PHẦN THÀNH THẮNG THĂNG LONG', 'TTTL JSC', 'Trần Nguyễn Huy Đăng', '0309142095', 'Số 87 Đường số 5, Khu phố 5, Phường An Phú, Quận 2, TP. Hồ Chí Minh, Việt Nam', NULL, NULL, NULL, '2020-08-07 11:23:49', '2020-08-07 11:23:49'),
(21, NULL, 'KH.0021', 'KH', 'CÔNG TY CỔ PHẦN WOODSLAND', 'WOODSLAND JOINT STOCK COMPANY', 'Đỗ Thị Bạch Tuyết', '2500214518', 'Lô số 49K, KCN Quang Minh, Thị trấn Chi Đông, Huyện Mê Linh, Hà Nội', '02435840122', NULL, NULL, '2020-08-07 15:13:06', '2020-08-07 15:13:06'),
(22, NULL, 'KH.0022', 'KH', 'CÔNG TY TNHH FLORENCE SMITH VIỆT NAM', 'CôNG TY FLORENCE SMITH', 'Trương Thụy Bảo Ngân', '3702720364', '24L/2 Khu phố 1B, Phường An Phú, TX Thuận An, Bình Dương', NULL, NULL, NULL, '2020-08-07 15:28:12', '2020-08-07 15:28:12'),
(23, NULL, 'KH.0023', 'KH', 'CÔNG TY TNHH UNIX VIỆT NAM', 'UNIX VIET NAM CO., LTD', 'Vi Thị Kim Ngân', '3702563520', 'Số 33B đường 110, Khu phố Hòa Long, Phường Lái Thiêu, TX Thuận An, Bình Dương', NULL, NULL, NULL, '2020-08-07 15:16:14', '2020-08-07 15:16:14'),
(24, NULL, 'KH.0024', 'KH', 'Công ty TNHH Sun Asterisk', NULL, NULL, '0106045931', 'Tầng 13, Keangnam Hanoi Landmark Tower, Khu E6, Khu đô thị mới Cầu Giấy, P. Mễ Trì, Q. Nam Từ Liêm, Hà Nội, Việt Nam', NULL, NULL, NULL, '2020-08-07 15:36:57', '2020-08-07 15:36:57'),
(25, NULL, 'KH.0025', 'KH', 'CÔNG TY TNHH DỊCH VỤ XÂY DỰNG YẾN HÂN', 'YEN HAN CO., LTD', 'Trần Thị Mỹ Lệ', '0315448042', '52/11D đường Lâm Văn Bền, Phường Tân Kiểng, Quận 7, TP Hồ Chí Minh', '0869296733', NULL, NULL, '2020-08-07 11:40:23', '2020-08-07 11:40:23'),
(26, NULL, 'KH.0026', 'KH', 'Merci', 'MERCI', 'Nguyễn Hữu Phước', '0902455818', 'Bình Dương', NULL, NULL, NULL, '2021-05-06 10:51:38', '2021-05-06 10:51:38'),
(27, NULL, 'KH.0027', 'KH', 'CÔNG TY TNHH SKS FURNITURE', 'SKS FURNITURE CO., LTD', 'Nguyễn Thị Xuân Thảo', '0312396283', '64 Vũ Tông Phan, Phường An Phú, Quận 2, TP Hồ Chí Minh', '0903386686', NULL, NULL, '2020-10-19 14:44:53', '2020-10-19 14:44:53'),
(28, NULL, 'KH.0028', 'KH', 'CÔNG TY TNHH THƯƠNG MẠI GID', 'GID TRADING CO.,LTD', 'Mai Quang Trúc Hà', '0314895866', '39 Lương Hữu Khánh, Phường Phạm Ngũ Lão, Quận 1, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-10-31 08:04:28', '2020-10-31 08:04:28'),
(29, NULL, 'KH.0029', 'KH', 'CÔNG TY TNHH XÂY DỰNG - THƯƠNG MẠI TIÊN PHONG', 'PRIME CONSTRUCTION AND TRADING CO.LTD', 'NGO LONG DUC (NGô ĐứC LONG)', '0300992108', '41 Đường 41, phường 06, Quận 4, TP Hồ Chí Minh', '08 39430980', NULL, NULL, '2020-10-30 15:35:27', '2020-10-30 15:35:40'),
(30, NULL, 'KH.0030', 'KH', 'CÔNG TY CỔ PHẦN XÂY DỰNG - THƯƠNG MẠI - NỘI THẤT HH', 'HH CORPORATION', 'Phạm Đình Hội', '0315065762', 'Số 11 Hồ Xuân Hương, Phường 06, Quận 3, TP Hồ Chí Minh', '028 3636 9438', NULL, NULL, '2020-10-31 08:13:36', '2020-10-31 08:13:36'),
(31, NULL, 'KH.0031', 'KH', 'CÔNG TY TNHH MỘT THÀNH VIÊN KỸ NGHỆ TINH ANH', 'KY NGHE TINH ANH COMPANY LIMITED', 'Nguyễn Minh Sơn', '0312324264', '33 Lê Lai, Phường 3, Quận Gò Vấp, TP Hồ Chí Minh', NULL, NULL, '<p>Chi 10% mỗi đơn h&agrave;ng - Anh Trưởng</p>\n\n<p>CHỦ TK:&nbsp;<strong>TRẦN QUANG TRƯỞNG</strong></p>\n\n<p>Số TK:&nbsp;0181000891259&nbsp;</p>\n\n<p>Tại: VCB - CN Tam B&igrave;nh</p>', '2020-09-10 11:31:44', '2020-09-10 11:31:44'),
(32, NULL, 'KH.0032', 'KH', 'CÔNG TY CỔ PHẦN ĐẦU TƯ DA VÀNG', NULL, 'Nguyễn Thị Thanh Trúc', '3500442192', 'Số 03 Hạ Long, Phường 2, Thành Phố Vũng Tàu, Bà Rịa - Vũng Tàu', '0643531524', NULL, NULL, '2021-06-28 16:00:18', '2021-06-28 16:00:18'),
(33, NULL, 'KH.0033', 'KH', 'CÔNG TY TNHH GỖ GIA NHI', 'GIA NHI TIMBER', 'Nguyễn Đình Quân', '0316335411', '208/24 Đường Nguyễn Oanh,, Phường 17, Quận Gò Vấp, TP Hồ Chí Minh', NULL, NULL, NULL, '2021-06-28 16:03:11', '2021-06-28 16:03:11'),
(34, NULL, 'KH.0034', 'KH', 'CÔNG TY TNHH TNV DESIGN', 'TNV DESIGN CO., LTD', 'Trịnh Ngọc Vượng', '0315976130', '285/1 Nguyễn Văn Trỗi,, Phường 10, Quận Phú Nhuận, TP Hồ Chí Minh', NULL, NULL, NULL, '2021-06-28 16:04:05', '2021-06-28 16:04:05'),
(35, NULL, 'KH.0035', 'KH', 'CÔNG TY TNHH PHÁT TRIỂN MỘC NỘI THẤT QUYỀN ANH', 'CTY TNHH PHÁT TRIỂN MỘC NỘI THẤT QUYỀN ANH', 'Nguyễn Viết Sơn', '3702401470', 'Số 68C, Khu phố Nội Hóa 1, Phường Bình An, TX Dĩ An, Bình Dương', '0933207889', NULL, NULL, '2020-10-31 08:12:00', '2020-10-31 08:12:00'),
(36, NULL, 'KH.0036', 'KH', 'CÔNG TY CỔ PHẦN XÂY DỰNG VÀ TRANG TRÍ NỘI THẤT CAO TỐC', 'HI WAY CORPORATION', 'Quách Nguyễn Thanh Phong', '0302816588', '535 Phạm Văn Đồng, Phường 13, Quận Bình Thạnh, Thành phố Hồ Chí Minh, Việt Nam', '0835532622', NULL, NULL, '2020-08-05 16:29:12', '2020-08-05 16:29:12'),
(37, NULL, 'KH.0037', 'KH', 'CÔNG TY TNHH SẢN XUẤT THƯƠNG MẠI THANH MINH', NULL, 'Đào Thị Minh Trang', '3702471051', 'Số 108/9, Khu phố Tân Hiệp, Phường Tân Bình, TX Dĩ An, Bình Dương', NULL, NULL, NULL, '2020-08-07 15:39:33', '2020-08-07 15:39:33'),
(38, NULL, 'KH.0038', 'KH', 'CÔNG TY TNHH KIẾN TRÚC XÂY DỰNG VÀ THƯƠNG MẠI AN', 'CTY KT XD TM AN', 'Đoàn Ngọc Trân', '0316337962', '453/47 Lê Văn Sỹ,, Phường 12, Quận 3, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-11-12 09:22:51', '2020-11-12 09:22:51'),
(39, NULL, 'KH.0039', 'KH', 'CÔNG TY TNHH HOÀNG MỘC THIÊN', 'HOANG MOC THIEN CO.,LTD', 'Nguyễn Bá Tùng', '3702266616', 'Số 17, Phan Bội Châu, Khu 6, Phường Phú Thọ, Thành phố Thủ Dầu Một, Bình Dương', '02743899318', NULL, NULL, '2021-06-28 16:05:36', '2021-06-28 16:05:36'),
(40, NULL, 'KH.0040', 'KH', 'CÔNG TY TRÁCH NHIỆM HỮU HẠN THE FOREST CITY', 'THE FOREST CITY', NULL, '3500877517', 'đường Ven Biển thuộc ấp Bình Hải, Xã Bình Châu, Huyện Xuyên Mộc, Tỉnh Bà Rịa - Vũng Tàu, Việt Nam', NULL, NULL, NULL, '2021-06-28 16:09:06', '2021-06-28 16:09:06'),
(41, NULL, 'KH.0041', 'KH', 'CÔNG TY TNHH SẢN XUẤT THƯƠNG MẠI TRIỆU GIA', 'TRGIA CO.,LTD', 'Trịnh Hữu Hùng', '0310770136', '290/74/2 Đường HT17, Khu phố 2, phường Hiệp Thành, Quận 12, TP Hồ Chí Minh', NULL, NULL, NULL, '2021-06-28 16:10:06', '2021-06-28 16:10:06'),
(42, NULL, 'KH.0042', 'KH', 'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ ĐỨC DOANH', NULL, 'Ngô Ðức Doanh', '0316452242', '676 Phạm Văn Chiêu, Phường 13, Quận Gò Vấp, Thành phố Hồ Chí Minh', NULL, NULL, NULL, '2021-06-28 16:15:15', '2021-06-28 16:15:37'),
(43, NULL, 'KH.0043', 'KH', 'CÔNG TY TNHH NÔNG NGHIỆP MINH TRIẾT', NULL, 'Võ Văn Giàu', '0316540308', '55A Trần Thái Tông,, Phường 15, Quận Tân Bình, TP Hồ Chí Minh', NULL, NULL, NULL, '2021-06-28 16:17:55', '2021-06-28 16:17:55'),
(44, NULL, 'KH.0044', 'KH', 'CÔNG TY TNHH CIC PACIFIC', NULL, NULL, '0305081130', '337/29 Trường Chinh, Phường 14, Quận Tân Bình, Thành phố Hồ Chí Minh', NULL, NULL, NULL, '2021-06-28 16:19:13', '2021-06-28 16:19:13'),
(45, NULL, 'KH.0045', 'KH', 'CÔNG TY TNHH SẢN XUẤT THƯƠNG MẠI XUẤT NHẬP KHẨU MAI THÀNH', 'CTY TNHH SX TM XNK MAI THÀNH', 'Mai Huy', '0312620016', '7/9A Lò Lu, Phường Trường Thạnh, Quận 9, TP Hồ Chí Minh', NULL, NULL, NULL, '2021-06-28 16:23:15', '2021-06-28 16:23:15'),
(46, NULL, 'KH.0046', 'KH', 'CÔNG TY TNHH HUỲNH GIA HUY', 'H.G.H CO.,LTD', 'Võ Văn Huy Hoàng', '3400432095', '116/13 Tuyên Quang, Phường Phú Thủy, Thành phố  Phan Thiết, Bình Thuận', '0903909089', NULL, NULL, '2021-06-28 16:23:51', '2021-06-28 16:23:51'),
(47, NULL, 'KH.0047', 'KH', 'CÔNG TY CỔ PHẦN TẬP ĐOÀN ĐẦU TƯ ĐỊA ỐC NO VA', 'NOVALAND GROUP CORP', 'Bùi Thành Nhơn', '0301444753', '313B, 315 Nam Kỳ Khởi Nghĩa, Phường 07, Quận 3, TP Hồ Chí Minh', '0839153666', NULL, NULL, '2020-10-30 15:33:08', '2020-10-30 15:33:08'),
(48, NULL, 'NCC.0001', 'NCC', 'CÔNG TY TNHH NHỰA VIỆT ĐAN', 'VIET DAN PLASTIC CO., LTD', 'Tống Văn Găng', '0313966024', '517 kha Vạn Cân, Phường Linh Đông, Quận Thủ Đức, TP Hồ Chí Minh', '0909349333', 'gang.tongvan@vietdanplastic.com', '<p>Ms Thơm : 0931.348.246</p>', '2020-05-20 09:47:54', '2020-11-03 10:52:02'),
(49, NULL, 'NCC.0002', 'NCC', 'CÔNG TY TNHH SẢN XUẤT NỘI THẤT THIÊN AN', 'CÔNG TY TNHH SX NT THIÊN AN', 'Trần Thị Hồng Hóa', '3702680993', 'Thửa đất số 1805,Tờ bản đồ số 20, 3,Khu Phố 2, Phường Định Hòa, Thành phố Thủ Dầu Một, Bình Dương', '0937003392', 'toan.noithatthienan@gmail.com', '<p>MR TO&Agrave;N : 0939.274.085</p>', '2020-05-20 09:49:29', '2020-11-03 10:54:41'),
(50, NULL, 'NCC.0003', 'NCC', 'CÔNG TY TNHH SX TM MINH HUY HOÀNG', 'MINH HUY HOÀNG', 'Nguyễn Thị Thanh Thủy', '0314624383', '57A đường Tam Châu, Phường Tam Phú, Quận Thủ Đức, TP Hồ Chí Minh', '0908799339', 'yen.ntp@minhhuyhoang.vn', NULL, '2020-05-20 09:49:54', '2020-11-03 10:56:25'),
(51, NULL, 'NCC.0004', 'NCC', 'CÔNG TY TNHH NC9 VIỆT NAM', 'NC9 VINA CO., LTD', 'Koo Jin Young', '0312270160', 'Số 87, Đường Nguyễn Thị Thập , khu đô thị mới HimLam, Phường Tân Hưng, Quận 7, TP Hồ Chí Minh', '+84862515874', 'quocthai0099@gmail.com', '<p>0312270160</p>', '2020-02-25 08:58:45', '2020-03-30 13:14:10'),
(52, NULL, 'NCC.0005', 'NCC', 'CÔNG TY CỔ PHẦN THƯƠNG MẠI SẢN XUẤT DỊCH VỤ NHỨT THÔNG', 'NHUT THONG JOINT STOCK COMPANY', 'Trần Văn Trung', '0303614753', 'Số 109 Đường số 11, Phường 11, Quận Gò Vấp, TP Hồ Chí Minh', '08 6295 2964', NULL, '<p>MR KI&Ecirc;N : 0974.496.726</p>', '2020-05-20 09:50:48', '2020-11-03 10:59:54'),
(53, NULL, 'NCC.0006', 'NCC', 'CÔNG TY TNHH SẢN XUẤT THƯƠNG MẠI DỊCH VỤ FIVE HIGH FURNITURE', 'FIVE HIGH FURNITURE CO.,LTD', 'Trương Vĩnh Tâm', '0315692308', '21/4G Tô Ký, ấp Đông, Xã Thới Tam Thôn, Huyện Hóc Môn, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-05-20 09:51:08', '2020-05-20 09:51:08'),
(54, NULL, 'NCC.0007', 'NCC', 'CÔNG TY TNHH SẢN XUẤT THƯƠNG MẠI RAFI', 'RAFI CO.,LTD', 'Mai Thành Đạt', '0312444628', '328/19 Đường TTH22, Khu phố 4A, phường Tân Thới Hiệp, Quận 12, TP Hồ Chí Minh', '0909989456', NULL, NULL, '2020-05-20 09:51:30', '2020-05-20 09:51:30'),
(55, NULL, 'NCC.0008', 'NCC', 'CÔNG TY CỔ PHẦN NHÀ NHÀ VUI', 'NHA NHA VUI JSC', 'Trần Đình Lưu Phúc', '0313679206', '84/75/6 Tân Sơn Nhì, Phường Tân Sơn Nhì, Quận Tân phú, TP Hồ Chí Minh', '08 6279 6226', NULL, NULL, '2020-05-20 09:51:57', '2020-05-20 09:51:57'),
(56, NULL, 'NCC.0009', 'NCC', 'CÔNG TY TNHH SƠN HOA VIỆT', NULL, 'Nguyễn Văn Phan', '3702418160', 'Thửa đất số 34, tờ bản đồ số 23, khu phố Long Bình, Phường Khánh Bình, Thị xã  Tân Uyên, Bình Dương', NULL, NULL, NULL, '2020-05-20 09:52:17', '2020-05-20 09:52:17'),
(57, NULL, 'NCC.0010', 'NCC', 'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ ĐIỆN CƠ HUY', 'CTY TNHH TM DV ĐIỆN CƠ HUY', 'Trần Thế Huy', '3702215153', 'Số 207, ấp An Phú, Xã An Sơn, TX Thuận An, Bình Dương', NULL, NULL, NULL, '2020-05-20 09:53:05', '2020-05-20 09:53:05'),
(58, NULL, 'NCC.0011', 'NCC', 'DOANH NGHIỆP TƯ NHÂN XĂNG DẦU LAI UYÊN HAI', NULL, 'Nguyễn Tấn Hùng', '3701841969', 'Số 149/5, Đường 22/12, Khu phố 4, Phường An Phú, TX Thuận An, Bình Dương', NULL, NULL, NULL, '2020-05-20 09:53:25', '2020-05-20 09:53:25'),
(59, NULL, 'NCC.0012', 'NCC', 'CÔNG TY TNHH PHÚC PHƯỚC FURNITURE', 'PHUC PHUOC FURNITURE CO.,LTD', 'Trần Hữu Phúc', '3702751669', 'Số 283, Đường An Sơn 20, ấp An Phú, Xã An Sơn, TX Thuận An, Bình Dương', NULL, NULL, NULL, '2020-05-20 09:53:46', '2020-05-20 09:53:46'),
(60, NULL, 'NCC.0013', 'NCC', 'CÔNG TY TNHH  QUỐC HÙNG', 'QUOC HUNG CO., LTD', 'Đào Xuân Đức', '3700797516', '17/13B khu phố Tân Phước, Phường Tân Bình, TX Dĩ An, Bình Dương', '06503727324', NULL, NULL, '2020-05-20 09:54:04', '2020-05-20 09:54:04'),
(61, NULL, 'NCC.0014', 'NCC', 'CÔNG TY TNHH  SONG TẠO', 'SONG TAO COMPANY LIMITED', 'Huỳnh Văn Thành', '0301943985', '23 Trịnh Văn Cấn, Phường Cầu Ông Lãnh, Quận 1, TP Hồ Chí Minh', '0838216690', NULL, NULL, '2020-05-20 09:54:25', '2020-05-20 09:54:25'),
(62, NULL, 'NCC.0015', 'NCC', 'CÔNG TY CỔ PHẦN KÍNH VINACAM', 'VINACAM GLASS', 'Vũ Duy Hải', '3700773402', 'Số 014/2, tổ 1, khu phố Khánh Lộc, Phường Khánh Bình, Thị xã  Tân Uyên, Bình Dương', '06503652712', NULL, NULL, '2020-05-20 09:54:49', '2020-05-20 09:54:49'),
(63, NULL, 'NCC.0016', 'NCC', 'CÔNG TY TNHH MỘT THÀNH VIÊN THƯƠNG MẠI DỊCH VỤ NGUYỄN ĐỨC TIẾN', NULL, 'Nguyễn Đức Toàn', '0314942259', '224 Lý Thường Kiệt, Phường 14, Quận 10, TP Hồ Chí Minh', '0913662323', NULL, NULL, '2020-05-20 09:55:12', '2020-05-20 09:55:12'),
(64, NULL, 'NCC.0017', 'NCC', 'CÔNG TY TNHH THƯƠNG MẠI DỊCH VỤ CỎ MAY', 'COMAY TRADING & SERVICE COMPANY LIMITED', 'Phạm Thị Hòa', '0301015137', '201A Nam Kỳ Khởi Nghĩa, Phường 07, Quận 3, TP Hồ Chí Minh', '0839320155', NULL, '<p>MR TUYẾN : 0907.232.343</p>', '2020-05-20 09:55:37', '2020-11-03 11:00:56'),
(65, NULL, 'NCC.0018', 'NCC', 'CÔNG TY CỔ PHẦN CÔNG NGHỆ NHỰA VIPORA', 'VIPORA PLASTIC JSC', 'Nguyễn Văn Trấn', '0313421729', '1816/3D Quốc Lộ 1A, phường An Phú Đông, Quận 12, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-05-20 09:55:58', '2020-05-20 09:55:58'),
(66, NULL, 'NCC.0019', 'NCC', 'CÔNG TY TNHH MỘT THÀNH VIÊN THIẾT BỊ KỸ THUẬT TRIỆU VŨ', 'TRIEU VU TECHNICAL EQUIPMENT CO., LTD', 'Vũ Ngọc Hà', '0313419913', 'Số 12 Yên Thế, Phường 2, Quận Tân Bình, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-05-20 09:56:21', '2020-05-20 09:56:21'),
(67, NULL, 'NCC.0020', 'NCC', 'CÔNG TY TNHH MTV TÂN CẢNG XANH', NULL, 'Nguyễn Chánh Khải', '0401844931', '107 Phùng Hưng, Phường Hoà Minh, Quận Liên Chiểu, Đà Nẵng', '0935545417', NULL, NULL, '2020-05-20 09:56:38', '2020-05-20 09:56:38'),
(68, NULL, 'NCC.0021', 'NCC', 'CÔNG TY TNHH SẢN XUẤT THƯƠNG MẠI SBD', 'SBD CO., LTD', 'Huỳnh Huệ Tâm', '3702655806', '79C/10 khu phố Đông Nhì, Phường Lái Thiêu, TX Thuận An, Bình Dương', '0908406245', NULL, NULL, '2020-05-20 09:56:54', '2020-05-20 09:56:54'),
(69, NULL, 'NCC.0022', 'NCC', 'CÔNG TY TNHH DỆT ÁNH DƯƠNG VN', 'ANH DUONG VN TEXTILE CO.,LTD', 'Ngyễn Thị Kim ánh', '0312205958', '83, 85 Phạm Phú Thứ, Phường 11, Quận Tân Bình, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-05-20 09:58:07', '2020-05-20 09:58:07'),
(70, NULL, 'NCC.0023', 'NCC', 'CÔNG TY CỔ PHẦN THƯƠNG MẠI - DỊCH VỤ PHONG VŨ', 'PHONG VU TRADING - SERVICE CORPORATION', 'Lê Thanh Phương', '0304998358', '125 Cách Mạng Tháng Tám, Phường Bến Thành, Quận 1, TP Hồ Chí Minh', '0862908777', NULL, NULL, '2020-05-20 09:58:30', '2020-05-20 09:58:30'),
(71, NULL, 'NCC.0024', 'NCC', 'CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH VỤ MECSU', 'MECSU CO.,LTD', 'Lê Trần Phúc Đại', '0313039340', '39 Trần Hưng Đạo, Phường Tân Thành, Quận Tân phú, TP Hồ Chí Minh', '0919891502', NULL, NULL, '2020-05-20 09:58:46', '2020-05-20 09:58:46'),
(72, NULL, 'NCC.0025', 'NCC', 'CTY TNHH THƯƠNG MẠI DỊCH VỤ SẢN XUẤT CƠ KHÍ QUANG SƠN', 'QUANG SON MECHANICAL MANUFACTURE SERVICES TRADING CO.,LTD', 'Trần Kỳ Quang', '0306452973', '188/5 Tô Ngọc Vân,KP3,P.Linh Đông, Phường Linh Đông, Quận Thủ Đức, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-05-20 10:00:13', '2020-05-20 10:00:13'),
(73, NULL, 'NCC.0026', 'NCC', 'CÔNG TY TNHH VÉ MÁY BAY GIA PHÚC', NULL, 'Nguyễn Hoàng Phúc', '0315632700', '67/66/36 Đường Bờ Bao Tân Thắng, Phường Sơn Kỳ, Quận Tân phú, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-05-20 10:00:52', '2020-05-20 10:00:52'),
(74, NULL, 'NCC.0027', 'NCC', 'CÔNG TY TNHH GỖ HẠNH PHÚC', 'HAPPY FURNITURE', 'Nguyễn Thị Thúy Hồng', '3600750063', 'Đường 9, Khu công nghiệp Tam Phước, Xã  Tam Phước, Thành phố Biên Hoà, Đồng Nai', '0616280180', 'dungnguyen@noithathanhphuc.com.vn', '<p>MR DŨNG : 0909.215.316</p>', '2020-05-20 10:01:52', '2020-11-03 11:05:15'),
(75, NULL, 'NCC.0028', 'NCC', 'NCC Team Anh Giàu', 'Mr. Giàu', 'Lê Thanh Giàu', '0907354677', 'An Giang', '0907354677', 'Lethanhgiau111@gmail.com', NULL, '2020-06-08 10:04:25', '2020-11-03 11:07:49'),
(76, NULL, 'NCC.0029', 'NCC', 'NCC vận chuyển KHOA', NULL, 'Võ Đăng Khoa', '00000000', 'Bình Dương', '0904472994', NULL, NULL, '2020-06-09 14:52:58', '2020-06-09 14:52:58'),
(77, NULL, 'NCC.0030', 'NCC', 'Cơ Khí Anh Tài', NULL, 'Anh Tài', '0312', 'Ngã tư Bình Chuẩn', '0357385539', NULL, NULL, '2020-06-13 11:05:49', '2020-06-13 11:05:49'),
(78, NULL, 'NCC.0031', 'NCC', 'NCC HUỲNH PHÚ PHONG', 'HUỲNH PHÚ PHONG', 'HUỲNH PHÚ PHONG', '0901396136', 'Sài Gòn', NULL, NULL, NULL, '2020-07-02 13:59:53', '2020-07-02 15:11:10'),
(79, NULL, 'NCC.0032', 'NCC', 'NCC VỎ ĐĂNG KHOA', NULL, 'VỎ ĐĂNG KHOA', '0904472994', 'Bình Dương', NULL, NULL, NULL, '2020-07-03 10:32:20', '2020-07-03 10:32:20'),
(80, NULL, 'NCC.0033', 'NCC', 'CÔNG TY TNHH VĨNH ĐỨC', 'VINH DUC CO., LTD', 'Phạm Huỳnh Trung Hải', '1101041357', 'ấp Mới 2, Xã Mỹ Hạnh Nam, Huyện Đức Hoà, Long An', '0908157451', 'nhung.wintec@gmail.com', NULL, '2020-08-07 16:08:55', '2020-11-03 11:10:46'),
(81, NULL, 'NCC.0034', 'NCC', 'CÔNG TY CỔ PHẦN DỊCH VỤ BƯU CHÍNH VIỄN THÔNG SÀI GÒN', 'SPT', 'Hoàng Sĩ Hóa', '0300849034', '10 Cô Giang, Phường Cầu Ông Lãnh, Quận 1, TP Hồ Chí Minh', '08 5444 9999', NULL, NULL, '2020-08-07 16:22:53', '2020-08-07 16:22:53'),
(82, NULL, 'NCC.0035', 'NCC', 'CÔNG TY TNHH GIC SERVICES', 'GIC SERVICES CO., LTD', 'Bùi Thị Hải Lý', '0315793472', 'Lầu 6 và Lầu 7 Tòa nhà Mê Linh Point Tower, Số 2 Ngô Đức Kế, Phường Bến Nghé, Quận 1, TP Hồ Chí Minh', '0964778729', NULL, NULL, '2020-08-08 08:32:44', '2020-11-03 11:14:11'),
(83, NULL, 'NCC.0036', 'NCC', 'CHI NHÁNH 2 - CÔNG TY CỔ PHẦN P.A.C.C', 'P.A.C.C', 'Đinh Nhật Linh', '0314142245-002', '31 Lê Quý Đôn, Phường 07, Quận 3, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-08-08 08:33:36', '2020-08-08 08:33:36'),
(84, NULL, 'NCC.0037', 'NCC', 'CÔNG TY TNHH DỊCH VỤ KIỂM NGHIỆM HIỆN ĐẠI (VIỆT NAM)', 'MTS (VIETNAM) CO., LTD', 'Darwi Tandiono Tjan', '0313136601', 'Lô II, 12, đường số 19/5A, nhóm công nghiệp II, Khu Công nghi, Phường Tây Thạnh, Quận Tân phú, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-08-08 09:12:03', '2020-08-08 09:12:03'),
(85, NULL, 'NCC.0038', 'NCC', 'CÔNG TY CỔ PHẦN THẾ GIỚI DI ĐỘNG', 'THE GIOI DI DONG.COM', 'Trần Kinh Doanh', '0303217354', '128 Trần Quang Khải, Phường Tân Định, Quận 1, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-08-08 09:18:00', '2020-08-08 09:18:00'),
(86, NULL, 'NCC.0039', 'NCC', 'CÔNG TY TNHH DỊCH VỤ TIN HỌC SIÊU TỐC', 'SIEU TOC CO.,LTD', 'Lê Minh Thảo', '0311427563', 'Số 91, 93 Đường số 5, Phường An Phú, Quận 2, TP Hồ Chí Minh', '0944600700', NULL, NULL, '2020-08-08 09:21:10', '2020-08-08 09:21:10'),
(87, NULL, 'NCC.0040', 'NCC', 'CHI NHÁNH 1 CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH VỤ VÂN TRÚC', NULL, 'Trần Thị Thanh Vân', '3700714012-001', '1/497 Đường 22/12, tổ 4, khu phố Hòa Lân 2, Phường Thuận Giao, TX Thuận An, Bình Dương', NULL, NULL, NULL, '2020-08-08 09:23:28', '2020-08-08 09:23:28'),
(88, NULL, 'NCC.0041', 'NCC', 'CÔNG TY TNHH MTV BAO BÌ MINH LỘC', 'MINH LỘC', 'Chu Quang Bình', '3700720055', 'Số 23, Đường N5, Khu dân cư Biconsi, Khu Phố Tân Thắng, Phường Tân Bình, Thị Xã Dĩ An, Tỉnh Bình Dương', '0918729317', NULL, '<p>Ms Tuyết :&nbsp;0918729317</p>', '2020-08-08 09:34:24', '2020-11-03 11:17:27'),
(89, NULL, 'NCC.0042', 'NCC', 'CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH VỤ NGUYỄN HOÀNG GIANG', 'NGUYEN HOANG GIANG SERVICE AND TRADING COMPANY LIMITED', 'Nguyễn Hoàng Giang', '0312012480', '151/1 Võ Văn Tần, Phường 06, Quận 3, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-08-08 09:39:08', '2020-08-08 09:39:08'),
(90, NULL, 'NCC.0043', 'NCC', 'CÔNG TY TNHH GIAO NHẬN VẬN TẢI BẢO NAM', NULL, 'Bùi Quốc Minh', '0313719868', '37 Đường số 11, Tổ 4, Khu phố Chân Phúc Cẩm, Phường Long Thạnh Mỹ, Quận 9, TP Hồ Chí Minh', '0909938270', NULL, NULL, '2020-08-08 09:55:08', '2020-08-08 09:55:08'),
(91, NULL, 'NCC.0044', 'NCC', 'CÔNG TY TNHH SẢN XUẤT THƯƠNG MẠI DỊCH VỤ NỘI THẤT HẠNH PHÚC', 'HAPPY FURNITURE SERVICE TRADING PRODUCT CO., LTD', 'Nguyễn Ngọc Dũng', '0312185483', 'Số 5/11, khu phố Tân An, PhườngTân Đông Hiệp, TX Dĩ An, Bình Dương', '0946 211 677', NULL, NULL, '2020-08-08 10:12:26', '2020-08-08 10:12:26'),
(92, NULL, 'NCC.0045', 'NCC', 'CÔNG TY CỔ PHẦN TƯ VẤN ĐẦU TƯ XÂY DỰNG NAM VIỆT', 'NAM VIET CONS CORP', 'Cao Trung Sỹ', '0305171634', '13/F1 Phan Huy ích, Phường 14, Quận Gò Vấp, TP Hồ Chí Minh', '0908534621', NULL, '<p>C&ocirc;ng ty may nệm ghế: papasan v...v...</p>', '2020-08-19 15:12:06', '2020-08-19 15:12:06'),
(93, NULL, 'NCC.0046', 'NCC', 'CÔNG TY TNHH CÔNG TY TNHH SẢN XUẤT VÀ THƯƠNG MẠI MỘC VIỆT PHÁT', 'MOC VIET PHAT CO.,LTD', 'Trương Hoàng Yến', '0315748127', '217 Hà Duy Phiên, Xã Bình Mỹ, Huyện Củ Chi, TP Hồ Chí Minh', '0944516963', NULL, NULL, '2020-09-10 08:47:06', '2020-09-10 08:47:06'),
(94, NULL, 'NCC.0047', 'NCC', 'CÔNG TY TNHH SẢN XUẤT THƯƠNG MẠI AN MINH PHÚ', 'AN MINH PHU TRADING CO.,LTD', 'Lê Hồng Đức', '0304852662', '769/12/15 Cách Mạng Tháng Tám, Phường 6, Quận Tân Bình, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-09-10 13:27:43', '2020-09-10 13:27:43'),
(95, NULL, 'NCC.0048', 'NCC', 'CÔNG TY TNHH BÁN LẺ PHƯƠNG NAM', 'PNR', 'Phan Thị Lệ', '0312628590', '940 Đường Ba Tháng Hai, Phường 15, Quận 11, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-09-10 13:28:23', '2020-09-10 13:28:23'),
(96, NULL, 'NCC.0049', 'NCC', 'CÔNG TY TNHH THƯƠNG MẠI KỸ THUẬT ĐIỆN LIÊN MINH NGUYỄN', 'LIEN MINH NGUYEN CO.,LTD', 'Nguyễn Thanh Phương', '0312385348', '160 Đường số 2, Phường Tăng Nhơn Phú B, Quận 9, TP Hồ Chí Minh', '0902221134', NULL, NULL, '2020-09-10 13:29:15', '2020-09-10 13:29:15'),
(97, NULL, 'NCC.0050', 'NCC', 'CÔNG TY TNHH SẢN XUẤT - THƯƠNG MẠI VÀ DỊCH VỤ MI ĐÔ RI', 'MIDORI CO.,LTD', 'Trần Thị Kim Thủy', '0304039062', '129 Trường Chinh, Khu phố 2, Phường Tân Hưng Thuận, Quận 12, TP Hồ Chí Minh', '0919121293', NULL, NULL, '2020-09-10 13:29:43', '2020-11-03 13:12:23'),
(98, NULL, 'NCC.0051', 'NCC', 'CÔNG TY TNHH MTV VILATA', 'CôNG TY VILATA', 'Nguyễn Thị Trang', '0316355672', 'Số 62/15H Đường Điện Biên Phủ,, Phường 17, Quận Bình Thạnh, TP Hồ Chí Minh', '0974399971', NULL, NULL, '2020-09-10 13:30:12', '2020-09-10 13:30:12'),
(99, NULL, 'NCC.0052', 'NCC', 'CÔNG TY CỔ PHẦN TRE FURNITURE', 'TRE FURNITURE JSC', 'Trần Đắc Phước', '0314789956', '14 Lê Quang Chiểu, Phường Hiệp Tân, Quận Tân phú, TP Hồ Chí Minh', '028 225 36 743', NULL, NULL, '2020-10-19 13:31:32', '2020-10-19 13:31:32'),
(100, NULL, 'NCC.0053', 'NCC', 'CÔNG TY TNHH PHÁT TRIỂN MỘC NỘI THẤT QUYỀN ANH', 'CTY TNHH PHÁT TRIỂN MỘC NỘI THẤT QUYỀN ANH', 'Nguyễn Viết Sơn', '3702401470', 'Số 68C, Khu phố Nội Hóa 1, Phường Bình An, TX Dĩ An, Bình Dương', '0933207889', 'sonnguyenviet7889@gmail.com', NULL, '2020-10-26 16:43:56', '2020-11-03 13:15:56'),
(101, NULL, 'NCC.0054', 'NCC', 'CÔNG TY CỔ PHẦN MERCI VIỆT NAM', 'MERCI VIET NAM CORPORATION', 'Hoàng Duy Ninh', '0315090208', '215B16 Nguyễn Văn Hưởng, Phường Thảo Điền, Quận 2, TP Hồ Chí Minh', '0938601286', 'dothanhthaokt@gmail.com', NULL, '2020-10-30 10:28:28', '2020-10-30 10:28:28'),
(102, NULL, 'NCC.0055', 'NCC', 'CÔNG TY TNHH ĐẦU TƯ SẢN XUẤT THƯƠNG MẠI VÀ DỊCH VỤ CHÂU ANH', 'CÔNG TY TNHH ĐT SX TM VÀ DV CHÂU ANH', 'Nguyễn Ngọc Vũ', '0314461227', 'Số 52/43/3 Đường số 8, khu phố 19, Phường Bình Hưng Hòa, Quận Bình Tân, TP Hồ Chí Minh', '0909472479', 'ngocvu135.vn@gmail.com', NULL, '2020-10-30 10:36:46', '2020-10-30 10:38:01'),
(103, NULL, 'NCC.0056', 'NCC', 'CÔNG TY TNHH ĐIÊU KHẮC MỸ NGHỆ HẢI DƯƠNG', NULL, 'Nguyễn Văn Thu', '0311589204', '10 Đường 7, Phường Bình Trưng Đông, Quận 2, TP Hồ Chí Minh', '0913897762', 'haiduongfrp@gmail.com', '<p>MR DŨNG</p>', '2020-10-30 10:44:18', '2020-10-30 10:44:18'),
(104, NULL, 'NCC.0057', 'NCC', 'CÔNG TY TNHH MỘT THÀNH VIÊN CƠ KHÍ NHƯ PHONG', NULL, 'Trần Đình Thắng', '3702360390', 'Số 41, đường Trường Học, khu phố Thắng Lợi 1, Phường Dĩ An, TX Dĩ An, Bình Dương', '0908 498 582', 'thangnhuphongck@gmail.com', '<p>MR THẮNG</p>', '2020-10-30 10:46:57', '2020-10-30 10:46:57'),
(105, NULL, 'NCC.0058', 'NCC', 'CÔNG TY TNHH GỖ GIA NHI', 'GIA NHI TIMBER', 'Nguyễn Đình Quân', '0316335411', '208/24 Đường Nguyễn Oanh, Phường 17, Quận Gò Vấp, TP Hồ Chí Minh', '0916393586', 'nhgianhi@gmail.com', '<p>MR QU&Acirc;N&nbsp;</p>\n\n<p>MAIL :&nbsp;&nbsp;mocson71118@gmail.com</p>', '2020-10-30 10:50:02', '2020-11-02 14:14:04'),
(106, NULL, 'NCC.0059', 'NCC', 'CHI NHÁNH CÔNG TY TNHH DỆT MAY SẢN XUẤT THƯƠNG MẠI QUÁN THÀNH', NULL, 'Lê Thị Ngọc Trang', '1100856290-002', 'Số 25 Đường 20, KDC Him Lam, Xã Bình Hưng, Huyện Bình Chánh, TP Hồ Chí Minh', '0913915309', 'nguyenchi.kwt@gmail.com', '<p>li&ecirc;n hệ :</p>\n\n<p>- ms Trang</p>\n\n<p>- Ms Chi :&nbsp;Khanh Chi Nguyen Phan &lt;nguyenchi.kwt@gmail.com&gt;</p>', '2020-10-30 10:55:17', '2020-10-30 10:55:17'),
(107, NULL, 'NCC.0060', 'NCC', 'CÔNG TY TNHH HAVICO VIỆT NAM', 'HAVICO VIET NAM COMPANY LIMITED', 'Hoàng Trung Thành', '0312634040', '30/8 Đường số 3, Phường 16, Quận Gò Vấp, TP Hồ Chí Minh', '0909838007', NULL, NULL, '2020-10-31 08:46:39', '2020-10-31 08:46:39'),
(108, NULL, 'NCC.0061', 'NCC', 'CÔNG TY TNHH THƯƠNG MẠI VÀ DỊCH VỤ LINH KHÔI', 'LK  SERVICE & TRADING CO.,LTD', 'Đào Quốc Hùng', '0304888002', '144/18 Võ Duy Ninh, Phường 22, Quận Bình Thạnh, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-10-31 08:52:52', '2020-10-31 08:52:52'),
(109, NULL, 'NCC.0062', 'NCC', 'CÔNG TY CỔ PHẦN ÉN VIỆT', 'EN VIET JSC', 'Trần Thanh Tân', '0304955040', '506/17 đường Tam Thôn Hiệp, ấp An Lộc, tổ 18, Xã Tam Thôn Hiệp, Huyện Cần Giờ, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-11-02 14:48:38', '2020-11-02 14:48:38'),
(110, NULL, 'NCC.0063', 'NCC', 'CÔNG TY TNHH SẢN XUẤT - THƯƠNG MẠI VÀ XUẤT NHẬP KHẨU KHANG GIA PHÁT', 'KHANG GIA PHAT CO., LTD', 'Tống Văn Găng', '0315779534', '496/63/19H Dương Quảng Hàm, Phường 6, Quận Gò Vấp, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-11-02 14:54:54', '2020-11-02 14:54:54'),
(111, NULL, 'NCC.0064', 'NCC', 'CÔNG TY TNHH MỘT THÀNH VIÊN SẢN XUẤT THƯƠNG MẠI XUẤT NHẬP KHẨU HÀ NAM', 'HNAM IMEXTRA CO.,LTD', 'Nguyễn Ngọc Hoà Lan', '0310493482', 'D17.5 Cao ốc Hoàng Anh Gia Lai  2, 783 Trần Xuân Soạn, Phường Tân Hưng, Quận 7, TP Hồ Chí Minh', NULL, NULL, NULL, '2020-11-02 15:03:07', '2020-11-02 15:03:07'),
(112, NULL, 'NCC.0065', 'NCC', 'CÔNG TY TNHH SẢN XUẤT THƯƠNG MẠI DỊCH VỤ CƠ KHÍ HƯNG VIỆT', NULL, 'Nguyễn Ngọc ánh', '0312386648', '7/5 ấp Nam Lân, Xã Bà Điểm, Huyện Hóc Môn, TP Hồ Chí Minh', '0909022341', NULL, NULL, '2020-11-02 15:05:06', '2020-11-02 15:05:06'),
(113, NULL, 'NCC.0066', 'NCC', 'CÔNG TY TNHH SẢN XUẤT - THƯƠNG MẠI - XÂY DỰNG ĐẠT DANH', 'CÔNG TY TNHH ĐẠT DANH', 'Lê Văn Đang', '0303442984', '375/38 Khu phố 3, phường An Phú Đông, Quận 12, TP Hồ Chí Minh', '0903712359', NULL, '<p>Mr Đang</p>\n\n<p><img alt=\"\" src=\"http://tre-hethong.com/upload_data/z2036013770750_438064ad4e5ca5c012659df7675e0017.jpg\" style=\"height:300px; width:237px\" />&nbsp;&nbsp;<img alt=\"\" src=\"http://tre-hethong.com/upload_data/z2036013754924_ebc33f27126d2dcd22e13818cfee9332.jpg\" style=\"height:300px; width:201px\" /></p>', '2020-11-02 15:50:35', '2020-11-02 15:59:26'),
(114, NULL, 'NCC.0067', 'NCC', 'CÔNG TY TNHH NHÔM THÉP QUANG MINH', 'QUANG MINH STEEL ALUMINIUM COMPANY LIMITED', 'Trịnh Khắc Minh', '0303134517', 'Số 01 Lô H1, Đường 52, Khu dân cư Tân Quy Đông, Phường Tân Phong, Quận 7, TP Hồ Chí Minh', '0936411413', 'pkd.aluquangminh@gmail.com', NULL, '2020-11-02 16:04:52', '2020-11-02 16:04:52'),
(115, NULL, 'NCC.0068', 'NCC', 'CÔNG TY TNHH MỘT THÀNH VIÊN SẢN XUẤT THƯƠNG MẠI MỸ NGHỆ C & T', 'C&T', 'Phan Thị Oanh', '3702291348', 'Thửa đất số 223, tờ bản đồ số 8, khu phố Phước Hải, PhườngThái Hòa, Thị xã  Tân Uyên, Bình Dương', '0938679267', 'nhomngoisaoct@gmail.com', NULL, '2020-11-03 14:02:02', '2020-11-03 14:03:47'),
(116, NULL, 'NCC.0069', 'NCC', 'DOANH NGHIỆP TƯ NHÂN ĐOÀN VINH', 'XƯỞNG MAY ĐOÀN VINH', 'Đoàn Tấn Vinh', '3700532372', 'K6/A22B tổ 58, Phường Hiệp Thành, Thành phố Thủ Dầu Một, Bình Dương', '0913797454', NULL, NULL, '2020-11-03 14:10:18', '2020-11-03 14:10:18'),
(117, NULL, 'NCC.0070', 'NCC', 'CÔNG TY TRÁCH NHIỆM HỮU HẠN MỘT THÀNH VIÊN SẢN XUẤT THƯƠNG MẠI DỊCH VỤ PHƯƠNG NGÔN', NULL, 'Nguyễn Ngọc Ngôn', '0312989597', 'Số 66, ấp Thới Tây 2, Xã Tân Hiệp, Huyện Hóc Môn, TP Hồ Chí Minh', NULL, NULL, '<p>Tk sacombank chi nh&aacute;nh H&oacute;c M&ocirc;n 060087680692 ĐỖ THỊ TH&Uacute;Y PHƯƠNG&nbsp;<br />\nNguyễn Ngọc Ng&ocirc;n. Tk: 9867907 ACB H&oacute;c M&ocirc;n</p>', '2020-12-03 13:35:48', '2020-12-03 13:35:48'),
(118, NULL, 'NCC.0071', 'NCC', 'Hường mây (Hà Nội)', NULL, 'Hoàng Thị Hường', '0973180611', 'Hà Nội', '0973180611', NULL, '<p>M&acirc;y tự nhi&ecirc;n caro kh&ocirc;ng tẩy:<br />\n- Khổ 900: 4tr2</p>\n\n<p>M&acirc;y vu&ograve;n mắt c&aacute;o kh&ocirc;ng tẩy:<br />\n- Kh&ocirc; 600: 2550<br />\n- Khổ 700: 3250<br />\n- Khổ 900: 4600</p>\n\n<p>M&acirc;y vườn caro tẩy trắng:<br />\n- Khổ 900 4tr5<br />\n- Khổ 700: 3tr5<br />\n&nbsp;</p>', '2021-03-08 14:06:33', '2021-03-08 14:07:44'),
(119, NULL, 'NCC.0072', 'NCC', 'NCC An Sơn Mr. Tân', 'An Sơn 20', 'Trần Văn Tân', '037665839', '283 Đường An Sơn 20, An Sơn, Thị xã Thuận An, Bình Dương', NULL, NULL, NULL, '2021-04-06 11:11:31', '2021-05-11 09:38:53'),
(120, NULL, 'NCC.0073', 'NCC', 'CƠ SỞ MÂY THẮNG QUÝ', 'Chú Kiệt', 'CHÂU VĂN KIỆT', '0903081662', '1119 Đường 3/2 phường 11, Quận 5, TPHCM', NULL, NULL, NULL, '2021-05-05 14:02:58', '2021-05-05 14:02:58'),
(121, NULL, 'NCC.0074', 'NCC', 'CÔNG TY TNHH SẢN XUẤT THƯƠNG MẠI HOÀNG GIA LINH', 'HOANG GIA LINH CO.,LTD', 'Đặng Hoàng Linh', '0312484980', '30/5A ấp Đông Lân, Xã Bà Điểm, Huyện Hóc Môn, TP Hồ Chí Minh', '0903 070 850', NULL, NULL, '2021-05-05 14:06:55', '2021-05-05 14:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên lệnh chuyển tiền',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'in' COMMENT 'Chuyển vào hoặc ra',
  `value` double UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Giá trị',
  `account_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Tài khoản ảnh hưởng vào ra',
  `object_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Đối tượng liên quan: NCC-KH-Nhân viên',
  `project_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Dự án (nếu có)',
  `approved` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Người duyệt lệnh',
  `locked` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Khoá lệnh',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Người tạo lệnh',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pms`
--

CREATE TABLE `pms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `allow` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: cho phép truy cập',
  `role_id` int(11) NOT NULL,
  `action` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pms`
--

INSERT INTO `pms` (`id`, `name`, `allow`, `role_id`, `action`, `model`, `updated_at`, `created_at`) VALUES
(2, 'Allow Sale edit Quotations', 1, 2, 'update', 'Quotation', '2021-09-18 00:25:28', '2021-09-17 23:53:23'),
(3, 'Allow Sale create Quotation', 1, 2, 'create', 'Quotation', '2021-09-18 00:51:44', '2021-09-18 00:51:44'),
(4, 'Allow Quản trị xem Báo giá', 1, 5, 'view', 'Quotation', '2021-09-19 23:14:58', '2021-09-19 23:14:58'),
(5, 'Allow Sale view Quotation', 1, 2, 'view', 'Quotation', '2021-09-20 01:25:10', '2021-09-20 01:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `cate_id` bigint(20) DEFAULT '0',
  `img` text COLLATE utf8mb4_unicode_ci,
  `desc` longtext COLLATE utf8mb4_unicode_ci,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `feature` tinyint(1) NOT NULL DEFAULT '0',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sum` text COLLATE utf8mb4_unicode_ci,
  `unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Màu sắc',
  `weight` float DEFAULT NULL COMMENT 'Trọng lượng',
  `dimension` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Kích thước',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `sku`, `name`, `price`, `cate_id`, `img`, `desc`, `enable`, `feature`, `title`, `keyword`, `sum`, `unit`, `weight`, `dimension`, `created_at`, `updated_at`) VALUES
(1, '25258240', 'Ghế Acapulco màu đen', 18000000, 5, '/upload/sanpham/Acapulco-Chair-4.jpg', '<ul>\r\n	<li>Khung sắt sơn tĩnh điện.</li>\r\n	<li>Sợi mây nhựa tròn quấn quanh ghế.</li>\r\n</ul>', 1, 1, 'Ghế Acapulco màu đen', 'Ghế Acapulco màu đen', 'Ghế Acapulco màu đen', 'Cái', 4, '700 x 800 x 900', '2021-08-25 23:14:41', '2021-09-13 23:37:47'),
(2, '68705176', 'Ghế thư giãn Huron', 2650000, 5, '/upload/sanpham/huron-large-lounge-chair-cushion-gray-c.jpg', '<ul>\r\n	<li>Khung nhôm sơn tĩnh điện.</li>\r\n	<li>Đan sợi mây nhựa tròn.</li>\r\n	<li>Không bao gồm nệm gối.</li>\r\n</ul>', 1, 1, 'Ghế Acapulco màu đen', 'Ghế Acapulco màu đen', 'Ghế Acapulco màu đen', 'Cái', 10, '700 x 800 x 900', '2021-08-25 23:14:41', '2021-09-13 23:37:59'),
(3, '50558278', 'Ghế Papasan mây tự nhiên', 2650000, 5, '/upload/sanpham/100854_XXX_v1.jpg', '<ul>\r\n	<li>Khung ghế mây tự nhiên.</li>\r\n	<li>Không bao gồm nệm gối.</li>\r\n	<li>Sử dụng trong nhà.</li>\r\n</ul>', 1, 1, 'Ghế Papasan mây tự nhiên', 'Ghế Papasan mây tự nhiên', 'Ghế Papasan mây tự nhiên', 'Cái', 5, '700 x 800 x 900', '2021-08-25 23:14:41', '2021-09-13 23:38:05'),
(4, '57167374', 'Dây dù tròn 6mm', 7941, 7, '/upload/sanpham/images.jpg', '<p>Porro et esse id molestiae amet. Qui mollitia illum vel eveniet voluptas maiores quia. Exercitationem deserunt doloribus ab sapiente. Earum aspernatur saepe natus perferendis reprehenderit.</p>', 1, 0, 'Omnis doloribus aut molestiae dolorum.', 'keywords', 'Et eos dolor omnis modi quae.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-09-29 23:55:34'),
(5, '09306974', 'Dr. Shaina Kautzer', 6081, 8, 'https://lorempixel.com/640/480/?90311', 'Saepe ab maxime aut. Unde corrupti quam perferendis voluptas. Nobis ut et consectetur magnam est dolor. A eum expedita vitae dolorum iusto nulla.', 1, 0, 'Voluptas aspernatur voluptatem quidem et natus.', 'keywords', 'Animi molestiae placeat omnis vel.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-28 03:35:18'),
(6, '84626998', 'Jovany Paucek', 2342, 5, 'https://lorempixel.com/640/480/?80079', 'Rerum consequatur aut quia ut aut ut. Nesciunt debitis voluptatem illo ad eveniet. Accusamus eos aut soluta. Animi cupiditate quis molestiae nulla et suscipit placeat. Vitae vel et omnis.', 1, 0, 'Expedita unde et enim voluptatem ut qui.', 'keywords', 'Quos error ratione eum sit quam quo.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-09-13 23:24:25'),
(8, '61534209', 'Verda Muller V', 3352, 5, 'https://lorempixel.com/640/480/?37529', '<p>Pariatur quasi doloribus atque. Et provident laborum neque. Et velit porro et autem tempore. Doloribus nihil provident qui libero quaerat.</p>', 0, 0, 'Voluptatibus voluptatum et et corrupti optio.', 'keywords', 'Sed eligendi quas dolor omnis rerum eum doloremque.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-31 02:14:46'),
(9, '22496973', 'Arnold Donnelly Sr.', 2610, 5, 'https://lorempixel.com/640/480/?92928', 'Modi et et dicta. Est ratione autem aperiam aut corrupti autem. In omnis delectus sit sit ut tenetur et. A dicta sit consequatur veritatis amet minus sint. Culpa repudiandae enim facere.', 1, 1, 'Corrupti enim quaerat praesentium impedit libero.', 'keywords', 'Quos fuga et rem sit.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-09-13 23:24:26'),
(10, '80294320', 'Bella Oberbrunner I', 5992, 5, 'https://lorempixel.com/640/480/?11656', '<p>Commodi explicabo accusantium qui aut provident dolores tempore. Libero non distinctio ut tempore voluptatem. Quae eum sequi mollitia. Maxime minima deleniti consectetur incidunt.</p>', 1, 0, 'Officia repudiandae quas sint cupiditate quis ut quo nulla.', 'keywords', 'Perspiciatis voluptatem voluptas qui consequatur incidunt.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-31 02:16:55'),
(11, '66180654', 'Dr. Icie Ratke', 3705, 5, 'https://lorempixel.com/640/480/?73863', 'Nisi maiores fugiat ut repellendus. Assumenda quidem fugiat voluptas a aperiam eligendi. Ab ut suscipit nemo veritatis.', 0, 1, 'Est veritatis blanditiis rem sunt dicta.', 'keywords', 'Sunt nostrum iusto impedit quia repellendus facilis doloremque.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-28 03:34:59'),
(12, '56005349', 'Kassandra McLaughlin', 7311, 5, 'https://lorempixel.com/640/480/?81310', 'Veniam accusamus ad odit quia sunt doloremque. Repellendus facere quisquam quos cupiditate earum nulla. Impedit error ut ut et quaerat.', 0, 0, 'Autem itaque maxime maiores ut quia.', 'keywords', 'Fugit voluptates consequatur quisquam nemo tenetur consequatur.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-28 03:14:42'),
(13, '67082902', 'Mrs. Georgianna Connelly', 4578, 5, 'https://lorempixel.com/640/480/?91626', 'Consequatur doloremque et ipsa voluptas natus et adipisci explicabo. Culpa eum et nulla laborum recusandae quibusdam voluptatem quo. Excepturi cumque quia veniam quibusdam.', 0, 0, 'Earum adipisci numquam eum et eos.', 'keywords', 'Accusamus accusantium rerum a placeat eum dolorem ea.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-28 03:16:02'),
(14, '98823000', 'Mr. Alden Parker', 6665, 5, 'https://lorempixel.com/640/480/?79006', 'Numquam sit tempore et et similique. Voluptatum est inventore placeat a impedit fugit. Incidunt fuga tempore a in voluptatem sit. Dicta aliquam quisquam eos eaque pariatur et in.', 1, 0, 'Aut blanditiis quia id sint.', 'keywords', 'Soluta maiores quod dolore et necessitatibus.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(15, '39963246', 'Cathy Ferry', 2396, 5, 'https://lorempixel.com/640/480/?28817', 'Nihil iure dolorem ut. Perspiciatis autem sit sit. Quo saepe enim ab pariatur. Sapiente dolor maxime reprehenderit quod et quas.', 0, 0, 'Quam et ipsa dolor nam recusandae natus in.', 'keywords', 'Eum modi et quisquam enim.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-28 03:16:11'),
(16, '59545866', 'Ms. Ana Wiza DVM', 7162, 5, 'https://lorempixel.com/640/480/?15453', 'Sequi nulla nihil nobis et ut. Quae itaque blanditiis et quasi deleniti dolor. Adipisci facere voluptates sed officiis minus temporibus.', 0, 0, 'Saepe incidunt non ab laudantium nisi.', 'keywords', 'Impedit expedita deleniti est mollitia.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-28 03:16:09'),
(17, '24419321', 'Dion Herman', 6480, 5, 'https://lorempixel.com/640/480/?63467', 'Optio debitis possimus sapiente incidunt. Dolor eum cum maxime repudiandae. Voluptatem qui perferendis quas sit.', 0, 0, 'Atque minima aut sit pariatur rerum quo.', 'keywords', 'Excepturi mollitia corporis eius aperiam vel repellat quia.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-28 03:16:06'),
(18, '36125371', 'Ms. Felipa Gutkowski', 6289, 5, 'https://lorempixel.com/640/480/?25049', 'Officiis magni autem voluptatem fugit et. Tempore quia quia est. Ipsum ullam dolorem dolorem veritatis ad dignissimos inventore. Et quibusdam est ut deleniti.', 1, 0, 'Necessitatibus dolores possimus soluta et non.', 'keywords', 'Eligendi aspernatur quasi numquam officiis assumenda magnam.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(19, '28862789', 'Jonathan Stracke', 1505, 5, 'https://lorempixel.com/640/480/?51403', 'Voluptas delectus unde quis ipsum iusto ducimus aliquam quaerat. Id commodi ipsam hic velit vitae quo. Sed repellendus vel cupiditate officia omnis illo tempora.', 1, 0, 'Delectus perspiciatis voluptas vel quisquam ad placeat.', 'keywords', 'Suscipit fugit sit quis optio totam porro.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(20, '55668545', 'Arnaldo McLaughlin', 1424, 5, 'https://lorempixel.com/640/480/?87824', 'Quidem aut eos nihil culpa provident et dolor deleniti. Odio occaecati sapiente consequatur expedita est ut impedit est. Quo possimus est impedit esse.', 0, 0, 'Repudiandae et quos fuga ea.', 'keywords', 'Optio nobis fugiat voluptatibus eum rem.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-28 03:16:21'),
(21, '50996995', 'Dr. Dylan Fadel II', 7775, 5, 'https://lorempixel.com/640/480/?29181', 'Pariatur veniam consequatur sed recusandae. Nihil ipsam ullam dolorem. Iste nobis optio corrupti in laudantium libero.', 1, 0, 'Aliquam odit tenetur cupiditate vero qui corporis.', 'keywords', 'Odit sed at repellat provident debitis aliquid.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(22, '98982530', 'Gisselle Ratke DDS', 1775, 5, 'https://lorempixel.com/640/480/?26219', 'Enim consequuntur nihil et commodi nobis. Atque praesentium recusandae provident fuga. Modi et autem est tempora rem dicta.', 1, 0, 'Natus reprehenderit qui delectus officiis ut dolor.', 'keywords', 'At nulla praesentium veniam quisquam.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(23, '84573032', 'Ruth McDermott Sr.', 4001, 5, 'https://lorempixel.com/640/480/?83409', 'Voluptas est pariatur placeat aut dolorem. Labore molestiae illum dicta nobis velit magnam ad. Commodi voluptas unde rerum. Ut aliquid enim aut recusandae aliquid officiis recusandae.', 1, 0, 'Consequatur animi dolor dolor ipsum molestiae ut est.', 'keywords', 'Ullam velit repudiandae sequi ducimus in est dolores.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(24, '36039005', 'Mr. Ernie Douglas', 7534, 5, 'https://lorempixel.com/640/480/?46646', 'Perspiciatis modi ut sed fugit iste modi corporis. Excepturi voluptatum reiciendis blanditiis et minima placeat. Tempore libero aut unde ipsam. Qui sunt animi error dignissimos praesentium.', 1, 0, 'Quia possimus facilis fuga.', 'keywords', 'Incidunt quia aut eos officia.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(25, '19021713', 'Walton Von', 4550, 5, 'https://lorempixel.com/640/480/?39012', 'Modi similique id voluptate rerum. Odio quam numquam dolores et blanditiis mollitia quasi. Qui ratione aut praesentium quae quis.', 1, 0, 'Corrupti quisquam cum fuga tempore dolor ea iure.', 'keywords', 'Qui maiores ullam quis eligendi corporis et.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(26, '78030114', 'Prof. Westley Fahey', 7695, 5, 'https://lorempixel.com/640/480/?73184', 'Culpa doloremque voluptatibus omnis et. Cum soluta sint animi facere hic temporibus. Veniam quis consequatur odio. Et fuga hic accusamus aut quia iste.', 1, 0, 'Enim deleniti id blanditiis.', 'keywords', 'Ut qui consequatur cum quis enim et.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(27, '43935963', 'Moshe Conn Sr.', 9531, 5, 'https://lorempixel.com/640/480/?78513', 'Quasi corporis eaque qui aut pariatur dolor repudiandae. Sed qui est et autem soluta et aspernatur.', 1, 0, 'Cupiditate dolor voluptatibus porro rerum quos aut esse.', 'keywords', 'Maxime quae architecto eum eveniet deleniti.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(28, '83971808', 'Mrs. Icie Cruickshank', 1350, 5, 'https://lorempixel.com/640/480/?66731', 'Omnis nesciunt deserunt aut in labore. Fugiat quia quas at nihil id aut ullam. Est tenetur beatae libero maiores. Laborum ex ut iure aliquam.', 1, 0, 'Provident quidem nostrum fuga est est.', 'keywords', 'Sit nisi vero ea odit ullam error.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(29, '84801999', 'Keira Carroll', 7861, 5, 'https://lorempixel.com/640/480/?19152', 'Sed nemo odit recusandae asperiores. Alias explicabo nisi soluta doloribus et ab. Ab et quis vel eum deleniti voluptatem.', 1, 0, 'Cumque qui esse nostrum ea dolorem doloribus voluptas ipsam.', 'keywords', 'Eos sit ipsam sapiente nam aut quia sunt.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(30, '97170693', 'Bernhard Bartoletti', 3213, 5, 'https://lorempixel.com/640/480/?80631', 'Et ut voluptas ullam omnis porro. Voluptate assumenda mollitia vel consequatur nemo. Officiis voluptas soluta voluptatem et quia eius.', 1, 0, 'Omnis eveniet harum similique.', 'keywords', 'Atque tenetur perferendis voluptatem.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(31, '88830704', 'Chesley Mitchell', 7708, 5, 'https://lorempixel.com/640/480/?26423', 'Ipsum odio iste sed ut. Nobis eveniet laudantium aut. Eos saepe molestias et assumenda sequi dolor. Eligendi doloremque aut in dolorum autem quo modi. Iste eaque et quam sunt sequi inventore.', 1, 0, 'Et voluptatem tenetur voluptas modi sunt fugiat nemo.', 'keywords', 'Aspernatur dignissimos dolor velit autem non sunt occaecati voluptatem.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-28 03:37:37'),
(32, '85390881', 'Vella Kuhlman V', 4047, 5, 'https://lorempixel.com/640/480/?54093', 'Voluptates voluptatem enim quam alias iusto. Praesentium ullam doloribus assumenda sunt voluptatibus. A impedit repudiandae velit distinctio earum ut.', 1, 0, 'Eligendi culpa unde sit saepe.', 'keywords', 'Tempora omnis architecto molestias nihil nobis.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(33, '67357376', 'Olaf Erdman PhD', 2020, 5, 'https://lorempixel.com/640/480/?64952', 'Velit est qui esse consequatur. Magni animi expedita accusamus nihil voluptas ducimus adipisci. Ea ab quia est possimus corporis voluptatem velit.', 1, 0, 'Magnam similique exercitationem magni iure ut libero.', 'keywords', 'Suscipit quod eaque aspernatur eum.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(34, '22850447', 'Bria Sauer', 1457, 5, 'https://lorempixel.com/640/480/?58184', 'Dolorem iure illo repellat nulla placeat qui. Fugit tempora sed consectetur perspiciatis eum voluptas. Accusantium odit laboriosam corporis et ut necessitatibus sapiente.', 1, 0, 'Soluta commodi debitis harum rerum.', 'keywords', 'Qui iure placeat tempora quos architecto fugit reprehenderit.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(35, '62894753', 'Zachary Rohan', 3557, 5, 'https://lorempixel.com/640/480/?25500', 'Vero esse praesentium architecto. Id vel aliquid ipsam consequatur eius ipsam delectus. Libero sit ducimus sint ut aut.', 1, 0, 'Distinctio ut quo quo velit et vel.', 'keywords', 'Corrupti magnam optio autem laborum.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(36, '25335941', 'Prof. Janis Von Jr.', 1272, 5, 'https://lorempixel.com/640/480/?68738', 'Eaque eligendi consequatur dignissimos eum. Maxime vel occaecati omnis dicta cumque et dicta nam. Aut laboriosam qui veniam labore eaque laborum aliquid. Et consectetur qui iste accusamus.', 1, 0, 'Quae adipisci tempore ea in temporibus.', 'keywords', 'Corrupti nulla hic illo nihil eius.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(37, '71969619', 'Bertha Barrows', 1196, 5, 'https://lorempixel.com/640/480/?54475', 'Quia beatae esse dolor quam asperiores sunt vel. Eius dolores odit est nemo et.', 1, 0, 'Perspiciatis id sapiente expedita non molestiae consequatur maxime.', 'keywords', 'Et aut minus eius sit.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(38, '93886154', 'Creola Glover', 1881, 5, 'https://lorempixel.com/640/480/?90997', 'Sunt tempora earum id praesentium eaque. Quae quia officiis repellat nostrum enim delectus. Impedit quas velit distinctio possimus eum deleniti. Est est et aut perspiciatis minima.', 0, 0, 'Qui aliquam illum commodi et.', 'keywords', 'Culpa voluptatem molestiae sed mollitia numquam ea reprehenderit.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-28 03:45:01'),
(39, '02480220', 'Ms. Duane Nader PhD', 6890, 5, 'https://lorempixel.com/640/480/?50355', 'Repudiandae eos aspernatur sed minus sunt aut. Exercitationem ipsum sint id illo aut maiores.', 1, 0, 'Facilis fugiat quas harum ad ipsum.', 'keywords', 'Et excepturi maxime ea inventore.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(40, '49623901', 'Phoebe Little', 3356, 5, 'https://lorempixel.com/640/480/?20330', 'Consequatur dolores expedita deleniti eos illo cupiditate. Recusandae quibusdam ut necessitatibus minima. Reprehenderit eveniet dignissimos amet non qui harum et. Quidem quia minima iste.', 1, 0, 'Sunt consectetur est similique optio odit est.', 'keywords', 'Expedita est impedit sequi sed.', NULL, NULL, NULL, '2021-08-25 23:14:41', '2021-08-25 23:14:41'),
(41, '23158856', 'Miss Guadalupe Zboncak', 5851, 5, 'https://lorempixel.com/640/480/?50979', 'Aperiam beatae labore esse rerum commodi. Mollitia laborum dolores expedita nobis assumenda qui. Aut quibusdam iste delectus velit et quod id. Odit temporibus dolor iure rem.', 1, 0, 'Minus delectus sit ut eligendi debitis.', 'keywords', 'Iusto numquam deleniti et molestiae laboriosam ut.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(42, '26486567', 'Niko Prosacco MD', 6622, 5, 'https://lorempixel.com/640/480/?82779', 'Aut vel incidunt autem. Eaque voluptas quae rerum ex a molestias.', 1, 0, 'Totam sit dolore ab voluptates ex eius enim nemo.', 'keywords', 'Autem qui aut quo assumenda.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(43, '93508698', 'Mr. Haskell Cartwright', 2245, 5, 'https://lorempixel.com/640/480/?46370', 'Beatae cupiditate est id dolor. Ullam voluptatibus doloribus distinctio commodi. Sed minus iure harum possimus quia. Nobis architecto ut sequi praesentium itaque et.', 1, 0, 'Qui repellendus sed est harum nam.', 'keywords', 'Itaque odio iusto temporibus ut eius.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(44, '79608893', 'Maya Schulist', 6365, 5, 'https://lorempixel.com/640/480/?56042', 'Voluptatem tempora quidem ut unde. Voluptatibus et sit et harum aspernatur at voluptatem. Eum veniam consequatur vero dignissimos aut. Adipisci error repellat quas sed vitae.', 1, 0, 'Dolore sit exercitationem reprehenderit dolor adipisci.', 'keywords', 'Quaerat voluptatem eos rerum quasi aut.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(45, '92422797', 'Declan Wehner', 4341, 5, 'https://lorempixel.com/640/480/?81672', 'Sit autem in voluptatum eos. Modi adipisci assumenda laboriosam autem. Suscipit non praesentium omnis sit et nihil. Est quia perferendis illum quia eligendi quia ut.', 1, 0, 'Quis voluptatem tempora iusto quaerat alias sequi perferendis.', 'keywords', 'Quibusdam accusamus eligendi veritatis quia est nihil aut.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(46, '54432574', 'Ms. Ana Bernier Sr.', 9204, 5, 'https://lorempixel.com/640/480/?57486', 'Rerum dolorum qui quia vel alias. Reprehenderit eligendi et illum. Magnam non aut aut voluptas quis dolorem.', 1, 0, 'Et dolores error atque eos ipsa et maiores et.', 'keywords', 'Dolorum doloribus et asperiores.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(47, '50746507', 'Sandrine Hilpert', 7624, 5, 'https://lorempixel.com/640/480/?78192', 'Totam consequuntur veniam recusandae hic. Fugiat consequuntur dolor et voluptatem error dolore. Eaque excepturi officia voluptatem delectus qui doloribus libero maiores.', 1, 0, 'Quia fugit debitis facilis ipsum.', 'keywords', 'Possimus repellat in architecto inventore veniam qui temporibus.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(48, '12935130', 'Juanita Hessel', 4229, 5, 'https://lorempixel.com/640/480/?11981', 'Aut exercitationem quas nihil enim qui. Quae et deleniti quia et quisquam alias. Ab nulla iste ad aspernatur itaque hic.', 1, 0, 'Rem aut aspernatur magnam quo minima minima adipisci.', 'keywords', 'Impedit officia totam cumque pariatur quaerat dolore aut eius.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(49, '01855456', 'Mr. Tracey Stark', 8200, 5, 'https://lorempixel.com/640/480/?78152', 'Perspiciatis maiores dolores unde quasi. Velit repellat molestiae est rerum cum. Officiis magni ea ut dolores quod.', 1, 0, 'Tempora ut fugit quia qui.', 'keywords', 'Ipsam numquam expedita rem sit recusandae earum.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(50, '01898798', 'Marcelino Nicolas', 5782, 5, 'https://lorempixel.com/640/480/?80947', 'Sequi vel ea dolorum porro. Facere vel et earum omnis. Rerum rerum quis qui iusto placeat nihil. Illo dicta tempore possimus quisquam consequatur.', 1, 0, 'Quia impedit veritatis hic quo natus.', 'keywords', 'Repellendus ut quod sed error aut deserunt.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(51, '03544082', 'Zola Leannon IV', 6154, 5, 'https://lorempixel.com/640/480/?84694', 'Nostrum sed illo repudiandae voluptate. Quia hic porro cumque inventore accusamus earum. Dolores illum neque maxime aliquam cum.', 1, 0, 'Consequatur est nostrum deserunt qui ut vitae illum.', 'keywords', 'Atque sunt dolor quaerat ipsa natus minus.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(52, '67067053', 'Mrs. Natalia Stokes', 6047, 5, 'https://lorempixel.com/640/480/?97588', 'Aut non neque cupiditate quam. Cumque in minima non ut placeat ut. Aut occaecati aut animi quia itaque rerum eaque. Maxime delectus quia dolorem eligendi earum suscipit.', 1, 0, 'Qui ducimus laudantium modi ea officiis cum.', 'keywords', 'Dolores et error sunt quis.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(53, '58928851', 'Marlin Homenick', 5266, 5, 'https://lorempixel.com/640/480/?48178', 'Natus quia amet dolorem eos. Rem iure illum ipsa odit vero occaecati quas omnis. Quia quos consequatur ut et ex vel.', 1, 0, 'Deleniti eius est esse iusto quam nihil et reiciendis.', 'keywords', 'Corporis suscipit veniam incidunt soluta optio.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(54, '48412018', 'Richard Jerde', 5886, 5, 'https://lorempixel.com/640/480/?96714', 'Ea laborum amet quasi dolores dicta dolores dolores. Officiis asperiores sunt molestiae autem. Recusandae accusamus eius sint eum.', 1, 0, 'Velit explicabo qui explicabo et officiis.', 'keywords', 'Delectus ut maiores sequi libero reiciendis non ut.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(55, '74724604', 'Tara Reynolds', 1100, 5, 'https://lorempixel.com/640/480/?66161', 'Quae dolore et aut repellat harum consequatur facere. Omnis iure tempore vero quo. Qui facere ratione labore nihil.', 1, 0, 'Dolor corrupti aut iusto similique sint.', 'keywords', 'Deserunt iusto rerum nemo quaerat numquam quae.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(56, '10401293', 'Althea Collins', 6489, 5, 'https://lorempixel.com/640/480/?48196', 'Ut qui harum voluptatem nobis eligendi rerum sint culpa. Et dolores possimus et itaque quia. Et dolor eveniet ab et reprehenderit atque. Odio nobis qui aliquid porro animi.', 1, 0, 'Omnis soluta sed vero omnis odit iure est.', 'keywords', 'Qui et ullam consequuntur ratione animi porro consequatur.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(57, '19780184', 'Ocie Torp', 6559, 5, 'https://lorempixel.com/640/480/?10756', 'Voluptatem sit recusandae molestias consequatur. Et voluptate itaque quibusdam qui hic. Eveniet voluptas ducimus iste dolores dolorum.', 1, 0, 'Repellendus et molestias non et perspiciatis.', 'keywords', 'Quae eos in voluptas maiores deserunt quas magni.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(58, '30344099', 'Lauriane Renner', 1423, 5, 'https://lorempixel.com/640/480/?93802', 'Id aspernatur et incidunt velit dignissimos vero. Suscipit optio corporis et qui quam rem libero. Nihil sed culpa enim nemo veritatis minus a. Sint accusantium rem vel quas.', 1, 0, 'Tempora aut maxime aut rerum quia architecto voluptatem.', 'keywords', 'Veritatis quaerat magni ab reprehenderit.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(59, '51016678', 'Tatum Ziemann', 2092, 5, 'https://lorempixel.com/640/480/?43828', 'Ratione voluptas dolor enim voluptatem nesciunt. Et dicta cumque adipisci veritatis et expedita. Eum qui quidem in. Nulla inventore delectus in quam velit illum dolor aut.', 1, 0, 'Possimus ad ut dicta et assumenda.', 'keywords', 'Tenetur eum laborum nisi sed quaerat non eaque.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(60, '35334583', 'Mr. Landen Gutmann', 2286, 5, 'https://lorempixel.com/640/480/?60270', 'Quo laudantium minus aut. Aut sit velit molestiae non amet. Provident autem aut ducimus est dignissimos qui molestias. Eum vel cumque est. Beatae quo maxime aut modi.', 1, 0, 'Voluptatibus et unde possimus sint incidunt modi est consectetur.', 'keywords', 'Id doloribus blanditiis incidunt beatae.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(61, '69197918', 'Prof. Deon Wisoky DDS', 7476, 5, 'https://lorempixel.com/640/480/?14934', 'Consequatur cumque sed sint. Qui earum blanditiis ipsum quas exercitationem. Sit ipsam voluptatum voluptas recusandae nobis sint. Aut qui aut aut occaecati.', 1, 0, 'Velit aut alias veritatis incidunt.', 'keywords', 'Aut dolor quo similique tempora temporibus deserunt exercitationem.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(62, '08890344', 'Dudley Kovacek DVM', 8512, 5, 'https://lorempixel.com/640/480/?88282', 'Corporis enim aperiam culpa dignissimos. Culpa ea perspiciatis odit nisi ut.', 1, 0, 'Dolorum soluta sapiente non eos.', 'keywords', 'Et consequatur esse deleniti deserunt rem sed iure.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(63, '55557832', 'Pierce Lang', 1482, 5, 'https://lorempixel.com/640/480/?54139', 'Architecto distinctio rerum facere consequatur omnis. Omnis qui esse nulla. Id aut consequatur voluptas omnis et possimus.', 1, 0, 'Veritatis maxime et ipsum.', 'keywords', 'Dolorem quae quae officiis sit harum blanditiis.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(64, '40475059', 'Davin VonRueden', 7152, 5, 'https://lorempixel.com/640/480/?66381', 'Praesentium neque fuga modi rerum fuga qui repellat. Labore omnis sunt dolores et. Culpa sit repellendus molestiae quisquam alias ea est. Beatae officia ad est ut aliquam.', 1, 0, 'Quo totam cupiditate esse et.', 'keywords', 'Tempore unde voluptates omnis voluptatibus eos tempora et.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(65, '27977637', 'Chauncey Deckow', 6189, 5, 'https://lorempixel.com/640/480/?49138', 'Consequatur ut eum error unde. Consequuntur officia tempore qui dolorem commodi in. Culpa fugiat placeat quis eum ut ipsa quasi.', 1, 0, 'Error aut vel omnis voluptas debitis voluptates tempore.', 'keywords', 'Autem et rerum magni eum.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(66, '81335794', 'Aubree Vandervort', 7428, 5, 'https://lorempixel.com/640/480/?41936', 'Ipsum quibusdam iusto deleniti odit. A quos esse omnis. Recusandae a consequatur animi.', 1, 0, 'Doloremque dolores labore neque eveniet nesciunt non laboriosam.', 'keywords', 'Sunt sed quis inventore sequi sint rerum nulla.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(67, '52035807', 'Ms. Amelia Feest', 9834, 5, 'https://lorempixel.com/640/480/?50777', 'Impedit suscipit ipsam ratione minima non tempora eius est. Illo numquam consequatur consequatur. Quo a vitae et et autem aliquid. Consequatur porro assumenda totam et.', 1, 0, 'Unde qui cum maiores eligendi illo est molestiae.', 'keywords', 'Deserunt corporis qui unde enim.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(68, '12525751', 'Dr. Chanelle Strosin', 1965, 5, 'https://lorempixel.com/640/480/?63802', 'Ut et quo nihil quibusdam inventore ducimus. Consequuntur omnis laborum aut vel fuga quam sint. Voluptates magnam sequi laboriosam provident laborum esse nam.', 1, 0, 'Inventore nam sit tenetur odit nostrum.', 'keywords', 'Accusantium sequi nam et dolores est necessitatibus eveniet.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(69, '39981851', 'Richmond Moore', 7428, 5, 'https://lorempixel.com/640/480/?16327', 'Illum iure velit culpa repudiandae quod reprehenderit. Occaecati possimus nulla possimus nulla atque.', 1, 0, 'Occaecati ut assumenda et excepturi a error.', 'keywords', 'Ab ea quidem repudiandae dolorum.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(70, '58122662', 'Aileen Lebsack', 5568, 5, 'https://lorempixel.com/640/480/?69879', 'Minus repellat totam consequatur. Vitae rerum ab ex unde aliquid amet dicta. Accusantium aperiam quaerat officia.', 1, 0, 'Commodi aperiam illum eos commodi amet quibusdam.', 'keywords', 'Unde delectus totam animi ut odio eius.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(71, '59476917', 'Rachelle Hilpert', 9021, 5, 'https://lorempixel.com/640/480/?78319', 'Voluptas quidem pariatur voluptatem qui sunt commodi sint. Ut neque repellendus tenetur in. Sed sint saepe aspernatur deleniti consectetur molestiae sit est. Ea qui iusto autem.', 1, 0, 'Omnis possimus expedita ut dignissimos.', 'keywords', 'Et omnis quia excepturi in dolorum expedita officia odit.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(72, '17757447', 'Jovan Hickle', 6082, 5, 'https://lorempixel.com/640/480/?23680', 'Est consectetur totam repudiandae qui cupiditate id. Voluptate odit pariatur sapiente accusamus repellat itaque qui sit. Est quo culpa qui et ut ut delectus cumque.', 1, 0, 'Itaque ut accusamus eveniet.', 'keywords', 'Et praesentium eos delectus.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(73, '60715951', 'Mack Dibbert', 6907, 5, 'https://lorempixel.com/640/480/?62039', 'Enim eos qui qui tempore sit excepturi est. Non eum voluptatum aut officia aut modi repellat. Fugit optio harum amet sit sit suscipit. Et numquam architecto eum maxime harum minima exercitationem.', 1, 0, 'Magni aspernatur ipsa est aliquam blanditiis quo.', 'keywords', 'Eos saepe possimus sed nobis culpa.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(74, '56403350', 'Chet Romaguera III', 2452, 5, 'https://lorempixel.com/640/480/?64124', 'Illum consectetur numquam delectus nam. Necessitatibus atque cumque quas eum sint. Earum est soluta at iste aliquid.', 1, 0, 'Rerum quo odit ratione voluptate et minima.', 'keywords', 'Quo rerum ut omnis magni aperiam.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(75, '08661371', 'Prof. Felipe Towne I', 7797, 5, 'https://lorempixel.com/640/480/?16275', 'Accusamus qui eos et qui porro ipsam sequi. Corrupti sint sequi quae velit. Alias adipisci aperiam mollitia qui assumenda aut.', 1, 0, 'Omnis delectus nulla unde doloremque saepe.', 'keywords', 'Minima porro aspernatur ipsum aut.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(76, '65885673', 'Katrine Lockman', 5389, 5, 'https://lorempixel.com/640/480/?70408', 'Distinctio est ullam consequatur quia quasi tenetur. Ea quos eos sunt dolores rem ex. Et dicta cupiditate at in qui earum. Laboriosam occaecati in sit sed ut dolores aut.', 1, 0, 'Sed est esse eos error modi quia.', 'keywords', 'Earum earum ad velit commodi nemo.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(77, '08330871', 'Myrtis Greenfelder', 4655, 5, 'https://lorempixel.com/640/480/?21138', 'Omnis laborum nam a similique. Eum eligendi quasi beatae. Explicabo numquam fugit accusantium ea blanditiis assumenda.', 1, 0, 'Nisi vel voluptatem placeat voluptas quia.', 'keywords', 'Non et et ab sed quis cupiditate sequi sed.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(78, '89536308', 'Steve Hamill PhD', 1430, 5, 'https://lorempixel.com/640/480/?21298', 'Quos nostrum neque modi in quia. Voluptas ducimus unde voluptas sunt rerum. Voluptas atque libero ut harum est voluptas. Soluta iure repellat inventore ab et maxime.', 1, 0, 'Saepe debitis est expedita architecto debitis.', 'keywords', 'Ullam aspernatur aut aut soluta atque.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(79, '73700456', 'Doyle Ledner', 7393, 5, 'https://lorempixel.com/640/480/?20721', 'Facilis perferendis est nam rerum. Nihil rem sunt unde accusantium doloremque repudiandae aut ut. Ducimus numquam error aut. Laudantium fugiat officiis distinctio eum.', 1, 0, 'Est qui in quo aut officia sint sint.', 'keywords', 'Ipsam ea ipsum facilis.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(80, '82490362', 'Ms. Jalyn Rippin DVM', 9526, 5, 'https://lorempixel.com/640/480/?31562', 'Aut cupiditate excepturi nisi mollitia. Quis sint eos et. Facilis quas et ut quidem. Amet quo totam accusantium et officia nulla. Quae odio natus facere nihil quis.', 1, 0, 'Voluptates aut cumque harum tempora quia qui voluptatem.', 'keywords', 'Fuga est eius nam nihil.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(81, '04032519', 'Dr. Bartholome Moen', 6320, 5, 'https://lorempixel.com/640/480/?66998', 'Dignissimos autem quas delectus iure. In asperiores sunt possimus sit.', 1, 0, 'Sit qui perspiciatis aut quisquam aspernatur sed consectetur.', 'keywords', 'Autem dolorem voluptate qui iusto.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(82, '07732140', 'Coby Runte PhD', 1458, 5, 'https://lorempixel.com/640/480/?74435', 'Praesentium nulla dolore sint iure. Sit temporibus vitae ad ut quis. Ut ipsum quidem minima eos dolorem. Blanditiis quia harum veritatis facilis magni.', 1, 0, 'Vel quasi omnis assumenda dolore.', 'keywords', 'Omnis ut totam nulla laboriosam reprehenderit.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(83, '77504647', 'Prof. Brianne Nitzsche MD', 4618, 5, 'https://lorempixel.com/640/480/?74035', 'Repellendus ea doloribus voluptas est porro commodi. Facilis pariatur dolorem numquam ratione sit beatae. Sequi sunt sunt omnis.', 1, 0, 'Dolor dolorum eligendi voluptatem alias nihil harum totam.', 'keywords', 'Ut architecto excepturi nihil quod tempore cumque.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(84, '21974106', 'Coleman Lueilwitz', 5024, 5, 'https://lorempixel.com/640/480/?11197', 'Nihil consectetur temporibus dicta molestiae temporibus nesciunt voluptas. Vitae voluptate explicabo atque. Sit distinctio eum iste omnis. Debitis in iste unde voluptatibus laboriosam nostrum.', 1, 0, 'Repudiandae est commodi exercitationem dignissimos est.', 'keywords', 'Aut distinctio voluptate et odio et.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(85, '80495468', 'Shemar Zulauf II', 1901, 5, 'https://lorempixel.com/640/480/?63986', 'Voluptate sunt labore et dolorum suscipit unde. Laudantium consequuntur non nihil eaque et itaque. Enim aut mollitia eos quos repellat et et.', 1, 0, 'Quia unde soluta doloremque alias perferendis eos sed dolorum.', 'keywords', 'Ut fugiat sed rerum laboriosam hic sunt.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(86, '91748263', 'Damaris Fadel', 7863, 5, 'https://lorempixel.com/640/480/?25385', 'Animi hic et fugiat qui consequuntur autem eaque cupiditate. Maiores illo quos natus dolorem quo ut repudiandae. Cupiditate eum dolor veniam.', 1, 0, 'Blanditiis qui omnis repudiandae delectus.', 'keywords', 'Dolore aut quos odio cum animi eos eligendi.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(87, '89179598', 'Carleton Brown', 2509, 5, 'https://lorempixel.com/640/480/?60407', 'Numquam dolores qui non repellendus laudantium quis qui. Rerum laudantium necessitatibus nihil. Eos autem consequatur qui in molestias sed.', 1, 0, 'Amet dolorem quaerat error deleniti.', 'keywords', 'Voluptatem labore qui libero voluptatem.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(88, '27587546', 'David Bauch', 2186, 5, 'https://lorempixel.com/640/480/?22928', 'Reiciendis est laboriosam tempore magnam. Voluptas ea voluptas maiores rerum eius est. Officia explicabo distinctio inventore nihil eos dolorem voluptatem.', 1, 0, 'Reprehenderit velit ut harum praesentium enim.', 'keywords', 'Necessitatibus eligendi ducimus est voluptas dolores expedita.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(89, '67536238', 'Prof. Antonina Lockman IV', 7117, 5, 'https://lorempixel.com/640/480/?12113', 'Ut earum tenetur dolores error dolores minus est. Est debitis ut magnam ea ut.', 1, 0, 'Illum inventore est et.', 'keywords', 'Nulla molestiae hic voluptatem repellat.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(90, '09627451', 'Margaret Kautzer', 6249, 5, 'https://lorempixel.com/640/480/?53489', 'Adipisci ut veritatis vel commodi aut error beatae repellendus. Distinctio consequuntur id veniam omnis architecto placeat. Nihil adipisci quaerat amet illum officiis.', 1, 0, 'Id maxime ducimus maxime optio minima.', 'keywords', 'Voluptatem vitae sapiente illo reiciendis.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(91, '92568976', 'Jayce Schinner', 8361, 5, 'https://lorempixel.com/640/480/?59527', 'Nisi ut ea officiis et. Ut laborum consectetur doloribus fugiat neque. Provident atque eos minima eveniet aperiam iusto. Numquam tempora necessitatibus culpa quas voluptatibus et.', 1, 0, 'Dolorum ad laudantium quia laudantium deserunt.', 'keywords', 'Quis maiores asperiores maxime.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(92, '01626223', 'Marcelo Dietrich', 1461, 5, 'https://lorempixel.com/640/480/?79070', 'Possimus voluptatum beatae doloremque necessitatibus. In iusto modi autem facere aperiam ipsum et. Est iure ratione dolore aspernatur vel cupiditate. Et at animi qui eius suscipit est non.', 1, 0, 'Error eius sint et voluptatem voluptas.', 'keywords', 'Molestias maiores incidunt voluptatem enim ad.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(93, '22047984', 'Trent Morissette', 7906, 5, 'https://lorempixel.com/640/480/?78028', 'Sunt enim deleniti ut. Similique voluptatibus ex ut eum mollitia voluptas. Tenetur rerum ipsam qui quis laboriosam quod non qui.', 1, 0, 'Ipsum veritatis explicabo expedita adipisci.', 'keywords', 'Nihil facilis amet expedita.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(94, '83467431', 'Lola Haag', 6667, 5, 'https://lorempixel.com/640/480/?78053', 'Cum rem molestias quis. Beatae sed labore saepe. Culpa sit accusamus saepe exercitationem. Dolor minus perferendis totam autem. Ea molestiae et itaque. Quia labore ut asperiores sunt perferendis.', 1, 0, 'Sunt natus tempora ducimus omnis cupiditate.', 'keywords', 'In consequatur fuga dolorem iste eaque.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(95, '92722316', 'Dessie Ratke', 5091, 5, 'https://lorempixel.com/640/480/?57164', 'Molestiae rerum nihil laudantium dolorum quibusdam. Vel quidem et beatae debitis itaque dolor. Quia ipsam consequuntur deserunt incidunt ducimus qui consequatur.', 1, 0, 'Sint corporis quia velit amet impedit.', 'keywords', 'Aperiam deleniti et aliquid quod sed nemo.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(96, '16809192', 'Hayden Hayes', 5416, 5, 'https://lorempixel.com/640/480/?49027', 'Voluptatibus sequi nihil voluptatem eos reiciendis facere quod. Iusto enim sit culpa reprehenderit. Eos ut sit vitae placeat ut. Ea iusto nisi iure harum molestiae perferendis.', 1, 0, 'Totam maxime fugit eveniet perferendis a.', 'keywords', 'Sed suscipit iste quas voluptate veritatis tenetur sit laudantium.', NULL, NULL, NULL, '2021-08-25 23:14:42', '2021-08-25 23:14:42'),
(97, '95375373', 'Mary Leannon', 5345, 5, 'https://lorempixel.com/640/480/?16775', 'Et ut a dolor tenetur vero ut laudantium quod. Ipsam sint qui non inventore deserunt et quas. Fuga vel laboriosam quae minus esse.', 1, 0, 'Officia molestias id ea quia totam et.', 'keywords', 'Sit soluta beatae quia id voluptas harum qui.', NULL, NULL, NULL, '2021-08-25 23:14:43', '2021-08-25 23:14:43'),
(98, '69122903', 'Prof. Roxane Watsica', 1189, 5, 'https://lorempixel.com/640/480/?64969', 'Et ea voluptates ab molestiae debitis sed. A id esse laborum. Voluptatum blanditiis natus at magni. Perferendis odit aut non sunt voluptas exercitationem voluptate.', 1, 0, 'Magnam est velit sequi repudiandae quia saepe consequatur.', 'keywords', 'Enim deserunt voluptates ullam.', NULL, NULL, NULL, '2021-08-25 23:14:43', '2021-08-25 23:14:43'),
(99, '30759466', 'Rudy Luettgen', 5407, 5, 'https://lorempixel.com/640/480/?75797', 'Modi vitae placeat alias quo aliquam velit voluptate. At necessitatibus necessitatibus numquam ea dolorem aut hic.', 1, 0, 'Ad ea molestias repellendus placeat odio eos.', 'keywords', 'Alias dolore consequatur iusto ut.', NULL, NULL, NULL, '2021-08-25 23:14:43', '2021-08-25 23:14:43'),
(100, '67906253', 'Cary Lueilwitz Jr.', 2289, 5, 'https://lorempixel.com/640/480/?87482', 'In quibusdam incidunt dolorem veniam dolore doloribus impedit. Odit sed repellendus consequatur ullam vitae. Repudiandae et doloribus repellendus.', 1, 0, 'Commodi laudantium odit provident enim sit.', 'keywords', 'Sapiente consequatur non amet impedit.', NULL, NULL, NULL, '2021-08-25 23:14:43', '2021-08-25 23:14:43'),
(102, NULL, 'Trinh Long', 1560000, 6, '/upload/luca-micheli-ruWkmt3nU58-unsplash%20(1).jpg', '<p><img alt=\"\" src=\"http://tre.test/upload/luca-micheli-ruWkmt3nU58-unsplash%20(1).jpg\" style=\"height:1280px; width:1920px\" /></p>', 1, 1, NULL, NULL, NULL, NULL, 0, NULL, '2021-09-02 22:34:39', '2021-09-02 23:04:14'),
(103, NULL, 'Long Hiryu', 1560000, 6, '/upload/toby-elliott-wMr41_LZp0k-unsplash.jpg', '<p><img alt=\"\" src=\"http://tre.test/upload/livia-fressy-toaa6L4C3bk-unsplash.jpg\" style=\"height:359px; width:500px\" /></p>', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2021-09-03 02:56:37', '2021-09-03 02:56:37');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `run` tinyint(1) NOT NULL DEFAULT '0',
  `contact_id` int(10) UNSIGNED DEFAULT NULL,
  `partner_id` int(10) UNSIGNED DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci,
  `note` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `created_at`, `updated_at`, `name`, `run`, `contact_id`, `partner_id`, `location`, `note`) VALUES
(1, '2021-09-26 00:42:34', '2021-10-03 23:53:33', 'Dự án Crowne Plaza Phú Quốc', 1, 75, 17, 'Nam đảo Phú Quốc', '<p>Dự án Phú Quốc đang chỉnh sửa</p>'),
(2, '2021-09-29 00:12:59', '2021-09-29 00:12:59', 'Dự án Cam Ranh', 0, 65, 16, 'Cam Ranh', '<p>Cam Ranh</p>'),
(3, '2021-10-05 00:51:21', '2021-10-05 01:13:38', 'Dự khu nghỉ dưỡng AllStars Cam Ranh', 1, 75, 17, 'Cam Ranh', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'in',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên dự án / PO ',
  `author` bigint(20) NOT NULL COMMENT 'User id',
  `contact_id` int(10) UNSIGNED NOT NULL COMMENT 'Người liên hệ trong bảng Contacts',
  `partner_id` int(10) UNSIGNED NOT NULL COMMENT 'Đối tác bảng Partners',
  `project_id` bigint(20) NOT NULL,
  `sku` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã báo giá',
  `version` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Phiên bản báo giá',
  `note` text COLLATE utf8mb4_unicode_ci,
  `subTotal` double NOT NULL,
  `tax` int(2) NOT NULL DEFAULT '10',
  `total` double NOT NULL,
  `locked` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 is locked',
  `approved` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `type`, `name`, `author`, `contact_id`, `partner_id`, `project_id`, `sku`, `version`, `note`, `subTotal`, `tax`, `total`, `locked`, `approved`, `created_at`, `updated_at`) VALUES
(16, 'in', 'Bảng báo giá gỡ bỏ giãn cách', 1, 65, 10, 1, 'PQ', 'RV00', '<p>Thanh toan 50%</p>', 20015557, 3, 20616023.71, 0, 0, '2021-09-09 01:04:21', '2021-09-30 00:32:40'),
(17, 'out', 'Báo giá Dự án Crowne Plaza Phú Quốc', 1, 65, 17, 1, 'BOHO/BG/13092021', 'RV00', '<p style=\"text-align:justify\"><strong>Lưu ý:</strong><br />\r\n- Thời gian giao hàng : thỏa thuận.<br />\r\n- Nghiệm thu tại xưởng TRE Funriture trước khi giao hàng.<br />\r\n- Phương thức thanh toán : Thanh toán 50% giá trị đơn hàng trong vòng 03 ngày kể từ ngày ký xác nhận đơn hàng, Thanh toán phần còn lai ngay&nbsp;khi giao hàng và nhận hóa đơn GTGT.<br />\r\n<strong>- Làm mẫu bằng đơn giá hàng loạt x 1.5</strong></p>\r\n\r\n<p style=\"text-align:justify\"><strong>Quý khách vui lòng liên hệ khi cần được hỗ trợ :</strong><br />\r\n- Điện thoại : 028 2253 6743<br />\r\n- Email : info@tre-furniture.com<br />\r\n<br />\r\n<strong>Thông tin chuyển khoản:</strong><br />\r\nChủ tài khoản: <strong>CONG TY CO PHAN TRE FURNITURE</strong><br />\r\nSố tài khoản: <strong>8286 6666</strong><br />\r\n<strong>NH TMCP Á Châu&nbsp;<br />\r\n(ACB)- PGD Nguyễn Sơn, Tp. HCM</strong></p>', 2672155000, 10, 2939370500, 1, 4, '2021-09-12 18:53:21', '2021-10-03 23:29:51'),
(18, 'in', 'Bảng báo giá dây dù (CT Phú Quốc)', 1, 64, 50, 1, 'BGDAYDU', 'RV00', NULL, 34300000, 10, 37730000, 0, 0, '2021-09-30 00:06:49', '2021-09-30 00:32:58'),
(19, 'out', 'Báo giá AllStars Cam Ranh Lobby', 1, 75, 17, 3, 'ALLSTAR-LOBBY', 'RV00', NULL, 3390000000, 10, 3729000000, 0, 4, '2021-10-05 00:56:19', '2021-10-05 01:21:31'),
(20, 'out', 'Bảng báo giá AllStars Villa', 1, 65, 17, 3, 'ALLSTAR-VILLA', 'RV00', NULL, 1165000000, 10, 1281500000, 1, 0, '2021-10-05 01:03:36', '2021-10-05 01:03:36'),
(21, 'in', 'Bảng báo giá dây dù AllStar', 1, 64, 50, 3, 'DAYDU-ALLSTAR', 'RV00', NULL, 79410000, 10, 87351000, 1, 0, '2021-10-05 01:05:19', '2021-10-05 01:05:19'),
(22, 'in', 'Báo giá dây dù dẹp ALLSTAR', 1, 58, 50, 3, 'DAYDEP_ALLSTAR', 'RV00', NULL, 19852500, 10, 21837750, 1, 0, '2021-10-05 01:06:08', '2021-10-05 01:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `quotation_details`
--

CREATE TABLE `quotation_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation_id` int(10) UNSIGNED NOT NULL,
  `dimension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` text COLLATE utf8mb4_unicode_ci,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên thành phần được báo giá',
  `quantity` double(8,2) NOT NULL COMMENT 'số lượng',
  `price` double NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lineTotal` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotation_details`
--

INSERT INTO `quotation_details` (`id`, `sku`, `quotation_id`, `dimension`, `img`, `product_id`, `desc`, `name`, `quantity`, `price`, `unit`, `lineTotal`, `created_at`, `updated_at`) VALUES
(228, '28862789', 16, NULL, 'https://lorempixel.com/640/480/?51403', 19, 'Voluptas delectus unde quis ipsum iusto ducimus aliquam quaerat. Id commodi ipsam hic velit vitae quo. Sed repellendus vel cupiditate officia omnis illo tempora.', 'Jonathan Stracke', 1.00, 1505, NULL, 1505, '2021-09-20 00:55:57', '2021-09-20 00:55:57'),
(229, '59545866', 16, NULL, 'https://lorempixel.com/640/480/?15453', 16, 'Sequi nulla nihil nobis et ut. Quae itaque blanditiis et quasi deleniti dolor. Adipisci facere voluptates sed officiis minus temporibus.', 'Ms. Ana Wiza DVM', 1.00, 7162, NULL, 7162, '2021-09-20 00:55:57', '2021-09-20 00:55:57'),
(230, '02480220', 16, NULL, 'https://lorempixel.com/640/480/?50355', 39, 'Repudiandae eos aspernatur sed minus sunt aut. Exercitationem ipsum sint id illo aut maiores.', 'Ms. Duane Nader PhD', 1.00, 6890, NULL, 6890, '2021-09-20 00:55:57', '2021-09-20 00:55:57'),
(231, '54432574', 16, NULL, 'https://lorempixel.com/640/480/?57486', 46, 'Rerum dolorum qui quia vel alias. Reprehenderit eligendi et illum. Magnam non aut aut voluptas quis dolorem.', 'Ms. Ana Bernier Sr.', 1.00, 20000000, NULL, 20000000, '2021-09-20 00:55:58', '2021-09-20 00:55:58'),
(237, '57167374', 18, NULL, '/upload/sanpham/images.jpg', 4, '<p>Porro et esse id molestiae amet. Qui mollitia illum vel eveniet voluptas maiores quia. Exercitationem deserunt doloribus ab sapiente. Earum aspernatur saepe natus perferendis reprehenderit.</p>', 'Dây dù tròn 6mm', 350.00, 98000, 'kg', 34300000, '2021-09-30 00:30:57', '2021-09-30 00:30:57'),
(246, '25258240', 17, '700 x 800 x 900', '/upload/sanpham/Acapulco-Chair-4.jpg', 1, '<ul>\r\n	<li>Khung sắt sơn tĩnh điện.</li>\r\n	<li>Sợi mây nhựa tròn quấn quanh ghế.</li>\r\n</ul>', 'Ghế Acapulco màu đen', 1.00, 18000000, 'Cái', 18000000, '2021-10-03 23:29:51', '2021-10-03 23:29:51'),
(247, '68705176', 17, '700 x 800 x 900', '/upload/sanpham/huron-large-lounge-chair-cushion-gray-c.jpg', 2, '<ul>\r\n	<li>Khung nhôm sơn tĩnh điện.</li>\r\n	<li>Đan sợi mây nhựa tròn.</li>\r\n	<li>Không bao gồm nệm gối.</li>\r\n</ul>', 'Ghế thư giãn Huron', 1.00, 2650000, 'Cái', 2650000, '2021-10-03 23:29:51', '2021-10-03 23:29:51'),
(248, '50558278', 17, '700 x 800 x 900', '/upload/sanpham/100854_XXX_v1.jpg', 3, '<ul>\r\n	<li>Khung ghế mây tự nhiên.</li>\r\n	<li>Không bao gồm nệm gối.</li>\r\n	<li>Sử dụng trong nhà.</li>\r\n</ul>', 'Ghế Papasan mây tự nhiên', 1000.00, 2650000, 'Cái', 2650000000, '2021-10-03 23:29:51', '2021-10-03 23:29:51'),
(249, '28862789', 17, NULL, 'https://lorempixel.com/640/480/?51403', 19, 'Voluptas delectus unde quis ipsum iusto ducimus aliquam quaerat. Id commodi ipsam hic velit vitae quo. Sed repellendus vel cupiditate officia omnis illo tempora.', 'Jonathan Stracke', 1000.00, 1505, 'Cai', 1505000, '2021-10-03 23:29:51', '2021-10-03 23:29:51'),
(250, '25258240', 19, '700 x 800 x 900', '/upload/sanpham/Acapulco-Chair-4.jpg', 1, '<ul>\r\n	<li>Khung sắt sơn tĩnh điện.</li>\r\n	<li>Sợi mây nhựa tròn quấn quanh ghế.</li>\r\n</ul>', 'Ghế Acapulco màu đen', 100.00, 18000000, 'Cái', 1800000000, '2021-10-05 00:56:19', '2021-10-05 00:56:19'),
(251, '68705176', 19, '700 x 800 x 900', '/upload/sanpham/huron-large-lounge-chair-cushion-gray-c.jpg', 2, '<ul>\r\n	<li>Khung nhôm sơn tĩnh điện.</li>\r\n	<li>Đan sợi mây nhựa tròn.</li>\r\n	<li>Không bao gồm nệm gối.</li>\r\n</ul>', 'Ghế thư giãn Huron', 300.00, 2650000, 'Cái', 795000000, '2021-10-05 00:56:19', '2021-10-05 00:56:19'),
(252, '50558278', 19, '700 x 800 x 900', '/upload/sanpham/100854_XXX_v1.jpg', 3, '<ul>\r\n	<li>Khung ghế mây tự nhiên.</li>\r\n	<li>Không bao gồm nệm gối.</li>\r\n	<li>Sử dụng trong nhà.</li>\r\n</ul>', 'Ghế Papasan mây tự nhiên', 300.00, 2650000, 'Cái', 795000000, '2021-10-05 00:56:19', '2021-10-05 00:56:19'),
(253, '25258240', 20, '700 x 800 x 900', '/upload/sanpham/Acapulco-Chair-4.jpg', 1, '<ul>\r\n	<li>Khung sắt sơn tĩnh điện.</li>\r\n	<li>Sợi mây nhựa tròn quấn quanh ghế.</li>\r\n</ul>', 'Ghế Acapulco màu đen', 50.00, 18000000, 'Cái', 900000000, '2021-10-05 01:03:36', '2021-10-05 01:03:36'),
(254, '68705176', 20, '700 x 800 x 900', '/upload/sanpham/huron-large-lounge-chair-cushion-gray-c.jpg', 2, '<ul>\r\n	<li>Khung nhôm sơn tĩnh điện.</li>\r\n	<li>Đan sợi mây nhựa tròn.</li>\r\n	<li>Không bao gồm nệm gối.</li>\r\n</ul>', 'Ghế thư giãn Huron', 50.00, 2650000, 'Cái', 132500000, '2021-10-05 01:03:37', '2021-10-05 01:03:37'),
(255, '50558278', 20, '700 x 800 x 900', '/upload/sanpham/100854_XXX_v1.jpg', 3, '<ul>\r\n	<li>Khung ghế mây tự nhiên.</li>\r\n	<li>Không bao gồm nệm gối.</li>\r\n	<li>Sử dụng trong nhà.</li>\r\n</ul>', 'Ghế Papasan mây tự nhiên', 50.00, 2650000, 'Cái', 132500000, '2021-10-05 01:03:37', '2021-10-05 01:03:37'),
(256, '57167374', 21, NULL, '/upload/sanpham/images.jpg', 4, '<p>Porro et esse id molestiae amet. Qui mollitia illum vel eveniet voluptas maiores quia. Exercitationem deserunt doloribus ab sapiente. Earum aspernatur saepe natus perferendis reprehenderit.</p>', 'Dây dù tròn 6mm', 10000.00, 7941, NULL, 79410000, '2021-10-05 01:05:19', '2021-10-05 01:05:19'),
(257, '57167374', 22, NULL, '/upload/sanpham/images.jpg', 4, '<p>Porro et esse id molestiae amet. Qui mollitia illum vel eveniet voluptas maiores quia. Exercitationem deserunt doloribus ab sapiente. Earum aspernatur saepe natus perferendis reprehenderit.</p>', 'Dây dù tròn 6mm', 2500.00, 7941, NULL, 19852500, '2021-10-05 01:06:08', '2021-10-05 01:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'Tên vai trò'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Administrators'),
(2, 'Sales'),
(3, 'Accountants'),
(4, 'Users'),
(5, 'Quản trị');

-- --------------------------------------------------------

--
-- Table structure for table `role_pms`
--

CREATE TABLE `role_pms` (
  `id_role` int(11) NOT NULL,
  `id_pms` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tranfers`
--

CREATE TABLE `tranfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên lệnh chuyển tiền',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Transfer' COMMENT 'Luân chuyển',
  `value` double UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Giá trị luân chuyển',
  `account_id_from` int(10) UNSIGNED NOT NULL COMMENT 'Nguồn tiền',
  `account_id_to` int(10) UNSIGNED NOT NULL COMMENT 'Tài khoản nhận',
  `approved` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Người duyệt lệnh',
  `locked` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Khoá lệnh',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Người tạo lệnh',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_id` int(10) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(10) NOT NULL DEFAULT '0',
  `avatar` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable` tinyint(4) NOT NULL DEFAULT '1',
  `marital` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'single',
  `birth` date DEFAULT NULL,
  `idNumber` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `cate_id`, `email`, `email_verified_at`, `password`, `admin`, `role_id`, `avatar`, `address`, `phone`, `enable`, `marital`, `birth`, `idNumber`, `gender`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sale 01', 2, 'longtrinh@tre-furniture.com', NULL, '$2y$10$S3cWl1hQsy6A9CB9WG0Ha.uv4uk9TxgmRBKNw9FWCDtU2ZEuPkOMu', 0, 2, 'images/hiryu.png', '14 Lê Quang Chiểu, Hiệp Tân, Tân Phú', '0904423986', 1, 'single', NULL, NULL, 0, NULL, '2021-09-03 01:29:44', '2021-09-03 06:39:22'),
(2, 'Administrator', 1, 'admin@admin.com', NULL, '$2y$10$S3cWl1hQsy6A9CB9WG0Ha.uv4uk9TxgmRBKNw9FWCDtU2ZEuPkOMu', 1, 1, 'images/hiryu.png', '01 Nguyễn Thị Minh Khai', '0865396632', 1, 'single', NULL, NULL, 0, 'jQ1j8IBsPdixPHGFfPKmze13YjRuIoyo4yDcCrzVGVGJpaoElfumtSCGmuW1', '2021-09-03 03:33:44', '2021-09-03 06:39:23'),
(3, 'Accountant', 3, 'ketoan@ketoan.com', NULL, '$2y$10$S3cWl1hQsy6A9CB9WG0Ha.uv4uk9TxgmRBKNw9FWCDtU2ZEuPkOMu', 0, 3, 'images/hiryu.png', NULL, NULL, 1, 'single', NULL, NULL, 0, 'T8jFbcMT8ckMU0SwD1yFgeBqPHCcBGjTxjcBE9gJqbLrNM21ELmjNrcV7RhD', NULL, NULL),
(4, 'Giám đốc', 4, 'giamdoc@gmail.com', NULL, '$2y$10$S3cWl1hQsy6A9CB9WG0Ha.uv4uk9TxgmRBKNw9FWCDtU2ZEuPkOMu', 0, 5, 'images/hiryu.png', NULL, NULL, 1, 'single', NULL, NULL, 0, NULL, NULL, NULL),
(5, 'Sale 02', 2, 'sale02@gmail.com', NULL, '$2y$10$S3cWl1hQsy6A9CB9WG0Ha.uv4uk9TxgmRBKNw9FWCDtU2ZEuPkOMu', 0, 2, 'images/hiryu.png', NULL, NULL, 1, 'single', NULL, NULL, 0, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cates`
--
ALTER TABLE `cates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `contacts` ADD FULLTEXT KEY `fullname` (`fullname`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pms`
--
ALTER TABLE `pms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact` (`contact_id`),
  ADD KEY `partner` (`partner_id`);

--
-- Indexes for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotation` (`quotation_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_pms`
--
ALTER TABLE `role_pms`
  ADD PRIMARY KEY (`id_role`,`id_pms`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `tranfers`
--
ALTER TABLE `tranfers`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `cates`
--
ALTER TABLE `cates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pms`
--
ALTER TABLE `pms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `quotation_details`
--
ALTER TABLE `quotation_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tranfers`
--
ALTER TABLE `tranfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `contact` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`),
  ADD CONSTRAINT `partner` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`);

--
-- Constraints for table `quotation_details`
--
ALTER TABLE `quotation_details`
  ADD CONSTRAINT `quotation` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

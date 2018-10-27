-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Oct 27, 2018 at 02:43 PM
-- Server version: 5.7.20
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mysite`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalogs`
--

CREATE TABLE `catalogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `vip` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalogs`
--

INSERT INTO `catalogs` (`id`, `name`, `body`, `pic`, `parent_id`, `vip`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Lamp', 'Discription kategorii', 'lamp.png', 0, 0, 0, NULL, NULL),
(2, 'Lak', 'Discriotion katrgorii ', 'lak.png', NULL, NULL, NULL, NULL, NULL),
(3, 'Insrument', 'discription', 'inst.png', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Новости', '<p>Ново<strong>ости новости </strong></p>\r\n\r\n<p><strong><span style=\"font-size:20px\">создание новостей</span></strong></p>\r\n\r\n<p>&nbsp;</p>', '2018-10-27 06:04:22', '2018-10-27 06:04:22', NULL),
(2, 'Товары', '<h2 style=\"font-style:italic;\">каталог товаров</h2>\r\n\r\n<h1><span style=\"color:#FF0000\"><span style=\"font-family:comic sans ms,cursive\">много товаров на разные темы</span></span></h1>', '2018-10-27 06:05:51', '2018-10-27 06:05:51', NULL),
(3, 'Услуги', '<h1><span style=\"color:#FFA07A\"><strong><span style=\"font-family:georgia,serif\">Различные услуги </span></strong></span></h1>', '2018-10-27 06:08:33', '2018-10-27 06:08:33', NULL),
(4, 'Default category', 'html text', '2018-10-27 09:38:32', '2018-10-27 09:38:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ball` int(11) NOT NULL,
  `showhide` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `body`, `ball`, `showhide`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, '<p><strong>sghdfgh</strong></p>\r\n', 2, 'hide', NULL, '2018-10-25 12:24:49', '2018-10-25 12:24:49'),
(2, 1, '<h1><span style=\"color:#e74c3c\"><span style=\"font-size:26px\"><strong>Великолепный сайт!!!</strong></span></span></h1>\r\n\r\n<h2><span style=\"color:#f1c40f\"><span style=\"font-size:26px\"><strong>Мне все понравилось!</strong></span></span></h2>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#2ecc71\"><span style=\"font-size:26px\"><strong>Удачи!</strong></span></span></h3>\r\n\r\n<p><span style=\"color:#2ecc71\"><span style=\"font-size:26px\"><strong><img alt=\"yes\" src=\"http://localhost/media/ckeditor/plugins/smiley/images/thumbs_up.png\" style=\"height:23px; width:23px\" title=\"yes\" /></strong></span></span></p>\r\n', 5, 'show', NULL, '2018-10-25 13:27:58', '2018-10-25 13:27:58'),
(3, 1, '<h1><strong>Все класно! Прекрасный сайт....</strong></h1>\r\n', 5, 'show', NULL, '2018-10-25 13:32:34', '2018-10-25 13:32:34'),
(4, 1, '<p>Проверка на запуск скрипта!</p>\r\n\r\n<p>&lt;/p&gt;&lt;script&gt;alert(АЛЕРТ)&lt;/script&gt;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&lt;script&gt;alert(АТENTION)&lt;/script&gt;</p>\r\n\r\n<p>Проверка на фреймы!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code>&lt;frameset cols=&quot;100,*&quot;&gt;\r\n  &lt;frame src=&quot;http://tut.by&quot; name=&quot;MENU&quot;&gt;\r\n  &lt;frame src=&quot;http://googl.com&quot; name=&quot;CONTENT&quot;&gt;\r\n &lt;/frameset&gt;</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><code>Сылки</code></p>\r\n\r\n<p><code>http://googl.com</code></p>\r\n\r\n<p><code>googl.com</code></p>\r\n\r\n<p><a href=\"http://googl.com\">Переход на Гугл</a></p>\r\n\r\n<p>&nbsp;</p>\r\n', 5, 'show', NULL, '2018-10-26 12:34:52', '2018-10-26 12:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `maintests`
--

CREATE TABLE `maintests` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` enum('ru','en') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ru',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maintests`
--

INSERT INTO `maintests` (`id`, `name`, `body`, `url`, `type`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Главная', '<h2>Dobruy Denb</h2>\r\n<p>\r\nОдно из наиболее популярных применений CSS — это скрытие подчеркивания у ссылок. С позиции юзабилити не совсем верное решение, поскольку пользователь может сразу не догадаться, что текст, который он видит, является ссылкой. Все ведь уже привыкли — раз подчеркивание используется, значит это ссылка. Но при правильном применении отсутствие подчеркивания у ссылок может придать определенный эффект сайту. Часто делается, что при наведении курсора, ссылка становится подчеркнутой, меняет свой цвет или используется и тот и другой эффект одновременно (пример 1). \r\n</p>\r\n<p>\r\nЕще один пример демонстрирует использование в ссылках подчеркивания и надчеркивания одновременно. При этом эффекте тонкие линии будут появляться над и под ссылкой при наведении на нее курсора. Это достигается применением свойства text-decoration: underline overline в селекторе \r\n</p>\r\n<p>\r\nОдно из наиболее популярных применений CSS — это скрытие подчеркивания у ссылок. С позиции юзабилити не совсем верное решение, поскольку пользователь может сразу не догадаться, что текст, который он видит, является ссылкой. Все ведь уже привыкли — раз подчеркивание используется, значит это ссылка. Но при правильном применении отсутствие подчеркивания у ссылок может придать определенный эффект сайту. Часто делается, что при наведении курсора, ссылка становится подчеркнутой, меняет свой цвет или используется и тот и другой эффект одновременно (пример 1). \r\n</p>\r\n<p>\r\nЕще один пример демонстрирует использование в ссылках подчеркивания и надчеркивания одновременно. При этом эффекте тонкие линии будут появляться над и под ссылкой при наведении на нее курсора. Это достигается применением свойства text-decoration: underline overline в селекторе \r\n</p>\r\n<p>\r\nОдно из наиболее популярных применений CSS — это скрытие подчеркивания у ссылок. С позиции юзабилити не совсем верное решение, поскольку пользователь может сразу не догадаться, что текст, который он видит, является ссылкой. Все ведь уже привыкли — раз подчеркивание используется, значит это ссылка. Но при правильном применении отсутствие подчеркивания у ссылок может придать определенный эффект сайту. Часто делается, что при наведении курсора, ссылка становится подчеркнутой, меняет свой цвет или используется и тот и другой эффект одновременно (пример 1). \r\n</p>\r\n<p>\r\nЕще один пример демонстрирует использование в ссылках подчеркивания и надчеркивания одновременно. При этом эффекте тонкие линии будут появляться над и под ссылкой при наведении на нее курсора. Это достигается применением свойства text-decoration: underline overline в селекторе \r\n</p>\r\n<p>\r\nОдно из наиболее популярных применений CSS — это скрытие подчеркивания у ссылок. С позиции юзабилити не совсем верное решение, поскольку пользователь может сразу не догадаться, что текст, который он видит, является ссылкой. Все ведь уже привыкли — раз подчеркивание используется, значит это ссылка. Но при правильном применении отсутствие подчеркивания у ссылок может придать определенный эффект сайту. Часто делается, что при наведении курсора, ссылка становится подчеркнутой, меняет свой цвет или используется и тот и другой эффект одновременно (пример 1). \r\n</p>\r\n<p>\r\nЕще один пример демонстрирует использование в ссылках подчеркивания и надчеркивания одновременно. При этом эффекте тонкие линии будут появляться над и под ссылкой при наведении на нее курсора. Это достигается применением свойства text-decoration: underline overline в селекторе \r\n</p>', 'index', NULL, 'ru', NULL, NULL),
(2, 'О компании', 'Статья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компании', 'about', NULL, 'ru', NULL, NULL),
(3, 'услуги', 'УСЛУГИуслугиУСЛУГИ услугиУСЛУ ГИуслугиУСЛУГИуслугиУСЛУГИуслу гиУСЛУГИу слугиУСЛУГИу слугиУСЛУГИуслугиУСЛУГИуслугиУСЛУГИуслугиУСЛУГИуслугиУСЛУГИуслу гиУСЛУГИуслугиУСЛУГИус лугиУСЛУГИуслугиУСЛУГИуслуг иУСЛ УГИуслугиУС УГИуслугиУСЛУГИуслугиУСЛУГИ услугиУСЛУГИуслугиУСЛ УГИуслугиУСЛУГИуслугиУСЛУГИуслуги\r\n\r\n\r\nУСЛУГИуслугиУСЛУГИуслугиУСЛУГИу слугиУСЛУГИ услугиУСЛУГИуслуги УСЛУГИус лугиУСЛУГИу слугиУСЛУГИуслуги УСЛУГИ услугиУСЛУГИуслу гиУСЛУГИуслугиУСЛУГИуслугиУСЛУГИуслугиУСЛУГИуслу гиУСЛУГИуслуги', 'servis', NULL, 'ru', NULL, NULL),
(4, 'Kontakt', 'Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс \r\n\r\n\r\nКонтакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс ', 'contact', NULL, 'ru', NULL, NULL),
(5, 'Contact', 'Contntacts \r\n\r\nEnglish\r\n\r\nContntacts \r\n\r\nEnglish\r\nContntacts \r\n\r\nEnglish\r\nContntacts \r\n\r\nEnglish\r\nContntacts \r\n\r\nEnglish', 'contact', NULL, 'en', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT NULL,
  `menu_type` int(11) NOT NULL DEFAULT '1',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `position`, `menu_type`, `icon`, `name`, `title`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, NULL, 'User', 'User', NULL, NULL, NULL),
(2, NULL, 0, NULL, 'Role', 'Role', NULL, NULL, NULL),
(3, 0, 1, 'fa-database', 'Category', 'Categorys', NULL, '2018-10-27 06:02:40', '2018-10-27 06:02:40'),
(4, 0, 1, 'fa-database', 'Product', 'Prodcts', NULL, '2018-10-27 06:18:34', '2018-10-27 06:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `menu_role`
--

CREATE TABLE `menu_role` (
  `menu_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_role`
--

INSERT INTO `menu_role` (`menu_id`, `role_id`) VALUES
(3, 1),
(4, 1);

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
(3, '2018_10_25_121815_create_maintests_table', 2),
(4, '2018_10_25_145110_create_feedback_table', 3),
(5, '2018_10_26_154631_create_catalogs_table', 4),
(6, '2015_10_10_000000_create_menus_table', 5),
(7, '2015_10_10_000000_create_roles_table', 5),
(8, '2015_10_10_000000_update_users_table', 5),
(9, '2015_12_11_000000_create_users_logs_table', 5),
(10, '2016_03_14_000000_update_menus_table', 5),
(11, '2018_10_27_090240_create_category_table', 6),
(12, '2018_10_27_091834_create_product_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `body`, `price`, `picture`, `category_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'LED Lampa 48 Watt', '<p><span class=\"marker\">Описание товара Лампа 48Ватт светодиодная</span></p>', '50', '1540622554-7fdc1cc46bfe71cd85f2098b7f4e4a25.jpg', 2, 1, '2018-10-27 06:22:43', '2018-10-27 06:42:35', NULL),
(2, 'Маникюр', '<p>ывлдао</p>\r\n\r\n<p>ывдаыдв</p>\r\n\r\n<p>джвыоаыв</p>\r\n\r\n<p>ывджао</p>', '20', '1540622546-1068054046_w640_h640_eplynb96idbo4poqnptjqa.jpg', 3, 1, '2018-10-27 06:25:12', '2018-10-27 06:42:26', NULL),
(3, 'Лак', '<p>красивый лак</p>', '5', '1540622532-лаак.jpg', 2, 1, '2018-10-27 06:28:37', '2018-10-27 06:42:12', NULL),
(4, 'гелевый лак для ЛЕД лампы', '<p>описание гелевого лака</p>', '8', '1540622514-akrilovyj-lak-dlya-nogtej-2.jpg', 2, 1, '2018-10-27 06:41:14', '2018-10-27 06:41:54', NULL),
(5, 'нанесение гелевого лака', '<p>ывраварапр</p>\r\n\r\n<p>апрапр</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>апрапрапрапрапрапр</p>', '20', '1540622677-Mozhno-li-beremennym-krasit-nogti.jpg', 3, 1, '2018-10-27 06:44:37', '2018-10-27 06:44:37', NULL),
(6, 'Уход за ногтями рук', '<p><code><em><span style=\"font-size:14px\">Здравствуйте, уважаемые! Для большинства женщин уход за ногтями в домашних условиях стал обыденной процедурой, ведь красивые ногти у женщины &mdash; это стильно и ухожено, и выглядеть именно так желает этого каждая Женщина. А с другой стороны &mdash; красивые ногти &mdash; это показатель здоровья.</span></em></code><br />\r\n&nbsp;</p>\r\n\r\n<div>\r\n<h1>О чем может рассказать ногтевая пластина Болезни ногтей</h1>\r\n\r\n<p><span style=\"font-size:18px\">По форме ногтевой пластины, по цвету, по тому, насколько она ровная, знающий человек может сказать, чего не хватает в вашем организме прежде всего. Например, мало кто знает, что: тусклый цвет ногтей является следствием нехватки в организме витаминов А, В и Е, а иногда указывает на малокровие (анемию); то, что ногтевая пластина слишком тонкая, означает то, что в организме не хватает кальция и фосфора; медленный рост ногтей иногда может говорить о нарушении обмена веществ; ускоренный же рост говорит о всплеске гормонов; продольные темноватые бороздки говорят об избытке железа в организме; поперечные полосы &mdash; о проблемах желудочно-кишечного тракта. Вот так внешний вид и состояние ногтей подсказывают нам, где искать проблему и как заботиться о своем здоровье.</span></p>\r\n\r\n<div style=\"position: absolute; left: -99999px;\"><span style=\"font-size:18px\">Как ухаживать за ногтями в домашних условиях В домашних условиях ухаживать за ногтями не так уж и сложно. Нужно всего лишь знать основные приемы ухода за ногтями и выработать у себя привычку делать несложные процедуры. Прежде всего, следует бережно относиться к своим рукам. Помните о том, что руки следует защищать от ветра и мороза, от химии, которой стало более чем достаточно в нашем быту. Посмотрите видеоролик о том, как ухаживать за ногтями в домашних условиях. Несмотря на то, что он небольшой по объему, но он охватывает большинство действенных процедур для ухода за ногтями.<br />\r\nИсточник: http://anisima.ru/uxod-za-nogtyami-v-domashnix-usloviyax/</span></div>\r\n\r\n<h3><span style=\"font-size:18px\">Как ухаживать за ногтями в домашних условиях</span></h3>\r\n\r\n<p><span style=\"font-size:18px\">В домашних условиях ухаживать за ногтями не так уж и сложно. Нужно всего лишь знать основные приемы ухода за ногтями и выработать у себя привычку делать несложные процедуры. Прежде всего, следует бережно относиться к своим рукам. Помните о том, что руки следует защищать от ветра и мороза, от химии, которой стало более чем достаточно в нашем быту. Посмотрите видеоролик о том, как ухаживать за ногтями в домашних условиях. Несмотря на то, что он небольшой по объему, но он охватывает большинство действенных процедур для ухода за ногтями.</span><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"position: absolute; left: -99999px;\">Как ухаживать за ногтями в домашних условиях В домашних условиях ухаживать за ногтями не так уж и сложно. Нужно всего лишь знать основные приемы ухода за ногтями и выработать у себя привычку делать несложные процедуры. Прежде всего, следует бережно относиться к своим рукам. Помните о том, что руки следует защищать от ветра и мороза, от химии, которой стало более чем достаточно в нашем быту. Посмотрите видеоролик о том, как ухаживать за ногтями в домашних условиях. Несмотря на то, что он небольшой по объему, но он охватывает большинство действенных процедур для ухода за ногтями.<br />\r\nИсточник: http://anisima.ru/uxod-za-nogtyami-v-domashnix-usloviyax/</div>\r\n\r\n<div style=\"position: absolute; left: -99999px;\">Как ухаживать за ногтями в домашних условиях В домашних условиях ухаживать за ногтями не так уж и сложно. Нужно всего лишь знать основные приемы ухода за ногтями и выработать у себя привычку делать несложные процедуры. Прежде всего, следует бережно относиться к своим рукам. Помните о том, что руки следует защищать от ветра и мороза, от химии, которой стало более чем достаточно в нашем быту. Посмотрите видеоролик о том, как ухаживать за ногтями в домашних условиях. Несмотря на то, что он небольшой по объему, но он охватывает большинство действенных процедур для ухода за ногтями.<br />\r\nИсточник: http://anisima.ru/uxod-za-nogtyami-v-domashnix-usloviyax/</div>\r\n\r\n<div style=\"position: absolute; left: -99999px;\">Как ухаживать за ногтями в домашних условиях В домашних условиях ухаживать за ногтями не так уж и сложно. Нужно всего лишь знать основные приемы ухода за ногтями и выработать у себя привычку делать несложные процедуры. Прежде всего, следует бережно относиться к своим рукам. Помните о том, что руки следует защищать от ветра и мороза, от химии, которой стало более чем достаточно в нашем быту. Посмотрите видеоролик о том, как ухаживать за ногтями в домашних условиях. Несмотря на то, что он небольшой по объему, но он охватывает большинство действенных процедур для ухода за ногтями.<br />\r\nИсточник: http://anisima.ru/uxod-za-nogtyami-v-domashnix-usloviyax/</div>\r\n\r\n<div style=\"position: absolute; left: -99999px;\">Как ухаживать за ногтями в домашних условиях В домашних условиях ухаживать за ногтями не так уж и сложно. Нужно всего лишь знать основные приемы ухода за ногтями и выработать у себя привычку делать несложные процедуры. Прежде всего, следует бережно относиться к своим рукам. Помните о том, что руки следует защищать от ветра и мороза, от химии, которой стало более чем достаточно в нашем быту. Посмотрите видеоролик о том, как ухаживать за ногтями в домашних условиях. Несмотря на то, что он небольшой по объему, но он охватывает большинство действенных процедур для ухода за ногтями.<br />\r\nИсточник: http://anisima.ru/uxod-za-nogtyami-v-domashnix-usloviyax/</div>\r\n</div>\r\n\r\n<div>\r\n<div style=\"position: absolute; left: -99999px;\">Как ухаживать за ногтями в домашних условиях В домашних условиях ухаживать за ногтями не так уж и сложно. Нужно всего лишь знать основные приемы ухода за ногтями и выработать у себя привычку делать несложные процедуры. Прежде всего, следует бережно относиться к своим рукам. Помните о том, что руки следует защищать от ветра и мороза, от химии, которой стало более чем достаточно в нашем быту. Посмотрите видеоролик о том, как ухаживать за ногтями в домашних условиях. Несмотря на то, что он небольшой по объему, но он охватывает большинство действенных процедур для ухода за ногтями.<br />\r\nИсточник: http://anisima.ru/uxod-za-nogtyami-v-domashnix-usloviyax/</div>\r\n\r\n<div style=\"position: absolute; left: -99999px;\">Как ухаживать за ногтями в домашних условиях В домашних условиях ухаживать за ногтями не так уж и сложно. Нужно всего лишь знать основные приемы ухода за ногтями и выработать у себя привычку делать несложные процедуры. Прежде всего, следует бережно относиться к своим рукам. Помните о том, что руки следует защищать от ветра и мороза, от химии, которой стало более чем достаточно в нашем быту. Посмотрите видеоролик о том, как ухаживать за ногтями в домашних условиях. Несмотря на то, что он небольшой по объему, но он охватывает большинство действенных процедур для ухода за ногтями.<br />\r\nИсточник: http://anisima.ru/uxod-za-nogtyami-v-domashnix-usloviyax/</div>\r\n\r\n<div style=\"position: absolute; left: -99999px;\">Как ухаживать за ногтями в домашних условиях В домашних условиях ухаживать за ногтями не так уж и сложно. Нужно всего лишь знать основные приемы ухода за ногтями и выработать у себя привычку делать несложные процедуры. Прежде всего, следует бережно относиться к своим рукам. Помните о том, что руки следует защищать от ветра и мороза, от химии, которой стало более чем достаточно в нашем быту. Посмотрите видеоролик о том, как ухаживать за ногтями в домашних условиях. Несмотря на то, что он небольшой по объему, но он охватывает большинство действенных процедур для ухода за ногтями.<br />\r\nИсточник: http://anisima.ru/uxod-za-nogtyami-v-domashnix-usloviyax/\r\n<div style=\"position: absolute; left: -99999px;\">Как ухаживать за ногтями в домашних условиях В домашних условиях ухаживать за ногтями не так уж и сложно. Нужно всего лишь знать основные приемы ухода за ногтями и выработать у себя привычку делать несложные процедуры. Прежде всего, следует бережно относиться к своим рукам. Помните о том, что руки следует защищать от ветра и мороза, от химии, которой стало более чем достаточно в нашем быту. Посмотрите видеоролик о том, как ухаживать за ногтями в домашних условиях. Несмотря на то, что он небольшой по объему, но он охватывает большинство действенных процедур для ухода за ногтями.<br />\r\nИсточник: http://anisima.ru/uxod-za-nogtyami-v-domashnix-usloviyax/</div>\r\n</div>\r\n</div>', '50', '1540622996-nogti_7_cr.jpg', 1, 2, '2018-10-27 06:49:56', '2018-10-27 06:49:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2018-10-27 05:44:19', '2018-10-27 05:44:19'),
(2, 'User', '2018-10-27 05:44:19', '2018-10-27 05:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'KozlovskiyDN', 'szbtosp@gmail.com', NULL, '$2y$10$7C4dMwK.t6Av7TqbQb99vu.06zF54yptsYjPCXBACh/knSs3Grcta', 'zZU8dOrerfp0vCLppnSP3U6uJtg84ugFYcrsE8z3XnO2dHYkQLzAbQPnI0uA', '2018-10-25 07:42:56', '2018-10-25 07:42:56'),
(2, 1, 'Vasiliy', 'vasiliy-by@mail.ru', NULL, '$2y$10$0QV2r/yZAG1wt37CkzHmUuZQxcH5neqS6X1zX2HOXNiGPB/sx5WgG', 'NcObZOGnUoJr7BjMYTLIWZFiKPKyUEgPX7VXId87TJEtQomaz5dObpOeptTe', '2018-10-27 05:46:23', '2018-10-27 05:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `users_logs`
--

CREATE TABLE `users_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_logs`
--

INSERT INTO `users_logs` (`id`, `user_id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'updated', 'users', 2, '2018-10-27 05:48:14', '2018-10-27 05:48:14'),
(2, 2, 'updated', 'users', 2, '2018-10-27 05:53:13', '2018-10-27 05:53:13'),
(3, 2, 'created', 'category', 1, '2018-10-27 06:04:22', '2018-10-27 06:04:22'),
(4, 2, 'created', 'category', 2, '2018-10-27 06:05:51', '2018-10-27 06:05:51'),
(5, 2, 'created', 'category', 3, '2018-10-27 06:08:33', '2018-10-27 06:08:33'),
(6, 2, 'created', 'product', 1, '2018-10-27 06:22:43', '2018-10-27 06:22:43'),
(7, 2, 'created', 'product', 2, '2018-10-27 06:25:12', '2018-10-27 06:25:12'),
(8, 2, 'created', 'product', 3, '2018-10-27 06:28:37', '2018-10-27 06:28:37'),
(9, 2, 'created', 'product', 4, '2018-10-27 06:41:14', '2018-10-27 06:41:14'),
(10, 2, 'updated', 'product', 4, '2018-10-27 06:41:54', '2018-10-27 06:41:54'),
(11, 2, 'updated', 'product', 3, '2018-10-27 06:42:12', '2018-10-27 06:42:12'),
(12, 2, 'updated', 'product', 2, '2018-10-27 06:42:26', '2018-10-27 06:42:26'),
(13, 2, 'updated', 'product', 1, '2018-10-27 06:42:35', '2018-10-27 06:42:35'),
(14, 2, 'created', 'product', 5, '2018-10-27 06:44:37', '2018-10-27 06:44:37'),
(15, 2, 'created', 'product', 6, '2018-10-27 06:49:56', '2018-10-27 06:49:56'),
(16, 2, 'updated', 'users', 2, '2018-10-27 10:37:25', '2018-10-27 10:37:25'),
(17, 2, 'updated', 'users', 2, '2018-10-27 10:38:24', '2018-10-27 10:38:24'),
(18, 2, 'updated', 'users', 2, '2018-10-27 10:53:42', '2018-10-27 10:53:42'),
(19, 2, 'updated', 'users', 2, '2018-10-27 11:01:41', '2018-10-27 11:01:41'),
(20, 2, 'updated', 'users', 2, '2018-10-27 11:02:54', '2018-10-27 11:02:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintests`
--
ALTER TABLE `maintests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_role`
--
ALTER TABLE `menu_role`
  ADD UNIQUE KEY `menu_role_menu_id_role_id_unique` (`menu_id`,`role_id`),
  ADD KEY `menu_role_menu_id_index` (`menu_id`),
  ADD KEY `menu_role_role_id_index` (`role_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_logs`
--
ALTER TABLE `users_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `maintests`
--
ALTER TABLE `maintests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_logs`
--
ALTER TABLE `users_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu_role`
--
ALTER TABLE `menu_role`
  ADD CONSTRAINT `menu_role_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

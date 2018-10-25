-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Окт 25 2018 г., 16:33
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mysite`
--

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
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
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `body`, `ball`, `showhide`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, '<p><strong>sghdfgh</strong></p>\r\n', 2, 'hide', NULL, '2018-10-25 12:24:49', '2018-10-25 12:24:49'),
(2, 1, '<h1><span style=\"color:#e74c3c\"><span style=\"font-size:26px\"><strong>Великолепный сайт!!!</strong></span></span></h1>\r\n\r\n<h2><span style=\"color:#f1c40f\"><span style=\"font-size:26px\"><strong>Мне все понравилось!</strong></span></span></h2>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#2ecc71\"><span style=\"font-size:26px\"><strong>Удачи!</strong></span></span></h3>\r\n\r\n<p><span style=\"color:#2ecc71\"><span style=\"font-size:26px\"><strong><img alt=\"yes\" src=\"http://localhost/media/ckeditor/plugins/smiley/images/thumbs_up.png\" style=\"height:23px; width:23px\" title=\"yes\" /></strong></span></span></p>\r\n', 5, 'show', NULL, '2018-10-25 13:27:58', '2018-10-25 13:27:58'),
(3, 1, '<h1><strong>Все класно! Прекрасный сайт....</strong></h1>\r\n', 5, 'show', NULL, '2018-10-25 13:32:34', '2018-10-25 13:32:34');

-- --------------------------------------------------------

--
-- Структура таблицы `maintests`
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
-- Дамп данных таблицы `maintests`
--

INSERT INTO `maintests` (`id`, `name`, `body`, `url`, `type`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Главная', '<h2>Dobruy Denb</h2>\r\n<p>\r\nОдно из наиболее популярных применений CSS — это скрытие подчеркивания у ссылок. С позиции юзабилити не совсем верное решение, поскольку пользователь может сразу не догадаться, что текст, который он видит, является ссылкой. Все ведь уже привыкли — раз подчеркивание используется, значит это ссылка. Но при правильном применении отсутствие подчеркивания у ссылок может придать определенный эффект сайту. Часто делается, что при наведении курсора, ссылка становится подчеркнутой, меняет свой цвет или используется и тот и другой эффект одновременно (пример 1). \r\n</p>\r\n<p>\r\nЕще один пример демонстрирует использование в ссылках подчеркивания и надчеркивания одновременно. При этом эффекте тонкие линии будут появляться над и под ссылкой при наведении на нее курсора. Это достигается применением свойства text-decoration: underline overline в селекторе \r\n</p>\r\n<p>\r\nОдно из наиболее популярных применений CSS — это скрытие подчеркивания у ссылок. С позиции юзабилити не совсем верное решение, поскольку пользователь может сразу не догадаться, что текст, который он видит, является ссылкой. Все ведь уже привыкли — раз подчеркивание используется, значит это ссылка. Но при правильном применении отсутствие подчеркивания у ссылок может придать определенный эффект сайту. Часто делается, что при наведении курсора, ссылка становится подчеркнутой, меняет свой цвет или используется и тот и другой эффект одновременно (пример 1). \r\n</p>\r\n<p>\r\nЕще один пример демонстрирует использование в ссылках подчеркивания и надчеркивания одновременно. При этом эффекте тонкие линии будут появляться над и под ссылкой при наведении на нее курсора. Это достигается применением свойства text-decoration: underline overline в селекторе \r\n</p>\r\n<p>\r\nОдно из наиболее популярных применений CSS — это скрытие подчеркивания у ссылок. С позиции юзабилити не совсем верное решение, поскольку пользователь может сразу не догадаться, что текст, который он видит, является ссылкой. Все ведь уже привыкли — раз подчеркивание используется, значит это ссылка. Но при правильном применении отсутствие подчеркивания у ссылок может придать определенный эффект сайту. Часто делается, что при наведении курсора, ссылка становится подчеркнутой, меняет свой цвет или используется и тот и другой эффект одновременно (пример 1). \r\n</p>\r\n<p>\r\nЕще один пример демонстрирует использование в ссылках подчеркивания и надчеркивания одновременно. При этом эффекте тонкие линии будут появляться над и под ссылкой при наведении на нее курсора. Это достигается применением свойства text-decoration: underline overline в селекторе \r\n</p>\r\n<p>\r\nОдно из наиболее популярных применений CSS — это скрытие подчеркивания у ссылок. С позиции юзабилити не совсем верное решение, поскольку пользователь может сразу не догадаться, что текст, который он видит, является ссылкой. Все ведь уже привыкли — раз подчеркивание используется, значит это ссылка. Но при правильном применении отсутствие подчеркивания у ссылок может придать определенный эффект сайту. Часто делается, что при наведении курсора, ссылка становится подчеркнутой, меняет свой цвет или используется и тот и другой эффект одновременно (пример 1). \r\n</p>\r\n<p>\r\nЕще один пример демонстрирует использование в ссылках подчеркивания и надчеркивания одновременно. При этом эффекте тонкие линии будут появляться над и под ссылкой при наведении на нее курсора. Это достигается применением свойства text-decoration: underline overline в селекторе \r\n</p>', 'index', NULL, 'ru', NULL, NULL),
(2, 'О компании', 'Статья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компанииСтатья о компании', 'about', NULL, 'ru', NULL, NULL),
(3, 'услуги', 'УСЛУГИуслугиУСЛУГИ услугиУСЛУ ГИуслугиУСЛУГИуслугиУСЛУГИуслу гиУСЛУГИу слугиУСЛУГИу слугиУСЛУГИуслугиУСЛУГИуслугиУСЛУГИуслугиУСЛУГИуслугиУСЛУГИуслу гиУСЛУГИуслугиУСЛУГИус лугиУСЛУГИуслугиУСЛУГИуслуг иУСЛ УГИуслугиУС УГИуслугиУСЛУГИуслугиУСЛУГИ услугиУСЛУГИуслугиУСЛ УГИуслугиУСЛУГИуслугиУСЛУГИуслуги\r\n\r\n\r\nУСЛУГИуслугиУСЛУГИуслугиУСЛУГИу слугиУСЛУГИ услугиУСЛУГИуслуги УСЛУГИус лугиУСЛУГИу слугиУСЛУГИуслуги УСЛУГИ услугиУСЛУГИуслу гиУСЛУГИуслугиУСЛУГИуслугиУСЛУГИуслугиУСЛУГИуслу гиУСЛУГИуслуги', 'servis', NULL, 'ru', NULL, NULL),
(4, 'Kontakt', 'Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс \r\n\r\n\r\nКонтакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс Контакты адресс ', 'contact', NULL, 'ru', NULL, NULL),
(5, 'Contact', 'Contntacts \r\n\r\nEnglish\r\n\r\nContntacts \r\n\r\nEnglish\r\nContntacts \r\n\r\nEnglish\r\nContntacts \r\n\r\nEnglish\r\nContntacts \r\n\r\nEnglish', 'contact', NULL, 'en', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_25_121815_create_maintests_table', 2),
(4, '2018_10_25_145110_create_feedback_table', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'KozlovskiyDN', 'szbtosp@gmail.com', NULL, '$2y$10$7C4dMwK.t6Av7TqbQb99vu.06zF54yptsYjPCXBACh/knSs3Grcta', 'zZU8dOrerfp0vCLppnSP3U6uJtg84ugFYcrsE8z3XnO2dHYkQLzAbQPnI0uA', '2018-10-25 07:42:56', '2018-10-25 07:42:56');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `maintests`
--
ALTER TABLE `maintests`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `maintests`
--
ALTER TABLE `maintests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

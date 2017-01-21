-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 21 2017 г., 20:21
-- Версия сервера: 5.5.53
-- Версия PHP: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `symfony`
--

-- --------------------------------------------------------

--
-- Структура таблицы `agent`
--

CREATE TABLE `agent` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `agent`
--

INSERT INTO `agent` (`id`, `first_name`, `last_name`, `email`) VALUES
(1, 'Ivan', 'Ivanov', 'ivan@example.com'),
(3, 'Petr', 'Petrov', 'petr@example.com'),
(7, 'Sidor', 'Sidorov', 'sidor@example.com'),
(9, 'Vasya', 'Pupkin', 'vasya@example.com'),
(12, 'Vitaliy', 'Ischenko', 'ischenkovm@rambler.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `message_id` int(11) DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `message`
--

INSERT INTO `message` (`id`, `message_id`, `subject`, `body`) VALUES
(1, 1, 'message 1', 'To make a long story short. You can\'t go wrong by choosing Symfony! And no one has ever been fired for using Symfony.'),
(2, 1, 'message 2', 'To make a long story short. Choosing a framework must not be taken lightly; it is a long-term commitment. Make sure that you make the right selection!\''),
(3, 3, 'message 1', 'Anything else, mom? You want me to mow the lawn? Oops! I forgot, New York, No grass.'),
(4, 3, 'message 2', 'Are you challenging me? '),
(5, 3, 'message 3', 'Name your stakes. '),
(6, 3, 'message 4', 'You wish! You\'ll do shitwork, scan, crack copyrights...'),
(7, 7, 'message 2', 'It\'s not gonna end like this'),
(8, 7, 'message 1', 'Oh, come on, Stan. Not everything ends the way you think it should. Besides, audiences love happy endings.'),
(10, 9, 'message 1', 'Doesn\'t Bill Gates have something like that?'),
(11, 9, 'message 3', 'You wish! You\'ll do shitwork, scan, crack copyrights...'),
(17, 12, 'Message 1', 'Test Message 1'),
(19, 12, 'Message 2', 'Test Message 2'),
(20, 1, 'message', 'lastname'),
(21, 1, 'message', 'lastname'),
(22, 1, 'message', 'lastname'),
(23, 1, 'message', 'lastname'),
(25, 1, 'message', 'lastname'),
(26, 1, 'message', 'lastname'),
(27, 1, 'message', 'lastname');

-- --------------------------------------------------------

--
-- Структура таблицы `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20170119143702'),
('20170119180615'),
('20170120163145');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B6BD307F537A1329` (`message_id`);

--
-- Индексы таблицы `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `agent`
--
ALTER TABLE `agent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT для таблицы `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `FK_B6BD307F537A1329` FOREIGN KEY (`message_id`) REFERENCES `agent` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

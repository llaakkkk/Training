-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 29 2017 г., 20:34
-- Версия сервера: 5.6.34
-- Версия PHP: 7.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `films`
--

-- --------------------------------------------------------

--
-- Структура таблицы `actors`
--

CREATE TABLE `actors` (
  `id` int(5) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `actors`
--

INSERT INTO `actors` (`id`, `first_name`, `last_name`) VALUES
(1, 'Сэмюэл Лерой', 'Джексон'),
(2, 'Джон', 'Траволта'),
(4, 'Брюс', 'Уиллис'),
(5, 'Леонардо', 'Ди Каприо'),
(6, 'Том', 'Харди'),
(7, 'Тим', 'Рот');

-- --------------------------------------------------------

--
-- Структура таблицы `actor_to_film`
--

CREATE TABLE `actor_to_film` (
  `actor_id` int(5) NOT NULL,
  `film_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `actor_to_film`
--

INSERT INTO `actor_to_film` (`actor_id`, `film_id`) VALUES
(1, 1),
(2, 1),
(4, 1),
(1, 2),
(7, 2),
(5, 3),
(5, 4),
(5, 5),
(6, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `films`
--

CREATE TABLE `films` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` int(4) NOT NULL,
  `short_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `films`
--

INSERT INTO `films` (`id`, `name`, `year`, `short_desc`) VALUES
(1, 'Криминальное чтиво', 1994, 'Обладатель премии «Оскар» за лучший сценарий, «Золотой пальмовой ветви» Каннского кинофестиваля 1994 года и ещё более сорока кинематографических наград.'),
(2, 'Омерзительная восьмёрка', 2015, 'Действие «Омерзительной восьмерки» происходит вскоре после Гражданской войны в США.'),
(3, 'Джанго освобождённый', 2012, 'Действие фильма начинается в 1858 году, за два года до начала Гражданской войны.'),
(4, 'Выживший', 2015, 'американский эпический остросюжетный вестерн'),
(5, 'Волк с Уолл-стрит', 2013, 'американская чёрная кинокомедия');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `films`
--
ALTER TABLE `films`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

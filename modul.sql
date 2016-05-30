-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 30 2016 г., 20:55
-- Версия сервера: 5.6.26
-- Версия PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `modul`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id_category` smallint(3) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `description` varchar(300) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id_category`, `title`, `alias`, `description`, `is_active`) VALUES
(1, 'политика', 'politica', 'Используется он веб-дизайнерами для вставки на кириллический контент. Пределах добра и на руку при запуске проекта его применили. Известным рыбным текстом является знаменитый lorem ipsum обязан.', 1),
(2, 'аналитика', 'analitika', 'Используется он веб-дизайнерами для вставки на кириллический контент. Пределах добра и на руку при запуске проекта его применили. Известным рыбным текстом является знаменитый lorem ipsum обязан.', 1),
(3, 'экономика', 'ekonomika', 'Используется он веб-дизайнерами для вставки на кириллический контент. Пределах добра и на руку при запуске проекта его применили. Известным рыбным текстом является знаменитый lorem ipsum обязан.', 1),
(4, 'кино', 'kino', 'Используется он веб-дизайнерами для вставки на кириллический контент. Пределах добра и на руку при запуске проекта его применили. Известным рыбным текстом является знаменитый lorem ipsum обязан.', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `coments`
--

CREATE TABLE IF NOT EXISTS `coments` (
  `id_coments` smallint(3) NOT NULL AUTO_INCREMENT,
  `id_user` smallint(3) NOT NULL,
  `id_news` smallint(3) NOT NULL,
  `text` varchar(100) NOT NULL,
  PRIMARY KEY (`id_coments`),
  KEY `id_user` (`id_user`),
  KEY `id_news` (`id_news`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=201 ;

--
-- Дамп данных таблицы `coments`
--

INSERT INTO `coments` (`id_coments`, `id_user`, `id_news`, `text`) VALUES
(101, 3, 78, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc'),
(102, 1, 54, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rh'),
(103, 1, 50, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in f'),
(104, 4, 70, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commod'),
(105, 1, 80, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nul'),
(106, 4, 49, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.'),
(107, 2, 37, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\r\n\r\nCura'),
(108, 4, 41, 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\r\n\r\nCura'),
(109, 4, 78, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\r\n\r\nMaece'),
(110, 1, 72, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nun'),
(111, 4, 47, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc'),
(112, 3, 84, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\r\n\r\nPraesent id massa id '),
(113, 4, 40, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\r\n\r\nProin eu mi.'),
(114, 1, 66, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, e'),
(115, 2, 84, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nun'),
(116, 1, 83, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu mass'),
(117, 4, 71, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis i'),
(118, 1, 51, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem '),
(119, 4, 77, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem '),
(120, 2, 50, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non'),
(121, 2, 43, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestib'),
(122, 2, 54, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget'),
(123, 2, 78, 'In congue. Etiam justo. Etiam pretium iaculis justo.\r\n\r\nIn hac habitasse platea dictumst. Etiam fauc'),
(124, 3, 43, 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis i'),
(125, 2, 65, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget'),
(126, 2, 42, 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor qui'),
(127, 3, 57, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\r\n\r\nIn sagittis dui vel nisl. Duis'),
(128, 4, 58, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commod'),
(129, 1, 81, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum ju'),
(130, 2, 36, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\r\n\r\nNulla ut erat id mauris '),
(131, 2, 53, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin v'),
(132, 2, 69, 'In congue. Etiam justo. Etiam pretium iaculis justo.\r\n\r\nIn hac habitasse platea dictumst. Etiam fauc'),
(133, 3, 80, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\r\n\r\nPraesent id massa id '),
(134, 4, 59, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\r\n\r\nCum sociis n'),
(135, 2, 35, 'Fusce consequat. Nulla nisl. Nunc nisl.\r\n\r\nDuis bibendum, felis sed interdum venenatis, turpis enim '),
(136, 4, 64, 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\r\n\r\nDonec dia'),
(137, 4, 69, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commod'),
(138, 1, 47, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tris'),
(139, 1, 36, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.'),
(140, 4, 82, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidu'),
(141, 2, 36, 'Fusce consequat. Nulla nisl. Nunc nisl.'),
(142, 4, 53, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nu'),
(143, 1, 83, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\r\n\r\n'),
(144, 4, 36, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.'),
(145, 1, 48, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, le'),
(146, 2, 45, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nu'),
(147, 1, 58, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien u'),
(148, 1, 36, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\r\n\r\nMaece'),
(149, 3, 76, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\r\n\r\nVestibulu'),
(150, 4, 76, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\r\n\r\nCum sociis n'),
(151, 1, 45, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\r\n\r\nCum sociis n'),
(152, 2, 36, 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\r\n\r\nCum sociis n'),
(153, 2, 65, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tris'),
(154, 2, 57, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rh'),
(155, 1, 53, 'In congue. Etiam justo. Etiam pretium iaculis justo.\r\n\r\nIn hac habitasse platea dictumst. Etiam fauc'),
(156, 4, 50, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\r\n\r\nProin eu mi.'),
(157, 4, 72, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.'),
(158, 1, 62, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum ju'),
(159, 2, 81, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\r\n\r\nNulla ut erat id mauris '),
(160, 3, 68, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien u'),
(161, 3, 70, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor'),
(162, 4, 63, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu mass'),
(163, 4, 72, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.'),
(164, 3, 80, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nu'),
(165, 2, 59, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nu'),
(166, 3, 73, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, le'),
(167, 4, 37, 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nu'),
(168, 1, 40, 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nul'),
(169, 1, 69, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in f'),
(170, 2, 76, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.'),
(171, 1, 40, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum ju'),
(172, 3, 52, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc'),
(173, 4, 55, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestib'),
(174, 2, 54, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rh'),
(175, 2, 44, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien u'),
(176, 4, 48, 'Fusce consequat. Nulla nisl. Nunc nisl.\r\n\r\nDuis bibendum, felis sed interdum venenatis, turpis enim '),
(177, 2, 49, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidu'),
(178, 1, 69, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.'),
(179, 1, 66, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin v'),
(180, 3, 49, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.'),
(181, 3, 59, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\r\n\r\nNulla ut erat id mauris '),
(182, 4, 45, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\r\n\r\nNulla ut erat id mauris '),
(183, 2, 78, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\r\n\r\nNam ultrices, libero non mat'),
(184, 2, 77, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien u'),
(185, 2, 43, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem,'),
(186, 4, 56, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\r\n\r\nIn sagittis dui vel nisl. Duis'),
(187, 4, 46, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem,'),
(188, 1, 46, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien u'),
(189, 4, 84, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac dia'),
(190, 3, 76, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue'),
(191, 1, 51, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc'),
(192, 2, 45, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestib'),
(193, 2, 80, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\r\n\r\nNulla ut erat id mauris '),
(194, 4, 82, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum ju'),
(195, 1, 51, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem,'),
(196, 1, 68, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum ju'),
(197, 4, 50, 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc'),
(198, 4, 69, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestib'),
(199, 1, 66, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidu'),
(200, 2, 60, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidu');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id_news` smallint(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `id_category` smallint(5) NOT NULL,
  `content` text NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id_news`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id_news`, `title`, `alias`, `id_category`, `content`, `is_active`, `data`) VALUES
(35, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobo', 1, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\r\n\r\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\r\n\r\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\r\n\r\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\r\n\r\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\r\n\r\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\r\n\r\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\r\n\r\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 1, '2015-07-01 21:04:36'),
(36, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor qui', 1, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\n\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\n\nFusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.', 1, '2015-08-06 16:31:58'),
(37, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 1, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\r\n\r\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\r\n\r\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\r\n\r\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\r\n\r\nFusce consequat. Nulla nisl. Nunc nisl.\r\n\r\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\r\n\r\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\r\n\r\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 0, '2015-08-04 09:16:23'),
(38, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum ju', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget', 1, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\r\n\r\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\r\n\r\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\r\n\r\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\r\n\r\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 0, '2016-04-26 05:12:50'),
(39, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rh', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 2, 'Fusce consequat. Nulla nisl. Nunc nisl.\n\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\n\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\n\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\n\nSed ante. Vivamus tortor. Duis mattis egestas metus.', 0, '2015-07-19 09:33:18'),
(40, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci', 1, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\r\n\r\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\r\n\r\nIn congue. Etiam justo. Etiam pretium iaculis justo.\r\n\r\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\r\n\r\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 1, '2016-04-30 00:29:44'),
(41, 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 2, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.\r\n\r\nVestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\r\n\r\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\r\n\r\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\r\n\r\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 1, '2016-01-12 23:51:09'),
(42, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in f', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 3, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.\r\n\r\nDuis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\r\n\r\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\r\n\r\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\r\n\r\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\r\n\r\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\r\n\r\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\r\n\r\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 1, '2016-01-25 10:27:40'),
(43, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin v', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget', 3, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\r\n\r\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\r\n\r\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\r\n\r\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\r\n\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\r\n\r\nEtiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.', 1, '2016-01-25 09:45:02'),
(44, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 2, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\r\n\r\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\r\n\r\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\r\n\r\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\r\n\r\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\r\n\r\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\r\n\r\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 1, '2016-04-18 16:30:44'),
(45, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu mass', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 1, 'Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.\r\n\r\nPraesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.\r\n\r\nCras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n\r\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\r\n\r\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\r\n\r\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\r\n\r\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 1, '2015-05-31 03:18:33'),
(46, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidu', 1, 'Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\r\n\r\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\r\n\r\nFusce consequat. Nulla nisl. Nunc nisl.\r\n\r\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\r\n\r\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\r\n\r\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 1, '2015-07-16 14:47:56'),
(47, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, e', 1, 'Sed ante. Vivamus tortor. Duis mattis egestas metus.\r\n\r\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\r\n\r\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\r\n\r\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 1, '2016-01-06 19:31:03'),
(48, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue', 1, 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\r\n\r\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\r\n\r\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\r\n\r\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 1, '2015-09-10 15:29:12'),
(49, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nul', 2, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\r\n\r\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\r\n\r\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\r\n\r\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\r\n\r\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\r\n\r\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\r\n\r\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\r\n\r\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 1, '2016-01-01 12:32:42'),
(50, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nu', 3, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\r\n\r\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\r\n\r\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.\r\n\r\nPellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.\r\n\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 1, '2015-06-18 14:15:03'),
(51, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, e', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobo', 2, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\r\n\r\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\r\n\r\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\r\n\r\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\r\n\r\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\r\n\r\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\r\n\r\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\r\n\r\nFusce consequat. Nulla nisl. Nunc nisl.', 1, '2015-11-08 05:30:56'),
(52, 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 1, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\r\n\r\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\r\n\r\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\r\n\r\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\r\n\r\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 1, '2015-08-27 13:26:21'),
(53, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nun', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nul', 3, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\r\n\r\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\r\n\r\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\r\n\r\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\r\n\r\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\r\n\r\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\r\n\r\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\r\n\r\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 1, '2015-11-22 13:27:50'),
(54, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum ju', 'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.', 4, 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\r\n\r\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\r\n\r\nSed ante. Vivamus tortor. Duis mattis egestas metus.\r\n\r\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\r\n\r\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\r\n\r\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\r\n\r\nIn congue. Etiam justo. Etiam pretium iaculis justo.', 1, '2015-11-13 11:55:00'),
(55, 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ', 1, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n\r\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\r\n\r\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\r\n\r\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\r\n\r\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\r\n\r\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\r\n\r\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 1, '2015-08-27 23:59:28'),
(56, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 4, 'Fusce consequat. Nulla nisl. Nunc nisl.\r\n\r\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\r\n\r\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\r\n\r\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 1, '2015-09-05 09:28:35'),
(57, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nun', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobo', 3, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\r\n\r\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\r\n\r\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\r\n\r\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\r\n\r\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 1, '2015-07-17 06:50:58'),
(58, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rh', 2, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\r\n\r\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\r\n\r\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\r\n\r\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\r\n\r\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\r\n\r\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 1, '2015-12-08 00:42:58'),
(59, 'Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 3, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\r\n\r\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\r\n\r\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\r\n\r\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\r\n\r\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\r\n\r\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\r\n\r\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 1, '2016-04-23 10:50:20'),
(60, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tris', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.', 2, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\r\n\r\nIn congue. Etiam justo. Etiam pretium iaculis justo.\r\n\r\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\r\n\r\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 1, '2015-08-10 01:04:37'),
(61, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac dia', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestib', 3, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n\r\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\r\n\r\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\r\n\r\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\r\n\r\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 1, '2015-11-30 18:55:19'),
(62, 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 4, 'In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\r\n\r\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\r\n\r\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\r\n\r\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.\r\n\r\nInteger tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\r\n\r\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 1, '2015-12-05 16:59:35'),
(63, 'Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rh', 4, 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\r\n\r\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\r\n\r\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 1, '2015-09-27 09:23:19'),
(64, 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend ', 4, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.\r\n\r\nProin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.\r\n\r\nAenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.\r\n\r\nCurabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\r\n\r\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 1, '2016-05-14 17:50:53'),
(65, 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobo', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin v', 4, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.\r\n\r\nPraesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.\r\n\r\nMorbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.\r\n\r\nFusce consequat. Nulla nisl. Nunc nisl.\r\n\r\nDuis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.\r\n\r\nIn hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.\r\n\r\nAliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\r\n\r\nSed ante. Vivamus tortor. Duis mattis egestas metus.', 1, '2015-09-25 05:48:37'),
(66, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, e', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.', 3, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\r\n\r\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\r\n\r\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\r\n\r\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\r\n\r\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\r\n\r\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\r\n\r\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 1, '2016-03-26 15:08:52'),
(67, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidu', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue', 3, 'In congue. Etiam justo. Etiam pretium iaculis justo.\r\n\r\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\r\n\r\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\r\n\r\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\r\n\r\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\r\n\r\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\r\n\r\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\r\n\r\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 1, '2016-03-11 19:53:27'),
(68, 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin v', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue', 3, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\r\n\r\nSed ante. Vivamus tortor. Duis mattis egestas metus.\r\n\r\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\r\n\r\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\r\n\r\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 1, '2015-12-06 00:07:32'),
(69, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 3, 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\r\n\r\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\r\n\r\nIn congue. Etiam justo. Etiam pretium iaculis justo.\r\n\r\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\r\n\r\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\r\n\r\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\r\n\r\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 1, '2016-04-24 04:11:08'),
(70, 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin v', 4, 'Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\r\n\r\nIn congue. Etiam justo. Etiam pretium iaculis justo.\r\n\r\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\r\n\r\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\r\n\r\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\r\n\r\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\r\n\r\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\r\n\r\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 1, '2015-07-15 17:33:51'),
(71, 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu mass', 'Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.', 3, 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\r\n\r\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\r\n\r\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.\r\n\r\nIn congue. Etiam justo. Etiam pretium iaculis justo.\r\n\r\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\r\n\r\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\r\n\r\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\r\n\r\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 1, '2016-03-08 13:19:14'),
(72, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nun', 'Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci', 2, 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\r\n\r\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\r\n\r\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\r\n\r\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\r\n\r\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.', 1, '2015-08-06 23:07:25'),
(73, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nun', 'Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.', 1, 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\r\n\r\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\r\n\r\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\r\n\r\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\r\n\r\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.\r\n\r\nCurabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 1, '2015-10-05 21:43:08'),
(74, 'Fusce consequat. Nulla nisl. Nunc nisl.', 'Fusce consequat. Nulla nisl. Nunc nisl.', 2, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\r\n\r\nSed ante. Vivamus tortor. Duis mattis egestas metus.\r\n\r\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\r\n\r\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\r\n\r\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 1, '2015-10-24 00:43:05'),
(75, 'In congue. Etiam justo. Etiam pretium iaculis justo.', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend ', 1, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.\r\n\r\nMauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.\r\n\r\nNullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.\r\n\r\nIn quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 1, '2015-12-22 19:29:29'),
(76, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tris', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in f', 2, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\r\n\r\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\r\n\r\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\r\n\r\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\r\n\r\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\r\n\r\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 1, '2015-11-12 13:51:26'),
(77, 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tris', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', 1, 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\r\n\r\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\r\n\r\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\r\n\r\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\r\n\r\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\r\n\r\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 1, '2015-08-11 14:42:56'),
(78, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in f', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu mass', 3, 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\r\n\r\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\r\n\r\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\r\n\r\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\r\n\r\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\r\n\r\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.\r\n\r\nMaecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.\r\n\r\nCurabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.', 1, '2016-02-27 19:53:55'),
(79, 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commod', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac dia', 1, 'In congue. Etiam justo. Etiam pretium iaculis justo.\r\n\r\nIn hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.\r\n\r\nNulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\r\n\r\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.\r\n\r\nQuisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.\r\n\r\nPhasellus in felis. Donec semper sapien a libero. Nam dui.\r\n\r\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 1, '2016-05-09 20:44:49'),
(80, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidu', 'Fusce consequat. Nulla nisl. Nunc nisl.', 2, 'Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.\r\n\r\nSed ante. Vivamus tortor. Duis mattis egestas metus.\r\n\r\nAenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.\r\n\r\nQuisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.\r\n\r\nVestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 1, '2015-08-24 05:06:48'),
(81, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidu', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.', 4, 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.\r\n\r\nMaecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\r\n\r\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\r\n\r\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\r\n\r\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\r\n\r\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.\r\n\r\nSed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 1, '2016-05-05 17:00:01'),
(82, 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend ', 2, 'Phasellus in felis. Donec semper sapien a libero. Nam dui.\r\n\r\nProin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.\r\n\r\nInteger ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.\r\n\r\nNam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.', 1, '2016-05-16 16:26:51'),
(83, 'Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend ', 1, 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.\r\n\r\nPhasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.\r\n\r\nProin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.\r\n\r\nDuis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.\r\n\r\nDonec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.\r\n\r\nDuis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.\r\n\r\nIn sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.\r\n\r\nSuspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.', 1, '2016-05-02 19:56:18');
INSERT INTO `news` (`id_news`, `title`, `alias`, `id_category`, `content`, `is_active`, `data`) VALUES
(84, 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rh', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestib', 3, 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.\r\n\r\nMaecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.\r\n\r\nNullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.\r\n\r\nMorbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.\r\n\r\nFusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 1, '2015-07-31 13:14:00');

-- --------------------------------------------------------

--
-- Структура таблицы `photo`
--

CREATE TABLE IF NOT EXISTS `photo` (
  `id_photo` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `id_news` smallint(5) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_photo`),
  KEY `id_news` (`id_news`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `tegs`
--

CREATE TABLE IF NOT EXISTS `tegs` (
  `id_tegs` smallint(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id_tegs`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Дамп данных таблицы `tegs`
--

INSERT INTO `tegs` (`id_tegs`, `name`) VALUES
(1, 'magnis'),
(2, 'nam'),
(3, 'etiam'),
(4, 'tincidunt'),
(5, 'tincidunt'),
(6, 'vel'),
(7, 'luctus'),
(8, 'nullam'),
(9, 'ipsum'),
(10, 'curabitur'),
(11, 'lobortis'),
(12, 'dui'),
(13, 'eu'),
(14, 'quis'),
(15, 'nulla');

-- --------------------------------------------------------

--
-- Структура таблицы `tegs_to_news`
--

CREATE TABLE IF NOT EXISTS `tegs_to_news` (
  `id_tegs_to_news` smallint(3) NOT NULL AUTO_INCREMENT,
  `id_news` smallint(3) NOT NULL,
  `id_tegs` smallint(3) NOT NULL,
  PRIMARY KEY (`id_tegs_to_news`),
  KEY `id_news` (`id_news`),
  KEY `id_tegs` (`id_tegs`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=103 ;

--
-- Дамп данных таблицы `tegs_to_news`
--

INSERT INTO `tegs_to_news` (`id_tegs_to_news`, `id_news`, `id_tegs`) VALUES
(1, 47, 15),
(2, 57, 5),
(3, 40, 9),
(4, 60, 4),
(5, 62, 4),
(6, 63, 1),
(7, 75, 5),
(8, 66, 13),
(9, 60, 9),
(10, 53, 3),
(11, 52, 5),
(12, 51, 9),
(13, 45, 2),
(14, 77, 1),
(15, 71, 9),
(16, 61, 8),
(17, 63, 15),
(18, 84, 8),
(19, 81, 1),
(20, 55, 11),
(21, 80, 12),
(22, 44, 2),
(23, 54, 6),
(24, 65, 3),
(25, 74, 8),
(26, 81, 12),
(27, 42, 9),
(28, 49, 2),
(29, 61, 2),
(30, 36, 1),
(31, 35, 5),
(32, 47, 2),
(33, 56, 11),
(34, 84, 11),
(35, 53, 6),
(36, 48, 6),
(37, 56, 4),
(38, 42, 3),
(39, 61, 4),
(40, 75, 11),
(41, 78, 13),
(42, 48, 15),
(43, 80, 6),
(44, 62, 11),
(45, 78, 11),
(46, 61, 2),
(47, 62, 5),
(48, 70, 8),
(49, 62, 5),
(50, 80, 4),
(51, 71, 14),
(52, 70, 7),
(53, 67, 9),
(54, 69, 9),
(55, 60, 4),
(56, 56, 14),
(57, 69, 9),
(58, 38, 14),
(59, 60, 14),
(60, 68, 9),
(61, 52, 5),
(62, 63, 10),
(63, 51, 3),
(64, 49, 2),
(65, 61, 4),
(66, 46, 1),
(67, 40, 3),
(68, 77, 10),
(69, 61, 9),
(70, 66, 13),
(71, 84, 7),
(72, 81, 9),
(73, 52, 14),
(74, 55, 5),
(75, 58, 3),
(76, 57, 9),
(77, 71, 10),
(78, 68, 9),
(79, 43, 11),
(80, 64, 14),
(81, 55, 14),
(82, 83, 1),
(83, 53, 14),
(84, 52, 4),
(85, 42, 13),
(86, 38, 5),
(87, 36, 9),
(88, 36, 7),
(89, 77, 8),
(90, 75, 6),
(91, 66, 1),
(92, 81, 11),
(93, 75, 2),
(94, 42, 5),
(95, 64, 15),
(96, 48, 11),
(97, 37, 2),
(98, 82, 8),
(99, 54, 9),
(100, 77, 2),
(101, 52, 15),
(102, 49, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id_user` smallint(3) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id_user`, `email`, `pass`) VALUES
(1, 'ric-o@meta.ua', 'f84b03bb42ddf8554559ca84f6d3f066'),
(2, 'roman-o@i.ua', 'f84b03bb42ddf8554559ca84f6d3f066'),
(3, 'lydia_ua@yahoo.com', 'f84b03bb42ddf8554559ca84f6d3f066'),
(4, 'admin@admin.ua', 'c7cb5d5b6bbfb90d6f97ff875cc26386');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `coments`
--
ALTER TABLE `coments`
  ADD CONSTRAINT `coments_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `coments_ibfk_2` FOREIGN KEY (`id_news`) REFERENCES `news` (`id_news`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`id_news`) REFERENCES `news` (`id_news`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `tegs_to_news`
--
ALTER TABLE `tegs_to_news`
  ADD CONSTRAINT `tegs_to_news_ibfk_1` FOREIGN KEY (`id_news`) REFERENCES `news` (`id_news`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tegs_to_news_ibfk_2` FOREIGN KEY (`id_tegs`) REFERENCES `tegs` (`id_tegs`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

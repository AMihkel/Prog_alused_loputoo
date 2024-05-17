-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Mai 17, 2024 kell 11:19 EL
-- Serveri versioon: 10.4.32-MariaDB
-- PHP versioon: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `kohvikud`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `hinnangud`
--

CREATE TABLE `hinnangud` (
  `id` int(6) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `kommentar` varchar(255) NOT NULL,
  `hinnang` int(2) NOT NULL,
  `toidukoaha_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `hinnangud`
--

INSERT INTO `hinnangud` (`id`, `nimi`, `kommentar`, `hinnang`, `toidukoaha_id`) VALUES
(1, 'Laurélie', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui n', 4, 94),
(2, 'Erwéi', 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi', 3, 66),
(3, 'Esbjörn', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis', 9, 65),
(4, 'Styrbjörn', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 8, 98),
(5, 'Yáo', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integ', 10, 98),
(6, 'Marie-françoise', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Qui', 2, 9),
(7, 'Göran', 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 10, 97),
(8, 'Gaëlle', 'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 10, 6),
(9, 'Céline', 'Donec ut dolor.', 7, 46),
(10, 'Inès', 'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula.', 5, 88),
(11, 'Stéphanie', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam', 3, 19),
(12, 'Clélia', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id', 3, 78),
(13, 'Yè', 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac conse', 5, 83),
(14, 'Estée', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam ', 5, 53),
(15, 'Athéna', 'Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.', 10, 51),
(16, 'Laurélie', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ip', 5, 91),
(17, 'Tú', 'Integer ac neque. Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus. In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.', 4, 12),
(18, 'Lucrèce', 'Donec dapibus. Duis at velit eu est congue elementum.', 5, 39),
(19, 'Géraldine', 'Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti. In eleifend quam a odio.', 9, 54),
(20, 'Clémence', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi.', 1, 16),
(21, 'Crééz', 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 6, 37),
(22, 'Clélia', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices ve', 5, 28),
(23, 'Pål', 'Nullam varius. Nulla facilisi.', 6, 68),
(24, 'Esbjörn', 'Nulla justo. Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis. Sed ante. Vivamus tortor. Duis mattis egestas metus. Aenean fermentum. Donec ut mauris eget massa tempor convallis.', 4, 6),
(25, 'Maëlla', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis nato', 8, 72),
(26, 'Görel', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula c', 7, 15),
(27, 'Crééz', 'Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, null', 10, 2),
(28, 'Kallisté', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 4, 94),
(29, 'Börje', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', 8, 89),
(30, 'Mélissandre', 'Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque e', 6, 60),
(31, 'Mélia', 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.', 5, 19),
(32, 'Rébecca', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 1, 90),
(33, 'Valérie', 'Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus.', 5, 6),
(34, 'Aurélie', 'Donec dapibus. Duis at velit eu est congue elementum.', 2, 44),
(35, 'Noëlla', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tin', 10, 20),
(36, 'Clémence', 'Aliquam erat volutpat.', 8, 84),
(37, 'Laurène', 'Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integ', 3, 49),
(38, 'Maëlys', 'Nunc rhoncus dui vel sem. Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus. Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputa', 7, 78),
(39, 'Nélie', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcor', 5, 18),
(40, 'Maïlis', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 8, 14),
(41, 'Eléonore', 'Ut at dolor quis odio consequat varius. Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus', 5, 70),
(42, 'Mélodie', 'In sagittis dui vel nisl. Duis ac nibh.', 3, 9),
(43, 'Marie-noël', 'Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.', 2, 60),
(44, 'Eléonore', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 10, 88),
(45, 'Publicité', 'In sagittis dui vel nisl.', 7, 29),
(46, 'Aí', 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, lu', 1, 36),
(47, 'Illustrée', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt a', 5, 7),
(48, 'Gaïa', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis partu', 5, 97),
(49, 'Maï', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat. Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede. Morbi porttitor lorem id ligula. Suspendisse o', 2, 84),
(50, 'André', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat. In congue. Etiam justo. Etiam pretium iaculis justo.', 3, 21),
(51, 'Maéna', 'Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh. In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, lu', 5, 14),
(52, 'Desirée', 'Nulla ut erat id mauris vulputate elementum.', 1, 38),
(53, 'Rébecca', 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum eget, vulputate ', 7, 73),
(54, 'Annotée', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus. Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy.', 7, 92),
(55, 'Naéva', 'Aliquam sit amet diam in magna bibendum imperdiet.', 4, 31),
(56, 'Léana', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.', 6, 72),
(57, 'Loïs', 'Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. ', 5, 86),
(58, 'Clélia', 'Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 3, 33),
(59, 'Kévina', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 9, 97),
(60, 'Camélia', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo. Aliquam quis turpis eget elit sodales scelerisque.', 5, 11),
(61, 'Léandre', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ip', 1, 78),
(62, 'Cécilia', 'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel ', 6, 55),
(63, 'Håkan', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero. Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.', 9, 50),
(64, 'André', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.', 6, 88),
(65, 'Pò', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit. Donec diam neque, vestibulum ege', 8, 87),
(66, 'Göran', 'Donec semper sapien a libero. Nam dui.', 8, 60),
(67, 'Åslög', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 8, 2),
(68, 'Stévina', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et t', 6, 46),
(69, 'Renée', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum. In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum ', 8, 81),
(70, 'Publicité', 'Praesent blandit. Nam nulla.', 9, 22),
(71, 'Léane', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque. Duis bibendum. Morbi non quam', 7, 82),
(72, 'Lài', 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. V', 6, 27),
(73, 'Méng', 'Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', 1, 58),
(74, 'Judicaël', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 6, 22),
(75, 'Ophélie', 'Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt a', 8, 85),
(76, 'Yáo', 'Ut at dolor quis odio consequat varius. Integer ac leo.', 7, 25),
(77, 'Thérèsa', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem. Sed sagittis.', 2, 38),
(78, 'Östen', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem. Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy.', 5, 49),
(79, 'Ruò', 'Phasellus in felis.', 5, 11),
(80, 'Néhémie', 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem.', 10, 60),
(81, 'Léa', 'In eleifend quam a odio. In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', 10, 46),
(82, 'Naéva', 'Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris. Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.', 3, 11),
(83, 'Mà', 'Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi. Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, v', 8, 97),
(84, 'Méthode', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus. Mauris eni', 1, 26),
(85, 'Tán', 'Vivamus tortor. Duis mattis egestas metus. Aenean fermentum.', 1, 8),
(86, 'Félicie', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus. Phasellus in fel', 8, 6),
(87, 'Håkan', 'Aliquam sit amet diam in magna bibendum imperdiet.', 6, 10),
(88, 'Célia', 'Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est. Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum. Proin eu mi. Nulla ac enim', 9, 34),
(89, 'Torbjörn', 'Proin risus. Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', 4, 76),
(90, 'Noëlla', 'Nulla mollis molestie lorem. Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. V', 5, 95),
(91, 'Béatrice', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue. Vestibulum rutrum rutrum neque', 2, 48),
(92, 'Intéressant', 'In congue. Etiam justo. Etiam pretium iaculis justo.', 3, 99),
(93, 'Loïca', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti. Nullam portt', 10, 89),
(94, 'Médiamass', 'Quisque ut erat. Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', 1, 91),
(95, 'Dù', 'Cras pellentesque volutpat dui. Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. S', 1, 25),
(96, 'Liè', 'Nunc purus. Phasellus in felis. Donec semper sapien a libero. Nam dui. Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.', 1, 63),
(97, 'Adélaïde', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat conval', 10, 26),
(98, 'Maïté', 'In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui. Maecenas tristique, est et t', 9, 85),
(99, 'Noëlla', 'Pellentesque ultrices mattis odio. Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus. Curabitur at ipsum ac ', 7, 21),
(100, 'Börje', 'Suspendisse potenti.', 1, 56);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `toidukohad`
--

CREATE TABLE `toidukohad` (
  `id` int(6) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `asukoht` varchar(255) NOT NULL,
  `k_hinne` double NOT NULL,
  `hinnatud` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `toidukohad`
--

INSERT INTO `toidukohad` (`id`, `nimi`, `asukoht`, `k_hinne`, `hinnatud`) VALUES
(101, 'Braun Inc', 'Karakabak', 4.8, 44),
(102, 'Metz, Mayer and Gutmann', 'Ambovombe', 9.1, 54),
(103, 'Weber, Lesch and Lemke', 'Ntobo', 5, 99),
(104, 'Weissnat, Hegmann and Christiansen', 'Norrtälje', 6.4, 68),
(105, 'Schaefer Inc', 'Krajan Kinanti', 3, 48),
(106, 'Block and Sons', 'Buenaventura', 9.8, 49),
(107, 'Swift, Yost and Bailey', 'Masis', 3.8, 63),
(108, 'Weimann, Anderson and Walter', 'Rosebank', 1.7, 93),
(109, 'Nitzsche LLC', 'Turkestan', 7.7, 18),
(110, 'Klocko-Daugherty', 'Baisha', 4.3, 6),
(111, 'Stokes LLC', 'Seia', 9.4, 76),
(112, 'Schoen, Jacobs and Mosciski', 'Austin', 2.4, 42),
(113, 'Strosin LLC', 'Armenia', 6.2, 46),
(114, 'Kilback, Murphy and Anderson', 'San Antonio', 3.8, 85),
(115, 'Mills Inc', 'Sukošan', 5.6, 86),
(116, 'Gutkowski-Carroll', 'Tianzhu', 2.9, 85),
(117, 'Gerlach, Wolf and Larkin', 'Muraharjo', 1.2, 30),
(118, 'Gibson, Nitzsche and Buckridge', 'Capim Grosso', 9.3, 12),
(119, 'Effertz Group', 'Guanting', 8.7, 28),
(120, 'Hegmann, Green and Olson', 'Quận Phú Nhuận', 4.1, 91),
(121, 'Upton, Pagac and Labadie', 'Horodyshche', 8.9, 89),
(122, 'Prosacco-Kilback', 'Manique', 2.8, 54),
(123, 'Parisian-Lehner', 'Itatskiy', 1.6, 36),
(124, 'Jast Group', 'Montor Timur', 1.4, 61),
(125, 'Bechtelar and Sons', 'Galižana', 3.3, 38),
(126, 'Conn LLC', 'Kanekomachi', 2.9, 58),
(127, 'Wolf-Kemmer', 'Jobabo', 6.6, 67),
(128, 'Cassin-Barton', 'Conceição do Coité', 6.1, 4),
(129, 'Bahringer-Ratke', 'Buan', 5.1, 64),
(130, 'Schuppe, Lind and Ward', 'Oslob', 9.8, 63),
(131, 'Luettgen, Becker and Lindgren', 'Aurora', 5.5, 66),
(132, 'Bode LLC', 'Primošten', 1.5, 50),
(133, 'Kunde-Gleason', 'Jeong', 8.1, 7),
(134, 'Schinner, Lueilwitz and Huels', 'Osa', 7.7, 58),
(135, 'Bartell Inc', 'Guane', 3.6, 22),
(136, 'McCullough-D\'Amore', 'Purwokerto', 6.8, 32),
(137, 'Nicolas and Sons', 'Lowotukan', 3.8, 18),
(138, 'Crona and Sons', 'Rudniki', 9.8, 9),
(139, 'Hoppe, Luettgen and Aufderhar', 'Littleton', 8.8, 47),
(140, 'Jaskolski, Casper and Beer', 'Domont', 8.5, 22),
(141, 'Graham and Sons', 'Mafra', 1.3, 72),
(142, 'Volkman-Witting', 'Shiyu', 2.8, 92),
(143, 'Block-Reichel', 'Sosnovka', 2.2, 56),
(144, 'Watsica, Doyle and Stokes', 'Atipuluhan', 1.3, 48),
(145, 'Ondricka, Stamm and Jones', 'Hrodna', 2.1, 56),
(146, 'Rodriguez, Roberts and Sipes', 'Buyant', 8.5, 86),
(147, 'Lakin LLC', 'Boleszkowice', 4.8, 80),
(148, 'Jacobs, Wiegand and Turner', 'Tushi', 7.1, 23),
(149, 'Gerhold, Kshlerin and Kozey', 'Winschoten', 7.5, 98),
(150, 'Ullrich LLC', 'Berlin', 5.1, 20),
(151, 'Williamson, Hamill and Labadie', 'Gwio Kura', 8.6, 83),
(152, 'Jacobi and Sons', 'Gading', 9.2, 77),
(153, 'Balistreri, Spinka and Lesch', 'Leping', 6.6, 14),
(154, 'Nicolas Inc', 'Jaru', 9.5, 45),
(155, 'Goodwin, Cronin and Schiller', 'Margara', 2.1, 41),
(156, 'Raynor-Ryan', 'Replot', 3.1, 69),
(157, 'Schamberger, Strosin and Volkman', 'Menghe', 8.3, 39),
(158, 'Terry-Cole', 'Palecenan', 9.9, 63),
(159, 'Hoppe and Sons', 'Zarechnyy', 5.9, 72),
(160, 'Funk-VonRueden', 'Outeiro', 4.3, 49),
(161, 'Armstrong and Sons', 'Tawau', 2.6, 22),
(162, 'Brown-Hodkiewicz', 'Ilanskiy', 5.9, 52),
(163, 'Wuckert-Bahringer', 'Mayfa‘ah', 8.8, 34),
(164, 'Herzog, Batz and Heller', 'Dubu', 7.3, 61),
(165, 'Heaney Group', 'Makrýgialos', 8.3, 51),
(166, 'Davis, Ernser and Cormier', 'Pasirlaja', 8.2, 86),
(167, 'Maggio Group', 'Saint-Ouen', 7.1, 11),
(168, 'Breitenberg, Hickle and Schroeder', 'Tigpalay', 7.4, 36),
(169, 'Hammes, Farrell and Dibbert', 'Ozëry', 9.6, 64),
(170, 'Hirthe-Doyle', 'Ḩadādah', 4.3, 89),
(171, 'Kutch, Tromp and Stiedemann', 'Kangar', 5.6, 62),
(172, 'Spencer-Beier', 'Yinglong', 5.9, 45),
(173, 'O\'Connell, Bernhard and Orn', 'Pahonjean', 1, 89),
(174, 'Vandervort Group', 'Banjar Dukuh', 4.6, 59),
(175, 'Emmerich and Sons', 'Łaziska Górne', 1.8, 78),
(176, 'Gottlieb, Schamberger and Feeney', 'Chiara', 3.6, 82),
(177, 'Grimes and Sons', 'Jinhe', 9.3, 28),
(178, 'Shields-Toy', 'Marapanim', 6.4, 13),
(179, 'Powlowski, Wiegand and Cummerata', 'Seč', 9.4, 50),
(180, 'Hand-Kris', 'El Colorado', 7.7, 70),
(181, 'Russel and Sons', 'Zhirnovsk', 8, 64),
(182, 'Runolfsdottir-Rempel', 'Chaguaní', 2.6, 6),
(183, 'Parisian-Bogan', 'Gaide', 8.5, 58),
(184, 'Tillman, Okuneva and Weimann', 'Hecun', 8, 27),
(185, 'Ebert, Wyman and Wyman', 'Vacenovice', 4.5, 56),
(186, 'Wilkinson Group', 'Poços de Caldas', 2.3, 93),
(187, 'Crona and Sons', 'Hilversum', 7.1, 29),
(188, 'Ziemann-Lueilwitz', 'Brylivka', 3.9, 3),
(189, 'Cole, Champlin and Leannon', '‘Anat al Qadīmah', 9.3, 94),
(190, 'Weber-Strosin', 'Bor Ondor', 2.2, 42),
(191, 'Streich Inc', 'Sabanalarga', 8.8, 20),
(192, 'MacGyver and Sons', 'Baghdad', 8.5, 98),
(193, 'Gulgowski Inc', 'Sleman', 7.9, 69),
(194, 'Blick LLC', 'Arcangel', 2.5, 33),
(195, 'Keeling-Cronin', 'Kendari', 3.4, 9),
(196, 'Moore Group', 'Fovissste', 4.8, 64),
(197, 'Hackett-Borer', 'Duozhu', 3.2, 69),
(198, 'Leannon and Sons', 'Krajan Bejagung', 6.2, 10),
(199, 'Weimann-Kilback', 'Zaozerne', 8.9, 6),
(200, 'Murray-Ortiz', 'Červené Pečky', 1.3, 14);

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `hinnangud`
--
ALTER TABLE `hinnangud`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `toidukohad`
--
ALTER TABLE `toidukohad`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `hinnangud`
--
ALTER TABLE `hinnangud`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT tabelile `toidukohad`
--
ALTER TABLE `toidukohad`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

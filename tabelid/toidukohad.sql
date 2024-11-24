-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2024 at 08:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kohvikud`
--

-- --------------------------------------------------------

--
-- Table structure for table `toidukohad`
--

CREATE TABLE `toidukohad` (
  `id` int(6) NOT NULL,
  `nimi` varchar(255) NOT NULL,
  `asukoht` varchar(255) NOT NULL,
  `k_hinne` double NOT NULL,
  `hinnatud` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `toidukohad`
--

INSERT INTO `toidukohad` (`id`, `nimi`, `asukoht`, `k_hinne`, `hinnatud`) VALUES
(101, 'Braun Inc', 'kalkun', 4.6, 48),
(102, 'Metz, Mayer and Gutmann', 'Ambovombe', 9.1, 54),
(103, 'Weber, Lesch and Lemke', 'Ntobo', 5, 99),
(104, 'Weissnat, Hegmann and Christiansen', 'Norrtälje', 6.4, 68),
(105, 'Schaefer Inc', 'Krajan Kinanti', 3, 48),
(106, 'Block and Sons', 'Buenaventura', 8.8, 63),
(107, 'Swift, Yost and Bailey', 'Masis', 3.8, 63),
(108, 'Weimann, Anderson and Walter', 'Rosebank', 1.7, 93),
(110, 'Klocko-Daugherty', 'Baisha', 4.3, 6),
(111, 'Stokes LLC', 'Seia', 9.4, 76),
(112, 'Schoen, Jacobs and Mosciski', 'Austin', 2.4, 42),
(113, 'Strosin LLC', 'Armenia', 6.1, 47),
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
(125, 'Bechtelar and Sons', 'Galižana', 3.4, 44),
(126, 'Conn LLC', 'Kanekomachi', 2.9, 58),
(127, 'Wolf-Kemmer', 'Jobabo', 6.6, 67),
(128, 'Cassin-Barton', 'Conceição do Coité', 6.1, 4),
(129, 'Bahringer-Ratke', 'Buan', 5.1, 66),
(130, 'Schuppe, Lind and Ward', 'Oslob', 9.8, 63),
(131, 'Luettgen, Becker and Lindgren', 'Aurora', 5.5, 66),
(132, 'Bode LLC', 'Primošten', 1.7, 52),
(133, 'Kunde-Gleason', 'Jeong', 8.1, 7),
(134, 'Schinner, Lueilwitz and Huels', 'Osa', 7.7, 58),
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
(161, 'Armstrong and Sons', 'Tawau', 3.2, 24),
(162, 'Brown-Hodkiewicz', 'Ilanskiy', 5.9, 52),
(163, 'Wuckert-Bahringer', 'Mayfa‘ah', 8.8, 34),
(164, 'Herzog, Batz and Heller', 'Dubu', 7.3, 61),
(165, 'Heaney Group', 'Makrýgialos', 8.3, 51),
(166, 'Davis, Ernser and Cormier', 'Pasirlaja', 8.2, 86),
(167, 'Maggio Group', 'Saint-Ouen', 7.1, 11),
(168, 'Breitenberg, Hickle and Schroeder', 'Tigpalay', 7.5, 38),
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
(189, 'Cole, Champlin and Leannon', '‘Anat al Qadīmah', 9.3, 94),
(190, 'Weber-Strosin', 'Bor Ondor', 2.2, 42),
(191, 'Streich Inc', 'Sabanalarga', 8.8, 20),
(192, 'MacGyver and Sons', 'Baghdad', 8.5, 98),
(193, 'Gulgowski Inc', 'Sleman', 7.9, 69),
(194, 'Blick LLC', 'Arcangel', 2.6, 37),
(195, 'Keeling-Cronin', 'Kendari', 3.4, 9),
(196, 'Moore Group', 'Fovissste', 4.8, 64),
(197, 'Hackett-Borer', 'Duozhu', 3.2, 69),
(198, 'Leannon and Sons', 'Krajan Bejagung', 6.2, 10),
(199, 'Weimann-Kilback', 'Zaozerne', 8.9, 6),
(200, 'Murray-Ortiz', 'Červené Pečky', 1.3, 14),
(201, 'kalkun', 'sldhbvs', 10, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `toidukohad`
--
ALTER TABLE `toidukohad`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `toidukohad`
--
ALTER TABLE `toidukohad`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

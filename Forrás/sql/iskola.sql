-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Okt 19. 08:08
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `iskola`
--
CREATE DATABASE IF NOT EXISTS `iskola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `iskola`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `diakok`
--

CREATE TABLE `diakok` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) NOT NULL,
  `email` varchar(22) NOT NULL,
  `erdemjegy` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `diakok`
--

INSERT INTO `diakok` (`id`, `nev`, `email`, `erdemjegy`) VALUES
(1, 'Agócs Ármin', 'szt2agoarm@vasvari.org', 2),
(2, 'Bácskai Péter', 'szt2bacpet@vasvari.org', 1),
(3, 'Bukvity Ármin', 'szt2bukarm@vasvari.org', 4),
(4, 'Csorba Martin Nikolasz', 'szt2csonik@vasvari.org', 4),
(5, 'Gémes Szabolcs', 'szt2gemsza@vasvari.org', 1),
(6, 'Halász Patrik', 'szt2halpat@vasvari.org', 3),
(7, 'Hódi Lajos Gábor', 'szt2hodlaj@vasvari.org', 5),
(8, 'Kehi Szabolcs', 'szt2kehsza@vasvari.org', 2),
(9, 'Kéki Lajos Máté', 'szt2keklaj@vasvari.org', 3),
(10, 'Makán Péter', 'szt2makpet@vasvari.org', 2),
(11, 'Miklós Richárd Gábor', 'szt2mikric@vasvari.org', 1),
(12, 'Miskolczi Nándor', 'szt2misnan@vasvari.org', 1),
(13, 'Mösenlechner Josef Zoltán', 'szt2mosjos@vasvari.org', 2),
(14, 'Mulati Bence', 'szt2mulben@vasvari.org', 3),
(15, 'Ótott-Kovács Tamás', 'szt2otokov@vasvari.org', 4),
(16, 'Pálvölgyi Patrik', 'szt2palpat@vasvari.org', 5),
(17, 'Péli Tamás', 'szt2peltam@vasvari.org', 5),
(18, 'Polyákovich Tamás', 'szt2poltam@vasvari.org', 3),
(19, 'Somogyi Dániel', 'szt2somdan@vasvari.org', 3),
(20, 'Szabó Vivien Liliána', 'szt2szaviv@vasvari.org', 4),
(21, 'Vetró Máté', 'szt2vetmat@vasvari.org', 3),
(22, 'Zakar Bálint', 'szt2zakbal@vasvari.org', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tanarok`
--

CREATE TABLE `tanarok` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tantargy` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `tanarok`
--

INSERT INTO `tanarok` (`id`, `nev`, `email`, `tantargy`) VALUES
(1, 'Bálint Róbert', 'balint.robert@vasvari.org', 'Webprogramozás'),
(2, 'Boros Bence', 'boros.bence@vasvari.org', 'C#'),
(3, 'Dr. Nyári Tibor', 'nyari.tibor@vasvari.org', 'Szoftvertesztelés'),
(4, 'Fanaczán János', 'fanaczan@vasvari.org', 'Játékfejlesztés'),
(5, 'Gyuris Csaba', 'gyuris.csaba@vasvari.org', 'C#'),
(6, 'Kádár Tünde', 'kadar.tunde@vasvari.org', 'Adatbázis'),
(7, 'Molnár Edit', 'molnar.edit@vasvari.org', 'Webprogramozás'),
(8, 'Pap Zoltán', 'pap.zoltan@vasvari.org', 'Python'),
(9, 'Sebestyén Klára', 'sebestyen.klara@vasvari.org', 'Java'),
(10, 'Szilágyi Zoltán', 'szilagyi.zoltan@vasvari.org', 'Hálózati alapok'),
(11, 'Zsivola Magdolna', 'zsivola@vasvari.org', 'Dokumentumszerkeszté'),
(12, 'Vastag Atila', 'vastag.atila@vasvari.org', 'Java');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vezetoseg`
--

CREATE TABLE `vezetoseg` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `megbizas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `vezetoseg`
--

INSERT INTO `vezetoseg` (`id`, `nev`, `email`, `megbizas`) VALUES
(1, 'Kádár Blanka Julianna', 'kadar.blanka@vasvari.org', 'igazgató'),
(2, 'Dóka Zoltán Béla', 'doka.zoltan@vasvari.org', 'általános igazgatóhelyettes'),
(3, 'Murár Zoltán', 'murar.zoltan@vasvari.org', 'pedagógiai igazgatóhelyettes'),
(4, 'Molnár Edit', 'molnar.edit@vasvari.org', 'szakmai igazgatóhelyettes');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `diakok`
--
ALTER TABLE `diakok`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- A tábla indexei `tanarok`
--
ALTER TABLE `tanarok`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- A tábla indexei `vezetoseg`
--
ALTER TABLE `vezetoseg`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `diakok`
--
ALTER TABLE `diakok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT a táblához `tanarok`
--
ALTER TABLE `tanarok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT a táblához `vezetoseg`
--
ALTER TABLE `vezetoseg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

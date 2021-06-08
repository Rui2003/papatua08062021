-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Jun-2021 às 17:14
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `papatualizada`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `idcategoria` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`idcategoria`, `categoria`) VALUES
(1, 'DJ'),
(2, 'Estudio');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `idcurso` int(11) NOT NULL,
  `designacao` int(11) NOT NULL,
  `preco` int(11) NOT NULL,
  `duracao` int(11) NOT NULL,
  `descricao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idproduto` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `preco` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `idsubcat` int(11) NOT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idproduto`, `marca`, `preco`, `descricao`, `modelo`, `idsubcat`, `imagem`) VALUES
(89, 'Pioneer', 1049, 'DJM 750', 'DJM 750 MK2', 1, '2021.04.18-12.53.50.jpg'),
(90, 'Allen & Heath ', 1528, 'XONE ', 'XONE 96', 1, '2021.04.18-12.56.24.jpg'),
(91, 'Reloop', 799, 'RMX ', 'RMX 90', 1, '2021.04.18-12.57.31.jpg'),
(92, 'Numark', 107, 'M2', 'M2', 1, '2021.04.18-12.58.20.jpg'),
(93, 'Denon', 1199, 'X1850 Prime', 'M2', 1, '2021.04.18-13.29.14.jpg'),
(94, 'Allen & Heath ', 1125, 'XONE', 'XONE 92', 1, '2021.04.18-13.30.13.jpg'),
(95, 'Pioneer', 499, 'DJM', 'DJM 350', 1, '2021.04.18-13.31.29.jpg'),
(96, 'Pioneer', 2925, 'DJM', 'DJM V10', 1, '2021.04.18-13.32.06.jpg'),
(97, 'Numark', 170, 'M4', 'M4', 1, '2021.04.18-13.33.01.jpg'),
(98, 'Pioneer', 1400, 'DJM', 'DJM S7', 1, '2021.04.18-13.34.54.png'),
(99, 'Allen & Heath ', 1780, 'XONE', 'XONE:4D', 1, '2021.04.18-13.38.05.jpg'),
(100, 'Reloop', 299, 'RMX', 'RMX 33i', 1, '2021.04.18-13.40.06.jpg'),
(101, 'Reloop', 199, 'RP 1000 ', 'RP 1000 MK2', 2, '2021.04.18-13.41.52.jpg'),
(104, 'Technics', 899, 'SL-1210 ', 'SL-1210 MK7', 2, '2021.04.19-18.06.16.jpg'),
(105, 'Denon', 480, 'VL12 ', 'VL12 Prime', 2, '2021.04.19-18.08.37.jpg'),
(106, 'Pioneer', 619, 'PLX', 'PLX-1000', 2, '2021.04.19-18.09.58.jpg'),
(107, 'Reloop', 229, 'Spin', 'Spin', 2, '2021.04.19-18.26.39.jpg'),
(108, 'Numark', 249, 'TT 250', 'TT 250 USB', 2, '2021.04.19-18.27.40.jpg'),
(109, 'Reloop', 475, 'Turn 3', 'Turn 3(V)', 2, '2021.04.19-18.29.02.png'),
(110, 'Technics', 2925, 'SL-1210 ', 'SL-1210 MK7R Red Bull BC One Limited Edition', 2, '2021.04.19-18.30.11.jpg'),
(111, 'Reloop', 249, 'RP-2000 ', 'RP-2000 MK2', 2, '2021.04.19-18.31.11.jpg'),
(112, 'Reloop', 289, 'RP-4000 ', 'RP-4000 MK2', 2, '2021.04.19-18.32.23.jpg'),
(113, 'Reloop', 529, 'RP-7000 ', 'RP-7000 MK2 Silver', 2, '2021.04.19-18.39.12.jpg'),
(114, 'Reloop', 600, 'RP-8000', 'RP-8000 MK2 Silver', 2, '2021.04.19-18.39.56.jpg'),
(115, 'Pioneer', 260, 'DDJ', 'DDJ-400', 4, '2021.04.19-18.41.39.jpg'),
(116, 'Hercules', 110, 'Impulse', 'Impulse 200', 4, '2021.04.19-18.44.13.jpg'),
(118, 'Native Instruments', 265, 'S2 MKII', 'Traktor Kontrol S2 MKII', 4, '2021.04.19-18.46.37.jpg'),
(119, 'Pioneer', 237, 'DDJ', 'DDJ SB3', 4, '2021.04.19-18.47.17.jpg'),
(120, 'Pioneer', 738, 'DDJ ', 'DDJ-800', 4, '2021.04.19-18.50.13.jpg'),
(121, 'Pioneer', 1129, 'DDJ ', 'DDJ-1000', 4, '2021.04.19-18.50.47.jpg'),
(122, 'Native Instruments', 730, ' S4 MKIII', 'Traktor Kontrol S4 MKIII', 4, '2021.04.19-18.51.41.jpg'),
(123, 'Numark', 70, 'DJ2GO 2', 'DJ2GO 2', 4, '2021.04.19-18.52.55.jpg'),
(124, 'Denon', 1745, 'Prime 4', 'Prime 4', 4, '2021.04.19-18.53.46.jpg'),
(125, 'Numark', 285, 'MixTrack Platinium FX', 'MixTrack Platinium FX', 4, '2021.04.19-18.54.22.jpg'),
(126, 'Rane ', 1489, 'One', 'One', 4, '2021.04.19-18.55.16.jpg'),
(127, 'Reloop', 219, 'Budy', 'Budy', 4, '2021.04.19-18.55.47.jpg'),
(128, 'Pioneer', 599, 'DDJ-FLX6', 'DDJ-FLX6', 4, '2021.04.19-18.56.46.jpg'),
(129, 'Hercules', 250, 'Impulse 500', 'Impulse 500', 4, '2021.04.19-18.57.35.jpg'),
(130, 'Allen & Heath', 235, 'XONE:K2', 'XONE:K2', 4, '2021.04.19-18.58.26.jpg'),
(131, 'Native Instruments', 175, 'Traktor Kontrol X1 Mk2', 'Traktor Kontrol X1 Mk2', 4, '2021.04.19-18.59.08.png'),
(140, 'Pioneer', 275, 'HDJ', 'HDJ X-10', 5, '2021.05.24-09.41.42.jpg'),
(141, 'Reloop', 125, 'RHP', 'RHP-30 Black', 5, '2021.05.24-09.42.36.jpg'),
(142, 'Reloop', 125, 'RHP', 'RHP-30 Silver', 5, '2021.05.24-09.43.34.png'),
(143, 'AKG', 125, 'K181 ', 'K181 Dj UE', 5, '2021.05.24-09.44.13.jpg'),
(144, 'Pioneer', 149, 'HDJ', 'HDJ X7', 5, '2021.05.24-09.57.25.jpg'),
(145, 'Sennheiser', 149, 'HD', 'HD-25', 5, '2021.05.24-09.58.28.jpg'),
(146, 'Shure', 89, 'SRH440', 'SRH440', 5, '2021.05.24-09.59.12.jpg'),
(147, 'Shure', 60, 'SRH240A', 'SRH240A', 5, '2021.05.24-10.05.18.png'),
(148, 'Pioneer', 189, 'HDJ-S7-K', 'HDJ-S7-K', 5, '2021.05.24-10.06.07.jpg'),
(149, 'Pioneer', 189, 'HDJ-S7-w', 'HDJ-S7-w', 5, '2021.05.24-10.07.41.jpg'),
(150, 'Rane', 49, 'RH-1', 'RH-1', 5, '2021.05.24-10.08.12.jpg'),
(151, 'Rane', 69, 'RH-2', 'RH-2', 5, '2021.05.24-10.08.42.jpg'),
(152, 'Numark', 60, 'Red Wave Carbon', 'Red Wave Carbon', 5, '2021.05.24-10.09.20.jpg'),
(153, 'Reloop', 35, 'RH-2500', 'RH-2500', 5, '2021.05.24-10.11.51.jpg'),
(154, 'AIAIAI', 220, 'TMA-2 MOVE', 'TMA-2 MOVE', 5, '2021.05.24-10.12.35.jpg'),
(155, 'AIAIAI', 299, 'TMA-2-HD', 'TMA-2-HD', 5, '2021.05.24-10.13.08.png'),
(156, 'Pioneer', 1098, 'DJS', 'DJS-1000', 6, '2021.06.07-09.45.15.jpg'),
(157, 'Denon', 1499, 'SC-6000 ', 'SC-6000 Prime', 6, '2021.06.07-09.46.33.jpg'),
(158, 'Pioneer', 2400, 'CDJ-3000', 'CDJ-3000', 6, '2021.06.07-09.47.12.png'),
(159, 'Pioneer', 560, 'CDJ-350', 'CDJ-350', 6, '2021.06.07-09.48.28.jpg'),
(160, 'Numark', 333, 'CDN 77 USB', 'CDN 77 USB', 6, '2021.06.07-09.49.07.jpg'),
(161, 'Pioneer', 899, 'CDJ-850', 'CDJ-850', 6, '2021.06.07-09.49.57.jpg'),
(162, 'Numark', 109, 'NDX-400', 'NDX-400', 6, '2021.06.07-09.50.59.jpg'),
(163, 'Numark', 209, 'NDX-500', 'NDX-500', 6, '2021.06.07-09.51.34.jpg'),
(164, 'Pioneer', 1989, 'CDJ 2000NXS2', 'CDJ 2000NXS2', 6, '2021.06.07-09.52.05.jpg'),
(165, 'Pioneer', 1299, 'CDJ-900 NXS', 'CDJ-900 NXS', 6, '2021.06.07-09.52.49.jpg'),
(166, 'Pioneer', 615, 'XDJ-700', 'XDJ-700', 6, '2021.06.07-09.53.42.jpg'),
(167, 'Pioneer', 1099, 'XDJ-1000', 'XDJ-1000', 6, '2021.06.07-09.54.43.jpg'),
(168, 'Pioneer', 970, 'XDJ-RR', 'XDJ-RR', 6, '2021.06.07-09.55.10.jpg'),
(169, 'Pioneer', 1459, 'XDJ RX-2', 'XDJ RX-2', 6, '2021.06.07-09.56.20.png'),
(170, 'Pioneer', 1999, 'XDJ-XZ', 'XDJ-XZ', 6, '2021.06.07-09.56.51.jpg'),
(171, 'Pioneer', 439, 'XDJ-R1', 'XDJ-R1', 6, '2021.06.07-09.57.53.png'),
(172, 'Akai', 39, 'LPK 25', 'LPK 25', 3, '2021.06.07-10.06.30.jpg'),
(173, 'Arturia', 84, 'Minilab MKII ', 'Minilab MKII ', 3, '2021.06.07-10.11.13.jpg'),
(175, 'Novation', 89, 'LaunchKey Mini MK3 ', 'LaunchKey Mini MK3', 3, '2021.06.07-10.15.02.jpg'),
(176, 'M-Audio', 119, 'KEYSTATION 49 MKII', 'KEYSTATION 49 MK2', 3, '2021.06.07-10.23.09.jpg'),
(177, 'Novation', 155, 'Impulse 25', 'Impulse 25', 3, '2021.06.07-10.27.21.jpg'),
(179, 'Novation', 198, 'Launchkey 61 Mk2', 'Launchkey 61 Mk2', 3, '2021.06.07-10.31.11.jpg'),
(180, 'Alesis', 198, 'V161', 'V161', 3, '2021.06.07-10.33.11.png'),
(181, 'Arturia', 184, 'Keylab Essential 49', 'Keylab Essential 49', 3, '2021.06.07-10.41.20.jpg'),
(182, 'M-Audio', 199, 'OXYGEN 61 MK4 ', 'OXYGEN 61 MK4 ', 3, '2021.06.07-10.58.32.jpg'),
(183, 'Native Instruments', 459, 'Komplete Kontrol S49 MKII', 'Komplete Kontrol S49 MKII', 3, '2021.06.07-11.02.28.jpg'),
(184, 'Novation', 522, '49 SL MKIII', '49 SL MKIII', 3, '2021.06.07-11.04.56.jpg'),
(185, 'Native Instruments', 599, 'Komplete Kontrol S61 MKII', 'Komplete Kontrol S61 MKII', 3, '2021.06.07-11.08.00.jpg'),
(186, 'Alesis', 425, 'VX49', 'VX49', 3, '2021.06.07-11.10.08.jpg'),
(187, 'Native Instruments', 639, 'Bundle Maschine MKIII x Komplete Kontrol A25', 'Bundle Maschine MKIII x Komplete Kontrol A25', 3, '2021.06.07-11.11.45.jpg'),
(188, 'Native Instruments', 879, 'KOMPLETE KONTROL S88 MKII', 'KOMPLETE KONTROL S88 MKII', 3, '2021.06.07-11.16.55.jpg'),
(189, 'Roland', 1490, 'JUPITER-XM', 'JUPITER-XM', 3, '2021.06.07-11.21.15.jpg'),
(190, 'Hercules', 79, 'DJ SPEAKER 32 SMART', 'DJ SPEAKER 32 SMART', 7, '2021.06.07-14.04.34.jpg'),
(191, 'Alesis', 99, 'Elevate 4', 'Elevate 4', 7, '2021.06.07-14.06.43.jpg'),
(192, 'Mackie', 119, 'CR3-X', 'CR3-X', 7, '2021.06.07-14.08.31.jpg'),
(193, 'Numark', 129, 'N-Wave 360', 'N-Wave 360', 7, '2021.06.07-14.14.23.jpg'),
(194, 'JBL', 129, '305P MKII', '305P MKII', 7, '2021.06.07-14.17.16.jpg'),
(195, 'Pioneer', 139, 'DM-40', 'DM-40', 7, '2021.06.07-14.24.03.png'),
(196, 'Adam', 155, 'T5V', 'T5V', 7, '2021.06.07-14.25.49.jpg'),
(197, 'Adam', 185, 'T7V', 'T7V', 7, '2021.06.07-14.27.43.jpg'),
(198, 'KRK', 157, 'Rokit 5 G4 ', 'Rokit 5 G4', 7, '2021.06.07-14.29.44.png'),
(199, 'Pioneer', 179, 'VM-50', 'VM-50', 7, '2021.06.07-14.32.39.png'),
(200, 'Focal', 235, 'Alpha 65', 'Alpha 65', 7, '2021.06.07-14.37.21.jpg'),
(202, 'Pioneer', 239, 'S-DJ80X', 'S-DJ80X', 7, '2021.06.07-14.43.20.jpg'),
(203, 'Genelec', 395, '8020D', '8020D', 7, '2021.06.07-14.45.45.jpg'),
(204, 'Focal', 670, 'Shape 65', 'Shape 65', 7, '2021.06.07-14.47.48.jpg'),
(205, 'HEDD', 2799, 'Type 30', 'Type 30', 7, '2021.06.07-14.50.29.jpg'),
(206, 'Adam', 7239, 'S5H', 'S5H', 7, '2021.06.07-14.51.51.jpg'),
(207, 'Pioneer', 1098, 'DJS-1000', 'DJS-1000', 8, '2021.06.08-14.48.26.jpg'),
(208, 'Akai', 1038, 'MPC LIVE II', 'MPC LIVE II', 8, '2021.06.08-14.51.11.jpg'),
(209, 'Dreadbox', 489, 'Hypnosis', 'Hypnosis', 8, '2021.06.08-14.53.25.jpg'),
(210, 'Korg', 389, 'Kaoss Pad KP3+', 'Kaoss Pad KP3+', 8, '2021.06.08-14.56.32.jpg'),
(212, 'Akai', 659, 'MPC One', 'MPC One', 8, '2021.06.08-14.59.30.jpg'),
(215, 'Erica Synths', 499, 'Fusionbox', 'Fusionbox', 8, '2021.06.08-15.06.31.jpg'),
(216, 'Erica Synths', 399, 'Acidbox III', 'Acidbox III', 8, '2021.06.08-15.09.35.jpg'),
(217, 'Akai', 722, 'MPC One Gold Edition', 'MPC One Gold Edition', 8, '2021.06.08-15.13.00.jpg'),
(218, 'Akai', 83, 'Mpx-8', 'Mpx-8', 8, '2021.06.08-15.15.06.jpg'),
(219, 'Akai', 199, 'Mpd 232', 'Mpd 232', 8, '2021.06.08-15.16.56.png'),
(220, 'Pioneer', 848, 'TORAIZ SP-16', 'TORAIZ SP-16', 8, '2021.06.08-15.20.17.jpg'),
(221, 'Akai', 1699, 'MPC X ', 'MPC X ', 8, '2021.06.08-15.22.27.jpg'),
(222, 'Teenage Engeneering ', 63, 'PO-28 Robot', 'PO-28 Robot', 9, '2021.06.08-15.25.32.jpg'),
(223, 'Korg', 119, 'Volga Kick', 'Volga Kick', 9, '2021.06.08-15.28.31.jpg'),
(224, 'Roland', 598, 'Boutique SE-02', 'Boutique SE-02', 9, '2021.06.08-15.30.14.jpg'),
(225, 'Novation', 1245, 'Peak', 'Peak', 9, '2021.06.08-15.32.18.png'),
(226, 'Korg', 498, 'MicroKORG S', 'MicroKORG S', 9, '2021.06.08-15.33.36.png'),
(227, 'Korg', 49, 'Monotron', 'Monotron', 9, '2021.06.08-15.35.40.jpg'),
(228, 'Waldorf ', 175, 'Rocket', 'Rocket', 9, '2021.06.08-15.59.55.jpg'),
(229, 'Waldorf ', 777, 'KB37', 'KB37', 9, '2021.06.08-16.01.00.jpg'),
(230, 'Waldorf ', 299, 'NW1', 'NW1', 9, '2021.06.08-16.02.18.jpg'),
(231, 'Waldorf ', 311, 'Mod1', 'Mod1', 9, '2021.06.08-16.03.34.jpg'),
(232, 'Waldorf ', 210, 'Streichfett', 'Streichfett', 9, '2021.06.08-16.04.42.jpg'),
(233, 'Roland', 385, 'TR-08', 'TR-08', 9, '2021.06.08-16.06.08.jpg'),
(234, 'Arturia', 389, 'MINIBRUTE 2', 'MINIBRUTE 2', 9, '2021.06.08-16.07.10.jpg'),
(235, 'Roland', 589, 'TR-8S', 'TR-8S', 9, '2021.06.08-16.09.33.jpg'),
(236, 'Modal', 5879, '008', '008', 9, '2021.06.08-16.12.00.jpg'),
(237, 'Moog', 839, 'Grandmother', 'Grandmother', 9, '2021.06.08-16.13.36.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `subcategorias`
--

CREATE TABLE `subcategorias` (
  `idsubcat` int(11) NOT NULL,
  `subcat` varchar(50) NOT NULL,
  `idcategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `subcategorias`
--

INSERT INTO `subcategorias` (`idsubcat`, `subcat`, `idcategoria`) VALUES
(1, 'mesas', 1),
(2, 'giradiscos', 1),
(3, 'teclados', 2),
(4, 'controladoras', 1),
(5, 'headphones', 1),
(6, 'leitores', 1),
(7, 'monitores de estudio', 2),
(8, 'samplers e efeitos', 2),
(9, 'sintetizadores', 2),
(10, 'controladores midi', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `utilizadores`
--

CREATE TABLE `utilizadores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idcategoria`);

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`idcurso`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idproduto`);

--
-- Índices para tabela `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`idsubcat`),
  ADD KEY `idcategoria` (`idcategoria`);

--
-- Índices para tabela `utilizadores`
--
ALTER TABLE `utilizadores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `idcurso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT de tabela `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `idsubcat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `utilizadores`
--
ALTER TABLE `utilizadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

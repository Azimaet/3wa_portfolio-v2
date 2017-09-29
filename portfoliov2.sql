-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 23 Août 2017 à 15:13
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `portfoliov2`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `idSection` int(11) NOT NULL,
  `section` varchar(25) NOT NULL,
  `imageSlider` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `category`
--

INSERT INTO `category` (`idSection`, `section`, `imageSlider`) VALUES
(1, 'Illustration', 'images/slider/illuSketches.jpg'),
(2, 'Web', 'images/slider/Web.jpg'),
(3, 'Communication', 'images/slider/Communication.jpg'),
(4, 'Video', 'images/slider/Video.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `travaux`
--

CREATE TABLE `travaux` (
  `idSection` int(11) NOT NULL,
  `section` varchar(25) NOT NULL,
  `idTravaux` int(11) NOT NULL,
  `titre` varchar(50) NOT NULL,
  `techniques` varchar(50) NOT NULL,
  `technosWeb` varchar(255) CHARACTER SET utf8 NOT NULL,
  `dateCrea` int(4) NOT NULL,
  `miniature` varchar(150) NOT NULL,
  `visuel1` varchar(150) NOT NULL,
  `description1` text NOT NULL,
  `visuel2` varchar(150) NOT NULL,
  `description2` text NOT NULL,
  `visuel3` varchar(150) NOT NULL,
  `description3` text NOT NULL,
  `video` varchar(150) NOT NULL,
  `flash` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `travaux`
--

INSERT INTO `travaux` (`idSection`, `section`, `idTravaux`, `titre`, `techniques`, `technosWeb`, `dateCrea`, `miniature`, `visuel1`, `description1`, `visuel2`, `description2`, `visuel3`, `description3`, `video`, `flash`) VALUES
(1, 'Illustration', 101, 'Hydralisk', 'Illustration, Digital', '', 2013, 'images/miniatures/101.jpg', 'images\\modal\\hydra.jpg', '', '', '', '', '', '', ''),
(1, 'Illustration', 102, 'Heisenberg', 'Illustration, Digital', '', 2014, 'images/miniatures/102.jpg', 'images\\modal\\heisenberg.jpg', '', '', '', '', '', '', ''),
(1, 'Illustration', 103, 'Robot', 'Speed, Digital', '', 2012, 'images/miniatures/103.jpg', 'images\\modal\\robot.jpg', '', '', '', '', '', '', ''),
(1, 'Illustration', 104, 'Singe à la Guerre', 'Aquarelle', '', 2016, 'images/miniatures/104.jpg', 'images\\modal\\monkey.jpg', '', '', '', '', '', '', ''),
(1, 'Illustration', 105, 'Under The Ancestors', 'Sketch', '', 2016, 'images/miniatures/105.jpg', 'images\\modal\\underthe.jpg', '', '', '', '', '', '', ''),
(1, 'Illustration', 106, 'Stay', 'Sketch', '', 2016, 'images/miniatures/106.jpg', 'images\\modal\\stay.jpg', '', '', '', '', '', '', ''),
(1, 'Illustration', 107, 'Where Dragons Dwell', 'Illustration, Sketch', '', 2016, 'images/miniatures/107.jpg', 'images\\modal\\wheredra.jpg', '', '', '', '', '', '', ''),
(1, 'Illustration', 108, 'Counter-Terrorists Win', 'Illustration, Sketch', '', 2016, 'images/miniatures/108.jpg', 'images\\modal\\ctw3.jpg', '', '', '', '', '', '', ''),
(1, 'Illustration', 109, 'NOLA', 'Speed, Digital', '', 2015, 'images/miniatures/109.jpg', 'images\\modal\\nola.jpg', '', '', '', '', '', '', ''),
(2, 'Web', 206, 'Paperss', 'Webdesign, Intégration et Développement.', 'Html / Css / Responsive / Javascript / jQuery / Php / POO / MVC / Silex / MySql', 2017, 'images/miniatures/206.jpg', 'images\\modal\\pape1.jpg', 'Paperss est un projet d\'agrégateur de flux RSS en ligne, actuellement en développement. Je réalise le développement à l\'aide d\'une architecture Modèle-Vue-Contrôleur ainsi que du framework PhP Silex. Une fois que l\'utilisateur est enregistré et connecté sur le site, il peut personnaliser son flux de news en ajoutant ses sources RSS préférées.', '', '', '', '', '', ''),
(2, 'Web', 208, 'Portfolio', 'Webdesign, Intégration et Développement', 'Html / Css / Responsive / Javascript / jQuery / Ajax / Php / MySql', 2017, 'images/miniatures/208.jpg', 'images\\modal\\portf1.jpg', 'Réalisation de mon Portfolio, du design, de l\'intégration et du développement, à l\'aide des techniques front jQuery et Ajax pour les modals, ainsi que l\'oganisation PhP/Sql.', 'images\\modal\\portf2.jpg', '', '', '', '', ''),
(2, 'Web', 209, 'La Crêperie Grand-Ouest', 'Webdesign, Intégration et Développement.', 'Html / Css / Php / POO / MVC / MySql', 2017, 'images/miniatures/209.jpg', 'images\\modal\\lacre2.jpg', 'Mise en place d\'un site eCommerce de restauration. Grâce au système d\'inscription/login, le site du restaurant permet de gérer les réservations de tables des utilisateurs, l\'affichage de la carte du restaurant, et les commandes de livraisons des plats à domicile. Réalisation du site en architecture MVC, sur un micro-framework PhP. Techniques utilisées: HTML-CSS/JavaScript-jQuery/PhP/MySql.', 'images\\modal\\lacre3.jpg', '', 'images\\modal\\lacre4.jpg', '', '', ''),
(2, 'Web', 210, 'Cup Of Tea', 'Intégration', 'Html / Css / Responsive', 2017, 'images/miniatures/210.jpg', 'images\\modal\\cupo1.jpg', 'Réalisation d\'un exercice d\'intégration Html/ Responsive CSS au sein de ma formation à la 3WA.', 'images\\modal\\cupo2.jpg', '', 'images\\modal\\cupo3.jpg', '', '', ''),
(2, 'Web', 211, 'Fatest Blog Ever', 'Intégration et Développement.', 'Html / Css / Javascript / jQuery / Ajax / PhP / MySql', 2017, 'images/miniatures/211.jpg', 'images\\modal\\fbe.jpg', 'Réalisation d\'une micro-plateforme CMS de type Blog.  Le développement back-office du blog permet la création de comptes, de laisser des commentaires en anonyme et de rédiger des articles pour les membres loggés. Techniques utilisées : 	HTML/CSS/Javascript/PhP/MySQL.', 'images\\modal\\fbe2.jpg', '', '', '', '', ''),
(2, 'Web', 212, 'MindGeek', 'Intégration', 'Html / Css / Responsive', 2017, 'images/miniatures/212.jpg', 'images\\modal\\mindg1.jpg', 'Exercice d\'intégration Html/Css Responsive pour une société de location de services d\'hébergement Cloud & Online. Réalisé au sein de ma formation à la 3WA', 'images\\modal\\mindg2.jpg', '', 'images\\modal\\mindg3.jpg', '', '', ''),
(2, 'Web', 213, 'Red Wolf', 'Intégration', 'Html / Css / Responsive / jQuery', 2017, 'images/miniatures/213.jpg', 'images\\modal\\redw1.jpg', 'Exercice d\'intégration Html/Css Responsive pour le site web d\'une marque de moto, dans le cadre de ma formation au sein de la 3WA. ', 'images\\modal\\redw2.jpg', 'Intégration d\'un Carousel de photos en jQuery.', 'images\\modal\\redw3.jpg', '', '', ''),
(2, 'Web', 214, 'Malkavian', 'Webdesign', '', 2014, 'images/miniatures/214.jpg', 'images\\modal\\malka1.jpg', 'Réalisation d\'une proposition de Webdesign pour le site du groupe nantais Malkavian. ', 'images\\modal\\malka2.jpg', '', '', '', '', ''),
(2, 'Web', 215, 'Mazedia', 'Webdesign', '', 2013, 'images/miniatures/215.jpg', 'images\\modal\\mazed1.jpg', 'Réalisation d\'une proposition de Webdesign pour une board interne à l\'agence Mazedia durant mon stage au sein de l\'entreprise.', 'images\\modal\\mazed2.jpg', 'Proposition de Webdesign pour Wezit, la solution multimedia développée par Mazedia à destination des centre culturels, musées et lieux d\'expositions. Réalisé au sein de mon stage au sein de l\'entreprise Mazedia.', 'images\\modal\\mazed3.jpg', '<a href="https://www.mazedia.fr/">Site de Mazedia</a>', '', ''),
(2, 'Web', 216, 'Swird', 'Application Design', '', 2013, 'images/miniatures/216.jpg', 'images/modal/swird1.jpg', 'Réalisation du Webdesign d\'un Tetris Like. Le projet C++ a été développé par David Perrai & Brice Thomas.', 'images/modal/swird2.jpg', '', 'images/modal/swird3.jpg', '', 'https://www.youtube.com/embed/TQxSR_iY0dA', ''),
(2, 'Web', 217, 'DressingRoom', 'Flash, Application Design, ActionScript', '', 2013, 'images/miniatures/217.jpg', '', 'Réalisation d\'une petite application Flash de type "Dressing Room" à l\'aide d\'Adobe Flash et d\'ActionScript.', '', '', '', '', '', '            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0" width="400" height="600">\n               <param name="movie" value="images/modal/dressingroom.swf">\n               <param name="quality" value="high">\n               <embed src="images/modal/dressingroom.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" height="504px" width=100% ></embed>\n            </object>'),
(3, 'Communication', 301, 'Zakia', 'Communication Visuelle', '', 2015, 'images/miniatures/301.jpg', 'images/design/zakia.jpg', 'Pour la sortie d\'un court-métrage, Zakia, j\'ai réalisé l\'affiche du film et la création de la typographie. Le film a été écrit et réalisé par Victoria Côte dans le cadre de son projet de fin d\'études.', '', '', '', '', '', ''),
(3, 'Communication', 302, 'Fueel #Blueberry', 'Communication Visuelle', '', 2013, 'images/miniatures/302.jpg', 'images\\modal\\fueb1.jpg', 'Dans le cadre de mon projet de fin d\'études à l\'Ecole Pivaut, j\'ai choisi de concevoir une marque de boisson énergétique. De la création de la marque, à l\'élaboration de la communication et la production d\'une vingtaine de canettes, j\'ai décliné le concept à travers trois gammes visuelles différentes.', 'images\\modal\\fueb2.jpg', 'Seconde proposition d\'affichage pour la gamme parfum Cassis-Myrtille.', '', '', '', ''),
(3, 'Communication', 303, 'Fueel #Cherry', 'Communication Visuelle', '', 2013, 'images/miniatures/303.jpg', 'images\\modal\\fuer1.jpg', 'Dans le cadre de mon projet de fin d\'études à l\'Ecole Pivaut, j\'ai choisi de concevoir une marque de boisson énergétique. De la création de la marque, à l\'élaboration de la communication et la production d\'une vingtaine de canettes, j\'ai décliné le concept à travers trois gammes visuelles différentes.', 'images\\modal\\fuer2.jpg', 'Seconde proposition d\'affichage pour la gamme parfum Fruits rouges.', '', '', '', ''),
(3, 'Communication', 304, 'Fueel #Agrums', 'Communication Visuelle', '', 2013, 'images/miniatures/304.jpg', 'images\\modal\\fuej1.jpg', 'Dans le cadre de mon projet de fin d\'études à l\'Ecole Pivaut, j\'ai choisi de concevoir une marque de boisson énergétique. De la création de la marque, à l\'élaboration de la communication et la production d\'une vingtaine de canettes, j\'ai décliné le concept à travers trois gammes visuelles différentes.', 'images\\modal\\fuej2.jpg', 'Seconde proposition d\'affichage pour la gamme parfum Agrumes.', '', '', '', ''),
(3, 'Communication', 305, 'La Roulotte Nantaise', 'Communication Visuelle, Flyer', '', 2012, 'images/miniatures/305.jpg', 'images\\modal\\laroulotte.jpg', 'Réalisation de flyers pour le lancement d\'un foodtruck distribuant les produits du terroir Nantais.', '', '', '', '', '', ''),
(3, 'Communication', 306, 'La Fabrique Nantaise', 'Communication Visuelle, Flyer', '', 2013, 'images/miniatures/306.jpg', 'images\\modal\\lafabrique.jpg', 'Conception d\'un Flyer de promotion autour de l\'ouverture d\'un atelier d\'artisanat d\'upcycling.', '', '', '', '', '', ''),
(3, 'Communication', 307, 'Prism Design', 'Communication Visuelle, Flyer', '', 2012, 'images/miniatures/307.jpg', 'images\\modal\\prism1.jpg', '', '', '', '', '', '', ''),
(4, 'Video', 401, 'Asie', 'Video', '', 2016, 'images/miniatures/401.jpg', '', 'Aperçu vidéo de 130 jours à voyager à travers la Thaïlande, le Cambodge et le Laos.', '', 'Overview of 130 days of roadtrip through Thailand, Cambodia and Laos.', '', '', 'https://www.youtube.com/embed/pvkn2FuXW7M', '');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idSection`),
  ADD KEY `section` (`section`);

--
-- Index pour la table `travaux`
--
ALTER TABLE `travaux`
  ADD PRIMARY KEY (`idTravaux`),
  ADD UNIQUE KEY `titre` (`titre`),
  ADD UNIQUE KEY `titre_2` (`titre`),
  ADD KEY `IdSection` (`idSection`),
  ADD KEY `section` (`section`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `idSection` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_2` FOREIGN KEY (`section`) REFERENCES `travaux` (`section`),
  ADD CONSTRAINT `category_ibfk_3` FOREIGN KEY (`idSection`) REFERENCES `travaux` (`idSection`);

--
-- Contraintes pour la table `travaux`
--
ALTER TABLE `travaux`
  ADD CONSTRAINT `travaux_ibfk_2` FOREIGN KEY (`section`) REFERENCES `category` (`section`),
  ADD CONSTRAINT `travaux_ibfk_3` FOREIGN KEY (`idSection`) REFERENCES `category` (`idSection`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

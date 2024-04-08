-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 30-03-2024 a las 11:10:43
-- Versión del servidor: 8.0.35
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `jjoo_2024`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `athlete`
--

DROP TABLE IF EXISTS `athlete`;
CREATE TABLE IF NOT EXISTS `athlete` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `team` tinyint UNSIGNED DEFAULT NULL,
  `age` tinyint NOT NULL,
  `gender` enum('Male','Female') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `modality` varchar(50) NOT NULL,
  `medals` tinyint NOT NULL DEFAULT '0',
  `record` varchar(255) NOT NULL,
  `picture` blob,
  PRIMARY KEY (`id`),
  KEY `country` (`country`),
  KEY `athlete_ibfk_2` (`modality`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `athlete`
--

INSERT INTO `athlete` (`id`, `name`, `country`, `team`, `age`, `gender`, `modality`, `medals`, `record`, `picture`) VALUES
(1, 'Trayvon Bromell', 'United States of Ame', NULL, 28, 'Male', '100 Meters', 0, '1 gold, 2 bronzes', NULL),
(2, 'Akani Simbine', 'South Africa', NULL, 30, 'Male', '100 Meters', 0, '1 gold', NULL),
(3, 'Ronnie Baker', 'United States of Ame', NULL, 30, 'Male', '100 Meters', 0, '1 bronze', NULL),
(4, 'Andre De Grasse', 'Canada', NULL, 29, 'Male', '100 Meters', 0, '2 golds, 3 silvers, 6 bronzes', NULL),
(5, 'Juan Miguel Echevarría', 'Cuba', NULL, 25, 'Male', 'Long jump', 0, '1 gold, 1 silver, 1 bronze', NULL),
(6, 'Miltiadis Tentoglou', 'Greece', NULL, 26, 'Male', 'Long jump', 0, '10 golds, 1 silver', NULL),
(7, 'Thobias Montler', 'Sweden', NULL, 28, 'Male', 'Long jump', 0, '5 silvers', NULL),
(8, 'Jeff Henderson', 'United States of Ame', NULL, 35, 'Male', 'Long jump', 0, '1 gold, 1 silver', NULL),
(9, 'Sarah Sjöström', 'Sweden', NULL, 30, 'Female', '100 metre freestyle', 0, '16 golds, 6 silvers, 5 bronzes', NULL),
(10, 'Cate Campbell', 'Australia', NULL, 31, 'Female', '100 metre freestyle', 0, '17 golds, 6 silvers, 6 bronzes', NULL),
(11, 'Emma McKeon', 'Australia', NULL, 29, 'Female', '100 metre freestyle', 0, '18 golds, 13 silvers, 10 bronzes', NULL),
(12, 'Penny Oleksiak', 'Canada', NULL, 23, 'Female', '100 metre freestyle', 0, '3 golds, 5 silvers, 12 bronzes', NULL),
(13, 'Federica Pellegrini', 'Italy', NULL, 35, 'Female', '100 metre freestyle', 0, '28 golds, 28 silvers, 19 bronzes', NULL),
(14, 'Liu Yang', 'China', NULL, 29, 'Male', 'Rings', 0, '4 golds, 1 silver, 4 bronzes', NULL),
(15, 'Ibrahim Çolak', 'Türkiye', NULL, 29, 'Male', 'Rings', 0, '1 gold', NULL),
(16, 'Arthur Zaneti', 'Brazil', NULL, 33, 'Male', 'Rings', 0, '5 golds, 4 silvers', NULL),
(17, 'Eleftherios Petrounias', 'Greece', NULL, 33, 'Male', 'Rings', 0, '11 golds, 1 silver, 3 bronzes', NULL),
(18, 'Simon Billes', 'United States of Ame', NULL, 27, 'Female', 'Vault', 0, '27 golds, 5 silvers, 5 bronzes', NULL),
(19, 'Rebeca Andrade', 'Brazil', NULL, 24, 'Female', 'Vault', 0, '4 golds, 6 silvers, 2 bronzes', NULL),
(20, 'Jade Carey', 'United States of Ame', NULL, 23, 'Female', 'Vault', 0, '4 golds, 3 silvers, 1 bronze', NULL),
(21, 'Yeo Seo-jeong', 'South Korea', NULL, 22, 'Female', 'Vault', 0, '2 bronzes', NULL),
(22, 'Novak Djokovic\r\n', 'Serbia', NULL, 36, 'Male', 'Single tenis', 0, '24 Grand Slam, 12 runner-up Grand Slam, 1 Olympic bronze\r\n', NULL),
(23, 'Stefanos Tsitsipas\r\n', 'Greece', NULL, 25, 'Male', 'Single tenis', 0, ' 2 runner-up Grand Slam\r\n', NULL),
(24, 'Carlos Alcaraz\r\n', 'Spain', NULL, 20, 'Male', 'Single tenis', 0, ' 2 Grand Slam\r\n', NULL),
(25, 'Alexander Zverev\r\n', 'Germany', NULL, 26, 'Male', 'Single tenis', 0, ' 1 runner-up Grand Slam, 1 gold at the Olympics\r\n', NULL),
(26, 'Naomi Osaka', 'Japan', NULL, 26, 'Female', 'Single tenis', 0, '4 Grand Slams', NULL),
(27, 'Aryna Sabalenka', 'Belarus', NULL, 25, 'Female', 'Single tenis', 0, '4 Grand Slams, 1 runner-up Grand Slam', NULL),
(28, 'Iga Swiatek', 'Poland', NULL, 22, 'Female', 'Single tenis', 0, '4 Grand Slams, 1 runner-up Grand Slam', NULL),
(30, 'Lutalo Muhammad', 'United Kingdom', NULL, 32, 'Male', 'Single fight 80', 0, '1 gold, 1 silver, 3 bronzes', NULL),
(31, 'Cha Dong-min', 'South Korea', NULL, 37, 'Male', 'Single fight 80', 0, '2 golds, 1 silver, 1 bronze', NULL),
(32, 'Servet Tazwgül', 'Türkiye', NULL, 35, 'Male', 'Single fight 80', 0, '8 gold, 2 bronzes', NULL),
(33, 'Joel González', 'Spain', NULL, 34, 'Male', 'Single fight 80', 0, '5 golds, 1 silver, 3 bronzes', NULL),
(35, 'Jade Jones', 'Great Britain', NULL, 31, 'Female', 'Single fight -69', 0, '8 golds, 2 silvers, 5 bronzes', NULL),
(36, 'Wu Jingyu', 'China', NULL, 37, 'Female', 'Single fight -69', 0, '8 golds, 4 silvers, 2 bronzes', NULL),
(37, 'Bianca Walkden', 'Great Britain', NULL, 32, 'Female', 'Single fight -69', 0, '7 golds, 1 silver, 4 bronzes', NULL),
(38, 'Kim So-hui', 'South Korea', NULL, 30, 'Female', 'Single fight -69', 0, '4 golds, 1 bronze', NULL),
(39, 'Mikel Landa', 'Spain', NULL, 34, 'Male', 'Single route', 0, ' ', NULL),
(40, 'Santiago Buitrago', 'Colombia', NULL, 24, 'Male', 'Single route', 0, ' ', NULL),
(41, 'Richard Carapaz', 'Ecuador', NULL, 30, 'Male', 'Single route', 0, '1 Tour of Italy, 1 Tour of Switzerland, 1 gold JJ.OO, 1 Ecuador in Road Race ', NULL),
(42, 'Thomas Pidcock', 'Great Britain', NULL, 24, 'Male', 'Single route', 0, '1 Strade Bianche, 1 Flecha Brabanzona', NULL),
(43, 'Primoz Roglic', 'Slovenia', NULL, 34, 'Male', 'Time Trial Route', 0, '1 gold JJ.OO, 1 Paris-Niza, 3 Tour of Spain, 1 Tour of Italy', NULL),
(44, 'Remco Evenepoel', 'Belgium', NULL, 24, 'Male', 'Time Trial Route', 0, '1 Tour of Spain, 1 Tour of Poland, 1 Belgium Time Trial', NULL),
(45, 'Filippo Ganna', 'Italy', NULL, 27, 'Male', 'Time Trial Route', 0, '4 Italy time trial, 2 World Time Trial Championship, 1 gold JJ.OO', NULL),
(46, 'Joshua Tarling', 'Great Britain', NULL, 20, 'Male', 'Time Trial Route', 0, '4 European Time Trial Championship, 1 United Kingdom ITT', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `country` varchar(20) NOT NULL,
  `acronym` varchar(3) NOT NULL,
  `flag` blob,
  `capital` varchar(20) NOT NULL,
  `population` varchar(255) NOT NULL,
  `representatives` varchar(150) NOT NULL DEFAULT 'still to be determined',
  PRIMARY KEY (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `country`
--

INSERT INTO `country` (`country`, `acronym`, `flag`, `capital`, `population`, `representatives`) VALUES
('Australia', 'AUS', NULL, 'Canberra', '25.650.000', 'Still to be determined'),
('Belarus', 'BLR', NULL, 'Minsk', '9.400.000', 'Still to be determined\r\n'),
('Belgium', 'BEL', NULL, 'Brussels', '11.500.000', 'Still to be determined'),
('Brazil', 'BRA', NULL, 'Brasilia', '212.000.000', 'Still to be determined'),
('Canada', 'CAN', NULL, 'Ottawa', '38.000.000', 'Still to be determined'),
('China', 'CHN', NULL, 'Beijing', '1.400.000.000', 'Still to be determined'),
('Colombia', 'COL', NULL, 'Bogotá', '50.000.000', 'Still to be determined'),
('Croatia', 'HRV', NULL, 'Zagrev', '3 899 000', 'still to be determined'),
('Cuba', 'CUB', NULL, 'La Habana', '11.200.000', 'Still to be determined'),
('Denmark', 'DNK', NULL, 'Copenhagen', '5.800.000', 'Still to be determined'),
('Ecuador', 'ECU', NULL, 'Quito', '17.000.000', 'Still to be determined'),
('England', 'ENG', NULL, 'London', '55 980 000', 'still to be determined'),
('France', 'FRA', NULL, 'Paris', '67.000.000', 'Still to be determined'),
('Germany', 'DEU', NULL, 'Berlin', '83.200.000', 'Still to be determined'),
('Great Britain', 'GBR', NULL, 'London', '66970000', 'Still to be determined'),
('Greece', 'GRC', NULL, 'Athens', '10.400.000', 'Still to be determined'),
('Hungary', 'HUN', NULL, 'Budapest', '9 710 000', 'still to be determined'),
('Italy', 'ITA', NULL, 'Rome', '59.110.000', 'Still to be determined'),
('Jamaica', 'JAM', NULL, 'Kingston', '2.900.000', 'Still to be determined'),
('Japan', 'JPN', NULL, 'Tokyo', '126.000.000', 'Still to be determined'),
('Netherlands', 'NLD', NULL, 'Amsterdam', '17.500.000', 'Still to be determined'),
('Norway', 'NOR', NULL, 'Oslo', '5.400.000', 'Still to be determined'),
('Poland', 'POL', NULL, 'Warsaw', '38.000.000', 'Still to be determined'),
('Serbia', 'SRB', NULL, 'Belgrade', '7.000.000', 'Still to be determined'),
('Slovenia', 'SVN', NULL, 'Ljubljana', '2.100.000', 'Still to be determined'),
('South Africa', 'ZAF', NULL, 'Pretoria', '59.620.000', 'Still to be determined'),
('South Korea', 'KOR', NULL, 'Seoul', '51.800.000', 'Still to be determined'),
('Spain', 'ESP', NULL, 'Madrid', '47.420.000', 'Still to be determined'),
('Sweden', 'SWE', NULL, 'Stockholm', '10.400.000', 'Still to be determined'),
('Türkiye', 'TUR', NULL, 'Ankara', '82.000.000', 'still to be determined'),
('United Kingdom', 'GBR', NULL, 'London', '77.300.000', 'still to be determined'),
('United States of Ame', 'USA', NULL, 'Washington D.C.', '331.000.000', 'still to be determined');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modality`
--

DROP TABLE IF EXISTS `modality`;
CREATE TABLE IF NOT EXISTS `modality` (
  `name` varchar(50) NOT NULL,
  `category` enum('Male','Female','Mixed') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `sport` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `venue` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `status` enum('scheduled','in_progress','finished') NOT NULL,
  `transmission` enum('tv_channel','platform') NOT NULL,
  `picture` blob,
  PRIMARY KEY (`name`,`category`),
  KEY `modality_ibfk_1` (`sport`),
  KEY `modality_ibfk_2` (`venue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `modality`
--

INSERT INTO `modality` (`name`, `category`, `sport`, `start_date`, `end_date`, `venue`, `description`, `result`, `status`, `transmission`, `picture`) VALUES
('100 Meters', 'Male', 'Athletics', '2024-08-03', '2024-08-04', 'Hôtel de Ville', 'Race in which one must cover 100 meters on a level surface, free from any obstacles, as quickly as possible.', '', 'scheduled', 'tv_channel', NULL),
('100 metre freestyle', 'Female', 'Swimming', '2024-07-30', '2024-07-31', 'Paris La Défense Arena', 'The 100m freestyle swimming event is a fast-paced race where swimmers employ any technique to complete the distance in the shortest time possible, focusing on speed and efficiency of stroke, kick, and breathing.', '', 'scheduled', 'tv_channel', NULL),
('4 x 100 meters relay', 'Male', 'Athletics', '2024-08-08', '2024-08-10', 'Stade de France', 'The test consists of a race in which four runners take part, in which each one of them completes a distance of 100 meters.', '', 'scheduled', 'tv_channel', NULL),
('Basketball', 'Male', 'Basketball', '2024-03-27', '2024-08-10', 'Bercy Arena', 'The men\'s basketball event showcases elite athleticism and teamwork as teams compete for victory in a fast-paced, high-energy game on the court.', '', 'scheduled', 'tv_channel', NULL),
('Basketball', 'Female', 'Basketball', '2024-07-28', '2024-08-11', 'Bercy Arena', 'The women\'s basketball competition highlights skill, strategy, and teamwork, where players exhibit finesse and determination to outscore opponents in an intense and dynamic game.', '', 'scheduled', 'tv_channel', NULL),
('Football', 'Male', 'Football', '2024-07-24', '2024-08-09', 'Parc des Princes', 'Men\'s soccer: A dynamic display of skill, teamwork, and strategy as teams compete for goals in fast-paced matches on the pitch.', '', 'scheduled', 'tv_channel', NULL),
('Football', 'Female', 'Football', '2024-07-25', '2024-08-10', 'Parc des Princes', 'Women\'s soccer: Showcasing teamwork, skill, and determination as players navigate the pitch in thrilling matches, aiming for goals and victory.', '', 'scheduled', 'tv_channel', NULL),
('Handball', 'Male', 'Handball', '2024-07-27', '2024-08-11', 'Pierre Mauroy Stadium', 'The men\'s handball competition features fast-paced action and strategic gameplay, as teams battle for dominance on the court using skillful passing, shooting, and defensive maneuvers.', '', 'scheduled', 'tv_channel', NULL),
('Handball', 'Female', 'Handball', '2024-07-25', '2024-08-10', 'Trocadéro (Pont d\'Iéna) ', 'The women\'s handball event showcases agility, precision, and teamwork, as players demonstrate remarkable coordination in attack and defense to secure victory in a thrilling and dynamic competition.', '', 'scheduled', 'tv_channel', NULL),
('Long jump', 'Male', 'Athletics', '2024-08-02', '2024-08-06', 'Stade de France', 'The long jump is a track and field event where athletes sprint and then jump as far as they can from a designated point', '', 'scheduled', 'tv_channel', NULL),
('Open water', 'Male', 'Swimming', '2024-08-09', '2024-08-09', 'Pont Alexandre III', 'The men\'s open water swimming event is a challenging race covering varying distances in natural bodies of water, testing endurance and navigation skills', '', 'scheduled', 'tv_channel', NULL),
('Open water', 'Female', 'Swimming', '2024-08-08', '2024-08-08', 'Pont Alexandre III', 'The women\'s open water swimming event is a demanding race held in natural bodies of water, testing endurance, navigation, and strategic skills over varying distances.', '', 'scheduled', 'tv_channel', NULL),
('Rings', 'Male', 'Gymnastics', '2024-07-27', '2024-08-04', 'Bercy Arena', 'The men\'s still rings event in artistic gymnastics demonstrates unparalleled strength, control, and precision as gymnasts perform breathtaking routines showcasing incredible upper body strength and stability.', '', 'scheduled', 'platform', NULL),
('Single fight -69', 'Female', 'Taekwondo', '2024-08-09', '2024-08-09', 'Grand Palais', 'Women\'s individual taekwondo -69kg: A display of agility, technique, and mental focus as athletes engage in intense combat, executing precise kicks and defensive tactics to outmaneuver opponents and claim victory', '', 'scheduled', 'platform', NULL),
('Single fight 80', 'Male', 'Taekwondo', '2024-08-10', '2024-08-10', 'Grand Palais', 'Men\'s individual taekwondo +80kg: A showcase of power, agility, and strategy as competitors engage in dynamic combat, aiming for precise strikes and defensive maneuvers to secure victory.', '', 'scheduled', 'platform', NULL),
('Single route', 'Male', 'Cycling', '2024-08-03', '2024-08-03', 'Trocadéro (Pont d\'Iéna) ', 'Road cycling: A test of endurance, tactics, and speed as cyclists navigate diverse terrains, strategizing to outpace rivals and cross the finish line first.', '', 'scheduled', 'tv_channel', NULL),
('Single tenis', 'Male', 'Tennis', '2024-07-27', '2024-08-04', 'Roland Garros Stadium', 'Men\'s singles tennis: Individual skill, strategy, athleticism in intense matches, showcasing power, precision, mental fortitude.', '', 'scheduled', 'tv_channel', NULL),
('Single tenis', 'Female', 'Tennis', '2024-07-27', '2024-08-03', 'Roland Garros Stadium', 'Women\'s singles tennis: A display of finesse, power, and tactical brilliance in high-stakes matches, showcasing athleticism and mental resilience on the court.', '', 'scheduled', 'tv_channel', NULL),
('Time Trial Route', 'Male', 'Cycling', '2024-07-27', '2024-07-27', 'Pont Alexandre III', 'Individual time trial: Cyclists race against the clock, showcasing stamina, strategy, and speed as they tackle the course solo, aiming for the fastest time to secure victory.', '', 'scheduled', 'tv_channel', NULL),
('Vault', 'Male', 'Gymnastics', '2024-07-27', '2024-08-04', 'Bercy Arena', 'The men\'s vault event in artistic gymnastics showcases explosive power, agility, and precision as gymnasts execute dynamic maneuvers, including flips and twists, with impeccable technique and control.', '', 'scheduled', 'platform', NULL),
('Waterpolo', 'Male', 'Waterpolo', '2024-07-28', '2024-08-11', 'Paris La Défense Arena', 'Men\'s water polo: A thrilling display of athleticism, teamwork, and strategy as players battle in the pool, aiming to outmaneuver opponents and score goals to claim victory.', '', 'scheduled', 'tv_channel', NULL),
('Waterpolo', 'Female', 'Waterpolo', '2024-07-27', '2024-08-10', 'Bercy Arena', 'Women\'s water polo: An intense showcase of skill, teamwork, and endurance as athletes compete in the pool, utilizing strategy and precision to outplay opponents and secure goals for victory.', '', 'scheduled', 'tv_channel', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE IF NOT EXISTS `result` (
  `id` int NOT NULL AUTO_INCREMENT,
  `modality_id` tinyint NOT NULL,
  `athlete_id` int NOT NULL,
  `country` varchar(50) NOT NULL,
  `medal` enum('gold','silver','bronze') NOT NULL,
  `time` time NOT NULL,
  `score` varchar(255) NOT NULL,
  `position` tinyint NOT NULL,
  `date_hour` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `modality_id` (`modality_id`),
  KEY `athlete_id` (`athlete_id`),
  KEY `country` (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sport`
--

DROP TABLE IF EXISTS `sport`;
CREATE TABLE IF NOT EXISTS `sport` (
  `name` varchar(50) NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `picture` blob,
  `history` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `sport`
--

INSERT INTO `sport` (`name`, `description`, `picture`, `history`) VALUES
('Athletics', 'Set of sports practices, aimed at overcoming opponents in speed or endurance, either in distance or in higher jump height', 0x89504e470d0a1a0a0000000d49484452000000e1000000e10803000000096d22480000007e504c5445ffffff000000fcfcfcccccccf0f0f04c4c4ce1e1e1f9f9f9989898e6e6e6a2a2a2cfcfcf878787bababad8d8d8f6f6f6101010aaaaaa9b9b9bc3c3c34141413434346666663c3c3c252525d6d6d61c1c1c818181737373575757b5b5b5eaeaea4f4f4f3030308e8e8e7b7b7b5e5e5e0c0c0c1818182222226c6c6c4d4d4d81a70c6f000008fd49444154789ced9dd99aa23a10800741501414c1a545a0716bcffbbfe0c1058550598008d1affecb69cca44852a92de1df3f0441100441100441100441100441100441100441100441be196b6cba4eecc5ba6b26b3be3bf3065c2f5c6a39eb8bed987df7482ec634d5caccd73ba7ef5ec9c3083598a9fb1dd3558f2802665cfc41dfdd6b8fb7a50ba869e7d5a4ef0eb6c4dab3e4bbb172855a1a24a61e7bcec44cac37f7b916832957c06c1cf706b721c399ae1f8faf438fff7c678c0404cc88785375312c3d3f5c74d27b013c310133429656d597d51fe84aa8a8c94658426d4537014673e807230596a331847a4663f943698636d3779d0a03b2ab2360860eb64257c6878ee5a930a929a0b685ec3887fefcb967bb6f76ac2ba1b605262ab8061f04fdee1a766d0133c6642becfdb4d7799aac2bfd4957d370756676f9971815b3da4a893e2df7ca10a6fad8185886e93035eca8dc0a6f431dc1ff7927105d090a5ae167c5e87349a11a0cb7e4c66f7f9b22f1f28fa50566397fd43e07c507cd1347c20dbcc374c1a5d4915542fcf9e797dae9a289fac31150d3e22e852a52366742c086a46ee4c7c243315742bb339108f4a2453a041fb1295a352d6c8a7ccbbd3755537cf9d03e7ec5a16ce61edc8c621216ad65aa6d358637bb82efc737fc3c5ae36f665650343bba233706b78dfdeb07264fc0de4cd3a4a06858b6e30c12b130f100c3a8ccbaafc0b2f95a629c78c3a1daebe2c4e3c5b17af3115fb38b67fe0f2afeed9f5ff8b3cf722d327c6ac36fc67f7681bb5f0dc81da164885974cbe0cae98d32b0790e0ce92b40e8e5c5561e165dcd21fcf74c54086d576631afb122fe780104cbd9f5e73c3d55a498e96fe94fddfb4b5ab02610497c90f698a1cb3b1c0affc2b2c3dde572005c851f9a8873b16cc07bc8ad52297d98c0a99d658d45382367466b1e3a7e252752f4034505d675de9e3795ed293f1c5769ce9b4dced4653d8b3b92ae934ef55f331bd32ec62603afa68e91af75efb39454fcad305cfb785d90dbc876ebae2a5d3bca8eacdec7b0bffd98e0a80d65ab9abbfb2eb9d1c6f85b2d902de14d3104fce7ea33f36bcf0c6b97a9844a30bd2591544dfac2b8395bc77ac50d57d356fa2cbd1993f26daa711e20b6eba8c6e0fa52646b9afd3b1abdf7f5ce5e3cc7edd77c5ebc55f931a262c655d8e2356eaf457a67dc77c4dbf5522a40742d2eae0f6fa56f5ce65c8b64cf8b41396613892dc5f1cd6c0f64abd26bac4d7aa8d6245c0cb178fe3d7e203f933adbc9719c8a90d1619100499ec57c837535926fd02c080929a51b25268fa52bbd33994326dfa0a9046c96dc9fb80fa7eb1de9fe782abdc96a3a9867a70cf29fd06a91dae0cb37d9aa12f294595ec7f106db239b1ff24db66a8a63c8dc30ac67c2e02d7962437ae807a8ac993355e453c0e17bea8ae4d74800e55f7bfad3835794b9cf8a945a00b9c40dd554310babb6cb4eb62201628a3483da2da4423e6608c15ce2167eb25853bcf9a0c3393e10fb8606b19c92ec2bd1df8419904b049c8624e43ca0305025e68e54da440aa08b9aa9449f0e97cbe35e1fb7dd412c40426d55f2430d62b11e696dc9c3729ec195348c5bca089435685a58d8d01dc2b4eb20c3481422448b56f9031792508b7231cc1d59cad841d55bb530ed32692164c5477c0ca33b4ec66e5511316c1e590ca0feacfcc69395522796f98a415afdc76107c76ae0dac213e37c4ca30661febac882530f244c9bdafbacd28c32d4333832611c0bfa6d58729704d426093a39b9e9d22b45b453c3403baf0e2ca79ba2c549caeac3bad95b661c136add766d586378a59905c03f77ab055d95da402e5d89431311075c11a3ee3c26d6d1913b8d4c7fcac6ff60dee5115afe31e0b451c07dc1383d35ecb4303ae14aa89d1bbd71877a9846e05cb854448e91864d1623e40e6713f4d2b9c3cba89d7c7168628bcf16d5a0c6aa8f3b28f8674232a2464d8f89616ce5b5b440c8566e78a8c0181d83f43c3ffd2d7f2f5e7ff5c20bde09bb2b41d31ce678e23b8edff32d3042a328bf96a04b74e6fd2d39ca5c75d1045de872850e620eef4348a37ef228ea823e5da3bd5f054cfab96602f9d9ff4e487847ce0bf476acb70da4e9c1e683b27d39831a2378e593b2617768b7d151f9a08ce69559dd5b78329fb8cfe34cf501b3451c2285ee2ae322789919c1a5ef6e8b2310f703f91885da6c0433ce1fe268d4c91311f47c019420dc7ba28eac5b3ffbeebd005c013d6b66d31349ea6f193c7f697e8bdb26d4a5aac0857a6c782378c8179a4999aa3d5e8f2484cd8e3e6d0abeae414942a86d9f72527ccb72720f1e6fa5bd61f63671aa2c3170cd4a3f4f27119b19b33857a71f982a5eab2b21478b021a04ac3ea85c1fa10cecec257880dd81b281ca6a1ab6802194fc1a43d1d4b48b6a9826b0958c0d26bfc0388eaa3b3ed39b806bbd28973f2aba57b0fcc1bf11388013584045c3df2c532d80d79507df877d51f29b09ac0be69760a47730a1646c866ac6db18024ec11e4fa8bf50d375a22b998d03ad40e342bdb05dc98f9758d4c02fac615c7a9871a9e6072fa813ee02f9792623b7bf5673aba74e511f528a21a3c8e6a8a492a169d1148a7b8e5976dd56d1ec1a45c01da0128d98552475543474010fca063a73e0314b166225f7798aa906dd3666382943bca10a5fe40001950cb0c55be499a41291adacc30bb94b6ba044d08f18e1b7a3ab6e141f30b697d5237f864f0f6eaf574a9a30395e6560e6fbca043562eafc0ca6b192fbdf13bfd2e5b55999a0239afe0c4666a2c4278de854a26a5125ef67c2d64e7a0c3f2145e810ce413a22f6b381bf8742a7c13e56d3b8267189de5fc815e54440b5d7da73559f9a39c4e9f85fc2e032c8e4cc7c335c859f31767726a5d39c67e26b76b3f8b53d6c97c3dddef69c89ba7b1e44525a83952f185afe283c4cf776fc639ae638997dc8bc2ce0a645cda1a847d006b3b0c56d479f35fb84b00a3e5ea0b64dd28c4232acdb73625df12af93d4d9575795af11cc160f2792a5280e7a7ded6caa630dbe1fef71070f48d1a26c348bf770bbcf1f8362ce0c57f09fe7d0dc299a46fe0e7e64d2cddafd4a057e2ab3bd4f4c28e4f20ce46305d7ca10d9a73bdba7dfa51779fd5c4d1b687ef34d11e38c1ee5b77c007a6a9685a0841100441100441100441100441100441100441100441902fe07f3c7769214f0f225a0000000049454e44ae426082, 'This sport is considered the oldest organized sport in the world. The first historical reference to athletics dates back to 776 BC in Greece, with a list of the winning athletes of a competition'),
('Basketball', 'Basketball is a team sport in which two teams, most commonly of five players each, opposing one another on a rectangular court, compete with the primary objective of shooting a basketball through the defender\'s hoop while preventing the opposing team from', '', 'The game was invented in 1891 by Dr. James Naismith, who would be the first basketball coach of the Kansas Jayhawks, one of the most successful programs in the game\'s history.'),
('Cycling', 'Cycling, also called biking or bicycling, is the use of bicycles for transport, recreation, exercise or sport. People engaged in cycling are referred to as \"cyclists\", \"bikers\", or less commonly, as \"bicyclists\". Apart from two-wheeled bicycles, \"cycling\"', '', 'Bicycles were introduced in the 19th century and now number about one billion worldwide. They are the principal means of transportation in many parts of the world.'),
('Field Hockey', 'Is a team sport structured in standard hockey format, in which each team plays with 11 players in total, made up of 10 field players and a goalkeeper. Teams must move a hockey ball around a pitch by hitting it with a hockey stick towards the rival team\'s shooting circle and then into the goal', NULL, 'There are historical records which suggest early forms of hockey were played in Egypt and Persia c. 2000 BC, and in Ethiopia c. 1000 BC.'),
('Football', 'Football is a family of team sports that involve, to varying degrees, kicking a ball to score a goal. Unqualified, the word football normally means the form of football that is the most popular where the word is used. Sports commonly called football inclu', '', 'The history of football in general is a long and detailed one, but the sport as we know it today is quite different from how it was in the past. It has evolved into the game that we know today. The game of football has a history of constant evolution and change. The rules of the game have been altered and refined over the years, but the basic concept remains the same.'),
('Gymnastics', 'Gymnastics is a sport that includes exercises requiring balance, strength, flexibility, agility, coordination, and endurance. The movements involved in gymnastics contribute to the development of the arms, legs, shoulders, back, chest, and abdominal muscl', '', 'Gymnastics evolved from exercises used by the ancient Greeks that included skills for mounting and dismounting a horse, and from circus performance skills.'),
('Handball', 'Handball is a team sport in which two teams of seven players each pass a ball using their hands with the aim of throwing it into the goal of the other team. A standard match consists of two periods of 30 minutes, and the team that scores more goals wins. ', '', 'The game was codified at the end of the 19th century in Denmark. The modern set of rules was published in 1917 in Germany, and had several revisions since. The first international games were played under these rules, between Germany and Austria by men in 1925 and between Germany and Austria by women in 1930.'),
('Rugby', 'Is a robust team sport played with an oval ball. Two teams of 15 players each aim to score points by carrying, passing, or kicking the ball towards the opponent\'s goal line. It demands strategy, strength, and skillful ball-handling. Rugby promotes camaraderie, sportsmanship, and respect, enjoying global popularity.', NULL, 'In 1871, English clubs met to form the Rugby Football Union (RFU). In 1892, after charges of professionalism (compensation of team members) were made against some clubs for paying players for missing work'),
('Swimming', 'Swimming is an individual or team sport that requires the use of one/s entire body to move through water The sport takes place in pools or open water Competitive swimming is one of the most popular Olympic sports, with varied distance events in butterfly ', '', 'Competitive swimming became prominent in the late 19th and early 20th centuries, leading to the standardization of swimming styles and the inclusion of swimming events in the Olympic Games'),
('Taekwondo', 'It is also spelled tae kwon do or taekwon-do, is a Korean martial art and combat sport involving punching and kicking techniques. The literal translation for taekwondo is \"kicking\", \"punching\", and \"the art or way of\".[5] It sometimes involves the use of ', NULL, 'Taekwondo became an Olympic sport in 2000, showcasing fierce competition across weight categories. Dominated by nations like South Korea, it has grown in popularity, captivating audiences worldwide.'),
('Tennis', 'Tennis is a racket sport that can be played individually against a single opponent (singles) or between two teams of two players each (doubles). Each player uses a tennis racket that is strung with cord to strike a hollow rubber ball covered with felt ove', '', 'The origins of the game can be traced to a 12th–13th-century French handball game called jeu de paume (\"game of the palm\"), from which was derived a complex indoor racket-and-ball game: real tennis. This ancient game is still played to a limited extent and is usually called real tennis in the United Kingdom, court tennis in the United States, and royal tennis in Australia.'),
('Waterpolo', 'Water polo is a competitive team sport played in water between two teams of seven players each. The game consists of four quarters in which the two teams attempt to score goals by throwing the ball into the opposing team\'s goal. The team with the most goa', '', 'The history of water polo as a team sport began as a demonstration of strength and swimming skill in late 19th century England and Scotland, where water sports and racing exhibitions were a feature of county fairs and festivals. It was introduced in the Olympics in 1900.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `team`
--

DROP TABLE IF EXISTS `team`;
CREATE TABLE IF NOT EXISTS `team` (
  `id` tinyint UNSIGNED NOT NULL AUTO_INCREMENT,
  `country` varchar(20) NOT NULL,
  `modality` varchar(50) NOT NULL,
  `category` enum('Male','Female','Mixed') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `team_ibfk_1` (`country`),
  KEY `team_ibfk_2` (`modality`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `team`
--

INSERT INTO `team` (`id`, `country`, `modality`, `category`) VALUES
(1, 'United States of Ame', 'Basketball', 'Male'),
(2, 'United States of Ame', 'Basketball', 'Female'),
(3, 'France', 'Basketball', 'Male'),
(4, 'Spain', 'Basketball', 'Male'),
(5, 'Slovenia', 'Basketball', 'Male'),
(6, 'Spain', 'Basketball', 'Female'),
(7, 'France', 'Basketball', 'Female'),
(8, 'Canada', 'Basketball', 'Female'),
(9, 'Spain', 'Handball', 'Male'),
(10, 'France', 'Handball', 'Male'),
(11, 'Germany', 'Handball', 'Male'),
(12, 'Sweden', 'Handball', 'Male'),
(13, 'Spain', 'Handball', 'Female'),
(14, 'Norway', 'Handball', 'Female'),
(15, 'Denmark', 'Handball', 'Female'),
(16, 'Netherlands', 'Handball', 'Female'),
(17, 'Spain', 'Football', 'Male'),
(18, 'Brazil', 'Football', 'Male'),
(19, 'France', 'Football', 'Male'),
(20, 'England', 'Football', 'Male'),
(21, 'Spain', 'Football', 'Female'),
(22, 'France', 'Football', 'Female'),
(23, 'England', 'Football', 'Female'),
(24, 'United States of Ame', 'Football', 'Female'),
(25, 'Serbia', 'Waterpolo', 'Male'),
(26, 'Italy', 'Waterpolo', 'Male'),
(28, 'Croatia', 'Waterpolo', 'Male'),
(29, 'Spain', 'Waterpolo', 'Male'),
(30, 'United States of Ame', 'Waterpolo', 'Female'),
(31, 'Spain', 'Waterpolo', 'Female'),
(32, 'Italy', 'Waterpolo', 'Female'),
(33, 'Hungary', 'Waterpolo', 'Female');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venue`
--

DROP TABLE IF EXISTS `venue`;
CREATE TABLE IF NOT EXISTS `venue` (
  `name` varchar(100) NOT NULL,
  `sport` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `location` varchar(50) NOT NULL DEFAULT 'Paris',
  `capacity` varchar(10) NOT NULL,
  `status` enum('existing building','temporary','new') NOT NULL,
  `picture` blob,
  PRIMARY KEY (`name`,`sport`),
  KEY `sport` (`sport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `venue`
--

INSERT INTO `venue` (`name`, `sport`, `location`, `capacity`, `status`, `picture`) VALUES
('Allianz Riviera', 'Football', 'Outlying venues', '35.624', 'existing building', NULL),
('Bercy Arena', 'Basketball', 'Paris Centre zone', '15.000', 'existing building', NULL),
('Bercy Arena', 'Gymnastics', 'Paris Centre zone', '15.000', 'existing building', NULL),
('Court Simonne Mathieu ', 'Tennis', 'Paris Centre zone', '9.000', 'existing building', NULL),
('Court Suzanne Lenglen', 'Tennis', 'Paris Centre zone', '10.000', 'existing building', NULL),
('Élancourt Hill', 'Cycling', 'Versailles zone', '25.000', 'existing building', NULL),
('Gardens of the Palace of Versailles', 'Athletics', 'Versailles zone', '80.000', 'temporary', NULL),
('Grand Palais', 'Taekwondo', 'Paris Centre zone', '8.000', 'existing building', NULL),
('Hôtel de Ville', 'Athletics', 'Paris Centre zone', 'N/A', 'temporary', NULL),
('Les Invalides', 'Cycling', 'Paris Centre zone', '8.000', 'temporary', NULL),
('Parc des Princes', 'Football', 'Paris Centre zone', '48.583', 'existing building', NULL),
('Parc Olympique Lyonnais', 'Football', 'Outlying venues', '59.186', 'existing building', NULL),
('Paris Aquatic Centre', 'Waterpolo', 'Grand Paris zone', '5.000', 'existing building', NULL),
('Paris La Défense Arena', 'Swimming', 'Grand Paris zone', '15.220', 'existing building', NULL),
('Paris La Défense Arena', 'Waterpolo', 'Grand Paris zone', '15.220', 'existing building', NULL),
('Philippe Chatrier Court', 'Tennis', 'Paris Centre zone', '15.000', 'existing building', NULL),
('Pierre Mauroy Stadium', 'Basketball', 'Outlying venues', '26.000', 'existing building', NULL),
('Pierre Mauroy Stadium', 'Handball', 'Outlying venues', '26.000', 'existing building', NULL),
('Place de la Concorde', 'Basketball', 'Paris Centre zone', '30.000', 'existing building', NULL),
('Pont Alexandre III', 'Cycling', 'Paris Centre zone', '1.000', 'temporary', NULL),
('Pont Alexandre III', 'Swimming', 'Paris Centre zone', '1.000', 'temporary', NULL),
('Porte de La Chapelle Arena', 'Gymnastics', 'Grand Paris zone', '8.000', 'existing building', NULL),
('Roland Garros Stadium', 'Tennis', 'Paris Centre zone', '34.000', 'existing building', NULL),
('South Paris Arena', 'Handball', 'Paris Centre zone', '6.000', 'temporary', NULL),
('Stade de France', 'Athletics', 'Grand Paris zone', '77.083', 'existing building', NULL),
('Stade de France', 'Rugby', 'Grand Paris zone', '77.083', 'existing building', NULL),
('Stade de la Beaujoire', 'Football', 'Outlying venues', '35.322', 'existing building', NULL),
('Stade Geoffroy-Guichard', 'Football', 'Outlying venues', '41.965', 'existing building', NULL),
('Stade Matmut Atlantique', 'Football', 'Outlying venues', '42.115', 'existing building', NULL),
('Stade Vélodrome', 'Football', 'Outlying venues', '67.394', 'existing building', NULL),
('Trocadéro (Pont d\'Iéna) ', 'Athletics', 'Paris Centre zone', '13.000 ', 'temporary', NULL),
('Trocadéro (Pont d\'Iéna) ', 'Cycling', 'Paris Centre zone', '13.000', 'temporary', NULL),
('Vélodrome de Saint-Quentin-en-Yvelines', 'Cycling', 'Versailles zone', '5.000', 'existing building', NULL);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `athlete`
--
ALTER TABLE `athlete`
  ADD CONSTRAINT `athlete_ibfk_1` FOREIGN KEY (`country`) REFERENCES `country` (`country`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `athlete_ibfk_2` FOREIGN KEY (`modality`) REFERENCES `modality` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `modality`
--
ALTER TABLE `modality`
  ADD CONSTRAINT `modality_ibfk_1` FOREIGN KEY (`sport`) REFERENCES `sport` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `modality_ibfk_2` FOREIGN KEY (`venue`) REFERENCES `venue` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`country`) REFERENCES `country` (`country`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `team_ibfk_2` FOREIGN KEY (`modality`) REFERENCES `modality` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `venue`
--
ALTER TABLE `venue`
  ADD CONSTRAINT `venue_ibfk_1` FOREIGN KEY (`sport`) REFERENCES `sport` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

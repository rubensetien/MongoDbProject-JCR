-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 23-03-2024 a las 11:42:23
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
  `_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `age` tinyint NOT NULL,
  `gender` enum('masc','fem') NOT NULL,
  `sport` tinyint NOT NULL,
  `medals` tinyint NOT NULL DEFAULT '0',
  `record` varchar(255) NOT NULL,
  `picture` blob,
  PRIMARY KEY (`_id`),
  FOREIGN KEY (`country`) REFERENCES `country`(`country`),
  FOREIGN KEY (`sport`) REFERENCES `sport`(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `athlete`
--

INSERT INTO `athlete` (`_id`, `name`, `country`, `age`, `gender`, `sport`, `medals`, `record`, `picture`) VALUES
(1, 'Sarah Sjöström', 'Sweden', 30, 'fem', 5, 27, '16 golds, 6 silver, 5 bronze', NULL);

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
  `representatives` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'still to be determined',
  PRIMARY KEY (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `country`
--

INSERT INTO `country` (`country`, `acronym`, `flag`, `capital`, `population`, `representatives`) VALUES
('Spain', 'ESP', NULL, 'Madrid', '47.420.000', 'still to be determined');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modality`
--

DROP TABLE IF EXISTS `modality`;
CREATE TABLE IF NOT EXISTS `modality` (
  `_id` tinyint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sport_id` tinyint NOT NULL,
  `category` enum('masc','fem','mixed') NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `venue_id` tinyint NOT NULL,
  `description` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  `status` enum('scheduled','in_progress','finished') NOT NULL,
  `transmission` enum('tv_channel','platform') NOT NULL,
  `picture` blob,
  PRIMARY KEY (`_id`),
  FOREIGN KEY (`sport_id`) REFERENCES `sport`(`id`),
  FOREIGN KEY (`venue_id`) REFERENCES `venue`(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `modality`
--

INSERT INTO `modality` (`_id`, `name`, `sport_id`, `category`, `start_date`, `end_date`, `venue_id`, `description`, `result`, `status`, `transmission`, `picture`) VALUES
(1, '100 Metros', 1, 'masc', '2024-08-03', '2024-08-04', 1, 'Carrera en la que se tienen que recorrer 100 metros en un suelo nivelado, libres de todo obstáculo, con la mayor rapidez posible', '', 'scheduled', 'tv_channel', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sport`
--

DROP TABLE IF EXISTS `sport`;
CREATE TABLE IF NOT EXISTS `sport` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `picture` blob,
  `history` text NOT NULL,
  PRIMARY KEY (`id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `sport`
--

INSERT INTO `sport` (`id`, `name`, `description`, `picture`, `history`) VALUES
(1, 'Atletismo', 'Conjunto de prácticas deportivas, se busca superar a los adversarios en velocidad o en resistencia, ya sea en distancia o en mayor altura de salto', 0x89504e470d0a1a0a0000000d49484452000000e1000000e10803000000096d22480000007e504c5445ffffff000000fcfcfcccccccf0f0f04c4c4ce1e1e1f9f9f9989898e6e6e6a2a2a2cfcfcf878787bababad8d8d8f6f6f6101010aaaaaa9b9b9bc3c3c34141413434346666663c3c3c252525d6d6d61c1c1c818181737373575757b5b5b5eaeaea4f4f4f3030308e8e8e7b7b7b5e5e5e0c0c0c1818182222226c6c6c4d4d4d81a70c6f000008fd49444154789ced9dd99aa23a10800741501414c1a545a0716bcffbbfe0c1058550598008d1affecb69cca44852a92de1df3f0441100441100441100441100441100441100441100441be196b6cba4eecc5ba6b26b3be3bf3065c2f5c6a39eb8bed987df7482ec634d5caccd73ba7ef5ec9c3083598a9fb1dd3558f2802665cfc41dfdd6b8fb7a50ba869e7d5a4ef0eb6c4dab3e4bbb172855a1a24a61e7bcec44cac37f7b916832957c06c1cf706b721c399ae1f8faf438fff7c678c0404cc88785375312c3d3f5c74d27b013c310133429656d597d51fe84aa8a8c94658426d4537014673e807230596a331847a4663f943698636d3779d0a03b2ab2360860eb64257c6878ee5a930a929a0b685ec3887fefcb967bb6f76ac2ba1b605262ab8061f04fdee1a766d0133c6642becfdb4d7799aac2bfd4957d370756676f9971815b3da4a893e2df7ca10a6fad8185886e93035eca8dc0a6f431dc1ff7927105d090a5ae167c5e87349a11a0cb7e4c66f7f9b22f1f28fa50566397fd43e07c507cd1347c20dbcc374c1a5d4915542fcf9e797dae9a289fac31150d3e22e852a52366742c086a46ee4c7c243315742bb339108f4a2453a041fb1295a352d6c8a7ccbbd3755537cf9d03e7ec5a16ce61edc8c621216ad65aa6d358637bb82efc737fc3c5ae36f665650343bba233706b78dfdeb07264fc0de4cd3a4a06858b6e30c12b130f100c3a8ccbaafc0b2f95a629c78c3a1daebe2c4e3c5b17af3115fb38b67fe0f2afeed9f5ff8b3cf722d327c6ac36fc67f7681bb5f0dc81da164885974cbe0cae98d32b0790e0ce92b40e8e5c5561e165dcd21fcf74c54086d576631afb122fe780104cbd9f5e73c3d55a498e96fe94fddfb4b5ab02610497c90f698a1cb3b1c0affc2b2c3dde572005c851f9a8873b16cc07bc8ad52297d98c0a99d658d45382367466b1e3a7e252752f4034505d675de9e3795ed293f1c5769ce9b4dced4653d8b3b92ae934ef55f331bd32ec62603afa68e91af75efb39454fcad305cfb785d90dbc876ebae2a5d3bca8eacdec7b0bffd98e0a80d65ab9abbfb2eb9d1c6f85b2d902de14d3104fce7ea33f36bcf0c6b97a9844a30bd2591544dfac2b8395bc77ac50d57d356fa2cbd1993f26daa711e20b6eba8c6e0fa52646b9afd3b1abdf7f5ce5e3cc7edd77c5ebc55f931a262c655d8e2356eaf457a67dc77c4dbf5522a40742d2eae0f6fa56f5ce65c8b64cf8b41396613892dc5f1cd6c0f64abd26bac4d7aa8d6245c0cb178fe3d7e203f933adbc9719c8a90d1619100499ec57c837535926fd02c080929a51b25268fa52bbd33994326dfa0a9046c96dc9fb80fa7eb1de9fe782abdc96a3a9867a70cf29fd06a91dae0cb37d9aa12f294595ec7f106db239b1ff24db66a8a63c8dc30ac67c2e02d7962437ae807a8ac993355e453c0e17bea8ae4d74800e55f7bfad3835794b9cf8a945a00b9c40dd554310babb6cb4eb62201628a3483da2da4423e6608c15ce2167eb25853bcf9a0c3393e10fb8606b19c92ec2bd1df8419904b049c8624e43ca0305025e68e54da440aa08b9aa9449f0e97cbe35e1fb7dd412c40426d55f2430d62b11e696dc9c3729ec195348c5bca089435685a58d8d01dc2b4eb20c3481422448b56f9031792508b7231cc1d59cad841d55bb530ed32692164c5477c0ca33b4ec66e5511316c1e590ca0feacfcc69395522796f98a415afdc76107c76ae0dac213e37c4ca30661febac882530f244c9bdafbacd28c32d4333832611c0bfa6d58729704d426093a39b9e9d22b45b453c3403baf0e2ca79ba2c549caeac3bad95b661c136add766d586378a59905c03f77ab055d95da402e5d89431311075c11a3ee3c26d6d1913b8d4c7fcac6ff60dee5115afe31e0b451c07dc1383d35ecb4303ae14aa89d1bbd71877a9846e05cb854448e91864d1623e40e6713f4d2b9c3cba89d7c7168628bcf16d5a0c6aa8f3b28f8674232a2464d8f89616ce5b5b440c8566e78a8c0181d83f43c3ffd2d7f2f5e7ff5c20bde09bb2b41d31ce678e23b8edff32d3042a328bf96a04b74e6fd2d39ca5c75d1045de872850e620eef4348a37ef228ea823e5da3bd5f054cfab96602f9d9ff4e487847ce0bf476acb70da4e9c1e683b27d39831a2378e593b2617768b7d151f9a08ce69559dd5b78329fb8cfe34cf501b3451c2285ee2ae322789919c1a5ef6e8b2310f703f91885da6c0433ce1fe268d4c91311f47c019420dc7ba28eac5b3ffbeebd005c013d6b66d31349ea6f193c7f697e8bdb26d4a5aac0857a6c782378c8179a4999aa3d5e8f2484cd8e3e6d0abeae414942a86d9f72527ccb72720f1e6fa5bd61f63671aa2c3170cd4a3f4f27119b19b33857a71f982a5eab2b21478b021a04ac3ea85c1fa10cecec257880dd81b281ca6a1ab6802194fc1a43d1d4b48b6a9826b0958c0d26bfc0388eaa3b3ed39b806bbd28973f2aba57b0fcc1bf11388013584045c3df2c532d80d79507df877d51f29b09ac0be69760a47730a1646c866ac6db18024ec11e4fa8bf50d375a22b998d03ad40e342bdb05dc98f9758d4c02fac615c7a9871a9e6072fa813ee02f9792623b7bf5673aba74e511f528a21a3c8e6a8a492a169d1148a7b8e5976dd56d1ec1a45c01da0128d98552475543474010fca063a73e0314b166225f7798aa906dd3666382943bca10a5fe40001950cb0c55be499a41291adacc30bb94b6ba044d08f18e1b7a3ab6e141f30b697d5237f864f0f6eaf574a9a30395e6560e6fbca043562eafc0ca6b192fbdf13bfd2e5b55999a0239afe0c4666a2c4278de854a26a5125ef67c2d64e7a0c3f2145e810ce413a22f6b381bf8742a7c13e56d3b8267189de5fc815e54440b5d7da73559f9a39c4e9f85fc2e032c8e4cc7c335c859f31767726a5d39c67e26b76b3f8b53d6c97c3dddef69c89ba7b1e44525a83952f185afe283c4cf776fc639ae638997dc8bc2ce0a645cda1a847d006b3b0c56d479f35fb84b00a3e5ea0b64dd28c4232acdb73625df12af93d4d9575795af11cc160f2792a5280e7a7ded6caa630dbe1fef71070f48d1a26c348bf770bbcf1f8362ce0c57f09fe7d0dc299a46fe0e7e64d2cddafd4a057e2ab3bd4f4c28e4f20ce46305d7ca10d9a73bdba7dfa51779fd5c4d1b687ef34d11e38c1ee5b77c007a6a9685a0841100441100441100441100441100441100441100441902fe07f3c7769214f0f225a0000000049454e44ae426082, 'Este deporte es considerado el deporte organizado más antiguo del mundo. La primera referencia histórica al atletismo se remonta al año 776 a. C. en Grecia, con una lista de los atletas ganadores de una competencia.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venue`
--

DROP TABLE IF EXISTS `venue`;
CREATE TABLE IF NOT EXISTS `venue` (
  `id` tinyint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `location` varchar(50) NOT NULL DEFAULT 'Paris',
  `capacity` varchar(10) NOT NULL,
  `status` enum('existing building','temporary','new') NOT NULL,
  `sports` varchar(255) NOT NULL,
  `picture` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  FOREIGN KEY (`sports`) REFERENCES `sport`(`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `venue`
--

INSERT INTO `venue` (`id`, `name`, `location`, `capacity`, `status`, `sports`, `picture`) VALUES
(1, 'Hôtel de Ville', 'Paris', 'N/A', 'temporary', 'Marathon', NULL);
COMMIT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE IF NOT EXISTS `result` (
  `_id` int NOT NULL AUTO_INCREMENT,
  `modality_id` tinyint NOT NULL,
  `athlete_id` int NOT NULL,
  `country` varchar(50) NOT NULL,
  `medal` enum('gold','silver','bronze') NOT NULL,
  `time` time NOT NULL,
  `score` varchar(255) NOT NULL,
  `position` tinyint NOT NULL,
  `date_hour` datetime NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`modality_id`) REFERENCES `modality`(`_id`),
  FOREIGN KEY (`athlete_id`) REFERENCES `athlete`(`_id`),
  FOREIGN KEY (`country`) REFERENCES `country`(`country`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `result`
--

INSERT INTO `result`(`_id`, `modality_id`, `athelete_id`, `country`, `medal`, `time`, `score`, `position`, `date_hour`) VALUES
();
COMMIT; 

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

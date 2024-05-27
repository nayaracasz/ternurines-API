-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-05-2024 a las 19:02:22
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sylvanianfamilies`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `characters`
--

CREATE TABLE `characters` (
  `CharacterID` int(11) NOT NULL,
  `CharacterName` varchar(50) NOT NULL,
  `FamilyName` varchar(50) NOT NULL,
  `Role` varchar(30) DEFAULT NULL,
  `Description` mediumtext NOT NULL,
  `Image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `characters`
--

INSERT INTO `characters` (`CharacterID`, `CharacterName`, `FamilyName`, `Role`, `Description`, `Image`) VALUES
(1, 'Frasier Chocolate', 'Chocolate Rabbit', 'Father', 'Frasier Chocolate enjoys planning all kinds\r\nof fun events and parties to be held in the\r\nSylvanian Village.', 'https://static.wikia.nocookie.net/sylvanian/images/a/a1/Frasier_Chocolate_%285016%29.jpg/revision/latest?cb=20181222144611'),
(2, 'Teri Chocolate', 'Chocolate Rabbit', 'Mother', 'Teri Chocolate always cooks delicious meals, and redesigns the children’s clothes beautifully when they grow out of them.', 'https://static.wikia.nocookie.net/sylvanian/images/f/ff/Teri_Chocolate_%285016%29.jpg/revision/latest?cb=20210805082611'),
(3, 'Coco Chocolate', 'Chocolate Rabbit', 'Son', 'Coco Chocolate is good at football - he can kick a ball further than any of the other children.', 'https://static.wikia.nocookie.net/sylvanian/images/1/17/Coco_Chocolate_%285016%29.jpg/revision/latest?cb=20181222144649'),
(4, 'Freya Chocolate', 'Chocolate Rabbit', 'Daughter', 'Freya Chocolate is very good at drawing and has won lots of prizes in school competitions.', 'https://static.wikia.nocookie.net/sylvanian/images/c/c0/Freya_Chocolate_%285016%29.jpg/revision/latest?cb=20200730052925'),
(5, 'Crème Chocolate', 'Chocolate Rabbit', 'Baby girl', 'Crème Chocolate Crème Chocolate loves the Pain au Chocolat her dad makes - she often has chocolate around her mouth.', 'https://static.wikia.nocookie.net/sylvanian/images/3/3c/Cr%C3%A8me_Chocolate_%285062%29.jpg/revision/latest?cb=20181223144605'),
(6, 'Kabe & Breeze Chocolate', 'Chocolate Rabbit', 'Baby twins', 'Kabe Chocolate is full of curiosity - if something catches his eye, he’ll run off to see it! Breeze Chocolate likes watching the flowers sway in the breeze and the butterflies fluttering through the sky.', 'https://static.wikia.nocookie.net/sylvanian/images/2/2e/Kabe_%26_Breeze_Chocolate_%285080%29.jpg/revision/latest?cb=20181224082841'),
(7, 'Rhys & Patricia Chocolate', 'Chocolate Rabbit', 'Grandparents', 'Rhys Chocolate Rhys Chocolate is a boat captain, and lives at the Sea Breeze Cape. Patricia Chocolate’s hobby is snorkelling and she often enjoys giving parties on the cruiser.', 'https://static.wikia.nocookie.net/sylvanian/images/e/e1/Chocolate_Rabbit_Grandparents_%285190%29.jpg/revision/latest?cb=20181224120546'),
(9, 'Sharon Fennec', 'Fennec Fox', 'Mother', 'Sharon Fennec is a picture book author. She\r\ndraws pictures of her daughter, Jasmine’s, day dreams.', 'https://static.wikia.nocookie.net/sylvanian/images/e/eb/Sharon_Fennec_%285696%29.jpg/revision/latest?cb=20221226114307'),
(10, 'Allie Fennec', 'Fennec Fox', 'Baby boy', 'Allie Fennec is a calm and carefree baby. He has a favourite chair where he sits to have all of his meals.', 'https://static.wikia.nocookie.net/sylvanian/images/e/e6/Allie_Fennec_%285696%29.jpg/revision/latest?cb=20221226114304'),
(11, 'Kaya Fennec', 'Fennec Fox', 'Baby girl', 'Kaya Fennec is a baby who likes stargazing but is afraid of dark places. She has trouble falling asleep and wakes up quickly.', 'https://static.wikia.nocookie.net/sylvanian/images/9/9b/Kaya_Fennec_%285696%29.jpg/revision/latest?cb=20221226114305'),
(12, 'Randy & Tara Fennec', 'Fennec Foxes', 'Baby twins', 'Randy Fennec often plays in the sandbox with his brother Caleb. They often quarrel because Tara quickly destroys the mounts and castles that Randy built. Randy likes playing treasure hunts, where you hide toys in the sand and look for them. Tara Fennec loves her shiny spoon, and when she plays in the sandbox, she always takes her spoon with her, but Randy hides it in the sand. It’s hard to find and sometimes Tara cries when she can’t find it.', 'https://static.wikia.nocookie.net/sylvanian/images/5/53/Fennec_Fox_Twins_5697.jpg/revision/latest?cb=20221226120252'),
(13, 'Ozzie Waddle', 'Penguin', 'Father', 'Ozzie Waddle is a gluttonous penguin. If he eats too much and his stomach becomes heavy, he will immediately sit down and doze off. ', 'https://static.wikia.nocookie.net/sylvanian/images/8/8c/Ozzie_Waddle_%285694%29.jpg/revision/latest?cb=20230102125523'),
(14, 'Sapphire Waddle', 'Penguin', 'Mother', 'Sapphire Waddle is a mother who is good at dancing on ice. Her dances are very graceful and elegant.', 'https://static.wikia.nocookie.net/sylvanian/images/c/cf/Sapphire_Waddle_%285694%29.jpg/revision/latest?cb=20230102125524'),
(15, 'Kippie Waddle', 'Penguin', 'Baby Brother', 'Kippie Waddle doesn’t get swayed by small things. Baby Kippie always sits down or walks slowly but If you show her an ice cream, she will suddenly walk faster!', 'https://static.wikia.nocookie.net/sylvanian/images/8/82/Kippie_Waddle_%285694%29.jpg/revision/latest?cb=20230102125522'),
(16, 'Jolly Snowdrift', 'Reindeer', 'Father', 'Jolly Snowdrift is the delivery man. From\r\npresents and food, to heavy object, he carries them anywhere. Jolly can be Careless and sometimes makes mistakes with delivery addresses.', 'https://static.wikia.nocookie.net/sylvanian/images/f/f1/Jolly_Snowdrift_%285692%29.jpg/revision/latest?cb=20221201071542'),
(17, 'Elm Snowdrift', 'Reindeer', 'Mother', 'Elm Snowdrift is always helping her husband with deliveries. He is full of ideas – even if a parcel seems heavy, he’ll find a way to carry it! She loves working with her family! \r\n', 'https://static.wikia.nocookie.net/sylvanian/images/3/33/Elm_Snowdrift_%285692%29.jpg/revision/latest?cb=20221220110920'),
(18, 'Luis Snowdrift', 'Reindeer', 'Baby Brother', 'Baby Luis Snowdrift loves Christmas and wears a red hat all year round. In order to help his father with work, they use the sled as a trolley for deliveries and to play games.', 'https://static.wikia.nocookie.net/sylvanian/images/a/ae/Luis_Snowdrift_%285692%29.jpg/revision/latest?cb=20221220111402'),
(19, 'Eve Snowdrift', 'Reindeer', 'Baby sister', 'Eve Snowdrift her favourite phrase is, “Can I put this on my tree?”', 'https://static.wikia.nocookie.net/sylvanian/images/d/d8/Eve_Snowdrift_%285692%29.jpg/revision/latest?cb=20221220111212'),
(20, 'Ollie & Ginger Snowdrift', 'Reindeer', 'Baby twins', 'Ollie Snowdrift is a baby who loves cookies and begs for them every day.\r\nGinger Snowdrift loves gifts and wraps\r\neverything in gift bags, even toys and snacks!', 'https://static.wikia.nocookie.net/sylvanian/images/3/3f/Reindeer_Twins_5693.jpg/revision/latest?cb=20221227095145'),
(21, 'Alex Periwinkle', 'Milk Rabbit', 'Father', 'Alex Periwinkle often takes photos of his family to cherish their family memories. But Henry is always so active, it takes a long time for them to settle down in front of the camera. ', 'https://static.wikia.nocookie.net/sylvanian/images/e/e9/Alex_Periwinkle_%284108%29.jpg/revision/latest?cb=20190103125355'),
(22, 'Kate Periwinkle', 'Milk Rabbit', 'Mother', 'Kate Periwinkle Kate Periwinkle likes romantic-looking rooms and decorates her rooms with lots of flowers and pictures. She wants the children to always keep dreaming, so she tells them stories and\r\nfairy tales about princesses and fairies. ', 'https://static.wikia.nocookie.net/sylvanian/images/b/bc/Kate_Periwinkle_%284108%29.jpg/revision/latest?cb=20190103124543'),
(23, 'Oliver Periwinkle', 'Milk Rabbit', 'Son', 'Oliver Periwinkle likes to write beautiful poems, and the girls at school always look forward to hearing his poems. ', 'https://static.wikia.nocookie.net/sylvanian/images/a/a8/Oliver_Periwinkle_%284108%29.jpg/revision/latest?cb=20210216093908'),
(24, 'Rebecca Periwinkle', 'Milk Rabbit', 'Daughter', 'Rebecca Periwinkle wishes she could become a princess. She writes stories about becoming a princess in a secret notebook and dreams that it will come true some day. \r\n', 'https://static.wikia.nocookie.net/sylvanian/images/c/c6/Rebecca_Periwinkle_%284108%29.jpg/revision/latest?cb=20191213112551'),
(25, 'Vincent Husky', 'Husky', 'Father', 'Vincent Husky has a big interest in cars!\r\nWhether it’s driving round with his friends or helping others fix their cars, he will always be there to lend his car expertise!', 'https://static.wikia.nocookie.net/sylvanian/images/3/34/Vincent_Husky_%285636%29.jpg/revision/latest?cb=20220116181315');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`CharacterID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `characters`
--
ALTER TABLE `characters`
  MODIFY `CharacterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

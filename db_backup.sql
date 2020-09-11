-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2020 at 12:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `country_code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `country_code`, `city_name`, `postal_code`, `address`) VALUES
(1, '191', 'Osijek', 31000, 'Ulica 1'),
(2, '191', 'Vinkovci', 32100, 'Ulica 2'),
(3, '191', 'Vukovar', 32000, 'Ulica 3'),
(4, '191', 'Zagreb', 10000, 'Ulica 4'),
(5, '191', 'Split', 21000, 'Ulica 5'),
(6, '191', 'Osijek', 31000, 'Ulica 6'),
(7, '191', 'Vinkovci', 32100, 'Ulica 7'),
(8, '191', 'Vukovar', 32000, 'Ulica 8'),
(9, '191', 'Zagreb', 10000, 'Ulica 9'),
(10, '191', 'Split', 21000, 'Ulica 10'),
(11, '191', 'Vukovar', 32000, 'Ulica 11'),
(12, '191', 'Zagreb', 10000, 'Ulica 12'),
(13, '191', 'Split', 21000, 'Ulica 13');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`code`, `name`) VALUES
('583', '	MICRONESIA (FEDERATED STATES OF)'),
('850', '	VIRGIN ISLANDS (U.S.)'),
('004', 'AFGHANISTAN'),
('248', 'ALAND ISLANDS'),
('008', 'ALBANIA'),
('012', 'ALGERIA'),
('016', 'AMERICAN SAMOA'),
('024', 'ANGOLA'),
('660', 'ANGUILLA'),
('010', 'ANTARCTICA'),
('028', 'ANTIGUA AND BARBUDA'),
('032', 'ARGENTINA'),
('051', 'ARMENIA'),
('533', 'ARUBA'),
('036', 'AUSTRALIA'),
('040', 'AUSTRIA'),
('031', 'AZERBAIJAN'),
('044', 'BAHAMAS'),
('048', 'BAHRAIN'),
('050', 'BANGLADESH'),
('052', 'BARBADOS'),
('112', 'BELARUS'),
('056', 'BELGIUM'),
('084', 'BELIZE'),
('204', 'BENIN'),
('060', 'BERMUDA'),
('064', 'BHUTAN'),
('068', 'BOLIVIA (PLURINATIONAL STATE OF)'),
('535', 'BONAIRE, SINT EUSTATIUS AND SABA'),
('070', 'BOSNIA AND HERZEGOVINA'),
('072', 'BOTSWANA'),
('074', 'BOUVET ISLAND'),
('076', 'BRAZIL'),
('086', 'BRITISH INDIAN OCEAN TERRITORY'),
('096', 'BRUNEI DARUSSALAM'),
('100', 'BULGARIA'),
('854', 'BURKINA FASO'),
('108', 'BURUNDI'),
('132', 'CABO VERDE'),
('116', 'CAMBODIA'),
('120', 'CAMEROON'),
('124', 'CANADA'),
('136', 'CAYMAN ISLANDS'),
('140', 'CENTRAL AFRICAN REPUBLIC'),
('148', 'CHAD'),
('152', 'CHILE'),
('156', 'CHINA'),
('162', 'CHRISTMAS ISLAND'),
('166', 'COCOS (KEELING) ISLANDS'),
('170', 'COLOMBIA'),
('174', 'COMOROS'),
('178', 'CONGO'),
('180', 'CONGO, DEMOCRATIC REPUBLIC OF THE CONGO'),
('184', 'COOK ISLANDS'),
('188', 'COSTA RICA'),
('384', 'COTE D\'IVOIRE'),
('191', 'CROATIA'),
('192', 'CUBA'),
('531', 'CURACAO'),
('196', 'CYPRUS'),
('203', 'CZECHIA'),
('208', 'DENMARK'),
('262', 'DJIBOUTI'),
('212', 'DOMINICA'),
('214', 'DOMINICAN REPUBLIC'),
('218', 'ECUADOR'),
('818', 'EGYPT'),
('222', 'EL SALVADOR'),
('226', 'EQUATORIAL GUINEA'),
('232', 'ERITREA'),
('233', 'ESTONIA'),
('748', 'ESWATINI'),
('231', 'ETHIOPIA'),
('238', 'FALKLAND ISLANDS (MALVINAS)'),
('234', 'FAROE ISLANDS'),
('242', 'FIJI'),
('246', 'FINLAND'),
('250', 'FRANCE'),
('254', 'FRENCH GUIANA'),
('258', 'FRENCH POLYNESIA'),
('260', 'FRENCH SOUTHERN TERRITORIES'),
('266', 'GABON'),
('270', 'GAMBIA'),
('268', 'GEORGIA'),
('276', 'GERMANY'),
('288', 'GHANA'),
('292', 'GIBRALTAR'),
('300', 'GREECE'),
('304', 'GREENLAND'),
('308', 'GRENADA'),
('312', 'GUADELOUPE'),
('316', 'GUAM'),
('320', 'GUATEMALA'),
('831', 'GUERNSEY'),
('324', 'GUINEA'),
('624', 'GUINEA-BISSAU'),
('328', 'GUYANA'),
('332', 'HAITI'),
('334', 'HEARD ISLAND AND MCDONALD ISLANDS'),
('336', 'HOLY SEE'),
('340', 'HONDURAS'),
('344', 'HONG KONG'),
('348', 'HUNGARY'),
('352', 'ICELAND'),
('356', 'INDIA'),
('360', 'INDONESIA'),
('364', 'IRAN (ISLAMIC REPUBLIC OF)'),
('368', 'IRAQ'),
('372', 'IRELAND'),
('833', 'ISLE OF MAN'),
('376', 'ISRAEL'),
('380', 'ITALY'),
('388', 'JAMAICA'),
('392', 'JAPAN'),
('832', 'JERSEY'),
('400', 'JORDAN'),
('398', 'KAZAKHSTAN'),
('404', 'KENYA'),
('296', 'KIRIBATI'),
('408', 'KOREA (DEMOCRATIC PEOPLE\'S REPUBLIC OF)'),
('410', 'KOREA, REPUBLIC OF'),
('414', 'KUWAIT'),
('417', 'KYRGYZSTAN'),
('418', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC'),
('428', 'LATVIA'),
('422', 'LEBANON'),
('426', 'LESOTHO'),
('430', 'LIBERIA'),
('434', 'LIBYA'),
('438', 'LIECHTENSTEIN'),
('440', 'LITHUANIA'),
('442', 'LUXEMBOURG'),
('446', 'MACAO'),
('450', 'MADAGASCAR'),
('454', 'MALAWI'),
('458', 'MALAYSIA'),
('462', 'MALDIVES'),
('466', 'MALI'),
('470', 'MALTA'),
('584', 'MARSHALL ISLANDS'),
('474', 'MARTINIQUE'),
('478', 'MAURITANIA'),
('480', 'MAURITIUS'),
('175', 'MAYOTTE'),
('484', 'MEXICO'),
('498', 'MOLDOVA, REPUBLIC OF'),
('492', 'MONACO'),
('496', 'MONGOLIA'),
('499', 'MONTENEGRO'),
('500', 'MONTSERRAT'),
('504', 'MOROCCO'),
('508', 'MOZAMBIQUE'),
('104', 'MYANMAR'),
('516', 'NAMIBIA'),
('520', 'NAURU'),
('524', 'NEPAL'),
('528', 'NETHERLANDS'),
('540', 'NEW CALEDONIA'),
('554', 'NEW ZEALAND'),
('558', 'NICARAGUA'),
('562', 'NIGER'),
('566', 'NIGERIA'),
('570', 'NIUE'),
('574', 'NORFOLK ISLAND'),
('807', 'NORTH MACEDONIA'),
('580', 'NORTHERN MARIANA ISLANDS'),
('578', 'NORWAY'),
('512', 'OMAN'),
('586', 'PAKISTAN'),
('585', 'PALAU'),
('275', 'PALESTINE, STATE OF'),
('591', 'PANAMA'),
('598', 'PAPUA NEW GUINEA'),
('600', 'PARAGUAY'),
('604', 'PERU'),
('608', 'PHILIPPINES'),
('612', 'PITCAIRN'),
('616', 'POLAND'),
('620', 'PORTUGAL'),
('630', 'PUERTO RICO'),
('634', 'QATAR'),
('638', 'REUNION'),
('642', 'ROMANIA'),
('643', 'RUSSIAN FEDERATION'),
('646', 'RWANDA'),
('652', 'SAINT BARTHELEMY'),
('654', 'SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA'),
('659', 'SAINT KITTS AND NEVIS'),
('662', 'SAINT LUCIA'),
('663', 'SAINT MARTIN (FRENCH PART)'),
('666', 'SAINT PIERRE AND MIQUELON'),
('670', 'SAINT VINCENT AND THE GRENADINES'),
('882', 'SAMOA'),
('674', 'SAN MARINO'),
('678', 'SAO TOME AND PRINCIPE'),
('682', 'SAUDI ARABIA'),
('686', 'SENEGAL'),
('688', 'SERBIA'),
('690', 'SEYCHELLES'),
('694', 'SIERRA LEONE'),
('702', 'SINGAPORE'),
('534', 'SINT MAARTEN (DUTCH PART)'),
('703', 'SLOVAKIA'),
('705', 'SLOVENIA'),
('090', 'SOLOMON ISLANDS'),
('706', 'SOMALIA'),
('710', 'SOUTH AFRICA'),
('239', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS'),
('728', 'SOUTH SUDAN'),
('724', 'SPAIN'),
('144', 'SRI LANKA'),
('729', 'SUDAN'),
('740', 'SURINAME'),
('744', 'SVALBARD AND JAN MAYEN'),
('752', 'SWEDEN'),
('756', 'SWITZERLAND'),
('760', 'SYRIAN ARAB REPUBLIC'),
('158', 'TAIWAN, PROVINCE OF CHINA'),
('762', 'TAJIKISTAN'),
('834', 'TANZANIA, UNITED REPUBLIC OF'),
('764', 'THAILAND'),
('626', 'TIMOR-LESTE'),
('768', 'TOGO'),
('772', 'TOKELAU'),
('776', 'TONGA'),
('780', 'TRINIDAD AND TOBAGO'),
('788', 'TUNISIA'),
('792', 'TURKEY'),
('795', 'TURKMENISTAN'),
('796', 'TURKS AND CAICOS ISLANDS'),
('798', 'TUVALU'),
('800', 'UGANDA'),
('804', 'UKRAINE'),
('784', 'UNITED ARAB EMIRATES'),
('826', 'UNITED KINGDOM OF GREAT BRITAIN AND NORTHERN IRELAND'),
('581', 'UNITED STATES MINOR OUTLYING ISLANDS'),
('840', 'UNITED STATES OF AMERICA'),
('858', 'URUGUAY'),
('860', 'UZBEKISTAN'),
('548', 'VANUATU'),
('862', 'VENEZUELA (BOLIVARIAN REPUBLIC OF)'),
('704', 'VIET NAM'),
('092', 'VIRGIN ISLANDS (BRITISH)'),
('876', 'WALLIS AND FUTUNA'),
('732', 'WESTERN SAHARA'),
('887', 'YEMEN'),
('894', 'ZAMBIA'),
('716', 'ZIMBABWE');

--
-- Triggers `country`
--
DELIMITER $$
CREATE TRIGGER `tr_insert_country` BEFORE INSERT ON `country` FOR EACH ROW set new.name = UPPER(new.name)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tr_update_country` BEFORE UPDATE ON `country` FOR EACH ROW set new.name = UPPER(new.name)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_available` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `product_id`, `quantity`, `product_available`) VALUES
(1, 1, 10, 1),
(2, 2, 10, 1),
(3, 3, 0, 0),
(5, 5, 0, 0),
(6, 6, 6, 1),
(7, 7, 6, 1),
(8, 8, 5, 1),
(9, 9, 5, 1),
(10, 10, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `order_date`) VALUES
(1, 2, '2020-09-11 12:21:03'),
(2, 3, '2020-09-11 12:21:03'),
(4, 4, '2020-09-11 12:21:03'),
(5, 5, '2020-09-11 12:21:03'),
(6, 6, '2020-09-11 12:21:03'),
(7, 7, '2020-09-11 12:21:03'),
(8, 8, '2020-09-11 12:21:03'),
(9, 9, '2020-09-11 12:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 1, 1, 5),
(2, 1, 2, 1),
(3, 2, 3, 2),
(5, 4, 5, 1),
(7, 6, 6, 1),
(8, 7, 7, 1),
(9, 8, 8, 1),
(10, 9, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_type_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double NOT NULL,
  `product_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_type_id`, `product_name`, `product_price`, `product_description`) VALUES
(1, 4, 'Wooden chair', 15, 'Simple wooden chair'),
(2, 3, 'Wooden table', 45, 'Modern wooden table'),
(3, 5, 'Big pillow', 10, 'Fluffy big pillow'),
(5, 1, 'Fairytale', 5, 'Fairytale for children'),
(6, 6, 'Table lamp', 5, 'Modern table lamp'),
(7, 7, 'Plastic cup', 5, 'Small plastic cup'),
(8, 8, 'Ceramic vase', 5, 'Small ceramic vase'),
(9, 9, 'Ceramic plate', 5, 'Standard ceramic plate'),
(10, 10, 'Artificial flower', 3, 'Artificial rose');

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(11) NOT NULL,
  `product_type_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `product_type_description`) VALUES
(1, 'book'),
(3, 'table'),
(4, 'chair'),
(5, 'pillow'),
(6, 'lamp'),
(7, 'cup'),
(8, 'vase'),
(9, 'plate'),
(10, 'Flowers');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `address_id`) VALUES
(1, 11),
(2, 12),
(3, 13);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `otp_password` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp_timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `username`, `first_name`, `last_name`, `password`, `address_id`, `role_id`, `otp_password`, `otp_timestamp`) VALUES
(2, 'pero13@gmail.com', 'Kale', 'Kale', 'Wyllt', '2F3uyA', 2, 2, '111111', '2020-09-11 12:21:02'),
(3, 'mlinggood2@nih.gov', 'Linggood', 'Kale', 'Linggood', 'McW7Fi1Z5S', 3, 2, '222222', '2020-09-11 12:21:02'),
(4, 'rwagstaff3@dagondesign.com', 'Rickie', 'Rickie', 'Wagstaff', 'Zo8TQC', 4, 2, '333333', '2020-09-11 12:21:02'),
(5, 'jwesgate4@intel.com', 'Jeffy', 'Jeffy', 'Wesgate', '6r6WHagvSmT', 5, 2, '444444', '2020-09-11 12:21:02'),
(6, 'dsylvester0@java.com', 'Delano', 'Delano', 'Sylvester', 'Male', 6, 2, '555555', '2020-09-11 12:21:02'),
(7, 'mgriffoen1@opensource.org', 'Mala', 'Mala', 'Griffoen', 'Female', 7, 2, '666666', '2020-09-11 12:21:02'),
(8, 'cjobe2@desdev.cn', 'Celine', 'Jobe', 'Jobe', 'Female', 8, 2, '777777', '2020-09-11 12:21:02'),
(9, 'kmccusaig3@simplemachines.org', 'Kristian', 'Kristan', 'McCuaig', 'Female', 9, 2, '888888', '2020-09-11 12:21:02'),
(10, 'dedelmann4@tiny.cc', 'Derward', 'Edelmann', 'Edelmann', 'Male', 10, 2, '999999', '2020-09-11 12:21:02'),
(11, 'ivandragosoldo@gmail.com', 'Ivan', 'Ivan', 'Soldo', 'Smvhasvbn', 10, 1, '123456', '2020-09-11 12:21:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_code` (`country_code`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`code`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id` (`product_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_type_id` (`product_type_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `address_id` (`address_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`country_code`) REFERENCES `country` (`code`);

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_type_id`) REFERENCES `product_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shop`
--
ALTER TABLE `shop`
  ADD CONSTRAINT `shop_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

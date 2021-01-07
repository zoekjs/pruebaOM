-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         5.7.24 - MySQL Community Server (GPL)
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para prueba_om
CREATE DATABASE IF NOT EXISTS `prueba_om` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `prueba_om`;

-- Volcando estructura para tabla prueba_om.category
CREATE TABLE IF NOT EXISTS `category` (
  `ID` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla prueba_om.category: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Volcando estructura para tabla prueba_om.country
CREATE TABLE IF NOT EXISTS `country` (
  `ID` int(255) NOT NULL,
  `shortname` char(3) NOT NULL,
  `longname` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla prueba_om.country: ~252 rows (aproximadamente)
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` (`ID`, `shortname`, `longname`, `created_at`, `updated_at`) VALUES
	(1, 'AF', 'AFGHANISTAN', NULL, NULL),
	(2, 'AL', 'ALBANIA', NULL, NULL),
	(3, 'DZ', 'ALGERIA', NULL, NULL),
	(4, 'AS', 'AMERICAN SAMOA', NULL, NULL),
	(5, 'AD', 'ANDORRA', NULL, NULL),
	(6, 'AO', 'ANGOLA', NULL, NULL),
	(7, 'AI', 'ANGUILLA', NULL, NULL),
	(8, 'AQ', 'ANTARCTICA', NULL, NULL),
	(9, 'AG', 'ANTIGUA AND BARBUDA', NULL, NULL),
	(10, 'AR', 'ARGENTINA', NULL, NULL),
	(11, 'AM', 'ARMENIA', NULL, NULL),
	(12, 'AW', 'ARUBA', NULL, NULL),
	(13, 'AU', 'AUSTRALIA', NULL, NULL),
	(14, 'AT', 'AUSTRIA', NULL, NULL),
	(15, 'AZ', 'AZERBAIJAN', NULL, NULL),
	(16, 'BS', 'BAHAMAS', NULL, NULL),
	(17, 'BH', 'BAHRAIN', NULL, NULL),
	(18, 'BD', 'BANGLADESH', NULL, NULL),
	(19, 'BB', 'BARBADOS', NULL, NULL),
	(20, 'BY', 'BELARUS', NULL, NULL),
	(21, 'BE', 'BELGIUM', NULL, NULL),
	(22, 'BZ', 'BELIZE', NULL, NULL),
	(23, 'BJ', 'BENIN', NULL, NULL),
	(24, 'BM', 'BERMUDA', NULL, NULL),
	(25, 'BT', 'BHUTAN', NULL, NULL),
	(26, 'BO', 'BOLIVIA', NULL, NULL),
	(27, 'BA', 'BOSNIA AND HERZEGOVINA', NULL, NULL),
	(28, 'BW', 'BOTSWANA', NULL, NULL),
	(29, 'BV', 'BOUVET ISLAND', NULL, NULL),
	(30, 'BR', 'BRAZIL', NULL, NULL),
	(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', NULL, NULL),
	(32, 'BN', 'BRUNEI DARUSSALAM', NULL, NULL),
	(33, 'BG', 'BULGARIA', NULL, NULL),
	(34, 'BF', 'BURKINA FASO', NULL, NULL),
	(35, 'BI', 'BURUNDI', NULL, NULL),
	(36, 'KH', 'CAMBODIA', NULL, NULL),
	(37, 'CM', 'CAMEROON', NULL, NULL),
	(38, 'CA', 'CANADA', NULL, NULL),
	(39, 'CV', 'CAPE VERDE', NULL, NULL),
	(40, 'KY', 'CAYMAN ISLANDS', NULL, NULL),
	(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', NULL, NULL),
	(42, 'TD', 'CHAD', NULL, NULL),
	(43, 'CL', 'CHILE', NULL, NULL),
	(44, 'CN', 'CHINA', NULL, NULL),
	(45, 'CX', 'CHRISTMAS ISLAND', NULL, NULL),
	(46, 'CC', 'COCOS (KEELING) ISLANDS', NULL, NULL),
	(47, 'CO', 'COLOMBIA', NULL, NULL),
	(48, 'KM', 'COMOROS', NULL, NULL),
	(49, 'CG', 'CONGO', NULL, NULL),
	(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', NULL, NULL),
	(51, 'CK', 'COOK ISLANDS', NULL, NULL),
	(52, 'CR', 'COSTA RICA', NULL, NULL),
	(53, 'CI', 'COTE D\'IVOIRE', NULL, NULL),
	(54, 'HR', 'CROATIA', NULL, NULL),
	(55, 'CU', 'CUBA', NULL, NULL),
	(56, 'CY', 'CYPRUS', NULL, NULL),
	(57, 'CZ', 'CZECH REPUBLIC', NULL, NULL),
	(58, 'DK', 'DENMARK', NULL, NULL),
	(59, 'DJ', 'DJIBOUTI', NULL, NULL),
	(60, 'DM', 'DOMINICA', NULL, NULL),
	(61, 'DO', 'DOMINICAN REPUBLIC', NULL, NULL),
	(62, 'EC', 'ECUADOR', NULL, NULL),
	(63, 'EG', 'EGYPT', NULL, NULL),
	(64, 'SV', 'EL SALVADOR', NULL, NULL),
	(65, 'GQ', 'EQUATORIAL GUINEA', NULL, NULL),
	(66, 'ER', 'ERITREA', NULL, NULL),
	(67, 'EE', 'ESTONIA', NULL, NULL),
	(68, 'ET', 'ETHIOPIA', NULL, NULL),
	(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', NULL, NULL),
	(70, 'FO', 'FAROE ISLANDS', NULL, NULL),
	(71, 'FJ', 'FIJI', NULL, NULL),
	(72, 'FI', 'FINLAND', NULL, NULL),
	(73, 'FR', 'FRANCE', NULL, NULL),
	(74, 'GF', 'FRENCH GUIANA', NULL, NULL),
	(75, 'PF', 'FRENCH POLYNESIA', NULL, NULL),
	(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', NULL, NULL),
	(77, 'GA', 'GABON', NULL, NULL),
	(78, 'GM', 'GAMBIA', NULL, NULL),
	(79, 'GE', 'GEORGIA', NULL, NULL),
	(80, 'DE', 'GERMANY', NULL, NULL),
	(81, 'GH', 'GHANA', NULL, NULL),
	(82, 'GI', 'GIBRALTAR', NULL, NULL),
	(83, 'GR', 'GREECE', NULL, NULL),
	(84, 'GL', 'GREENLAND', NULL, NULL),
	(85, 'GD', 'GRENADA', NULL, NULL),
	(86, 'GP', 'GUADELOUPE', NULL, NULL),
	(87, 'GU', 'GUAM', NULL, NULL),
	(88, 'GT', 'GUATEMALA', NULL, NULL),
	(89, 'GN', 'GUINEA', NULL, NULL),
	(90, 'GW', 'GUINEA-BISSAU', NULL, NULL),
	(91, 'GY', 'GUYANA', NULL, NULL),
	(92, 'HT', 'HAITI', NULL, NULL),
	(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', NULL, NULL),
	(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', NULL, NULL),
	(95, 'HN', 'HONDURAS', NULL, NULL),
	(96, 'HK', 'HONG KONG', NULL, NULL),
	(97, 'HU', 'HUNGARY', NULL, NULL),
	(98, 'IS', 'ICELAND', NULL, NULL),
	(99, 'IN', 'INDIA', NULL, NULL),
	(100, 'ID', 'INDONESIA', NULL, NULL),
	(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', NULL, NULL),
	(102, 'IQ', 'IRAQ', NULL, NULL),
	(103, 'IE', 'IRELAND', NULL, NULL),
	(104, 'IL', 'ISRAEL', NULL, NULL),
	(105, 'IT', 'ITALY', NULL, NULL),
	(106, 'JM', 'JAMAICA', NULL, NULL),
	(107, 'JP', 'JAPAN', NULL, NULL),
	(108, 'JO', 'JORDAN', NULL, NULL),
	(109, 'KZ', 'KAZAKHSTAN', NULL, NULL),
	(110, 'KE', 'KENYA', NULL, NULL),
	(111, 'KI', 'KIRIBATI', NULL, NULL),
	(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', NULL, NULL),
	(113, 'KR', 'KOREA, REPUBLIC OF', NULL, NULL),
	(114, 'KW', 'KUWAIT', NULL, NULL),
	(115, 'KG', 'KYRGYZSTAN', NULL, NULL),
	(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', NULL, NULL),
	(117, 'LV', 'LATVIA', NULL, NULL),
	(118, 'LB', 'LEBANON', NULL, NULL),
	(119, 'LS', 'LESOTHO', NULL, NULL),
	(120, 'LR', 'LIBERIA', NULL, NULL),
	(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', NULL, NULL),
	(122, 'LI', 'LIECHTENSTEIN', NULL, NULL),
	(123, 'LT', 'LITHUANIA', NULL, NULL),
	(124, 'LU', 'LUXEMBOURG', NULL, NULL),
	(125, 'MO', 'MACAO', NULL, NULL),
	(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', NULL, NULL),
	(127, 'MG', 'MADAGASCAR', NULL, NULL),
	(128, 'MW', 'MALAWI', NULL, NULL),
	(129, 'MY', 'MALAYSIA', NULL, NULL),
	(130, 'MV', 'MALDIVES', NULL, NULL),
	(131, 'ML', 'MALI', NULL, NULL),
	(132, 'MT', 'MALTA', NULL, NULL),
	(133, 'MH', 'MARSHALL ISLANDS', NULL, NULL),
	(134, 'MQ', 'MARTINIQUE', NULL, NULL),
	(135, 'MR', 'MAURITANIA', NULL, NULL),
	(136, 'MU', 'MAURITIUS', NULL, NULL),
	(137, 'YT', 'MAYOTTE', NULL, NULL),
	(138, 'MX', 'MEXICO', NULL, NULL),
	(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', NULL, NULL),
	(140, 'MD', 'MOLDOVA, REPUBLIC OF', NULL, NULL),
	(141, 'MC', 'MONACO', NULL, NULL),
	(142, 'MN', 'MONGOLIA', NULL, NULL),
	(143, 'MS', 'MONTSERRAT', NULL, NULL),
	(144, 'MA', 'MOROCCO', NULL, NULL),
	(145, 'MZ', 'MOZAMBIQUE', NULL, NULL),
	(146, 'MM', 'MYANMAR', NULL, NULL),
	(147, 'NA', 'NAMIBIA', NULL, NULL),
	(148, 'NR', 'NAURU', NULL, NULL),
	(149, 'NP', 'NEPAL', NULL, NULL),
	(150, 'NL', 'NETHERLANDS', NULL, NULL),
	(151, 'AN', 'NETHERLANDS ANTILLES', NULL, NULL),
	(152, 'NC', 'NEW CALEDONIA', NULL, NULL),
	(153, 'NZ', 'NEW ZEALAND', NULL, NULL),
	(154, 'NI', 'NICARAGUA', NULL, NULL),
	(155, 'NE', 'NIGER', NULL, NULL),
	(156, 'NG', 'NIGERIA', NULL, NULL),
	(157, 'NU', 'NIUE', NULL, NULL),
	(158, 'NF', 'NORFOLK ISLAND', NULL, NULL),
	(159, 'MP', 'NORTHERN MARIANA ISLANDS', NULL, NULL),
	(160, 'NO', 'NORWAY', NULL, NULL),
	(161, 'OM', 'OMAN', NULL, NULL),
	(162, 'PK', 'PAKISTAN', NULL, NULL),
	(163, 'PW', 'PALAU', NULL, NULL),
	(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', NULL, NULL),
	(165, 'PA', 'PANAMA', NULL, NULL),
	(166, 'PG', 'PAPUA NEW GUINEA', NULL, NULL),
	(167, 'PY', 'PARAGUAY', NULL, NULL),
	(168, 'PE', 'PERU', NULL, NULL),
	(169, 'PH', 'PHILIPPINES', NULL, NULL),
	(170, 'PN', 'PITCAIRN', NULL, NULL),
	(171, 'PL', 'POLAND', NULL, NULL),
	(172, 'PT', 'PORTUGAL', NULL, NULL),
	(173, 'PR', 'PUERTO RICO', NULL, NULL),
	(174, 'QA', 'QATAR', NULL, NULL),
	(175, 'RE', 'REUNION', NULL, NULL),
	(176, 'RO', 'ROMANIA', NULL, NULL),
	(177, 'RU', 'RUSSIAN FEDERATION', NULL, NULL),
	(178, 'RW', 'RWANDA', NULL, NULL),
	(179, 'SH', 'SAINT HELENA', NULL, NULL),
	(180, 'KN', 'SAINT KITTS AND NEVIS', NULL, NULL),
	(181, 'LC', 'SAINT LUCIA', NULL, NULL),
	(182, 'PM', 'SAINT PIERRE AND MIQUELON', NULL, NULL),
	(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', NULL, NULL),
	(184, 'WS', 'SAMOA', NULL, NULL),
	(185, 'SM', 'SAN MARINO', NULL, NULL),
	(186, 'ST', 'SAO TOME AND PRINCIPE', NULL, NULL),
	(187, 'SA', 'SAUDI ARABIA', NULL, NULL),
	(188, 'SN', 'SENEGAL', NULL, NULL),
	(190, 'SC', 'SEYCHELLES', NULL, NULL),
	(191, 'SL', 'SIERRA LEONE', NULL, NULL),
	(192, 'SG', 'SINGAPORE', NULL, NULL),
	(193, 'SK', 'SLOVAKIA', NULL, NULL),
	(194, 'SI', 'SLOVENIA', NULL, NULL),
	(195, 'SB', 'SOLOMON ISLANDS', NULL, NULL),
	(196, 'SO', 'SOMALIA', NULL, NULL),
	(197, 'ZA', 'SOUTH AFRICA', NULL, NULL),
	(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', NULL, NULL),
	(199, 'ES', 'SPAIN', NULL, NULL),
	(200, 'LK', 'SRI LANKA', NULL, NULL),
	(201, 'SD', 'SUDAN', NULL, NULL),
	(202, 'SR', 'SURINAME', NULL, NULL),
	(203, 'SJ', 'SVALBARD AND JAN MAYEN', NULL, NULL),
	(204, 'SZ', 'SWAZILAND', NULL, NULL),
	(205, 'SE', 'SWEDEN', NULL, NULL),
	(206, 'CH', 'SWITZERLAND', NULL, NULL),
	(207, 'SY', 'SYRIAN ARAB REPUBLIC', NULL, NULL),
	(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', NULL, NULL),
	(209, 'TJ', 'TAJIKISTAN', NULL, NULL),
	(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', NULL, NULL),
	(211, 'TH', 'THAILAND', NULL, NULL),
	(212, 'TL', 'TIMOR-LESTE', NULL, NULL),
	(213, 'TG', 'TOGO', NULL, NULL),
	(214, 'TK', 'TOKELAU', NULL, NULL),
	(215, 'TO', 'TONGA', NULL, NULL),
	(216, 'TT', 'TRINIDAD AND TOBAGO', NULL, NULL),
	(217, 'TN', 'TUNISIA', NULL, NULL),
	(218, 'TR', 'TURKEY', NULL, NULL),
	(219, 'TM', 'TURKMENISTAN', NULL, NULL),
	(220, 'TC', 'TURKS AND CAICOS ISLANDS', NULL, NULL),
	(221, 'TV', 'TUVALU', NULL, NULL),
	(222, 'UG', 'UGANDA', NULL, NULL),
	(223, 'UA', 'UKRAINE', NULL, NULL),
	(224, 'AE', 'UNITED ARAB EMIRATES', NULL, NULL),
	(225, 'GB', 'UNITED KINGDOM', NULL, NULL),
	(226, 'US', 'UNITED STATES', NULL, NULL),
	(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', NULL, NULL),
	(228, 'UY', 'URUGUAY', NULL, NULL),
	(229, 'UZ', 'UZBEKISTAN', NULL, NULL),
	(230, 'VU', 'VANUATU', NULL, NULL),
	(231, 'VE', 'VENEZUELA', NULL, NULL),
	(232, 'VN', 'VIET NAM', NULL, NULL),
	(233, 'VG', 'VIRGIN ISLANDS', NULL, NULL),
	(234, 'VI', 'VIRGIN ISLANDS', NULL, NULL),
	(235, 'WF', 'WALLIS AND FUTUNA', NULL, NULL),
	(236, 'EH', 'WESTERN SAHARA', NULL, NULL),
	(237, 'YE', 'YEMEN', NULL, NULL),
	(238, 'ZM', 'ZAMBIA', NULL, NULL),
	(239, 'ZW', 'ZIMBABWE', NULL, NULL),
	(240, 'RS', 'SERBIA', NULL, NULL),
	(241, 'AP', 'ASIA PACIFIC REGION', NULL, NULL),
	(242, 'ME', 'MONTENEGRO', NULL, NULL),
	(243, 'AX', 'ALAND ISLANDS', NULL, NULL),
	(244, 'BQ', 'BONAIRE, SINT EUSTATIUS AND SABA', NULL, NULL),
	(245, 'CW', 'CURACAO', NULL, NULL),
	(246, 'GG', 'GUERNSEY', NULL, NULL),
	(247, 'IM', 'ISLE OF MAN', NULL, NULL),
	(248, 'JE', 'JERSEY', NULL, NULL),
	(249, 'XK', 'KOSOVO', NULL, NULL),
	(250, 'BL', 'SAINT BARTHELEMY', NULL, NULL),
	(251, 'MF', 'SAINT MARTIN', NULL, NULL),
	(252, 'SX', 'SINT MAARTEN', NULL, NULL),
	(253, 'SS', 'SOUTH SUDAN', NULL, NULL);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;

-- Volcando estructura para tabla prueba_om.currency
CREATE TABLE IF NOT EXISTS `currency` (
  `ID` int(255) NOT NULL AUTO_INCREMENT,
  `shortname` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla prueba_om.currency: ~132 rows (aproximadamente)
/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` (`ID`, `shortname`, `longname`, `symbol`, `created_at`, `updated_at`) VALUES
	(133, 'ALL', 'Leke', 'Lek', NULL, NULL),
	(134, 'USD', 'Dollars', '$', NULL, NULL),
	(135, 'AFN', 'Afghanis', '؋', NULL, NULL),
	(136, 'ARS', 'Pesos', '$', NULL, NULL),
	(137, 'AWG', 'Guilders', 'ƒ', NULL, NULL),
	(138, 'AUD', 'Dollars', '$', NULL, NULL),
	(139, 'AZN', 'New Manats', 'ман', NULL, NULL),
	(140, 'BSD', 'Dollars', '$', NULL, NULL),
	(141, 'BBD', 'Dollars', '$', NULL, NULL),
	(142, 'BYR', 'Rubles', 'p.', NULL, NULL),
	(143, 'EUR', 'Euro', '€', NULL, NULL),
	(144, 'BZD', 'Dollars', 'BZ$', NULL, NULL),
	(145, 'BMD', 'Dollars', '$', NULL, NULL),
	(146, 'BOB', 'Bolivianos', '$b', NULL, NULL),
	(147, 'BAM', 'Convertible Marka', 'KM', NULL, NULL),
	(148, 'BWP', 'Pula', 'P', NULL, NULL),
	(149, 'BGN', 'Leva', 'лв', NULL, NULL),
	(150, 'BRL', 'Reais', 'R$', NULL, NULL),
	(151, 'GBP', 'Pounds', '£', NULL, NULL),
	(152, 'BND', 'Dollars', '$', NULL, NULL),
	(153, 'KHR', 'Riels', '៛', NULL, NULL),
	(154, 'CAD', 'Dollars', '$', NULL, NULL),
	(155, 'KYD', 'Dollars', '$', NULL, NULL),
	(156, 'CLP', 'Pesos', '$', NULL, NULL),
	(157, 'CNY', 'Yuan Renminbi', '¥', NULL, NULL),
	(158, 'COP', 'Pesos', '$', NULL, NULL),
	(159, 'CRC', 'Colón', '₡', NULL, NULL),
	(160, 'HRK', 'Kuna', 'kn', NULL, NULL),
	(161, 'CUP', 'Pesos', '₱', NULL, NULL),
	(162, 'EUR', 'Euro', '€', NULL, NULL),
	(163, 'CZK', 'Koruny', 'Kč', NULL, NULL),
	(164, 'DKK', 'Kroner', 'kr', NULL, NULL),
	(165, 'DOP', 'Pesos', 'RD$', NULL, NULL),
	(166, 'XCD', 'Dollars', '$', NULL, NULL),
	(167, 'EGP', 'Pounds', '£', NULL, NULL),
	(168, 'SVC', 'Colones', '$', NULL, NULL),
	(169, 'GBP', 'Pounds', '£', NULL, NULL),
	(170, 'EUR', 'Euro', '€', NULL, NULL),
	(171, 'FKP', 'Pounds', '£', NULL, NULL),
	(172, 'FJD', 'Dollars', '$', NULL, NULL),
	(173, 'EUR', 'Euro', '€', NULL, NULL),
	(174, 'GHC', 'Cedis', '¢', NULL, NULL),
	(175, 'GIP', 'Pounds', '£', NULL, NULL),
	(176, 'EUR', 'Euro', '€', NULL, NULL),
	(177, 'GTQ', 'Quetzales', 'Q', NULL, NULL),
	(178, 'GGP', 'Pounds', '£', NULL, NULL),
	(179, 'GYD', 'Dollars', '$', NULL, NULL),
	(180, 'EUR', 'Euro', '€', NULL, NULL),
	(181, 'HNL', 'Lempiras', 'L', NULL, NULL),
	(182, 'HKD', 'Dollars', '$', NULL, NULL),
	(183, 'HUF', 'Forint', 'Ft', NULL, NULL),
	(184, 'ISK', 'Kronur', 'kr', NULL, NULL),
	(185, 'INR', 'Rupees', 'Rp', NULL, NULL),
	(186, 'IDR', 'Rupiahs', 'Rp', NULL, NULL),
	(187, 'IRR', 'Rials', '﷼', NULL, NULL),
	(188, 'EUR', 'Euro', '€', NULL, NULL),
	(189, 'IMP', 'Pounds', '£', NULL, NULL),
	(190, 'ILS', 'New Shekels', '₪', NULL, NULL),
	(191, 'EUR', 'Euro', '€', NULL, NULL),
	(192, 'JMD', 'Dollars', 'J$', NULL, NULL),
	(193, 'JPY', 'Yen', '¥', NULL, NULL),
	(194, 'JEP', 'Pounds', '£', NULL, NULL),
	(195, 'KZT', 'Tenge', 'лв', NULL, NULL),
	(196, 'KPW', 'Won', '₩', NULL, NULL),
	(197, 'KRW', 'Won', '₩', NULL, NULL),
	(198, 'KGS', 'Soms', 'лв', NULL, NULL),
	(199, 'LAK', 'Kips', '₭', NULL, NULL),
	(200, 'LVL', 'Lati', 'Ls', NULL, NULL),
	(201, 'LBP', 'Pounds', '£', NULL, NULL),
	(202, 'LRD', 'Dollars', '$', NULL, NULL),
	(203, 'CHF', 'Switzerland Francs', 'CHF', NULL, NULL),
	(204, 'LTL', 'Litai', 'Lt', NULL, NULL),
	(205, 'EUR', 'Euro', '€', NULL, NULL),
	(206, 'MKD', 'Denars', 'ден', NULL, NULL),
	(207, 'MYR', 'Ringgits', 'RM', NULL, NULL),
	(208, 'EUR', 'Euro', '€', NULL, NULL),
	(209, 'MUR', 'Rupees', '₨', NULL, NULL),
	(210, 'MXN', 'Pesos', '$', NULL, NULL),
	(211, 'MNT', 'Tugriks', '₮', NULL, NULL),
	(212, 'MZN', 'Meticais', 'MT', NULL, NULL),
	(213, 'NAD', 'Dollars', '$', NULL, NULL),
	(214, 'NPR', 'Rupees', '₨', NULL, NULL),
	(215, 'ANG', 'Guilders', 'ƒ', NULL, NULL),
	(216, 'EUR', 'Euro', '€', NULL, NULL),
	(217, 'NZD', 'Dollars', '$', NULL, NULL),
	(218, 'NIO', 'Cordobas', 'C$', NULL, NULL),
	(219, 'NGN', 'Nairas', '₦', NULL, NULL),
	(220, 'KPW', 'Won', '₩', NULL, NULL),
	(221, 'NOK', 'Krone', 'kr', NULL, NULL),
	(222, 'OMR', 'Rials', '﷼', NULL, NULL),
	(223, 'PKR', 'Rupees', '₨', NULL, NULL),
	(224, 'PAB', 'Balboa', 'B/.', NULL, NULL),
	(225, 'PYG', 'Guarani', 'Gs', NULL, NULL),
	(226, 'PEN', 'Nuevos Soles', 'S/.', NULL, NULL),
	(227, 'PHP', 'Pesos', 'Php', NULL, NULL),
	(228, 'PLN', 'Zlotych', 'zł', NULL, NULL),
	(229, 'QAR', 'Rials', '﷼', NULL, NULL),
	(230, 'RON', 'New Lei', 'lei', NULL, NULL),
	(231, 'RUB', 'Rubles', 'руб', NULL, NULL),
	(232, 'SHP', 'Pounds', '£', NULL, NULL),
	(233, 'SAR', 'Riyals', '﷼', NULL, NULL),
	(234, 'RSD', 'Dinars', 'Дин.', NULL, NULL),
	(235, 'SCR', 'Rupees', '₨', NULL, NULL),
	(236, 'SGD', 'Dollars', '$', NULL, NULL),
	(237, 'EUR', 'Euro', '€', NULL, NULL),
	(238, 'SBD', 'Dollars', '$', NULL, NULL),
	(239, 'SOS', 'Shillings', 'S', NULL, NULL),
	(240, 'ZAR', 'Rand', 'R', NULL, NULL),
	(241, 'KRW', 'Won', '₩', NULL, NULL),
	(242, 'EUR', 'Euro', '€', NULL, NULL),
	(243, 'LKR', 'Rupees', '₨', NULL, NULL),
	(244, 'SEK', 'Kronor', 'kr', NULL, NULL),
	(245, 'CHF', 'Francs', 'CHF', NULL, NULL),
	(246, 'SRD', 'Dollars', '$', NULL, NULL),
	(247, 'SYP', 'Pounds', '£', NULL, NULL),
	(248, 'TWD', 'New Dollars', 'NT$', NULL, NULL),
	(249, 'THB', 'Baht', '฿', NULL, NULL),
	(250, 'TTD', 'Dollars', 'TT$', NULL, NULL),
	(251, 'TRY', 'Lira', 'TL', NULL, NULL),
	(252, 'TRL', 'Liras', '£', NULL, NULL),
	(253, 'TVD', 'Dollars', '$', NULL, NULL),
	(254, 'UAH', 'Hryvnia', '₴', NULL, NULL),
	(255, 'GBP', 'Pounds', '£', NULL, NULL),
	(256, 'USD', 'Dollars', '$', NULL, NULL),
	(257, 'UYU', 'Pesos', '$U', NULL, NULL),
	(258, 'UZS', 'Sums', 'лв', NULL, NULL),
	(259, 'EUR', 'Euro', '€', NULL, NULL),
	(260, 'VEF', 'Bolivares Fuertes', 'Bs', NULL, NULL),
	(261, 'VND', 'Dong', '₫', NULL, NULL),
	(262, 'YER', 'Rials', '﷼', NULL, NULL),
	(263, 'ZWD', 'Zimbabwe Dollars', 'Z$', NULL, NULL),
	(264, 'INR', 'Rupees', '₹', NULL, NULL);
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;

-- Volcando estructura para tabla prueba_om.item
CREATE TABLE IF NOT EXISTS `item` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `price` double NOT NULL,
  `currency_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_item_category` (`category_id`),
  KEY `fk_currency_id` (`currency_id`),
  KEY `fk_country_id` (`country_id`),
  CONSTRAINT `fk_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`ID`),
  CONSTRAINT `fk_currency_id` FOREIGN KEY (`currency_id`) REFERENCES `currency` (`ID`),
  CONSTRAINT `fk_item_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla prueba_om.item: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
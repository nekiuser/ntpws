-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2023 at 08:38 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ntpwsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iso` varchar(2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nicename` varchar(255) NOT NULL,
  `iso3` varchar(3) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `iso`, `name`, `nicename`, `iso3`, `created_at`, `updated_at`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', NULL, NULL),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', NULL, NULL),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', NULL, NULL),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', NULL, NULL),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', NULL, NULL),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', NULL, NULL),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', NULL, NULL),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, NULL),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', NULL, NULL),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', NULL, NULL),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', NULL, NULL),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', NULL, NULL),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', NULL, NULL),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', NULL, NULL),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', NULL, NULL),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', NULL, NULL),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', NULL, NULL),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', NULL, NULL),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', NULL, NULL),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', NULL, NULL),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', NULL, NULL),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', NULL, NULL),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', NULL, NULL),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', NULL, NULL),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', NULL, NULL),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', NULL, NULL),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', NULL, NULL),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', NULL, NULL),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, NULL),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', NULL, NULL),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, NULL),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', NULL, NULL),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', NULL, NULL),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', NULL, NULL),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', NULL, NULL),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', NULL, NULL),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', NULL, NULL),
(38, 'CA', 'CANADA', 'Canada', 'CAN', NULL, NULL),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', NULL, NULL),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', NULL, NULL),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', NULL, NULL),
(42, 'TD', 'CHAD', 'Chad', 'TCD', NULL, NULL),
(43, 'CL', 'CHILE', 'Chile', 'CHL', NULL, NULL),
(44, 'CN', 'CHINA', 'China', 'CHN', NULL, NULL),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, NULL),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, NULL),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', NULL, NULL),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', NULL, NULL),
(49, 'CG', 'CONGO', 'Congo', 'COG', NULL, NULL),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', NULL, NULL),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', NULL, NULL),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', NULL, NULL),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', NULL, NULL),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', NULL, NULL),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', NULL, NULL),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', NULL, NULL),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', NULL, NULL),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', NULL, NULL),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', NULL, NULL),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', NULL, NULL),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', NULL, NULL),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', NULL, NULL),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', NULL, NULL),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', NULL, NULL),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', NULL, NULL),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', NULL, NULL),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', NULL, NULL),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', NULL, NULL),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', NULL, NULL),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', NULL, NULL),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', NULL, NULL),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', NULL, NULL),
(73, 'FR', 'FRANCE', 'France', 'FRA', NULL, NULL),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', NULL, NULL),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', NULL, NULL),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, NULL),
(77, 'GA', 'GABON', 'Gabon', 'GAB', NULL, NULL),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', NULL, NULL),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', NULL, NULL),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', NULL, NULL),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', NULL, NULL),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', NULL, NULL),
(83, 'GR', 'GREECE', 'Greece', 'GRC', NULL, NULL),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', NULL, NULL),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', NULL, NULL),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', NULL, NULL),
(87, 'GU', 'GUAM', 'Guam', 'GUM', NULL, NULL),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', NULL, NULL),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', NULL, NULL),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', NULL, NULL),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', NULL, NULL),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', NULL, NULL),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, NULL),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', NULL, NULL),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', NULL, NULL),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', NULL, NULL),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', NULL, NULL),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', NULL, NULL),
(99, 'IN', 'INDIA', 'India', 'IND', NULL, NULL),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', NULL, NULL),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', NULL, NULL),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', NULL, NULL),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', NULL, NULL),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', NULL, NULL),
(105, 'IT', 'ITALY', 'Italy', 'ITA', NULL, NULL),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', NULL, NULL),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', NULL, NULL),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', NULL, NULL),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', NULL, NULL),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', NULL, NULL),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', NULL, NULL),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', NULL, NULL),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', NULL, NULL),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', NULL, NULL),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', NULL, NULL),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', NULL, NULL),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', NULL, NULL),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', NULL, NULL),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', NULL, NULL),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', NULL, NULL),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', NULL, NULL),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', NULL, NULL),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', NULL, NULL),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', NULL, NULL),
(125, 'MO', 'MACAO', 'Macao', 'MAC', NULL, NULL),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', NULL, NULL),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', NULL, NULL),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', NULL, NULL),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', NULL, NULL),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', NULL, NULL),
(131, 'ML', 'MALI', 'Mali', 'MLI', NULL, NULL),
(132, 'MT', 'MALTA', 'Malta', 'MLT', NULL, NULL),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', NULL, NULL),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', NULL, NULL),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', NULL, NULL),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', NULL, NULL),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, NULL),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', NULL, NULL),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', NULL, NULL),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', NULL, NULL),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', NULL, NULL),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', NULL, NULL),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', NULL, NULL),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', NULL, NULL),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', NULL, NULL),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', NULL, NULL),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', NULL, NULL),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', NULL, NULL),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', NULL, NULL),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', NULL, NULL),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', NULL, NULL),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', NULL, NULL),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', NULL, NULL),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', NULL, NULL),
(155, 'NE', 'NIGER', 'Niger', 'NER', NULL, NULL),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', NULL, NULL),
(157, 'NU', 'NIUE', 'Niue', 'NIU', NULL, NULL),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', NULL, NULL),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', NULL, NULL),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', NULL, NULL),
(161, 'OM', 'OMAN', 'Oman', 'OMN', NULL, NULL),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', NULL, NULL),
(163, 'PW', 'PALAU', 'Palau', 'PLW', NULL, NULL),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, NULL),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', NULL, NULL),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', NULL, NULL),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', NULL, NULL),
(168, 'PE', 'PERU', 'Peru', 'PER', NULL, NULL),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', NULL, NULL),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', NULL, NULL),
(171, 'PL', 'POLAND', 'Poland', 'POL', NULL, NULL),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', NULL, NULL),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', NULL, NULL),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', NULL, NULL),
(175, 'RE', 'REUNION', 'Reunion', 'REU', NULL, NULL),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', NULL, NULL),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', NULL, NULL),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', NULL, NULL),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', NULL, NULL),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', NULL, NULL),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', NULL, NULL),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', NULL, NULL),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', NULL, NULL),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', NULL, NULL),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', NULL, NULL),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', NULL, NULL),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', NULL, NULL),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', NULL, NULL),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, NULL),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', NULL, NULL),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', NULL, NULL),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', NULL, NULL),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', NULL, NULL),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', NULL, NULL),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', NULL, NULL),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', NULL, NULL),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', NULL, NULL),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, NULL),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', NULL, NULL),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', NULL, NULL),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', NULL, NULL),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', NULL, NULL),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', NULL, NULL),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', NULL, NULL),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', NULL, NULL),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', NULL, NULL),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', NULL, NULL),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', NULL, NULL),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', NULL, NULL),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', NULL, NULL),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', NULL, NULL),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, NULL),
(213, 'TG', 'TOGO', 'Togo', 'TGO', NULL, NULL),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', NULL, NULL),
(215, 'TO', 'TONGA', 'Tonga', 'TON', NULL, NULL),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', NULL, NULL),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', NULL, NULL),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', NULL, NULL),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', NULL, NULL),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', NULL, NULL),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', NULL, NULL),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', NULL, NULL),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', NULL, NULL),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', NULL, NULL),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', NULL, NULL),
(226, 'US', 'UNITED STATES', 'United States', 'USA', NULL, NULL),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, NULL),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', NULL, NULL),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', NULL, NULL),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', NULL, NULL),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', NULL, NULL),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', NULL, NULL),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', NULL, NULL),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', NULL, NULL),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', NULL, NULL),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', NULL, NULL),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', NULL, NULL),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', NULL, NULL),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `picture` varchar(255) NOT NULL,
  `archive` enum('Y','N') NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `date`, `picture`, `archive`) VALUES
(1, 'Principle of operation of self-watering vases', 'Hidrosense H2O system is designed to handle plants in a way that makes plant care easier for the end user.\r\n			The water level indicator shows the current state in the tank. The main transfer of liquid to the roots is done via clay balls, which absorb water up to 80% of their volume and protect the roots from rotting, because they are also breathable. Ultimately, this technology makes it possible to avoid drying out the plants as well as avoiding excessive watering.\r\nWatering is done through the liquid level indicator. You can already mix the liquid fertilizer. We recommend liquid Florabella. Pour the liquid until the float shows the max level. Close the lid.\r\nHidrosense H2O system is designed to handle plants in a way that makes plant care easier for the end user.The water level indicator shows the current state in the tank. The main transfer of liquid to the roots is done via clay balls, which absorb water up to 80% of their volume and protect the roots from rotting, because they are also breathable. Ultimately, this technology makes it possible to avoid drying out the plants as well as avoiding excessive watering.Watering is done through the liquid level indicator. You can already mix the liquid fertilizer. We recommend liquid Florabella. Pour the liquid until the float shows the max level. Close the lid.Adding clay balls. Add at least a liter of clay balls. We recommend Laterlite clay balls. They absorb liquid up to 80% of their volume. They also make the root airy and allow the root veins to expand into themselves. With osmosis, they extract the liquid from the water tank and distribute it to the roots of the plant.Now add the substrate or soil for the flowers. We recommend Florabella soil.Plant flowers in a planter. Make sure that the soil level is not at the very top of the pot, so that the water does not spill out.All planters have a screw-shaped cap at the bottom of the planter. You can tighten the plug with a coin if the planter is used in the house on the furniture, then it must be thoroughly plugged.', '2023-08-29 23:45:13', '1-40.jpg', 'N'),
(7, 'How and when to water your plants during summer', 'That is the eternal question and what worries us most when the heat arrives. Today we bring you some very easy tricks for watering plants in summer and on vacation.Keeping plants cool.The great solution for watering in summer (and all year round) are irrigation systems, but if not all our plants can have them, here are some tips that are sure to help you keep them fresh, green and beautiful during the hot months.Time to water!.Calm down, it is not necessary to set an alarm, but it is important to choose your watering time in summer. Avoid strong sunlight hours, because basically half of the water will evaporate.The best time is in the evening or early morning. Morning is the best time for the plant, because this is when the osmotic pressure is produced that makes the water circulate through stems, leaves and flowers, but part of this water is lost with the heat during the day. At night the soil has more time to absorb the water and will hold moisture longer.As both have advantages and disadvantages you can choose one of the two according to your schedule; this way you make sure you dont forget and spend a few minutes to enjoy your plants, either before leaving the house in the morning or when you return home in the evening.Watch out for the leaves!It is important not to leave the leaves with water, even if it is great to clean them from time to time to promote photosynthesis, especially in indoor plants, we do not want to leave drops or wet leaves.During the night, it can favor the appearance of mildew and if you water in the morning the sun can make a magnifying glass effect and burn them.To water your plants without wetting the leaves, plates will be your best allies. You can put the water directly in the dish and the plant will absorb it as it needs it. Remember that your CitySens modular shelves work great as plant saucers thanks to their one-centimeter raised rim.Water thoroughly!Almost more than increasing the frequency of watering, it is important to water better. We must make sure that the water soaks all the soil, so that all the roots receive their dose of water, which allows the plant to grow uniformly and absorb all the nutrients from the soil.Watch out! It is important to keep the humidity so that they do not rot in the heat, but remember that it is easier to recover a dry plant than a drowned one.In addition, the roots need a little dryness for the plant to grow. As in summer we need to keep them a little more humid you will see that they grow a little more slowly, for that reason the nutrients are going to become your great friends.Types of automatic irrigation!Automatic watering system, a water pump connected to a timer, like our vertical planter. You can find it with a digital or wifi timer, which is controlled with your mobile, tablet or Alexa.\r\n			', '2023-08-30 00:17:01', '7-89.jpg', 'N'),
(8, 'Setting Up an Automatic The drippers System for Outdoor Plants &amp; Hanging Baskets.', 'Setting up an automatic The drippers system for outdoor plants and hanging baskets using drip irrigation is easier than you might think. Once you have one, you will wonder how you ever managed without it!Setting up the automatic watering system for outdoor plants &amp; hanging baskets is as easy as running one long piece of the included black supply tubing to extend along the back of your pots, and then attaching off-shoots to each pot.One end of the tubing should attach to the timer/ faucet, and the other end should reach as far as the last pot you want to water. I was able to use a pair of cutting pliers to easily snip through the plastic tubing to get the lengths I needed.After you have the length of the tubing stretched out to reach each pot, it s time to attach connectors to run to each individual pot. All of the connectors needed (plus extras!) are included with the kit.Simply snip the supply line behind each pot, and add a tee connector that will attach a separate line running to each pot.The kit even includes mounting clamps and nails, which are likely meant for attaching the tubing to your covered porch for hanging plants, but I used them to attach the tubing to my whiskey barrels since they are so big and high off the ground.If you were using this system for smaller potted plants, you wouldnt need the mounting clamps.The instructions say that if you have a pot “smaller than 1 foot wide”, one dripper is recommended per pot, and pots “larger than 1 foot wide” should use two drippers.Since my barrels are large, I used a second tee bracket to add two drippers to each pot. I included fairly long pieces of tubing (about 12 inches each) for each dripper so that I can have the flexibility of moving the drippers around in the pot exactly where I want them.After all my tubing and drip heads were in place, I added my herbs and then used the included support stakes to situate each drip head near the base of the plants.All that was left then was to set the timer. The included timer allows you to set both the frequency of watering, as well as the run time. It even includes a bypass dial if rain is expected, and you want to skip watering for 24-72 hours.The drippers put out 1/2 gallon of water per hour, so I currently have mine set to water 3 times per day (every 8 hours) for 10 minutes at a time.', '2023-08-30 18:30:19', '8-59.jpg', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `role` int(11) NOT NULL DEFAULT 3,
  `archive` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `username`, `password`, `country`, `city`, `address`, `dob`, `date`, `role`, `archive`) VALUES
(9, 'Milan', 'Vidoviti', 'milanvidoviti@test.com', 'Admin', '$2y$12$nnmcVs8L82Vqm4F8ckhv4eywg9zxN5.jdoEHVbeYa1ca2qwSgQrkG', 'HR', 'Veliko polje', 'Livada 1', '2005-09-10', '2023-08-28 18:00:16', 1, 'N'),
(10, 'Josip', 'Jelacic', 'jjelacic@test.com', 'Editor', '$2y$12$RHEpuaUPVSBMcXWJE1DHqOR.ADG/as8fZyPR501ztTIBNAGp6w7yO', 'BD', 'Zagreb', 'Trg 1', '2007-02-15', '2023-08-28 18:02:20', 2, 'N'),
(12, 'Ante', 'Starcevic', 'astarcevic@test.com', 'astarcevic', '$2y$12$qp9rPRT1OjW2k2Rnl79yWel1MXxFgPxoN8IM1i95QbtBJzjoLvr.W', 'DE', 'Zagreb', 'Centar 13', '2004-03-15', '2023-08-30 18:26:34', 3, 'N');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

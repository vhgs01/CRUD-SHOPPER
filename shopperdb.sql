-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 22-Ago-2016 às 17:06
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopperdb`
--

CREATE DATABASE shopperdb;
USE shopperdb;
-- --------------------------------------------------------

--
-- Estrutura da tabela `cartao_cliente`
--

CREATE TABLE `cartao_cliente` (
  `idCartao` smallint(5) NOT NULL,
  `numeroCartao` int(19) NOT NULL,
  `cvv` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cartao_cliente`
--

INSERT INTO `cartao_cliente` (`idCartao`, `numeroCartao`, `cvv`) VALUES
(1, 9769, 872),
(2, 8607, 466),
(3, 9033, 615),
(4, 7496, 951),
(5, 9872, 884),
(6, 5391, 553),
(7, 5081, 134),
(8, 3073, 458),
(9, 7410, 448),
(10, 4990, 761),
(11, 2184, 926),
(12, 9327, 125),
(13, 4784, 570),
(14, 6945, 865),
(15, 5925, 975),
(16, 2762, 174),
(17, 4168, 250),
(18, 4859, 920),
(19, 5941, 430),
(20, 1356, 645),
(21, 6845, 953),
(22, 9215, 509),
(23, 5451, 394),
(24, 1347, 771),
(25, 7505, 599),
(26, 3397, 189),
(27, 9747, 688),
(28, 6915, 625),
(29, 2617, 128),
(30, 1562, 908),
(31, 9862, 821),
(32, 4861, 559),
(33, 7665, 544),
(34, 6423, 721),
(35, 9857, 126),
(36, 1888, 574),
(37, 9105, 486),
(38, 7324, 731),
(39, 5056, 328),
(40, 6786, 908),
(41, 5629, 370),
(42, 8901, 114),
(43, 6013, 622),
(44, 8048, 376),
(45, 6349, 116),
(46, 1696, 577),
(47, 3269, 196),
(48, 6437, 505),
(49, 4239, 317),
(50, 6843, 641),
(51, 5114, 761),
(52, 8199, 392),
(53, 3162, 244),
(54, 3013, 211),
(55, 5619, 800),
(56, 8173, 133),
(57, 3668, 350),
(58, 6540, 739),
(59, 1138, 946),
(60, 7623, 620),
(61, 8431, 244),
(62, 9390, 726),
(63, 3902, 906),
(64, 1419, 283),
(65, 7830, 486),
(66, 7703, 658),
(67, 2155, 177),
(68, 9552, 471),
(69, 4732, 669),
(70, 5052, 989),
(71, 6451, 166),
(72, 1750, 207),
(73, 9828, 536),
(74, 9450, 699),
(75, 6771, 249),
(76, 2914, 242),
(77, 3953, 637),
(78, 4041, 293),
(79, 3503, 132),
(80, 9366, 253),
(81, 7190, 699),
(82, 2882, 187),
(83, 9292, 401),
(84, 1564, 719),
(85, 6477, 833),
(86, 5368, 278),
(87, 1569, 665),
(88, 5952, 501),
(89, 3577, 698),
(90, 9253, 690),
(91, 6966, 987),
(92, 8665, 297),
(93, 3888, 894),
(94, 9550, 488),
(95, 1122, 292),
(96, 3867, 745),
(97, 4750, 471),
(98, 9631, 439),
(99, 9088, 463);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` smallint(5) NOT NULL,
  `idEndereco` smallint(5) NOT NULL,
  `idCartao` smallint(5) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `telefone` varchar(14) NOT NULL,
  `email` varchar(75) NOT NULL,
  `dataNascimento` varchar(20) NOT NULL,
  `empresa` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `idEndereco`, `idCartao`, `nome`, `telefone`, `email`, `dataNascimento`, `empresa`) VALUES
(1, 1, 1, 'Travis Reyes', '353-6464', 'elementum.lorem.ut@dolor.org', '2017-03-04 17:48:58', 'Velit Limited'),
(2, 2, 2, 'Hyatt Buckley', '860-7822', 'aliquam@semper.net', '2016-05-12 07:01:15', 'Magna Associates'),
(3, 3, 3, 'Colorado Strong', '1-925-772-3031', 'sem.egestas@liberoProin.net', '2017-01-21 18:24:24', 'Consectetuer Adipiscing Elit Ltd'),
(4, 3, 4, 'Camden I. Gregory', '856-9822', 'Donec.egestas.Aliquam@Duismi.ca', '2017-02-01 18:39:41', 'Dapibus Id Blandit Associates'),
(5, 4, 5, 'Alden O. Ewing', '1-937-719-2308', 'ornare.facilisis.eget@dignissimpharetra.co.uk', '2016-10-12 19:14:59', 'Odio Nam Industries'),
(6, 5, 6, 'Bert L. Franks', '163-5544', 'malesuada@orciconsectetuer.org', '2016-06-28 01:48:47', 'Eu PC'),
(7, 6, 7, 'Deborah L. Cooke', '1-509-784-4751', 'mi.tempor.lorem@nascetur.net', '2016-04-19 00:34:44', 'Malesuada Integer Id Institute'),
(8, 7, 8, 'Aiko A. Travis', '960-1031', 'sapien.cursus.in@auctorodio.com', '2017-03-22 03:55:40', 'Dui Fusce Company'),
(9, 8, 9, 'Macey Mccarthy', '162-2916', 'tempus.mauris@tincidunt.org', '2017-08-08 12:47:42', 'Consectetuer Euismod Est Industries'),
(10, 9, 10, 'Charde R. Hayes', '836-1672', 'eros.nec.tellus@Sedeueros.edu', '2016-03-13 10:45:46', 'Ante Blandit Inc.'),
(11, 10, 11, 'Nadine I. Fernandez', '1-130-984-2124', 'conubia.nostra.per@consectetueradipiscing.ca', '2016-05-18 11:32:51', 'Eu Enim Limited'),
(12, 11, 12, 'Amaya F. Marquez', '1-237-221-1423', 'ut@eratvolutpat.edu', '2016-10-29 21:47:51', 'Fames Ac Turpis Institute'),
(13, 12, 13, 'Miranda D. Yates', '1-172-780-9248', 'nunc@semegestas.edu', '2016-02-14 02:21:36', 'Dapibus Id Blandit LLC'),
(14, 13, 14, 'Linus F. Lester', '518-1803', 'ligula.elit@musAeneaneget.net', '2016-11-14 07:40:30', 'Orci Donec Corp.'),
(15, 14, 15, 'Elijah Blackburn', '1-926-366-1695', 'Duis.ac@Aliquamadipiscing.org', '2015-12-08 01:50:49', 'Nulla Ante Iaculis Associates'),
(16, 15, 15, 'Holly Boyd', '301-1178', 'pellentesque.eget@acfermentum.edu', '2016-07-03 15:02:50', '"Posuere Cubilia Curae'),
(17, 16, 16, 'Vanna Boyd', '736-1414', 'enim@arcuSed.net', '2017-03-28 05:16:29', 'Est Limited'),
(18, 17, 17, 'Ronan Z. Reynolds', '333-0181', 'ridiculus@pellentesque.net', '2017-05-16 08:09:14', 'In Faucibus Morbi Company'),
(19, 18, 18, 'Summer O. Doyle', '1-154-921-5029', 'Aliquam.adipiscing.lobortis@vitaesemperegestas.net', '2016-12-23 12:25:56', 'Et Netus Et Institute'),
(20, 19, 19, 'Rina Wooten', '1-273-585-5940', 'ligula.Donec.luctus@Pellentesquehabitantmorbi.edu', '2016-10-23 06:01:38', 'Nullam Lobortis PC'),
(21, 20, 20, 'Chancellor Barry', '1-207-154-1997', 'sem@sem.net', '2015-09-09 05:22:02', 'Enim Consequat Purus Company'),
(22, 21, 21, 'Hector Kennedy', '784-3381', 'eu.dui@nibh.org', '2017-05-03 19:02:56', 'Ornare Tortor At LLP'),
(23, 22, 22, 'Ivor K. Klein', '492-9764', 'dui.augue@quamelementum.org', '2017-05-01 01:20:32', 'Sagittis Nullam Corporation'),
(24, 23, 23, 'Candace Mcdaniel', '867-4876', 'nisl.Nulla@risusDonecegestas.net', '2015-12-27 13:52:09', 'Nulla Magna Malesuada Consulting'),
(25, 24, 24, 'Katell Stewart', '950-3360', 'urna.justo@dolor.co.uk', '2016-10-21 11:16:30', 'Ante Ipsum Limited'),
(26, 25, 25, 'Lamar N. George', '1-959-999-4095', 'Morbi.neque@nuncidenim.ca', '2016-05-18 06:04:21', 'Libero Associates'),
(27, 26, 26, 'Louis Gould', '1-451-315-5367', 'sem@Aliquamultrices.com', '2017-05-20 13:18:58', 'Vulputate Velit Eu LLC'),
(28, 27, 27, 'Heather Cook', '935-0637', 'est.Mauris@quisaccumsan.co.uk', '2016-11-22 09:08:49', 'Adipiscing Incorporated'),
(29, 28, 28, 'Caleb Glenn', '568-5289', 'Morbi.vehicula.Pellentesque@nulla.co.uk', '2016-04-01 00:53:38', 'Interdum Ligula Eu LLP'),
(30, 29, 29, 'Brynne W. Head', '1-998-249-4744', 'pretium.et@elitdictumeu.ca', '2015-12-23 10:49:22', 'Suspendisse Eleifend Industries'),
(31, 30, 30, 'Axel Washington', '1-111-391-7805', 'eu.tellus@congueaaliquet.net', '2016-11-25 23:29:20', 'Diam Pellentesque Habitant Limited'),
(32, 31, 31, 'Hayley H. Watkins', '1-294-898-1539', 'sit@est.co.uk', '2017-06-14 06:02:52', 'Turpis Aliquam Limited'),
(33, 32, 32, 'Selma Z. Olson', '104-6132', 'ut@Donecnibh.ca', '2015-10-15 21:52:35', 'Nullam Company'),
(34, 33, 33, 'Omar Marks', '259-3428', 'vel@anteblanditviverra.net', '2016-01-28 14:56:03', 'Vitae Odio Institute'),
(35, 34, 34, 'Shannon Small', '1-901-407-8883', 'vel@risusDonec.net', '2015-11-23 11:46:42', 'Blandit Mattis Cras Company'),
(36, 35, 35, 'Mara Hall', '203-7213', 'felis.Donec@Sedcongueelit.co.uk', '2017-03-19 15:56:53', 'Vestibulum Accumsan LLC'),
(37, 36, 36, 'Alexandra A. Gay', '463-1181', 'sit@arcuiaculis.org', '2016-08-09 13:34:54', 'Pellentesque Limited'),
(38, 37, 37, 'Karen D. Fox', '436-3909', 'Nullam.velit.dui@tristique.com', '2017-05-18 07:42:21', 'Ac Turpis Company'),
(39, 38, 38, 'Shoshana Graves', '1-477-204-6809', 'lorem.ac@liberomaurisaliquam.net', '2017-01-01 08:30:40', 'Luctus Et Ultrices Incorporated'),
(40, 39, 39, 'Zephr E. Smith', '1-874-787-5724', 'vehicula@erosNamconsequat.co.uk', '2015-09-12 01:19:44', 'Purus Inc.'),
(41, 40, 40, 'Derek Medina', '224-5900', 'neque.sed.sem@etnuncQuisque.com', '2015-11-22 16:48:15', 'In Nec Orci Incorporated'),
(42, 41, 41, 'Chase Fulton', '1-736-200-4677', 'sodales@ante.co.uk', '2017-03-03 22:51:58', 'Magnis Dis Incorporated'),
(43, 42, 42, 'Darius J. Grimes', '570-7775', 'magna@enim.org', '2016-04-22 22:59:58', 'Semper Egestas Associates'),
(44, 43, 43, 'Jillian Z. Vance', '398-0636', 'nisi@aaliquetvel.org', '2016-08-30 14:19:29', 'Eu Neque Pellentesque Consulting'),
(45, 44, 44, 'Brenden Holder', '1-115-119-8119', 'Cras@Maecenasornare.com', '2017-04-22 14:50:40', 'Ornare Placerat Orci Company'),
(46, 45, 45, 'Jacob R. Golden', '899-2727', 'cursus.in.hendrerit@Integeraliquamadipiscing.net', '2017-01-31 18:30:22', 'Ad Foundation'),
(47, 46, 46, 'Jelani Z. Shaffer', '1-260-175-2896', 'quam.elementum@hendreritDonec.co.uk', '2017-03-29 14:14:37', 'Purus In Molestie Inc.'),
(48, 47, 47, 'Cathleen T. Maxwell', '1-780-247-7930', 'quis@ultricesposuerecubilia.co.uk', '2015-12-24 10:04:24', 'Ut Corp.'),
(49, 48, 48, 'Rhea I. Kim', '137-7852', 'neque.Sed@velturpisAliquam.co.uk', '2015-12-18 17:27:16', 'Senectus Et Netus Ltd'),
(50, 49, 49, 'Kamal Parrish', '1-505-182-6138', 'Sed.nulla@luctus.org', '2016-01-13 17:45:04', 'Orci LLC'),
(51, 50, 50, 'Quin Hester', '1-488-528-3848', 'non.cursus@sitametconsectetuer.co.uk', '2016-10-13 10:30:12', 'Malesuada Vel Convallis Ltd'),
(52, 51, 51, 'Tatiana W. Farmer', '134-8758', 'non@loremluctusut.edu', '2017-03-11 14:30:29', 'Adipiscing Non Consulting'),
(53, 52, 52, 'Cameron Prince', '213-9735', 'eros.turpis@ultricies.net', '2016-07-05 14:00:36', 'Sem LLP'),
(54, 53, 53, 'Rina Lambert', '1-953-456-7779', 'eget@Phaselluslibero.edu', '2016-02-26 10:18:55', 'Egestas Corporation'),
(55, 54, 54, 'Rhonda A. Lynn', '1-297-591-7807', 'Aenean.egestas@ametorci.co.uk', '2017-07-02 18:14:47', 'Facilisis Non Bibendum LLP'),
(56, 55, 55, 'Hilary E. Pittman', '1-959-241-0018', 'tristique@acfermentumvel.net', '2016-08-04 11:06:14', 'Ultrices Mauris Ipsum LLP'),
(57, 56, 56, 'Xaviera P. Poole', '437-0453', 'eleifend.non.dapibus@maurisut.com', '2016-05-27 22:58:59', 'Nisi Corp.'),
(58, 57, 57, 'Amber Craig', '423-7979', 'Donec.porttitor.tellus@utodiovel.co.uk', '2016-04-16 04:07:08', 'Odio Sagittis Corp.'),
(59, 58, 58, 'Janna J. Deleon', '395-5941', 'orci.Phasellus.dapibus@ultriciessemmagna.edu', '2017-01-22 19:37:22', 'Ridiculus Corp.'),
(60, 59, 59, 'Hu Wright', '424-4584', 'Maecenas.ornare@sitamet.ca', '2015-12-30 09:11:20', 'Mauris Erat LLC'),
(61, 60, 60, 'Anjolie N. Herrera', '337-4147', 'tempus.risus.Donec@fringillacursus.org', '2017-03-25 10:40:52', 'Convallis Ante Lectus PC'),
(62, 61, 61, 'Zeus Snow', '449-5206', 'tempus.lorem@bibendum.edu', '2015-09-28 11:20:47', 'Vulputate Eu Inc.'),
(63, 62, 62, 'Autumn L. English', '1-461-122-5769', 'montes.nascetur.ridiculus@ante.org', '2016-10-17 14:45:47', 'Pede Consulting'),
(64, 63, 63, 'Evan M. Porter', '1-903-420-8926', 'mus.Proin@fringilla.net', '2016-10-10 03:42:46', 'Libero Lacus Varius Incorporated'),
(65, 64, 64, 'Regina H. Blake', '1-671-406-0276', 'metus.In@mattisIntegereu.org', '2017-02-01 15:27:11', 'A Feugiat LLP'),
(66, 65, 65, 'Fletcher S. Gutierrez', '805-5962', 'neque@quis.edu', '2016-02-17 15:09:44', 'A Odio Semper Industries'),
(67, 66, 66, 'Eugenia F. Grant', '1-469-606-8494', 'pede@Namconsequatdolor.net', '2015-12-16 10:49:01', 'Ac Arcu LLC'),
(68, 67, 67, 'Kasper C. Murray', '690-6770', 'molestie.orci.tincidunt@acmattis.edu', '2017-03-27 08:02:48', 'Sed Nunc Est Incorporated'),
(69, 68, 68, 'Mallory Coffey', '1-459-403-7807', 'lectus.ante@habitantmorbitristique.org', '2017-07-25 15:38:09', 'Orci Ut Consulting'),
(70, 69, 69, 'Kylee Peck', '1-564-958-9161', 'magna@amet.com', '2016-02-01 14:42:42', 'Semper Cursus Company'),
(71, 70, 70, 'Herman Ortega', '919-5941', 'vitae@sapienimperdietornare.org', '2017-07-17 08:44:44', 'Magna Associates'),
(72, 71, 71, 'Nomlanga Brooks', '1-574-455-4575', 'gravida.mauris@imperdietornare.com', '2017-03-22 13:24:33', 'Ipsum Suspendisse Corp.'),
(73, 72, 72, 'Melissa W. Glass', '387-7710', 'nibh@inlobortis.net', '2017-08-09 12:49:28', 'Maecenas Mi Consulting'),
(74, 73, 73, 'Uriel Stafford', '1-479-890-8685', 'erat.Etiam.vestibulum@ornareInfaucibus.org', '2015-08-26 16:29:53', 'Lectus Justo Eu Industries'),
(75, 74, 74, 'Grady Cook', '1-487-520-4566', 'nunc@arcuVestibulumante.com', '2015-11-18 23:16:10', 'Massa LLP'),
(76, 75, 75, 'Shafira A. Holt', '1-245-393-9588', 'egestas.lacinia@utipsumac.edu', '2015-09-03 00:10:39', 'In LLP'),
(77, 76, 76, 'Shaine X. Bailey', '316-1465', 'nascetur.ridiculus@utpharetrased.org', '2016-01-13 16:56:14', 'Sed Pede Institute'),
(78, 77, 77, 'Dolan Acevedo', '1-193-287-0663', 'tellus@nibhPhasellusnulla.net', '2015-10-03 15:25:10', 'Venenatis Vel Faucibus Corporation'),
(79, 78, 78, 'Mercedes Barron', '1-279-930-4294', 'natoque.penatibus.et@euismodenimEtiam.co.uk', '2016-08-26 15:27:45', 'Porttitor Vulputate Foundation'),
(80, 79, 79, 'Damian B. Alford', '1-839-493-6863', 'sem@arcuVestibulumante.ca', '2016-08-31 06:36:43', 'Nunc Ac Corporation'),
(81, 80, 80, 'Lareina S. Mckee', '242-2797', 'metus@vestibulummassarutrum.com', '2016-05-24 22:26:40', 'Mauris Non Corp.'),
(82, 81, 81, 'Juliet Reed', '1-234-499-6174', 'dui.Fusce@mauriseuelit.net', '2017-01-09 09:12:40', 'Pellentesque Ultricies Company'),
(83, 82, 82, 'Ezra V. Robinson', '1-806-895-2162', 'Cras@Maecenasornareegestas.net', '2015-10-10 13:36:51', 'Nibh Enim Gravida Corporation'),
(84, 83, 83, 'Ava H. King', '401-1013', 'eu@libero.net', '2016-04-14 10:50:42', 'Nonummy Ac Feugiat Consulting'),
(85, 84, 84, 'Gisela Keith', '449-8141', 'tincidunt.congue@feugiatSed.org', '2016-09-17 05:45:38', 'Sit LLC'),
(86, 85, 85, 'Quon W. Dennis', '691-3773', 'quis.accumsan.convallis@nonlobortis.org', '2017-08-01 15:07:05', 'Sed Nec Metus Foundation'),
(87, 86, 86, 'Eleanor Harrell', '1-174-344-4056', 'lacus@vitaeerat.org', '2017-03-09 18:49:28', 'Sagittis PC'),
(88, 87, 87, 'Jin Y. Morales', '1-327-860-8804', 'amet@adipiscing.com', '2017-05-16 08:20:12', 'Enim Condimentum Eget Inc.'),
(89, 88, 88, 'Allegra F. Sargent', '402-1933', 'vitae.odio@Quisqueaclibero.net', '2016-10-24 04:16:35', 'Quam Vel Limited'),
(90, 89, 89, 'Hunter Burke', '1-934-407-9764', 'Proin.vel@aliquetlibero.com', '2017-08-15 11:19:27', 'Non PC'),
(91, 90, 90, 'Warren Kirkland', '246-9449', 'Fusce@et.net', '2016-05-28 05:50:08', 'Rhoncus Id Industries'),
(92, 91, 91, 'Lucy U. Le', '1-644-207-8402', 'euismod.enim.Etiam@CurabiturmassaVestibulum.org', '2016-11-25 03:53:14', 'Senectus Et PC'),
(93, 92, 92, 'Graham T. Farley', '1-148-400-3341', 'Integer.mollis.Integer@Namnullamagna.net', '2016-07-04 01:47:11', 'In Molestie Limited'),
(94, 93, 93, 'Kevin Bishop', '1-799-839-9700', 'Curabitur.sed@ac.edu', '2015-10-02 11:37:51', 'Risus Varius Inc.'),
(95, 94, 94, 'Cyrus Coleman', '579-8812', 'dictum@consectetueripsumnunc.ca', '2016-04-29 15:20:51', 'Interdum LLC'),
(96, 95, 95, 'Tate Houston', '1-199-656-0302', 'erat@dictum.co.uk', '2015-09-11 23:07:32', 'Neque Industries'),
(97, 96, 96, 'Sonia R. Hale', '758-4026', 'tellus.justo@eros.co.uk', '2017-05-04 23:07:08', 'Elit Nulla Facilisi Ltd'),
(98, 97, 97, 'Dieter Mclaughlin', '157-7081', 'eu.tellus@venenatislacus.com', '2017-02-11 10:50:59', 'Eget Industries'),
(99, 98, 98, 'Hyatt Melendez', '117-5528', 'velit.Pellentesque.ultricies@Donec.org', '2017-02-24 00:57:25', 'Proin Dolor Nulla Corp.'),
(100, 99, 99, 'Xavier Walsh', '1-207-922-5271', 'libero.nec.ligula@tellusimperdietnon.edu', '2016-11-06 01:29:57', 'Quis Arcu LLC');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `idEndereco` smallint(5) NOT NULL,
  `endereco` varchar(150) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `estado` varchar(35) NOT NULL,
  `pais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`idEndereco`, `endereco`, `cidade`, `cep`, `estado`, `pais`) VALUES
(1, '744-2042 Dis Avenue', 'João Pessoa', '60505', 'PB', 'Mayotte'),
(2, '7608 Est, Road', 'Campina Grande', '115801', 'PB', 'Bouvet Island'),
(3, 'Ap #636-3755 Lectus, Road', 'Carapicuíba', '5522', 'SP', 'American Samoa'),
(4, '140-2328 Mauris St.', 'Mauá', '81-501', 'São Paulo', 'Cuba'),
(5, 'P.O. Box 235, 1960 Ultrices Rd.', 'Paulista', 'E1L 6T8', 'PE', 'Zimbabwe'),
(6, '7440 In Avenue', 'Carapicuíba', '35416', 'São Paulo', 'Iraq'),
(7, '265-9821 Id Rd.', 'Cametá', '8312', 'PA', 'Congo, the Democratic Republic of the'),
(8, 'Ap #584-110 Quisque Street', 'Criciúma', '8823DN', 'SC', 'France'),
(9, 'P.O. Box 497, 5033 Risus. Ave', 'Piracicaba', '76-124', 'São Paulo', 'Virgin Islands, United States'),
(10, '440-6314 In Road', 'Novo Hamburgo', '52066', 'Rio Grande do Sul', 'Zimbabwe'),
(11, '359 Phasellus Road', 'Diadema', '1270', 'São Paulo', 'Gambia'),
(12, '738-9199 Mollis St.', 'Petrolina', 'K7 8GO', 'PE', 'Saint Lucia'),
(13, '1048 Accumsan St.', 'Curitiba', '2638', 'Paraná', 'Chile'),
(14, '225-7219 Fringilla Road', 'São José dos Pinhais', '5278', 'PR', 'Maldives'),
(15, ' Corporation"', '544-319 Tristique Rd.', 'São João d', '1535SR', 'RJ'),
(16, '279-2920 Luctus Rd.', 'Olinda', '44196', 'PE', 'Peru'),
(17, '687 Lacus, Street', 'Ribeirão Preto', '2954HN', 'SP', 'Namibia'),
(18, '893-984 Sed St.', 'Valparaíso de Goiás', 'T3G 9Z4', 'GO', 'Malaysia'),
(19, '5423 Risus. Road', 'São José', 'Q23 0KN', 'Santa Catarina', 'Grenada'),
(20, '8618 Lorem. Av.', 'Juazeiro do Norte', '66044', 'Ceará', 'Norfolk Island'),
(21, '974-8291 Eget, St.', 'Cabo de Santo Agostinho', '35269', 'Pernambuco', 'Tokelau'),
(22, '561-2240 Sit Avenue', 'Colombo', '8905', 'Paraná', 'Turkmenistan'),
(23, 'P.O. Box 923, 5861 Nulla Rd.', 'Olinda', '226720', 'Pernambuco', 'Togo'),
(24, 'P.O. Box 412, 5776 Ut Rd.', 'Guarulhos', '10201', 'SP', 'Equatorial Guinea'),
(25, '2618 Suspendisse Rd.', 'Aparecida de Goiânia', 'L2 4RI', 'Goiás', 'Denmark'),
(26, '206-150 Natoque Road', 'Goiânia', 'XC6 2SL', 'Goiás', 'Samoa'),
(27, 'Ap #653-1399 Nunc. Road', 'Diadema', '959910', 'SP', 'Cyprus'),
(28, '6935 Faucibus Street', 'Rio Verde', '3112', 'GO', 'Comoros'),
(29, '178-590 Nisl Rd.', 'Ribeirão das Neves', '4883', 'MG', 'Angola'),
(30, 'Ap #792-4916 Quisque Rd.', 'Caxias', 'E9E 1Y1', 'Maranhão', 'Norway'),
(31, '715-1363 Arcu Ave', 'Rio Grande', '78786', 'RS', 'Svalbard and Jan Mayen Islands'),
(32, '196-6039 Vehicula Avenue', 'Lauro de Freitas', '127159', 'BA', 'Estonia'),
(33, '975-2500 Eu Street', 'Santarém', '31114', 'PA', 'Slovenia'),
(34, 'Ap #343-3293 Nec, St.', 'Juazeiro do Norte', 'V1H 3C8', 'Ceará', 'Pitcairn Islands'),
(35, 'Ap #367-300 Ligula. Road', 'Sousa', '8643', 'Paraíba', 'Angola'),
(36, 'Ap #855-9001 Tempus, Ave', 'Santa Rita', '535', 'PB', 'Viet Nam'),
(37, '893-8270 Leo. Road', 'São João de Meriti', '704278', 'RJ', 'Moldova'),
(38, 'P.O. Box 557, 2235 Vestibulum Road', 'Duque de Caxias', '2847', 'Rio de Janeiro', 'Venezuela'),
(39, 'P.O. Box 860, 9997 Placerat. St.', 'Niterói', '67265', 'Rio de Janeiro', 'Poland'),
(40, '8666 Posuere Road', 'Águas Lindas de Goiás', '9244', 'GO', 'Fiji'),
(41, '266-4928 Nulla Ave', 'Caxias', '499947', 'Maranhão', 'Saint Kitts and Nevis'),
(42, '796-8858 Nec Avenue', 'Campinas', '31706', 'SP', 'Benin'),
(43, 'Ap #572-5527 Ligula Street', 'Mogi das Cruzes', '32397', 'São Paulo', 'Iran'),
(44, 'Ap #202-692 A, Rd.', 'Paulista', '4131', 'Pernambuco', 'Slovenia'),
(45, '8433 Et St.', 'Ilhéus', '49-265', 'Bahia', 'Oman'),
(46, 'P.O. Box 713, 2279 Tellus. St.', 'Florianópolis', '311759', 'SC', 'Kuwait'),
(47, '309-1986 Laoreet Rd.', 'Ilhéus', '30411', 'BA', 'Senegal'),
(48, '2466 Non, Road', 'Nova Iguaçu', '92102', 'Rio de Janeiro', 'Germany'),
(49, '480-4437 Maecenas Rd.', 'Paço do Lumiar', '40854', 'MA', 'Ghana'),
(50, '470-2113 Erat. St.', 'Caucaia', '81-847', 'Ceará', 'Sierra Leone'),
(51, '146-9668 Aliquam Ave', 'Petrópolis', '559692', 'RJ', 'Aruba'),
(52, '910-1301 Morbi Rd.', 'Valparaíso de Goiás', '23393', 'Goiás', 'Peru'),
(53, 'Ap #937-7249 Ac Rd.', 'Rio Grande', '1255', 'RS', 'Hungary'),
(54, '2730 Aliquet Road', 'Blumenau', '651179', 'SC', 'Guinea-Bissau'),
(55, '5826 Dictum Street', 'Caxias do Sul', '441690', 'RS', 'Azerbaijan'),
(56, '433-5140 Eget, Street', 'Pelotas', '3220FI', 'Rio Grande do Sul', 'Jamaica'),
(57, '790-4344 Risus St.', 'Mauá', '5534BE', 'SP', 'Bermuda'),
(58, '3358 Vel Ave', 'Canoas', '6152', 'Rio Grande do Sul', 'Congo (Brazzaville)'),
(59, '6176 Tellus Road', 'Juiz de Fora', '92492', 'MG', 'Dominica'),
(60, '1906 Non, St.', 'Fortaleza', '39-732', 'Ceará', 'Guatemala'),
(61, 'P.O. Box 156, 9156 Suspendisse Avenue', 'Mauá', '68550', 'São Paulo', 'Lesotho'),
(62, '256-4390 Blandit. Rd.', 'Crato', '60167-482', 'Ceará', 'Poland'),
(63, 'Ap #508-7012 Massa. Road', 'Castanhal', '51-473', 'Pará', 'Norway'),
(64, '4581 Egestas. Av.', 'São Gonçalo', '46507', 'RJ', 'Sweden'),
(65, 'Ap #435-108 Sit Rd.', 'Piracicaba', '85555', 'SP', 'Finland'),
(66, 'Ap #662-3878 Nonummy Rd.', 'Paulista', '10309', 'PE', 'Mozambique'),
(67, 'Ap #591-8839 In St.', 'Camaragibe', '243555', 'PE', 'Peru'),
(68, 'P.O. Box 429, 7657 Quisque Street', 'Niterói', '3765', 'Rio de Janeiro', 'Tuvalu'),
(69, '7047 Sollicitudin St.', 'Sobral', '9694', 'Ceará', 'French Southern Territories'),
(70, '7360 Dis Rd.', 'Olinda', '5160', 'PE', 'Mongolia'),
(71, 'P.O. Box 765, 516 Torquent Street', 'Rio Grande', '7870', 'RS', 'Lesotho'),
(72, 'Ap #749-8734 Eu, Av.', 'São José', '11-732', 'SC', 'Antigua and Barbuda'),
(73, '111-8851 Proin Ave', 'Belford Roxo', '898402', 'RJ', 'Seychelles'),
(74, '315-7128 Felis Avenue', 'Crato', '80274', 'CE', 'Lebanon'),
(75, 'P.O. Box 823, 9803 Venenatis Street', 'Juazeiro', '1903', 'BA', 'Serbia'),
(76, '7025 Vel Av.', 'Olinda', '07-871', 'Pernambuco', 'Laos'),
(77, 'Ap #819-1296 Diam Rd.', 'Santa Rita', '25723', 'Paraíba', 'Thailand'),
(78, 'Ap #842-4151 Faucibus Rd.', 'Camaragibe', 'X2G 9E3', 'PE', 'Turkmenistan'),
(79, 'Ap #393-9776 Dictum Av.', 'João Pessoa', '58025-696', 'Paraíba', 'Germany'),
(80, '173-7925 A, Rd.', 'Santa Luzia', '832214', 'MG', 'Sweden'),
(81, '142-7408 Sapien, Road', 'Uberlândia', '65779', 'MG', 'Fiji'),
(82, 'Ap #515-4701 Fringilla Avenue', 'Caxias do Sul', '10855', 'RS', 'Costa Rica'),
(83, '429-4593 Pellentesque St.', 'Parauapebas', '17661', 'Pará', 'Mexico'),
(84, 'Ap #804-7236 At, Rd.', 'Itajaí', '88898-108', 'Santa Catarina', 'Vanuatu'),
(85, 'P.O. Box 359, 5618 Lorem Av.', 'Juazeiro', '20112', 'Bahia', 'Moldova'),
(86, 'Ap #375-8742 Nec, Av.', 'Aparecida de Goiânia', '3048HQ', 'Goiás', 'Benin'),
(87, '8562 Nonummy Street', 'Abaetetuba', '268971', 'PA', 'Suriname'),
(88, '4552 A Ave', 'Chapadinha', '341395', 'Maranhão', 'Christmas Island'),
(89, 'P.O. Box 707, 4791 Tempus St.', 'Uberlândia', '3472', 'MG', 'Saint Kitts and Nevis'),
(90, '3570 Neque Avenue', 'Petrolina', '789775', 'Pernambuco', 'Korea, South'),
(91, '763-2631 Proin St.', 'Joinville', '32868', 'SC', 'Liberia'),
(92, 'Ap #240-3849 Commodo Avenue', 'Águas Lindas de Goiás', '38-519', 'GO', 'Guyana'),
(93, '919-2852 Nibh Ave', 'Ponta Grossa', '6224', 'PR', 'Croatia'),
(94, 'P.O. Box 273, 506 Eu St.', 'Nova Iguaçu', '69315', 'Rio de Janeiro', 'Cook Islands'),
(95, 'Ap #113-2061 Malesuada St.', 'João Pessoa', '7720', 'Paraíba', 'Mali'),
(96, 'P.O. Box 540, 8966 Condimentum Ave', 'Juiz de Fora', '86432', 'MG', 'Moldova'),
(97, '7634 Ligula. Avenue', 'São José', '5735AK', 'Santa Catarina', 'Poland'),
(98, 'P.O. Box 868, 7709 A, St.', 'Londrina', '97022', 'Paraná', 'Poland'),
(99, 'Ap #941-3015 Massa Rd.', 'Santa Luzia', '77526', 'MG', 'Portugal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cartao_cliente`
--
ALTER TABLE `cartao_cliente`
  ADD PRIMARY KEY (`idCartao`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `FK_Endereco` (`idEndereco`),
  ADD KEY `FK_Cartao_Cliente` (`idCartao`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idEndereco`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cartao_cliente`
--
ALTER TABLE `cartao_cliente`
  MODIFY `idCartao` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idEndereco` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `FK_Cartao_Cliente` FOREIGN KEY (`idCartao`) REFERENCES `cartao_cliente` (`idCartao`),
  ADD CONSTRAINT `FK_Endereco` FOREIGN KEY (`idEndereco`) REFERENCES `endereco` (`idEndereco`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

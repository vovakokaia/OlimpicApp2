-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 09, 2019 at 03:30 AM
-- Server version: 10.2.24-MariaDB
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acrocha1_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `bsc`
--

CREATE TABLE `bsc` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `configuration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bsc`
--

INSERT INTO `bsc` (`id`, `name`, `configuration`) VALUES
(6, 'web_site_name', 'Olimpic App'),
(7, 'web_site_namea', 'test_value'),
(8, 'web_site_namea', 'test_value'),
(9, 'web_site_nameaasd', 'test_value'),
(10, 'web_site_nameaasd', 'test_value'),
(11, 'web_sisadsadasdaste_namea', 'aaaaaaaaaaaaaaaaa'),
(12, 'web_sisadsadasdaste_namea', 'asdasd'),
(13, 'asd', 'kkkkkkkkk'),
(14, 'asd', 'kkkkkkkkk'),
(15, 'weasdasdsadb_svvvite_name', 'ffffffffff'),
(16, 'weasdasdsadb_svvvite_name', 'ffffffffff');

-- --------------------------------------------------------

--
-- Table structure for table `bsw`
--

CREATE TABLE `bsw` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `configuration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bsw`
--

INSERT INTO `bsw` (`id`, `name`, `configuration`) VALUES
(1, 'create_account', 'Create Account'),
(2, 'have_an_account', 'Have an account?'),
(3, 'log_in', 'Log In'),
(4, 'login_title', 'Login'),
(5, 'email_label', 'Email:'),
(6, 'password_label', 'Password:'),
(7, 'submit', 'Log In'),
(8, 'name_label', 'Name:'),
(9, 'add_task', 'Add Task'),
(10, 'add_task', 'Add Task'),
(11, 'edit_task', 'Edit Task'),
(12, 'edit_task', 'Edit Task'),
(13, 'firstname', 'Firstname'),
(14, 'firstname', 'Firstname'),
(15, 'email', 'Email'),
(16, 'email', 'Email'),
(17, 'text', 'Text'),
(18, 'text', 'Text'),
(19, 'done', 'Done'),
(20, 'done', 'Done'),
(21, 'sort_by', 'Sort By'),
(22, 'sort_by', 'Sort By'),
(23, 'name_a_z', 'Name a/z'),
(24, 'name_a_z', 'Name a/z'),
(25, 'name_z_a', 'Name z/a'),
(26, 'name_z_a', 'Name z/a'),
(27, 'done_y_n', 'Done yes/no'),
(28, 'done_y_n', 'Done yes/no'),
(29, 'done_n_y', 'Done no/yes'),
(30, 'done_n_y', 'Done no/yes'),
(31, 'submit_edit', 'Edit Task'),
(32, 'submit_edit', 'Edit Task');

-- --------------------------------------------------------

--
-- Table structure for table `msc`
--

CREATE TABLE `msc` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `configuration` varchar(255) NOT NULL,
  `for_module` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `msw`
--

CREATE TABLE `msw` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `configuration` varchar(255) NOT NULL,
  `for_module` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sportsmens`
--

CREATE TABLE `sportsmens` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `surname` varchar(25) NOT NULL DEFAULT '',
  `sportsmen_category` varchar(100) NOT NULL DEFAULT '',
  `country` varchar(20) NOT NULL DEFAULT '',
  `cas_score_1` double NOT NULL DEFAULT 0,
  `cas_score_2` double NOT NULL DEFAULT 0,
  `cas_score_3` double NOT NULL DEFAULT 0,
  `cas_score_4` double NOT NULL DEFAULT 0,
  `cas_score_5` double NOT NULL DEFAULT 0,
  `cas_score_6` double NOT NULL DEFAULT 0,
  `cas_score_7` double NOT NULL DEFAULT 0,
  `cas_score_8` double NOT NULL DEFAULT 0,
  `super_score` double DEFAULT 0,
  `cas_score_1_day_2` double NOT NULL DEFAULT 0,
  `cas_score_2_day_2` double NOT NULL DEFAULT 0,
  `cas_score_3_day_2` double NOT NULL DEFAULT 0,
  `cas_score_4_day_2` double NOT NULL DEFAULT 0,
  `cas_score_5_day_2` double NOT NULL DEFAULT 0,
  `cas_score_6_day_2` double NOT NULL DEFAULT 0,
  `cas_score_7_day_2` double NOT NULL DEFAULT 0,
  `cas_score_8_day_2` double NOT NULL DEFAULT 0,
  `super_score_day_2` double NOT NULL DEFAULT 0,
  `difficulty` double NOT NULL DEFAULT 0,
  `penalty` double NOT NULL DEFAULT 0,
  `action` varchar(10) NOT NULL DEFAULT '',
  `return_score` int(1) NOT NULL DEFAULT 0,
  `return_judge_1` int(1) NOT NULL DEFAULT 0,
  `return_judge_2` int(11) NOT NULL DEFAULT 0,
  `return_judge_3` int(11) NOT NULL DEFAULT 0,
  `return_judge_4` int(11) NOT NULL DEFAULT 0,
  `return_judge_5` int(11) NOT NULL DEFAULT 0,
  `return_judge_6` int(11) NOT NULL DEFAULT 0,
  `return_judge_7` int(11) NOT NULL DEFAULT 0,
  `return_judge_8` int(11) NOT NULL DEFAULT 0,
  `allow_to_show` int(1) NOT NULL DEFAULT 0,
  `final` int(1) NOT NULL DEFAULT 0,
  `rang` int(5) NOT NULL DEFAULT 0,
  `pause` int(1) NOT NULL DEFAULT 0,
  `current` int(1) NOT NULL DEFAULT 0,
  `day_2` int(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sportsmens`
--

INSERT INTO `sportsmens` (`id`, `name`, `surname`, `sportsmen_category`, `country`, `cas_score_1`, `cas_score_2`, `cas_score_3`, `cas_score_4`, `cas_score_5`, `cas_score_6`, `cas_score_7`, `cas_score_8`, `super_score`, `cas_score_1_day_2`, `cas_score_2_day_2`, `cas_score_3_day_2`, `cas_score_4_day_2`, `cas_score_5_day_2`, `cas_score_6_day_2`, `cas_score_7_day_2`, `cas_score_8_day_2`, `super_score_day_2`, `difficulty`, `penalty`, `action`, `return_score`, `return_judge_1`, `return_judge_2`, `return_judge_3`, `return_judge_4`, `return_judge_5`, `return_judge_6`, `return_judge_7`, `return_judge_8`, `allow_to_show`, `final`, `rang`, `pause`, `current`, `day_2`) VALUES
(1, 'KAZADO YAKAR NOA , KUZBAND ARIEL , RON YARDEN', '', 'WG 9-16', 'ISR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'HARUTYUNYAN ARINA, BUNIATYAN VAHAN', '', 'MXP 9-16', 'ARM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'SHERVASHIDZE IOANNA , KHAZARBEGISHVILI MARIAM, DEVADZE LIKA', '', 'WG 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'GIBRADZE LASHA, TSURTSUMIA LANA', '', 'MXP 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'KVITSARIDZE TEA ,KUTATELADZE MANANA, NEMSADZE MARIAMI', '', 'WG 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'SARGSYAN VAHE, OHANYAN MANE', '', 'MXP 9-16', 'ARM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'TORUA ANI, GURULI NINO, DZIRTKBILASHVILI MARIAMI', '', 'WG 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 'MUNJISHVILI AKAKI , SULAKADZE KRISTINE', '', 'MXP 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'MAISURADZE SALOME, PERADZE MARIAM, GORDADZE MARIAMI', '', 'WG 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'BLIADZE GIORGI, DANELIA GIORGI, BULASHVILI ALEKSANDRE ,TATANASHVILI LEKSO', '', 'MG 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'IKOSHVILI MARIAMI, TSUKHISHVILI MARIAMI', '', 'WP 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'HOVHANNISYAN ARKADI, HAKOBYAN RUBEN, GLAZKOV GENADI, MARTIROSYAN SAMVEL', '', 'MG 9-16', 'ARM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'INADZE MARIAMI, TSIKLAURI TAMARI', '', 'WP 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'JAKOBIA LEVANI, CHELISHVILI SABA, KHETSURIANI BACHO, DANELIA GIORGI', '', 'MG 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 'BEGASHVILI MARIAMI, SHEVARDENIDZE ANI', '', 'WP 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 'SARGSYAN SAMVEL, GEVORGYAN ARMAN', '', 'MP 9-16', 'ARM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 'ALLOIAROVA AIHIUL, VOLKOVA VIKTORIA', '', 'WP 9-16', 'UKR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 'TCHIGLADZE GIORGI, DIDBERIDZE BEKA', '', 'MP 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 'JAVAKHISHVILI TATIA, NEBIERIDZE LIZI', '', 'WP 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 'ABULADZE KRISTINE, DVALISHVILI NINO', '', 'WP 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 'SAKANELASHVILI ANA, AKHMEDOVA NARMIN', '', 'WP 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 'BASHIROVA LEYLA, MAMMADZADA MANSUMA, FARMANOVA NAZRIN', '', 'WG 10-18', 'AZE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 'MAMMADOVA AYLIN, MAMMADOV TURAN', '', 'MXP 10-18', 'AZE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(24, 'MANAGADZE TINA, KUKHIANIDZE INA, LAGADZE ANANO', '', 'WG 10-18', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(25, 'KODALASHVILI NIKOLOZ, TSIKLAURI MARIAM', '', 'MXP 10-18', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(26, 'FREED RILEY, KICZIA JASSICA, TUTBERIDZE MARIAM', '', 'WG 10-18', 'USA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(27, 'SALAMOVA MEHRIBAN, KHAMIDULIN NIZAM', '', 'MXP 10-18', 'AZE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(28, 'MELIA KRISTINE, KHEIDZE ANASTASIA', '', 'WP 10-18', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(29, 'IVANKINA OLHA, ALLOIAROVA ALINA', '', 'WP 10-18', 'UKR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(30, 'OKROPIRIDZE GIORGI, CHANADIRI GIORGI, KHMALADZE GIORGI, MARIDASHVILI SABA', '', 'MG 10- 18', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(31, 'KHALILOVA EMILIA, RUSTAMOVA SAMIRA', '', 'WP 10-18', 'AZE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(32, 'ABBASOV DANIEL, RAFIYEV MURAD', '', 'MP 11-19', 'AZE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(33, 'MGEBRISHVILI MARIAM, BAIDAURI NINO, OMIADZE LIZI', '', 'WG 11-19', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(34, 'FOMENKO ILYA, KARPENKO MARINA', '', 'MXP - 11-19', 'UKR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 'ZEITOUNEI INBAL, ALEINIK NIKOL, HURVITZ MESH', '', 'WG 11-19', 'ISR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 'ZAZADZE SABA, KUTATELADZE TAMAR', '', 'MXP - SENIORS', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 'OVADIA YARIN AVIGAL, TZLIL HURVITZ, OR ARMONI', '', 'WG - SENIORS', 'ISR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 'LUKAKHIN MYKYTA, NIKITIN MYKYTA', '', 'MP- SENIORS', 'UKR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 'KAZADO YAKAR NOA , KUZBAND ARIEL , RON YARDEN', '', 'WG 9-16', 'ISR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39),
(40, 'HARUTYUNYAN ARINA, BUNIATYAN VAHAN', '', 'MXP 9-16', 'ARM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40),
(41, 'SHERVASHIDZE IOANNA , KHAZARBEGISHVILI MARIAM, DEVADZE LIKA', '', 'WG 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41),
(42, 'GIBRADZE LASHA, TSURTSUMIA LANA', '', 'MXP 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42),
(43, 'KVITSARIDZE TEA ,KUTATELADZE MANANA, NEMSADZE MARIAMI', '', 'WG 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43),
(44, 'SARGSYAN VAHE, OHANYAN MANE', '', 'MXP 9-16', 'ARM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44),
(45, 'TORUA ANI, GURULI NINO, DZIRTKBILASHVILI MARIAMI', '', 'WG 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45),
(46, 'MUNJISHVILI AKAKI , SULAKADZE KRISTINE', '', 'MXP 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46),
(47, 'MAISURADZE SALOME, PERADZE MARIAM, GORDADZE MARIAMI', '', 'WG 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47),
(48, 'BLIADZE GIORGI, DANELIA GIORGI, BULASHVILI ALEKSANDRE ,TATANASHVILI LEKSO', '', 'MG 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48),
(49, 'IKOSHVILI MARIAMI, TSUKHISHVILI MARIAMI', '', 'WP 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49),
(50, 'HOVHANNISYAN ARKADI, HAKOBYAN RUBEN, GLAZKOV GENADI, MARTIROSYAN SAMVEL', '', 'MG 9-16', 'ARM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50),
(51, 'INADZE MARIAMI, TSIKLAURI TAMARI', '', 'WP 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51),
(52, 'JAKOBIA LEVANI, CHELISHVILI SABA, KHETSURIANI BACHO, DANELIA GIORGI', '', 'MG 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52),
(53, 'BEGASHVILI MARIAMI, SHEVARDENIDZE ANI', '', 'WP 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53),
(54, 'SARGSYAN SAMVEL, GEVORGYAN ARMAN', '', 'MP 9-16', 'ARM', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54),
(55, 'ALLOIAROVA AIHIUL, VOLKOVA VIKTORIA', '', 'WP 9-16', 'UKR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55),
(56, 'TCHIGLADZE GIORGI, DIDBERIDZE BEKA', '', 'MP 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56),
(57, 'JAVAKHISHVILI TATIA, NEBIERIDZE LIZI', '', 'WP 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 57),
(58, 'ABULADZE KRISTINE, DVALISHVILI NINO', '', 'WP 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58),
(59, 'SAKANELASHVILI ANA, AKHMEDOVA NARMIN', '', 'WP 9-16', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59),
(60, 'BASHIROVA LEYLA, MAMMADZADA MANSUMA, FARMANOVA NAZRIN', '', 'WG 10-18', 'AZE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60),
(61, 'MAMEDOVA AILIN, MAMEDOV TURAN', '', 'MXP 10-18', 'AZE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61),
(62, 'MANAGADZE TINA, KUKHIANIDZE INA, LAGADZE ANANO', '', 'WG 10-18', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 62),
(63, 'KODALASHVILI NIKOLOZ, TSIKLAURI MARIAM', '', 'MXP 10-18', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63),
(64, 'FREED RILEY, KICZIA JASSICA, TUTBERIDZE MARIAM', '', 'WG 10-18', 'USA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64),
(65, 'SALAMOVA MEHRIBAN, KHAMIDULIN NIZAM', '', 'MXP 10-18', 'AZE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65),
(66, 'MELIA KRISTINE, KHEIDZE ANASTASIA', '', 'WP 10-18', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 66),
(67, 'IVANKINA OLHA, ALLOIAROVA ALINA', '', 'WP 10-18', 'UKR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 67),
(68, 'OKROPIRIDZE GIORGI, CHANADIRI GIORGI, KHMALADZE GIORGI, MARIDASHVILI SABA', '', 'MG 10- 18', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68),
(69, 'KHALILOVA EMILIA, RUSTAMOVA SAMIRA', '', 'WP 10-18', 'AZE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69),
(70, 'ABBASOV DANIEL, RAFIYEV MURAD', '', 'MP 11-19', 'AZE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70),
(71, 'MGEBRISHVILI MARIAM, BAIDAURI NINO, OMIADZE LIZI', '', 'WG 11-19', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71),
(72, 'FOMENKO ILYA, KARPENKO MARINA', '', 'MXP - 11-19', 'UKR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72),
(73, 'ZEITOUNEI INBAL, ALEINIK NIKOL, HURVITZ MESH', '', 'WG 11-19', 'ISR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73),
(74, 'ZAZADZE SABA, KUTATELADZE TAMAR', '', 'MXP - SENIORS', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74),
(75, 'OVADIA YARIN AVIGAL, TZLIL HURVITZ, OR ARMONI', '', 'WG - SENIORS', 'ISR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'DYNAMIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75),
(76, 'LUKAKHIN MYKYTA, NIKITIN MYKYTA', '', 'MP- SENIORS', 'UKR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'BALANCE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76),
(77, 'BASHIROVA LEYLA, MAMMADZADA MANSUMA, FARMANOVA NAZRIN', '', 'WG 10-18', 'AZE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'COMBINED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(78, 'MAMEDOVA AILIN, MAMEDOV TURAN', '', 'MXP 10-18', 'AZE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'COMBINED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(79, 'MANAGADZE TINA, KUKHIANIDZE INA, LAGADZE ANANO', '', 'WG 10-18', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'COMBINED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(80, 'KODALASHVILI NIKOLOZ, TSIKLAURI MARIAM', '', 'MXP 10-18', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'COMBINED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(81, 'FREED RILEY, KICZIA JASSICA, TUTBERIDZE MARIAM', '', 'WG 10-18', 'USA', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'COMBINED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(82, 'SALAMOVA MEHRIBAN, KHAMIDULIN NIZAM', '', 'MXP 10-18', 'AZE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'COMBINED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(83, 'MELIA KRISTINE, KHEIDZE ANASTASIA', '', 'WP 10-18', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'COMBINED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(84, 'IVANKINA OLHA, ALLOIAROVA ALINA', '', 'WP 10-18', 'UKR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'COMBINED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(85, 'OKROPIRIDZE GIORGI, CHANADIRI GIORGI, KHMALADZE GIORGI, MARIDASHVILI SABA', '', 'MG 10- 18', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'COMBINED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(86, 'KHALILOVA EMILIA, RUSTAMOVA SAMIRA', '', 'WP 10-18', 'AZE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'COMBINED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(87, 'ABBASOV DANIEL, RAFIYEV MURAD', '', 'MP 11-19', 'AZE', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'COMBINED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(88, 'MGEBRISHVILI MARIAM, BAIDAURI NINO, OMIADZE LIZI', '', 'WG 11-19', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'COMBINED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(89, 'FOMENKO ILYA, KARPENKO MARINA', '', 'MXP - 11-19', 'UKR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'COMBINED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(90, 'ZEITOUNEI INBAL, ALEINIK NIKOL, HURVITZ MESH', '', 'WG 11-19', 'ISR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'COMBINED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(91, 'ZAZADZE SABA, KUTATELADZE TAMAR', '', 'MXP - SENIORS', 'GEO', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'COMBINED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(92, 'OVADIA YARIN AVIGAL, TZLIL HURVITZ, OR ARMONI', '', 'WG - SENIORS', 'ISR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'COMBINED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(93, 'LUKAKHIN MYKYTA, NIKITIN MYKYTA', '', 'MP- SENIORS', 'UKR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'COMBINED', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `task_description` mediumtext NOT NULL,
  `done` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_name`, `user_email`, `task_description`, `done`) VALUES
(1, 'ddd', 'aia@gmail.casdom', 'assssssssssss', 1),
(2, 'sssssaaaaaaaassssssssss', 'vovakokaia@gmail.casdom', 'ASD', 1),
(3, 'vovajjj', 'vovakokaia@gmakjil.com', 'asdasdd;;;;', 1),
(4, 'vova', 'vovakokaia@gmail.com', 'asdasdd', 0),
(5, 'vova', 'vovakokaia@gmail.com', 'asdasdasdasdasd', 1),
(6, 'vova', 'vovakokaia@gmail.com', 'asdasdasdaasdsdasd', 0),
(7, 'vova', 'vovakokaia@gmail.com', 'asdddddddddddddd', 0),
(8, 'vova', 'vovakokaia@gmail.com', 'asdddddddddddddd', 0),
(9, 'vova', 'vovakokaia@gmail.com', 'asddddddddddddddddddddddddd', 0),
(10, 'vova', 'vovakokaia@gmail.com', 'asddddddddddddddddddddddddd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `judge_category` varchar(10) NOT NULL DEFAULT '',
  `super_judge` int(1) DEFAULT 0,
  `admin` int(1) NOT NULL DEFAULT 0,
  `table_a` int(1) NOT NULL DEFAULT 0,
  `pause` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `judge_category`, `super_judge`, `admin`, `table_a`, `pause`) VALUES
(1, '1', '1', 'A_1', 0, 0, 0, 0),
(2, '2', '2', 'A_2', 0, 0, 0, 0),
(3, '3', '3', 'A_3', 0, 0, 0, 0),
(4, '4', '4', 'A_4', 0, 0, 0, 0),
(5, '5', '5', 'E_1', 0, 0, 0, 0),
(6, '6', '6', 'E_2', 0, 0, 0, 0),
(7, '7', '7', 'E_3', 0, 0, 0, 0),
(8, '8', '8', 'E_4', 0, 0, 0, 0),
(9, '9', '9', '', 1, 0, 0, 0),
(10, '10', '10', '', 0, 1, 0, 0),
(11, '11', '11', '', 0, 0, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bsc`
--
ALTER TABLE `bsc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bsw`
--
ALTER TABLE `bsw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msc`
--
ALTER TABLE `msc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msw`
--
ALTER TABLE `msw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sportsmens`
--
ALTER TABLE `sportsmens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bsc`
--
ALTER TABLE `bsc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bsw`
--
ALTER TABLE `bsw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `msc`
--
ALTER TABLE `msc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `msw`
--
ALTER TABLE `msw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sportsmens`
--
ALTER TABLE `sportsmens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14775;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

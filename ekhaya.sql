-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2022 at 12:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ekhaya`

DROP DATABASE IF EXISTS ekhaya;

CREATE DATABASE IF NOT EXISTS ekhaya;
--

USE ekhaya;
-- --------------------------------------------------------

--
-- Table structure for table `breeds`
--

CREATE TABLE `breeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `breeds`
--

INSERT INTO `breeds` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Cormorant, neotropic', NULL, NULL),
(2, 'Fork-tailed drongo', NULL, NULL),
(3, 'Common wolf', NULL, NULL),
(4, 'Bent-toed gecko', NULL, NULL),
(5, 'Duck, mountain', NULL, NULL),
(6, 'Lemur, brown', NULL, NULL),
(7, 'Buffalo, american', NULL, NULL),
(8, 'Vulture, turkey', NULL, NULL),
(9, 'Boa, malagasy ground', NULL, NULL),
(10, 'Snake, western patch-nosed', NULL, NULL),
(11, 'Chacma baboon', NULL, NULL),
(12, 'King vulture', NULL, NULL),
(13, 'Seven-banded armadillo', NULL, NULL),
(14, 'Shrike, common boubou', NULL, NULL),
(15, 'Mocking cliffchat', NULL, NULL),
(16, 'Coyote', NULL, NULL),
(17, 'Pied kingfisher', NULL, NULL),
(18, 'Otter, cape clawless', NULL, NULL),
(19, 'Skua, great', NULL, NULL),
(20, 'Fat-tailed dunnart', NULL, NULL),
(21, 'Common genet', NULL, NULL),
(22, 'Crown of thorns starfish', NULL, NULL),
(23, 'Barasingha deer', NULL, NULL),
(24, 'Pied cormorant', NULL, NULL),
(25, 'Booby, masked', NULL, NULL),
(26, 'Partridge, coqui', NULL, NULL),
(27, 'Rhea, greater', NULL, NULL),
(28, 'Jackrabbit, white-tailed', NULL, NULL),
(29, 'Squirrel, indian giant', NULL, NULL),
(30, 'Lesser double-collared sunbird', NULL, NULL),
(31, 'Thomson\'s gazelle', NULL, NULL),
(32, 'Goose, canada', NULL, NULL),
(33, 'Woodchuck', NULL, NULL),
(34, 'Spectacled caiman', NULL, NULL),
(35, 'White-fronted bee-eater', NULL, NULL),
(36, 'White-tailed deer', NULL, NULL),
(37, 'Crane, sandhill', NULL, NULL),
(38, 'Lion, southern sea', NULL, NULL),
(39, 'Emu', NULL, NULL),
(40, 'Coyote', NULL, NULL),
(41, 'Boa, cook\'s tree', NULL, NULL),
(42, 'Jackal, golden', NULL, NULL),
(43, 'Gnu, brindled', NULL, NULL),
(44, 'Asian lion', NULL, NULL),
(45, 'Least chipmunk', NULL, NULL),
(46, 'Woolly-necked stork', NULL, NULL),
(47, 'Campo flicker', NULL, NULL),
(48, 'Jackal, asiatic', NULL, NULL),
(49, 'Eastern diamondback rattlesnake', NULL, NULL),
(50, 'Long-tailed skua', NULL, NULL),
(51, 'Elegant crested tinamou', NULL, NULL),
(52, 'Ibis, puna', NULL, NULL),
(53, 'Cape raven', NULL, NULL),
(54, 'Cape starling', NULL, NULL),
(55, 'Urial', NULL, NULL),
(56, 'Great skua', NULL, NULL),
(57, 'Western patch-nosed snake', NULL, NULL),
(58, 'Brocket, red', NULL, NULL),
(59, 'Fringe-eared oryx', NULL, NULL),
(60, 'Screamer, southern', NULL, NULL),
(61, 'Asiatic wild ass', NULL, NULL),
(62, 'Violet-eared waxbill', NULL, NULL),
(63, 'Macaw, red and blue', NULL, NULL),
(64, 'North American red fox', NULL, NULL),
(65, 'Lily trotter', NULL, NULL),
(66, 'Galapagos tortoise', NULL, NULL),
(67, 'Egret, snowy', NULL, NULL),
(68, 'Roller, lilac-breasted', NULL, NULL),
(69, 'Macaw, blue and yellow', NULL, NULL),
(70, 'Skunk, western spotted', NULL, NULL),
(71, 'Gazer, sun', NULL, NULL),
(72, 'Pigeon, wood', NULL, NULL),
(73, 'Deer, red', NULL, NULL),
(74, 'Cape Barren goose', NULL, NULL),
(75, 'Gila monster', NULL, NULL),
(76, 'Nighthawk, common', NULL, NULL),
(77, 'Boa, mexican', NULL, NULL),
(78, 'Capuchin, black-capped', NULL, NULL),
(79, 'Indian jackal', NULL, NULL),
(80, 'Savanna baboon', NULL, NULL),
(81, 'Malagasy ground boa', NULL, NULL),
(82, 'Lion, steller sea', NULL, NULL),
(83, 'Western spotted skunk', NULL, NULL),
(84, 'Macaque, bonnet', NULL, NULL),
(85, 'Otter, brazilian', NULL, NULL),
(86, 'Lion, galapagos sea', NULL, NULL),
(87, 'Eagle, bald', NULL, NULL),
(88, 'Gonolek, burchell\'s', NULL, NULL),
(89, 'Seal, southern elephant', NULL, NULL),
(90, 'Coke\'s hartebeest', NULL, NULL),
(91, 'White-cheeked pintail', NULL, NULL),
(92, 'Rhesus monkey', NULL, NULL),
(93, 'Bear, sloth', NULL, NULL),
(94, 'Gecko, tokay', NULL, NULL),
(95, 'Monkey, black spider', NULL, NULL),
(96, 'Malleefowl', NULL, NULL),
(97, 'House crow', NULL, NULL),
(98, 'Monkey, red howler', NULL, NULL),
(99, 'Horned lark', NULL, NULL),
(100, 'Langur, hanuman', NULL, NULL),
(101, 'Otter, small-clawed', NULL, NULL),
(102, 'Stone sheep', NULL, NULL),
(103, 'Cormorant, neotropic', NULL, NULL),
(104, 'White-necked stork', NULL, NULL),
(105, 'Fisher', NULL, NULL),
(106, 'Dragon, western bearded', NULL, NULL),
(107, 'Hare, arctic', NULL, NULL),
(108, 'Brindled gnu', NULL, NULL),
(109, 'Fox, silver-backed', NULL, NULL),
(110, 'Secretary bird', NULL, NULL),
(111, 'Waxbill, violet-eared', NULL, NULL),
(112, 'Blackish oystercatcher', NULL, NULL),
(113, 'Stork, black-necked', NULL, NULL),
(114, 'Cuis', NULL, NULL),
(115, 'Red-cheeked cordon bleu', NULL, NULL),
(116, 'Grison', NULL, NULL),
(117, 'Giant otter', NULL, NULL),
(118, 'Fox, crab-eating', NULL, NULL),
(119, 'Capybara', NULL, NULL),
(120, 'Grenadier, purple', NULL, NULL),
(121, 'Sulfur-crested cockatoo', NULL, NULL),
(122, 'Wombat, common', NULL, NULL),
(123, 'Skink, african', NULL, NULL),
(124, 'Southern brown bandicoot', NULL, NULL),
(125, 'African wild dog', NULL, NULL),
(126, 'South American puma', NULL, NULL),
(127, 'Crake, african black', NULL, NULL),
(128, 'Giant otter', NULL, NULL),
(129, 'Pacific gull', NULL, NULL),
(130, 'Drongo, fork-tailed', NULL, NULL),
(131, 'Cow, scottish highland', NULL, NULL),
(132, 'Black-tailed tree creeper', NULL, NULL),
(133, 'Blue-breasted cordon bleu', NULL, NULL),
(134, 'Roadrunner, greater', NULL, NULL),
(135, 'Black-capped capuchin', NULL, NULL),
(136, 'Kaffir cat', NULL, NULL),
(137, 'Harbor seal', NULL, NULL),
(138, 'Rainbow lory', NULL, NULL),
(139, 'Marine iguana', NULL, NULL),
(140, 'Wild turkey', NULL, NULL),
(141, 'Raccoon, crab-eating', NULL, NULL),
(142, 'Kingfisher, malachite', NULL, NULL),
(143, 'Sunbird, lesser double-collared', NULL, NULL),
(144, 'Capuchin, brown', NULL, NULL),
(145, 'Black bear', NULL, NULL),
(146, 'Brown and yellow marshbird', NULL, NULL),
(147, 'Striped skunk', NULL, NULL),
(148, 'Rattlesnake, horned', NULL, NULL),
(149, 'Pheasant, common', NULL, NULL),
(150, 'Blue shark', NULL, NULL),
(151, 'Bee-eater, nubian', NULL, NULL),
(152, 'Macaw, scarlet', NULL, NULL),
(153, 'Black-capped chickadee', NULL, NULL),
(154, 'Deer, roe', NULL, NULL),
(155, 'Red-headed woodpecker', NULL, NULL),
(156, 'Sloth, two-toed', NULL, NULL),
(157, 'Grison', NULL, NULL),
(158, 'Eagle, white-bellied sea', NULL, NULL),
(159, 'Savannah deer (unidentified)', NULL, NULL),
(160, 'Carmine bee-eater', NULL, NULL),
(161, 'Lemur, sportive', NULL, NULL),
(162, 'Oriental white-backed vulture', NULL, NULL),
(163, 'Silver-backed jackal', NULL, NULL),
(164, 'Cockatoo, sulfur-crested', NULL, NULL),
(165, 'Honey badger', NULL, NULL),
(166, 'Hawk, ferruginous', NULL, NULL),
(167, 'Turkey, common', NULL, NULL),
(168, 'Porcupine, indian', NULL, NULL),
(169, 'Southern sea lion', NULL, NULL),
(170, 'Cormorant, large', NULL, NULL),
(171, 'American bison', NULL, NULL),
(172, 'Griffon vulture', NULL, NULL),
(173, 'White-browed sparrow weaver', NULL, NULL),
(174, 'Black-throated butcher bird', NULL, NULL),
(175, 'Asian false vampire bat', NULL, NULL),
(176, 'Porcupine, indian', NULL, NULL),
(177, 'Dark-winged trumpeter', NULL, NULL),
(178, 'Iguana, common green', NULL, NULL),
(179, 'Coqui partridge', NULL, NULL),
(180, 'Seal, northern elephant', NULL, NULL),
(181, 'Skua, great', NULL, NULL),
(182, 'Fisher', NULL, NULL),
(183, 'Canadian tiger swallowtail butterfly', NULL, NULL),
(184, 'Ring-tailed gecko', NULL, NULL),
(185, 'Topi', NULL, NULL),
(186, 'Giant otter', NULL, NULL),
(187, 'Nilgai', NULL, NULL),
(188, 'Wild turkey', NULL, NULL),
(189, 'Ring-necked pheasant', NULL, NULL),
(190, 'Blacksmith plover', NULL, NULL),
(191, 'White-throated kingfisher', NULL, NULL),
(192, 'Anteater, australian spiny', NULL, NULL),
(193, 'Bleeding heart monkey', NULL, NULL),
(194, 'Long-billed corella', NULL, NULL),
(195, 'Bulbul, african red-eyed', NULL, NULL),
(196, 'Chilean flamingo', NULL, NULL),
(197, 'Wallaby, dama', NULL, NULL),
(198, 'Curlew, black', NULL, NULL),
(199, 'Burrowing owl', NULL, NULL),
(200, 'Eagle, golden', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cattle_purchases`
--

CREATE TABLE `cattle_purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total_price` decimal(8,2) NOT NULL,
  `farmer_id` bigint(20) UNSIGNED NOT NULL,
  `herd_id` bigint(20) UNSIGNED NOT NULL,
  `total_calves` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cows`
--

CREATE TABLE `cows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` decimal(8,2) NOT NULL,
  `age` int(11) NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `breed_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cattle_purchase_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

CREATE TABLE `farmers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locationName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farmers`
--

INSERT INTO `farmers` (`id`, `firstName`, `surname`, `locationName`, `contact`, `latitude`, `longitude`, `gender`, `created_at`, `updated_at`) VALUES
(1, 'Pedro', 'Isham', 'Antas', '309-683-6716', '-16.0036602', '34.92227173', 'Male', '2022-03-28 03:13:38', '2022-04-29 08:04:11'),
(2, 'Kinsley', 'Keywood', 'Thị Trấn Mường Khến', '329-183-3287', '-16.63799477', '34.93051147', 'Male', '2021-05-03 19:59:38', '2022-04-29 08:05:01'),
(3, 'Tomi', 'Nise', 'Kargowa', '669-325-5394', '-14.38303566', '33.72444534', 'Female', '2020-11-10 23:25:58', '2022-04-29 08:05:37'),
(4, 'Ethelred', 'Gogerty', 'Klapagada', '847-875-8895', '-16.13310432', '35.55135345', 'Male', '2022-02-14 18:53:23', '2022-04-29 08:06:35'),
(5, 'Burch', 'Rate', 'Dongxiang', '709-335-6318', '35.663752', '103.389346', 'Male', '2022-03-03 08:59:14', NULL),
(6, 'Kristen', 'Brokenshaw', 'Guam Government House', '236-876-6797', '13.4767279', '144.7651497', 'Female', '2020-03-03 08:47:33', NULL),
(7, 'Alberik', 'Huban', 'Agnibilékrou', '423-877-5945', '7.1302807', '-3.2030756', 'Male', '2022-02-20 12:42:17', NULL),
(8, 'Godfree', 'Sprade', 'Marne-la-Vallée', '459-580-2440', '48.840109', '2.586253', 'Male', '2021-01-23 09:45:38', NULL),
(9, 'Ameline', 'Kettles', 'Eschweiler', '500-775-3232', '49.99754', '5.9475635', 'Female', '2022-02-16 19:38:54', NULL),
(10, 'Hamil', 'Grason', 'Ronov nad Doubravou', '936-104-8304', '49.8881618', '15.5262702', 'Male', '2020-11-25 12:03:18', NULL),
(11, 'Bunni', 'Chisnall', 'Michurinskoye', '686-446-0550', '60.562013', '29.8532768', 'Female', '2020-05-05 10:40:55', NULL),
(12, 'Jud', 'Dreossi', 'Dinājpur', '110-280-2590', '25.6279123', '88.6331758', 'Male', '2020-04-01 00:47:46', NULL),
(13, 'Ogden', 'Miall', 'Pangkalan Kasai', '473-220-8833', '-0.6059095', '102.4151335', 'Male', '2021-08-13 14:52:22', NULL),
(14, 'Lisle', 'Witherdon', 'Zherdevka', '425-189-8695', '51.84861', '41.46056', 'Male', '2020-10-07 15:44:39', NULL),
(15, 'Eleonore', 'Breitler', 'Yueyahe', '608-179-4817', '39.16405', '117.246702', 'Female', '2020-02-25 07:20:34', NULL),
(16, 'Yuri', 'Skeleton', 'Wenfang', '638-326-2066', '26.015959', '116.602435', 'Male', '2021-03-29 20:30:38', NULL),
(17, 'Thia', 'Handling', 'Kultayevo', '196-586-4977', '57.8948', '55.9378', 'Female', '2021-07-07 13:57:55', NULL),
(18, 'Stefa', 'Whetton', 'Hartford', '860-412-2734', '41.76', '-72.69', 'Female', '2020-02-09 05:01:26', NULL),
(19, 'Wood', 'Castellini', 'Zuogaiduoma', '136-244-8742', '35.054002', '103.133562', 'Male', '2021-11-18 11:47:11', NULL),
(20, 'Carrol', 'Storrock', 'Gunungsubang', '668-496-2023', '-7.370819', '108.1976493', 'Male', '2022-04-19 21:11:53', NULL),
(21, 'Clive', 'Redhills', 'San Jose', '408-919-9791', '37.3326639', '-121.8918364', 'Male', '2022-02-19 10:51:22', NULL),
(22, 'Tildi', 'Nellen', 'Bakau', '499-393-3710', '-5.85', '105.75', 'Female', '2020-07-21 14:28:23', NULL),
(23, 'Chloris', 'Jukubczak', 'Galamares', '105-833-7459', '38.7988434', '-9.4143322', 'Female', '2020-09-06 16:39:30', NULL),
(24, 'Gan', 'Hudspith', 'Kirawsk', '584-747-8591', '53.2691975', '29.4765175', 'Male', '2020-10-16 05:35:11', NULL),
(25, 'Winnifred', 'MacGillivray', 'Kowary', '821-258-2391', '50.7798051', '15.8470487', 'Female', '2021-05-02 22:40:43', NULL),
(26, 'Finn', 'Haddon', 'Sepekov', '274-509-8226', '49.4411457', '14.4059275', 'Male', '2021-12-15 02:13:41', NULL),
(27, 'Tersina', 'Possel', 'Pakel', '459-322-7917', '-8.1553145', '111.8270486', 'Female', '2021-10-13 04:16:07', NULL),
(28, 'Cynthy', 'Awdry', 'Limbuš', '934-583-7376', '46.5548251', '15.5817763', 'Female', '2021-09-21 15:05:21', NULL),
(29, 'Christal', 'Badini', 'Lukunor', '809-143-3772', '5.5047283', '153.8190084', 'Female', '2020-09-06 07:47:35', NULL),
(30, 'Dev', 'Quarterman', 'Sundsvall', '575-324-0165', '63.0040018', '16.6737805', 'Male', '2020-06-18 10:37:48', NULL),
(31, 'Jeanna', 'Tellenbach', 'Funan Chengguanzhen', '740-110-0733', '32.6350368', '115.5777522', 'Female', '2022-03-19 01:19:13', NULL),
(32, 'Rees', 'Whorton', 'Leiden', '586-258-9242', '52.1513886', '4.4982869', 'Male', '2021-06-01 10:14:55', NULL),
(33, 'Lenci', 'Rowlett', 'Jinguoping', '825-278-7487', '30.289195', '110.224358', 'Male', '2021-08-09 17:05:13', NULL),
(34, 'Matelda', 'Tumber', 'Olympia', '360-312-3691', '47.0378741', '-122.9006951', 'Female', '2022-04-16 19:23:27', NULL),
(35, 'Melissa', 'Messager', 'Bailingnao', '124-602-2419', '41.2867601', '110.2374621', 'Female', '2022-04-01 07:23:56', NULL),
(36, 'Maddy', 'Baddoe', 'Xiangdian', '969-232-9654', '24.4908935', '118.1202121', 'Male', '2021-04-11 21:12:30', NULL),
(37, 'Janis', 'Franzolini', 'Vukatanë', '740-831-5010', '42.0256691', '19.547883', 'Female', '2021-06-02 22:51:49', NULL),
(38, 'Welby', 'Liccardo', 'Casigua El Cubo', '502-787-9754', '8.7461253', '-72.5263984', 'Male', '2020-12-28 16:13:34', NULL),
(39, 'Dulcinea', 'Wilbore', 'Tanjung Palas', '712-873-9525', '2.8426922', '117.2911248', 'Female', '2021-04-21 21:33:01', NULL),
(40, 'Iggy', 'Aukland', 'Nanwai', '588-450-1967', '23.028956', '113.143441', 'Male', '2020-12-24 12:37:05', NULL),
(41, 'Claybourne', 'Jemison', 'Shuijiang', '411-877-3096', '24.9663939', '102.6354187', 'Male', '2021-12-27 06:16:08', NULL),
(42, 'Rourke', 'Baumler', 'Zinat', '644-630-3044', '35.4709893', '-5.4057358', 'Male', '2020-02-11 01:23:20', NULL),
(43, 'Myrah', 'Hassan', 'Pitanga', '729-615-3086', '-24.7592533', '-51.7601166', 'Female', '2020-11-24 09:07:51', NULL),
(44, 'Minnaminnie', 'Lates', 'Dežanovac', '269-240-4923', '45.5691045', '17.0860622', 'Female', '2021-07-28 16:56:53', NULL),
(45, 'Kariotta', 'Fanton', 'Chisht-e Sharīf', '440-241-2667', '34.34013', '63.75288', 'Female', '2020-08-10 10:21:46', NULL),
(46, 'Freeman', 'Wild', 'Madrid', '805-632-0887', '14.4994231', '121.0204566', 'Male', '2022-03-20 14:30:55', NULL),
(47, 'Diarmid', 'Harrell', 'Si Ma Cai', '654-116-1892', '22.6659838', '104.262851', 'Male', '2021-07-24 21:51:30', NULL),
(48, 'Bamby', 'Ripper', 'Vazante', '706-391-6810', '-17.7050221', '-46.7478493', 'Female', '2021-11-09 01:15:45', NULL),
(49, 'Griswold', 'Crimes', 'Khvatovka', '287-515-0313', '52.3554418', '46.5615075', 'Male', '2022-02-10 07:56:12', NULL),
(50, 'Cathy', 'Livings', 'Maliiha', '472-492-8322', '-9.5541709', '119.0285355', 'Female', '2021-12-20 16:28:21', NULL),
(51, 'Hyacinthia', 'Lathleiff', 'Koksovyy', '135-473-0379', '56.1252914', '86.0314623', 'Female', '2021-07-29 06:23:16', NULL),
(52, 'Hogan', 'Crampton', 'Kwale', '305-841-4729', '5.7098271', '6.4343621', 'Male', '2021-05-01 14:47:04', NULL),
(53, 'Diahann', 'Francom', 'Götene', '710-700-2993', '58.5235952', '13.4953857', 'Female', '2021-11-28 23:48:12', NULL),
(54, 'Antonietta', 'Rudolf', 'Örebro', '199-185-4443', '59.2256419', '15.1567161', 'Female', '2020-04-08 20:50:04', NULL),
(55, 'Urban', 'Dockwray', 'Studenec', '718-174-8533', '49.2001199', '16.0648122', 'Male', '2021-11-14 06:37:02', NULL),
(56, 'Starr', 'Fawdry', 'Tarnawatka', '428-991-8503', '50.5368321', '23.4027578', 'Female', '2020-12-20 10:21:20', NULL),
(57, 'Kata', 'Spritt', 'Banjar Baleagung', '364-200-8580', '-8.3797336', '115.1681911', 'Female', '2021-07-30 09:24:34', NULL),
(58, 'Fernande', 'Tiffany', 'Chagang', '184-890-5552', '47.335654', '123.18754', 'Female', '2021-06-17 05:32:42', NULL),
(59, 'Silas', 'Grealish', 'Ansermanuevo', '753-574-2323', '4.7703172', '-76.0623979', 'Male', '2020-07-02 20:07:17', NULL),
(60, 'Carey', 'Courcey', 'Cajuru', '866-646-9835', '-21.2755425', '-47.3013532', 'Female', '2020-08-11 09:38:32', NULL),
(61, 'Flynn', 'Dyett', 'Kadyy', '244-691-8908', '57.7856103', '43.200317', 'Male', '2020-11-10 10:33:33', NULL),
(62, 'Sorcha', 'Corsar', 'Enköping', '969-437-6648', '59.6517905', '17.0779098', 'Female', '2021-01-09 13:03:47', NULL),
(63, 'Irita', 'Chawner', 'Yur’yev-Pol’skiy', '335-921-0493', '56.5005833', '39.6794042', 'Female', '2021-09-15 22:07:58', NULL),
(64, 'Milo', 'Lucian', 'Zoumaping', '620-782-3471', '29.470982', '110.441976', 'Male', '2021-12-07 00:32:15', NULL),
(65, 'Lavena', 'Rapps', 'Nantes', '600-637-3782', '47.2550409', '-1.5401497', 'Female', '2020-03-16 01:15:22', NULL),
(66, 'Logan', 'Buret', 'Péruwelz', '141-169-7912', '50.5474037', '3.5567339', 'Male', '2021-05-24 15:45:53', NULL),
(67, 'Blair', 'Insall', 'Chigorodó', '928-691-3900', '7.665099', '-76.67749', 'Female', '2020-03-24 17:28:12', NULL),
(68, 'Mellisa', 'Rosenfrucht', 'Tangkeng', '125-157-1281', '23.742497', '116.187145', 'Female', '2021-03-20 18:14:58', NULL),
(69, 'Lishe', 'Strattan', 'Fairbanks', '907-547-4453', '64.8377778', '-147.7163888', 'Female', '2021-09-27 15:21:20', NULL),
(70, 'Stan', 'Monketon', 'Mekarjaya Satu', '176-538-8805', '-5.9946384', '107.1326703', 'Male', '2020-05-22 12:13:18', NULL),
(71, 'Olly', 'Gillham', 'Pilchowice', '200-879-1513', '50.2135674', '18.5396797', 'Female', '2020-03-15 10:00:34', NULL),
(72, 'Cos', 'Yaus', 'Bodĭ', '772-580-7156', '47.918302', '106.915572', 'Male', '2021-10-24 15:46:26', NULL),
(73, 'Tedra', 'Domoney', 'Louisville', '502-951-5311', '38.2473', '-85.68525', 'Female', '2021-06-13 10:34:28', NULL),
(74, 'Alwyn', 'Strangwood', 'Jiagao', '642-611-9713', '23.9827596', '97.8739419', 'Male', '2021-01-28 10:47:31', NULL),
(75, 'Ransom', 'Pritchard', 'Ludgeřovice', '130-448-0951', '49.89042', '18.2400902', 'Male', '2020-04-14 19:37:17', NULL),
(76, 'Mikey', 'Di Meo', 'Xianshui', '900-335-2906', '30.975215', '101.127088', 'Male', '2021-02-03 05:59:17', NULL),
(77, 'Krystle', 'Rysom', 'Grodzisk Mazowiecki', '422-934-5118', '52.1087493', '20.6266832', 'Female', '2021-09-04 05:35:08', NULL),
(78, 'Bernete', 'Spedding', 'Maturín', '114-208-4090', '9.7333906', '-63.1914317', 'Female', '2020-10-17 07:04:51', NULL),
(79, 'Betteann', 'Forsythe', 'Badou', '968-118-3995', '7.5866041', '0.6085749', 'Female', '2021-06-07 18:30:46', NULL),
(80, 'Florette', 'Kennard', 'Tostado', '182-750-8360', '-38.9472836', '-68.1132357', 'Female', '2021-09-11 12:01:28', NULL),
(81, 'Kala', 'Reeder', 'Rosice', '525-381-5957', '49.3320487', '15.6123444', 'Female', '2020-06-20 20:00:32', NULL),
(82, 'Mirella', 'Pargiter', 'San Gil', '262-221-9630', '6.5905816', '-73.1526623', 'Female', '2021-02-11 02:53:45', NULL),
(83, 'Selene', 'Yegorchenkov', 'La Trinidad', '700-214-4466', '16.4452765', '120.5881071', 'Female', '2021-10-15 16:26:20', NULL),
(84, 'Dona', 'Orneles', 'Tagdanua', '102-340-3634', '14.6484972', '121.0782757', 'Female', '2022-02-05 06:23:38', NULL),
(85, 'Page', 'Edards', 'Penanggal', '542-826-5496', '-8.1461903', '113.0428974', 'Female', '2021-01-17 11:22:25', NULL),
(86, 'Lenette', 'Mitchell', 'Penedono', '107-734-4801', '40.9903208', '-7.3943499', 'Female', '2020-09-19 20:55:05', NULL),
(87, 'Nikki', 'Batte', 'Hecun', '967-555-7901', '28.663694', '118.534841', 'Male', '2021-11-03 06:00:04', NULL),
(88, 'Cirillo', 'Tomasian', 'Épinal', '942-113-4917', '48.2216277', '6.4359118', 'Male', '2020-08-31 09:11:07', NULL),
(89, 'Tiffi', 'Keetley', 'Jastrzębia', '394-313-2549', '51.5047917', '21.2618048', 'Female', '2020-12-15 03:03:54', NULL),
(90, 'Wildon', 'Feechan', 'West End', '660-590-7954', '26.6866896', '-78.9712451', 'Male', '2021-11-05 19:13:31', NULL),
(91, 'Bobbi', 'Craighall', 'Volodymyr-Volyns’kyy', '874-575-3543', '50.85253', '24.32364', 'Female', '2020-09-12 05:15:35', NULL),
(92, 'Michail', 'Metcalfe', 'Yubileynyy', '322-332-7141', '55.3440711', '86.1268949', 'Male', '2021-09-12 10:52:34', NULL),
(93, 'Samuele', 'Biaggioli', 'Moinhos', '272-498-6403', '41.5277358', '-8.5840028', 'Male', '2021-04-10 14:11:27', NULL),
(94, 'Alden', 'Bampkin', 'Zaragoza', '494-412-5131', '28.4943597', '-100.9185477', 'Male', '2020-01-07 19:27:15', NULL),
(95, 'Aurea', 'McDyer', 'Mojogajeh', '822-328-6590', '-7.807286', '110.5860937', 'Female', '2021-08-11 21:34:03', NULL),
(96, 'Tybalt', 'Bhatia', 'Pępowo', '732-885-3129', '51.7597721', '17.1196937', 'Male', '2020-08-31 19:04:20', NULL),
(97, 'Rik', 'Monro', 'Palestina', '226-946-4724', '5.0549877', '-75.6789905', 'Male', '2020-10-05 05:23:57', NULL),
(98, 'Nicoli', 'Fant', 'Nowe', '349-658-4638', '52.296876', '19.191129', 'Female', '2020-09-17 09:42:31', NULL),
(99, 'Bram', 'Bourchier', 'Usatove', '534-272-6493', '46.5328668', '30.6579315', 'Male', '2020-09-24 20:17:28', NULL),
(100, 'Berte', 'Bennen', 'Bijie', '501-515-4185', '27.283955', '105.291643', 'Female', '2020-06-24 09:37:40', NULL),
(101, 'Valeda', 'Petrus', 'Tučepi', '739-309-0588', '43.285793', '17.0893798', 'Female', '2021-07-19 15:14:28', NULL),
(102, 'Preston', 'Stichel', 'Jacareí', '594-303-0716', '-23.2987827', '-45.9662542', 'Male', '2022-01-15 15:05:21', NULL),
(103, 'Louisa', 'Cardozo', 'Rolante', '476-546-9589', '-29.6216078', '-50.534262', 'Female', '2021-07-01 15:42:05', NULL),
(104, 'Dell', 'Shernock', 'Ube', '899-846-4161', '34.0319016', '131.0103712', 'Male', '2021-09-02 20:56:19', NULL),
(105, 'Sanford', 'Rundle', 'Lidoríki', '228-523-9519', '38.5274257', '22.2033742', 'Male', '2021-10-19 04:33:25', NULL),
(106, 'Willie', 'Splevings', 'Ash Shafā', '842-620-0457', '21.0744245', '40.3241759', 'Female', '2022-01-20 02:43:17', NULL),
(107, 'Christine', 'Artiss', 'Lékoni', '447-354-8678', '-1.5844023', '14.2657584', 'Female', '2019-12-31 23:20:44', NULL),
(108, 'Kane', 'Kleine', 'Almeria', '206-464-1029', '14.3876884', '121.0011959', 'Male', '2021-10-25 21:22:44', NULL),
(109, 'Josefina', 'Tregent', 'Taavetti', '503-114-1972', '60.1996809', '24.8958285', 'Female', '2020-12-04 07:51:20', NULL),
(110, 'Roberto', 'Gannan', 'Linjiang', '421-495-1244', '41.811979', '126.918087', 'Male', '2020-10-14 12:49:13', NULL),
(111, 'Mathe', 'Chillcot', 'Loyola', '225-458-4291', '14.6131569', '120.998941', 'Male', '2020-03-13 08:48:07', NULL),
(112, 'Saunderson', 'Granleese', 'Prigrevica', '209-622-2307', '45.6851883', '19.0839618', 'Male', '2020-04-02 18:26:01', NULL),
(113, 'Kingsly', 'Semrad', 'Shalinskoye', '631-109-9343', '55.7279446', '93.768409', 'Male', '2020-12-06 15:33:12', NULL),
(114, 'Issi', 'Brann', 'Fujia', '199-525-1688', '26.4836842', '117.9249002', 'Female', '2021-02-13 08:41:39', NULL),
(115, 'Weider', 'Milington', 'Metu', '666-810-8691', '8.2961481', '35.5821994', 'Male', '2021-11-11 02:35:04', NULL),
(116, 'Gawen', 'Welford', 'Sunjia Buzi', '674-896-5510', '43.617445', '124.139465', 'Male', '2020-07-18 09:53:27', NULL),
(117, 'Loretta', 'Manthroppe', 'Blois', '945-932-5170', '47.594843', '1.3155028', 'Female', '2020-06-24 11:34:22', NULL),
(118, 'Livvie', 'Taborre', 'Longqiao', '411-261-2902', '31.026394', '103.757315', 'Female', '2020-02-13 01:39:47', NULL),
(119, 'Cchaddie', 'Bielby', 'Waterbury', '203-606-6751', '41.56', '-73.05', 'Male', '2020-11-21 22:15:13', NULL),
(120, 'Marco', 'Byway', 'Hekou', '862-123-5444', '22.529403', '103.93935', 'Male', '2021-03-09 19:23:42', NULL),
(121, 'Carly', 'Lammerich', 'Foluo', '750-557-6621', '18.578496', '108.736289', 'Male', '2022-01-19 23:16:33', NULL),
(122, 'Barbaraanne', 'Cobbledick', 'Bei’an', '673-652-5130', '48.239135', '126.481867', 'Female', '2021-03-19 03:54:34', NULL),
(123, 'Bryana', 'Goreway', 'Sonina', '339-301-3945', '50.057265', '22.275776', 'Female', '2022-02-24 11:55:07', NULL),
(124, 'Dalston', 'Celes', 'Ushibuka', '684-346-3979', '32.19537', '130.02554', 'Male', '2021-11-28 06:10:51', NULL),
(125, 'Cyril', 'Jaycocks', 'Chavárion', '729-524-7957', '37.8471205', '21.3833543', 'Male', '2020-08-02 11:29:46', NULL),
(126, 'Peyter', 'Van Niekerk', 'Al Hijrah', '252-131-4486', '17.29788', '43.38718', 'Male', '2020-01-13 04:13:17', NULL),
(127, 'Enrico', 'Lukesch', 'Stoney Ground', '582-629-3995', '18.2178068', '-63.0471786', 'Male', '2021-03-11 13:39:15', NULL),
(128, 'Arnoldo', 'Rummings', 'Kertai', '835-251-4463', '46.900546', '124.214976', 'Male', '2020-03-08 17:00:39', NULL),
(129, 'Sharla', 'Keenlyside', 'Yaojiaji', '180-662-7707', '31.947507', '112.017723', 'Female', '2021-12-30 04:52:35', NULL),
(130, 'Conn', 'Mattaser', 'Jankovec', '224-604-4592', '41.11028', '21.01139', 'Male', '2020-08-08 01:35:02', NULL),
(131, 'Cullin', 'Campany', 'Gorno Orizari', '967-330-4096', '41.0423985', '21.3607894', 'Male', '2021-10-11 20:13:17', NULL),
(132, 'Evita', 'Scarbarrow', 'Columbia', '573-357-7330', '38.9331391', '-92.3738037', 'Female', '2021-05-29 21:44:28', NULL),
(133, 'Wilmette', 'Mallaby', 'Baños', '989-977-8958', '-1.3928344', '-78.4268758', 'Female', '2021-06-23 18:36:30', NULL),
(134, 'Dell', 'Diggar', 'Pārūn', '512-906-0405', '35.3170344', '70.8744255', 'Female', '2020-01-27 05:18:20', NULL),
(135, 'Durante', 'Coade', 'Warungsugan', '106-458-3107', '-6.5930581', '105.977608', 'Male', '2021-09-11 03:58:34', NULL),
(136, 'Berry', 'Tuxell', 'Quevedo', '402-883-7985', '-1.0225124', '-79.4604035', 'Female', '2021-03-28 11:32:05', NULL),
(137, 'Miltie', 'Cantrill', 'Fresno', '209-967-0221', '36.7949518', '-119.7541856', 'Male', '2021-05-17 14:23:31', NULL),
(138, 'Dulci', 'Shenfish', 'Lyon', '227-334-3211', '43.0429124', '1.9038837', 'Female', '2020-09-05 12:14:57', NULL),
(139, 'Star', 'Hilling', 'La Huerta', '501-893-1604', '19.4840721', '-99.2304004', 'Female', '2022-01-20 11:55:16', NULL),
(140, 'Mirabel', 'Scamaden', 'Jiangmen', '300-241-2828', '22.579117', '113.081508', 'Female', '2022-01-03 12:04:24', NULL),
(141, 'Stacy', 'Kyffin', 'Figueira', '491-456-8234', '37.0741297', '-8.8436815', 'Male', '2022-02-10 02:03:51', NULL),
(142, 'Ervin', 'Skypp', 'Arjawinangun', '422-458-1883', '-6.6312766', '108.3848152', 'Male', '2021-08-01 17:40:19', NULL),
(143, 'Archambault', 'Sooper', 'Castlebellingham', '267-819-4877', '53.8996586', '-6.391149', 'Male', '2021-06-13 09:08:05', NULL),
(144, 'Ciro', 'Gudgeon', 'Vila Ribeiro', '591-495-4339', '38.5908192', '-9.017701', 'Male', '2020-04-28 16:48:49', NULL),
(145, 'Adrian', 'Mortlock', 'La Soledad', '903-403-7987', '21.8756188', '-102.2848729', 'Female', '2022-01-03 10:07:50', NULL),
(146, 'Annamarie', 'Cowden', 'Arosbaya', '535-971-2383', '-6.9704332', '112.8463007', 'Female', '2020-04-18 23:10:21', NULL),
(147, 'Rollin', 'Babington', 'Randuagung', '613-412-2249', '-8.0796655', '113.3049491', 'Male', '2021-10-13 17:32:04', NULL),
(148, 'Teresina', 'Ventam', 'Sokolac', '740-941-5631', '43.9340953', '18.8019069', 'Female', '2022-03-15 09:04:56', NULL),
(149, 'Lenette', 'Scrivens', 'Banī Zayd', '672-806-2088', '32.052539', '35.125431', 'Female', '2020-08-01 10:48:33', NULL),
(150, 'Morna', 'Devereux', 'Kota Kinabalu', '262-842-5999', '5.9840985', '116.0761121', 'Female', '2020-05-29 18:43:41', NULL),
(151, 'Korey', 'Okie', 'San Mariano', '924-397-6322', '16.9846184', '122.0047563', 'Male', '2021-01-14 10:59:41', NULL),
(152, 'Hettie', 'Reoch', 'Ninomiya', '392-178-8908', '36.9746168', '136.9251078', 'Female', '2020-03-07 15:47:54', NULL),
(153, 'Lenci', 'Birts', 'Diepsloot', '691-894-8492', '-25.9248045', '28.0172665', 'Male', '2020-02-16 01:03:03', NULL),
(154, 'Audrye', 'Keates', 'Wassu', '824-271-3203', '13.6868427', '-14.8797594', 'Female', '2021-03-03 15:37:09', NULL),
(155, 'Reagen', 'Ceci', 'Pampas', '397-786-4342', '-12.3992902', '-74.8659421', 'Male', '2021-02-24 11:03:00', NULL),
(156, 'Holden', 'Pernell', 'San Ramón de la Nueva Orán', '321-622-6954', '-23.144255', '-64.325272', 'Male', '2020-09-24 18:03:19', NULL),
(157, 'Hyacinthe', 'Riccardini', 'Albany', '229-880-1671', '31.5547633', '-84.06035', 'Female', '2021-09-17 23:04:41', NULL),
(158, 'Tommy', 'McLarty', 'Shuangxi', '944-772-0851', '32.8676912', '-80.017511', 'Male', '2020-08-08 11:10:31', NULL),
(159, 'Catina', 'Swinyard', 'San Remigio', '790-848-9211', '11.0068891', '123.9185105', 'Female', '2020-12-25 17:35:06', NULL),
(160, 'Franny', 'Voff', 'Wangcun', '284-649-3006', '34.878483', '113.277504', 'Female', '2021-02-06 09:37:08', NULL),
(161, 'Dolph', 'Shills', 'Paso de los Libres', '306-384-1535', '-29.7137627', '-57.0864221', 'Male', '2021-02-26 10:10:24', NULL),
(162, 'Alexis', 'Toombes', 'Paris La Défense', '197-401-8472', '48.890054', '2.2372792', 'Male', '2020-06-15 09:23:46', NULL),
(163, 'Grenville', 'Gettins', 'Usu', '299-781-2166', '44.435508', '84.678548', 'Male', '2021-07-21 06:58:19', NULL),
(164, 'Gerald', 'Gosnold', 'Shuangta', '838-255-2435', '41.565627', '120.453743', 'Male', '2020-01-26 14:11:52', NULL),
(165, 'Gunilla', 'Filintsev', 'Koshigaya', '999-763-9010', '35.8896981', '139.7894017', 'Female', '2020-04-20 08:24:07', NULL),
(166, 'Codi', 'Extance', 'Las Varillas', '620-806-1097', '-31.3258489', '-64.2874506', 'Male', '2021-08-03 19:00:03', NULL),
(167, 'Fawn', 'Olin', 'Jistebnice', '156-496-1097', '49.5012266', '14.5455675', 'Female', '2022-01-23 22:10:00', NULL),
(168, 'Darnell', 'Grimmolby', 'Broska', '981-443-0166', '45.3707729', '28.7846634', 'Male', '2021-03-13 08:47:36', NULL),
(169, 'Remy', 'Debrett', 'Kadurahayu', '128-290-9985', '-6.5633157', '106.1286901', 'Female', '2020-10-28 02:38:23', NULL),
(170, 'Eziechiele', 'Tures', 'Boguszów-Gorce', '928-182-5349', '50.7852989', '16.164006', 'Male', '2022-01-27 22:06:09', NULL),
(171, 'Minne', 'Blaes', 'Shabqadar', '884-317-9593', '34.2211097', '71.6276159', 'Female', '2021-03-06 10:59:56', NULL),
(172, 'Svend', 'Dubois', 'Benito Juarez', '927-949-3526', '22.2016816', '-97.8367954', 'Male', '2021-03-06 14:37:55', NULL),
(173, 'Alana', 'Dreghorn', 'Nikolayevka', '114-436-1248', '53.1257', '47.2041', 'Female', '2022-04-01 09:08:33', NULL),
(174, 'Monroe', 'Snoddy', 'Anchang', '808-103-8305', '28.682892', '115.858197', 'Male', '2020-11-16 19:54:15', NULL),
(175, 'Matteo', 'Wrey', 'Chengjiang', '997-183-1196', '24.674624', '102.904318', 'Male', '2021-04-24 04:30:41', NULL),
(176, 'Kyle', 'Spring', 'Staré Hradiště', '958-289-7575', '50.0653975', '15.7788513', 'Male', '2020-07-31 18:32:38', NULL),
(177, 'Kelcy', 'Donnett', 'Al Jamīmah', '143-423-7104', '16.01787', '43.59647', 'Female', '2020-09-04 09:15:42', NULL),
(178, 'Auguste', 'Kahler', 'Wasogolo', '192-755-0057', '-8.6268', '120.4599', 'Female', '2021-01-30 07:42:49', NULL),
(179, 'Brooks', 'Jimson', 'Limulunga', '643-128-8381', '-15.133391', '23.1530897', 'Male', '2021-01-03 18:10:58', NULL),
(180, 'Lura', 'Giorgietto', 'Shirokovskiy', '321-514-1047', '58.85886', '57.787098', 'Female', '2022-02-15 08:01:41', NULL),
(181, 'Wallis', 'Koba', 'Yerazgavors', '299-702-0071', '40.7031503', '43.7750216', 'Male', '2022-02-20 09:32:37', NULL),
(182, 'Rees', 'Franscioni', 'Polańczyk', '571-347-8112', '49.3696768', '22.4212003', 'Male', '2020-07-08 01:43:34', NULL),
(183, 'Tadeas', 'Pabst', 'Huicheng', '340-790-2672', '23.084122', '114.382541', 'Male', '2020-03-10 20:50:29', NULL),
(184, 'Hercule', 'Melesk', 'Uyskoye', '175-170-0310', '54.3749589', '60.0069111', 'Male', '2021-10-26 01:39:03', NULL),
(185, 'Valerie', 'Cuttings', 'Dzhalka', '197-268-2298', '43.3211671', '45.9920397', 'Female', '2021-10-21 23:56:45', NULL),
(186, 'Tandi', 'Linacre', 'Xiwanzi', '772-822-6190', '40.974829', '115.279249', 'Female', '2020-05-24 07:00:05', NULL),
(187, 'Randie', 'Bolmann', 'Yeliguan', '321-180-7253', '34.978856', '103.712902', 'Female', '2022-04-07 11:00:55', NULL),
(188, 'Chip', 'Legendre', 'Jaguarari', '663-806-8524', '-10.2579964', '-40.1945306', 'Male', '2020-03-19 05:06:13', NULL),
(189, 'Oby', 'Ivakhnov', 'Bidbid', '448-870-2446', '23.4069561', '58.1252383', 'Male', '2020-03-31 18:05:54', NULL),
(190, 'Hall', 'Orgen', 'Waimangura', '141-118-9598', '-9.4964', '119.2262667', 'Male', '2020-01-17 18:15:49', NULL),
(191, 'Anthiathia', 'Penwarden', 'Yulin', '141-962-7100', '22.654032', '110.18122', 'Female', '2020-11-16 11:09:51', NULL),
(192, 'Edyth', 'Tooher', 'Fusagasuga', '424-327-9821', '4.345152', '-74.361823', 'Female', '2020-02-02 14:28:40', NULL),
(193, 'Merla', 'Guildford', 'Skelleftehamn', '700-657-3734', '64.6789618', '21.242165', 'Female', '2021-04-10 08:13:03', NULL),
(194, 'Hernando', 'Wetherell', 'Åkersberga', '257-222-2163', '59.4953899', '18.3229434', 'Male', '2021-06-08 23:28:00', NULL),
(195, 'Eliza', 'Ramsdell', 'Hougang', '249-135-6076', '1.3573565', '103.8832261', 'Female', '2021-06-24 05:24:20', NULL),
(196, 'Alexandro', 'Ausiello', 'Paris 17', '674-900-6840', '43.4945737', '5.8978018', 'Male', '2020-02-12 00:49:29', NULL),
(197, 'Hamlin', 'Lowther', 'Arani', '811-457-8000', '-17.5706623', '-65.7698663', 'Male', '2020-01-15 10:04:21', NULL),
(198, 'Maddie', 'McClaurie', 'Puerto Castilla', '260-155-5781', '16.0173268', '-85.9585544', 'Female', '2020-12-27 02:13:59', NULL),
(199, 'Alia', 'Hehl', 'Si Khoraphum', '591-217-5260', '14.9445596', '103.7983521', 'Female', '2022-02-11 18:11:05', NULL),
(200, 'Feodor', 'Poller', 'Limoges', '386-685-7401', '45.521519', '3.5276642', 'Male', '2020-01-26 02:07:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feeding_schedules`
--

CREATE TABLE `feeding_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `herd_id` bigint(20) UNSIGNED NOT NULL,
  `feed_id` bigint(20) UNSIGNED NOT NULL,
  `start-date` date NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `feeding_times` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE `feeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Aluminum', NULL, NULL),
(2, 'Aluminum', NULL, NULL),
(3, 'Stone', NULL, NULL),
(4, 'Rubber', NULL, NULL),
(5, 'Rubber', NULL, NULL),
(6, 'Stone', NULL, NULL),
(7, 'Plexiglass', NULL, NULL),
(8, 'Brass', NULL, NULL),
(9, 'Plexiglass', NULL, NULL),
(10, 'Plastic', NULL, NULL),
(11, 'Wood', NULL, NULL),
(12, 'Steel', NULL, NULL),
(13, 'Vinyl', NULL, NULL),
(14, 'Glass', NULL, NULL),
(15, 'Plexiglass', NULL, NULL),
(16, 'Steel', NULL, NULL),
(17, 'Plastic', NULL, NULL),
(18, 'Plastic', NULL, NULL),
(19, 'Aluminum', NULL, NULL),
(20, 'Plastic', NULL, NULL),
(21, 'Rubber', NULL, NULL),
(22, 'Plastic', NULL, NULL),
(23, 'Steel', NULL, NULL),
(24, 'Rubber', NULL, NULL),
(25, 'Plexiglass', NULL, NULL),
(26, 'Stone', NULL, NULL),
(27, 'Plexiglass', NULL, NULL),
(28, 'Aluminum', NULL, NULL),
(29, 'Steel', NULL, NULL),
(30, 'Plexiglass', NULL, NULL),
(31, 'Steel', NULL, NULL),
(32, 'Stone', NULL, NULL),
(33, 'Brass', NULL, NULL),
(34, 'Plastic', NULL, NULL),
(35, 'Brass', NULL, NULL),
(36, 'Aluminum', NULL, NULL),
(37, 'Vinyl', NULL, NULL),
(38, 'Aluminum', NULL, NULL),
(39, 'Aluminum', NULL, NULL),
(40, 'Brass', NULL, NULL),
(41, 'Wood', NULL, NULL),
(42, 'Aluminum', NULL, NULL),
(43, 'Rubber', NULL, NULL),
(44, 'Plexiglass', NULL, NULL),
(45, 'Stone', NULL, NULL),
(46, 'Wood', NULL, NULL),
(47, 'Granite', NULL, NULL),
(48, 'Stone', NULL, NULL),
(49, 'Wood', NULL, NULL),
(50, 'Vinyl', NULL, NULL),
(51, 'Aluminum', NULL, NULL),
(52, 'Plastic', NULL, NULL),
(53, 'Vinyl', NULL, NULL),
(54, 'Wood', NULL, NULL),
(55, 'Glass', NULL, NULL),
(56, 'Granite', NULL, NULL),
(57, 'Plexiglass', NULL, NULL),
(58, 'Plexiglass', NULL, NULL),
(59, 'Glass', NULL, NULL),
(60, 'Plastic', NULL, NULL),
(61, 'Stone', NULL, NULL),
(62, 'Vinyl', NULL, NULL),
(63, 'Brass', NULL, NULL),
(64, 'Stone', NULL, NULL),
(65, 'Glass', NULL, NULL),
(66, 'Granite', NULL, NULL),
(67, 'Stone', NULL, NULL),
(68, 'Wood', NULL, NULL),
(69, 'Vinyl', NULL, NULL),
(70, 'Aluminum', NULL, NULL),
(71, 'Stone', NULL, NULL),
(72, 'Plexiglass', NULL, NULL),
(73, 'Vinyl', NULL, NULL),
(74, 'Plastic', NULL, NULL),
(75, 'Brass', NULL, NULL),
(76, 'Aluminum', NULL, NULL),
(77, 'Vinyl', NULL, NULL),
(78, 'Glass', NULL, NULL),
(79, 'Aluminum', NULL, NULL),
(80, 'Aluminum', NULL, NULL),
(81, 'Stone', NULL, NULL),
(82, 'Rubber', NULL, NULL),
(83, 'Rubber', NULL, NULL),
(84, 'Glass', NULL, NULL),
(85, 'Stone', NULL, NULL),
(86, 'Brass', NULL, NULL),
(87, 'Glass', NULL, NULL),
(88, 'Wood', NULL, NULL),
(89, 'Rubber', NULL, NULL),
(90, 'Wood', NULL, NULL),
(91, 'Steel', NULL, NULL),
(92, 'Plastic', NULL, NULL),
(93, 'Vinyl', NULL, NULL),
(94, 'Brass', NULL, NULL),
(95, 'Plexiglass', NULL, NULL),
(96, 'Glass', NULL, NULL),
(97, 'Wood', NULL, NULL),
(98, 'Brass', NULL, NULL),
(99, 'Plexiglass', NULL, NULL),
(100, 'Plastic', NULL, NULL),
(101, 'Plexiglass', NULL, NULL),
(102, 'Aluminum', NULL, NULL),
(103, 'Aluminum', NULL, NULL),
(104, 'Steel', NULL, NULL),
(105, 'Plexiglass', NULL, NULL),
(106, 'Wood', NULL, NULL),
(107, 'Glass', NULL, NULL),
(108, 'Glass', NULL, NULL),
(109, 'Glass', NULL, NULL),
(110, 'Stone', NULL, NULL),
(111, 'Steel', NULL, NULL),
(112, 'Steel', NULL, NULL),
(113, 'Plastic', NULL, NULL),
(114, 'Stone', NULL, NULL),
(115, 'Plexiglass', NULL, NULL),
(116, 'Steel', NULL, NULL),
(117, 'Vinyl', NULL, NULL),
(118, 'Rubber', NULL, NULL),
(119, 'Plastic', NULL, NULL),
(120, 'Rubber', NULL, NULL),
(121, 'Stone', NULL, NULL),
(122, 'Stone', NULL, NULL),
(123, 'Steel', NULL, NULL),
(124, 'Plastic', NULL, NULL),
(125, 'Glass', NULL, NULL),
(126, 'Rubber', NULL, NULL),
(127, 'Wood', NULL, NULL),
(128, 'Aluminum', NULL, NULL),
(129, 'Steel', NULL, NULL),
(130, 'Plastic', NULL, NULL),
(131, 'Plexiglass', NULL, NULL),
(132, 'Granite', NULL, NULL),
(133, 'Steel', NULL, NULL),
(134, 'Steel', NULL, NULL),
(135, 'Brass', NULL, NULL),
(136, 'Stone', NULL, NULL),
(137, 'Stone', NULL, NULL),
(138, 'Rubber', NULL, NULL),
(139, 'Plastic', NULL, NULL),
(140, 'Plexiglass', NULL, NULL),
(141, 'Stone', NULL, NULL),
(142, 'Plexiglass', NULL, NULL),
(143, 'Brass', NULL, NULL),
(144, 'Plastic', NULL, NULL),
(145, 'Glass', NULL, NULL),
(146, 'Brass', NULL, NULL),
(147, 'Rubber', NULL, NULL),
(148, 'Plexiglass', NULL, NULL),
(149, 'Wood', NULL, NULL),
(150, 'Vinyl', NULL, NULL),
(151, 'Brass', NULL, NULL),
(152, 'Aluminum', NULL, NULL),
(153, 'Vinyl', NULL, NULL),
(154, 'Steel', NULL, NULL),
(155, 'Plexiglass', NULL, NULL),
(156, 'Granite', NULL, NULL),
(157, 'Plexiglass', NULL, NULL),
(158, 'Stone', NULL, NULL),
(159, 'Granite', NULL, NULL),
(160, 'Aluminum', NULL, NULL),
(161, 'Vinyl', NULL, NULL),
(162, 'Vinyl', NULL, NULL),
(163, 'Brass', NULL, NULL),
(164, 'Stone', NULL, NULL),
(165, 'Steel', NULL, NULL),
(166, 'Vinyl', NULL, NULL),
(167, 'Steel', NULL, NULL),
(168, 'Wood', NULL, NULL),
(169, 'Stone', NULL, NULL),
(170, 'Stone', NULL, NULL),
(171, 'Brass', NULL, NULL),
(172, 'Plastic', NULL, NULL),
(173, 'Steel', NULL, NULL),
(174, 'Plastic', NULL, NULL),
(175, 'Granite', NULL, NULL),
(176, 'Granite', NULL, NULL),
(177, 'Brass', NULL, NULL),
(178, 'Aluminum', NULL, NULL),
(179, 'Glass', NULL, NULL),
(180, 'Rubber', NULL, NULL),
(181, 'Wood', NULL, NULL),
(182, 'Plexiglass', NULL, NULL),
(183, 'Wood', NULL, NULL),
(184, 'Vinyl', NULL, NULL),
(185, 'Granite', NULL, NULL),
(186, 'Brass', NULL, NULL),
(187, 'Rubber', NULL, NULL),
(188, 'Granite', NULL, NULL),
(189, 'Steel', NULL, NULL),
(190, 'Granite', NULL, NULL),
(191, 'Aluminum', NULL, NULL),
(192, 'Stone', NULL, NULL),
(193, 'Steel', NULL, NULL),
(194, 'Steel', NULL, NULL),
(195, 'Glass', NULL, NULL),
(196, 'Plastic', NULL, NULL),
(197, 'Glass', NULL, NULL),
(198, 'Vinyl', NULL, NULL),
(199, 'Glass', NULL, NULL),
(200, 'Plastic', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `herds`
--

CREATE TABLE `herds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `herds`
--

INSERT INTO `herds` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Rio', NULL, NULL),
(2, 'F250', NULL, NULL),
(3, 'Rendezvous', NULL, NULL),
(4, 'Five Hundred', NULL, NULL),
(5, 'M6', NULL, NULL),
(6, 'GL-Class', NULL, NULL),
(7, 'MKX', NULL, NULL),
(8, 'Eos', NULL, NULL),
(9, 'Flex', NULL, NULL),
(10, 'E150', NULL, NULL),
(11, 'Mustang', NULL, NULL),
(12, 'Jetta', NULL, NULL),
(13, 'Santa Fe', NULL, NULL),
(14, '62', NULL, NULL),
(15, '300SE', NULL, NULL),
(16, 'G35', NULL, NULL),
(17, 'Golf', NULL, NULL),
(18, 'tC', NULL, NULL),
(19, 'Express 3500', NULL, NULL),
(20, 'Land Cruiser', NULL, NULL),
(21, 'Sportage', NULL, NULL),
(22, '3500', NULL, NULL),
(23, 'C70', NULL, NULL),
(24, 'Freelander', NULL, NULL),
(25, 'Challenger', NULL, NULL),
(26, 'Capri', NULL, NULL),
(27, 'Mirage', NULL, NULL),
(28, '626', NULL, NULL),
(29, 'Cabriolet', NULL, NULL),
(30, 'Express', NULL, NULL),
(31, 'Azure', NULL, NULL),
(32, 'Hearse', NULL, NULL),
(33, 'Pajero', NULL, NULL),
(34, 'Avalanche', NULL, NULL),
(35, 'Grand Cherokee', NULL, NULL),
(36, 'Mountaineer', NULL, NULL),
(37, 'GranTurismo', NULL, NULL),
(38, 'M-Class', NULL, NULL),
(39, 'T100', NULL, NULL),
(40, 'SC', NULL, NULL),
(41, 'Silverado 1500', NULL, NULL),
(42, 'Lancer', NULL, NULL),
(43, 'Focus', NULL, NULL),
(44, 'A4', NULL, NULL),
(45, 'Cutlass Supreme', NULL, NULL),
(46, 'Milan', NULL, NULL),
(47, 'A4', NULL, NULL),
(48, 'Altima', NULL, NULL),
(49, 'LS', NULL, NULL),
(50, 'SX4', NULL, NULL),
(51, 'XC90', NULL, NULL),
(52, 'Envoy', NULL, NULL),
(53, 'Contour', NULL, NULL),
(54, 'X-90', NULL, NULL),
(55, 'XK Series', NULL, NULL),
(56, 'Silverado Hybrid', NULL, NULL),
(57, 'Legacy', NULL, NULL),
(58, '2500', NULL, NULL),
(59, 'Discovery', NULL, NULL),
(60, 'Quattroporte', NULL, NULL),
(61, 'Monte Carlo', NULL, NULL),
(62, 'Discovery Series II', NULL, NULL),
(63, '6000', NULL, NULL),
(64, 'Range Rover Sport', NULL, NULL),
(65, 'Bronco', NULL, NULL),
(66, 'Skyhawk', NULL, NULL),
(67, 'Grand Prix', NULL, NULL),
(68, 'Envoy XUV', NULL, NULL),
(69, 'Corvair', NULL, NULL),
(70, 'Arnage', NULL, NULL),
(71, 'Caravan', NULL, NULL),
(72, '850', NULL, NULL),
(73, 'Legacy', NULL, NULL),
(74, 'Frontier', NULL, NULL),
(75, 'Sportage', NULL, NULL),
(76, 'E150', NULL, NULL),
(77, 'Pajero', NULL, NULL),
(78, 'Vandura G2500', NULL, NULL),
(79, '1500', NULL, NULL),
(80, 'RAV4', NULL, NULL),
(81, 'Grand Cherokee', NULL, NULL),
(82, 'MPV', NULL, NULL),
(83, 'GX', NULL, NULL),
(84, 'Yaris', NULL, NULL),
(85, 'Sprinter 3500', NULL, NULL),
(86, 'S6', NULL, NULL),
(87, 'Equinox', NULL, NULL),
(88, 'Expedition', NULL, NULL),
(89, 'Viper', NULL, NULL),
(90, '200', NULL, NULL),
(91, 'Grand Prix', NULL, NULL),
(92, 'Sienna', NULL, NULL),
(93, 'Sable', NULL, NULL),
(94, 'Escape', NULL, NULL),
(95, 'Silverado 3500', NULL, NULL),
(96, 'X5', NULL, NULL),
(97, 'S6', NULL, NULL),
(98, 'Pathfinder', NULL, NULL),
(99, 'Excel', NULL, NULL),
(100, 'Pajero', NULL, NULL),
(101, 'Lumina', NULL, NULL),
(102, 'Discovery', NULL, NULL),
(103, 'L-Series', NULL, NULL),
(104, 'Suburban', NULL, NULL),
(105, 'Explorer', NULL, NULL),
(106, 'CR-V', NULL, NULL),
(107, 'Forenza', NULL, NULL),
(108, 'TL', NULL, NULL),
(109, 'Wrangler', NULL, NULL),
(110, '3000GT', NULL, NULL),
(111, 'Lumina', NULL, NULL),
(112, 'Mirage', NULL, NULL),
(113, 'Express 1500', NULL, NULL),
(114, 'Ram Van 1500', NULL, NULL),
(115, '300ZX', NULL, NULL),
(116, 'Entourage', NULL, NULL),
(117, 'New Beetle', NULL, NULL),
(118, 'Brooklands', NULL, NULL),
(119, 'Caravan', NULL, NULL),
(120, 'Focus', NULL, NULL),
(121, 'MX-3', NULL, NULL),
(122, '500SEL', NULL, NULL),
(123, 'Grand Caravan', NULL, NULL),
(124, 'Tundra', NULL, NULL),
(125, 'H2', NULL, NULL),
(126, 'Ram Van 3500', NULL, NULL),
(127, 'RAV4', NULL, NULL),
(128, 'Astro', NULL, NULL),
(129, 'LS', NULL, NULL),
(130, 'Avalanche 2500', NULL, NULL),
(131, 'S80', NULL, NULL),
(132, 'Safari', NULL, NULL),
(133, 'TrailBlazer', NULL, NULL),
(134, 'J', NULL, NULL),
(135, 'G-Series 2500', NULL, NULL),
(136, 'Corvette', NULL, NULL),
(137, 'Element', NULL, NULL),
(138, 'Discovery', NULL, NULL),
(139, 'Grand Marquis', NULL, NULL),
(140, 'Cordia', NULL, NULL),
(141, 'E-Series', NULL, NULL),
(142, 'Corvette', NULL, NULL),
(143, '240SX', NULL, NULL),
(144, 'Corsica', NULL, NULL),
(145, 'E150', NULL, NULL),
(146, 'Voyager', NULL, NULL),
(147, 'IS', NULL, NULL),
(148, 'Murciélago', NULL, NULL),
(149, 'F-Series', NULL, NULL),
(150, 'Escalade ESV', NULL, NULL),
(151, 'LeMans', NULL, NULL),
(152, 'Golf', NULL, NULL),
(153, 'Explorer Sport Trac', NULL, NULL),
(154, 'S80', NULL, NULL),
(155, 'Journey', NULL, NULL),
(156, 'Caprice', NULL, NULL),
(157, 'Mirage', NULL, NULL),
(158, 'GS', NULL, NULL),
(159, '900', NULL, NULL),
(160, 'Xterra', NULL, NULL),
(161, 'H2', NULL, NULL),
(162, 'RAV4', NULL, NULL),
(163, 'LeSabre', NULL, NULL),
(164, '6 Series', NULL, NULL),
(165, 'M6', NULL, NULL),
(166, 'Z4 M', NULL, NULL),
(167, 'Discovery', NULL, NULL),
(168, 'Monte Carlo', NULL, NULL),
(169, 'Dakota', NULL, NULL),
(170, 'Eldorado', NULL, NULL),
(171, 'Amigo', NULL, NULL),
(172, 'Camaro', NULL, NULL),
(173, '100', NULL, NULL),
(174, 'D150', NULL, NULL),
(175, 'Silverado 2500', NULL, NULL),
(176, 'Prowler', NULL, NULL),
(177, 'Talon', NULL, NULL),
(178, 'GS', NULL, NULL),
(179, 'Suburban 1500', NULL, NULL),
(180, 'CL-Class', NULL, NULL),
(181, 'Camry', NULL, NULL),
(182, 'Grand Prix', NULL, NULL),
(183, 'Wrangler', NULL, NULL),
(184, 'GranTurismo', NULL, NULL),
(185, '3 Series', NULL, NULL),
(186, 'S-Series', NULL, NULL),
(187, 'Frontier', NULL, NULL),
(188, 'Explorer', NULL, NULL),
(189, 'A3', NULL, NULL),
(190, 'Range Rover', NULL, NULL),
(191, 'Yukon XL 1500', NULL, NULL),
(192, 'Z3', NULL, NULL),
(193, 'Econoline E150', NULL, NULL),
(194, 'DeVille', NULL, NULL),
(195, 'Ram 3500', NULL, NULL),
(196, 'Odyssey', NULL, NULL),
(197, 'F250', NULL, NULL),
(198, 'Safari', NULL, NULL),
(199, 'Aero 8', NULL, NULL),
(200, 'Highlander', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(75, '2014_10_12_000000_create_users_table', 1),
(76, '2014_10_12_100000_create_password_resets_table', 1),
(77, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(78, '2019_02_25_231036_create_scheduled_notifications_table', 1),
(79, '2019_08_19_000000_create_failed_jobs_table', 1),
(80, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(81, '2021_09_10_130000_add_meta_to_scheduled_notifications', 1),
(82, '2022_04_20_172327_create_roles_table', 1),
(83, '2022_04_21_090439_add_role_to_users', 1),
(84, '2022_04_25_062407_create_herds_table', 1),
(85, '2022_04_25_081435_create_farmers_table', 1),
(86, '2022_04_25_094213_create_events_table', 1),
(87, '2022_04_25_110409_create_feeds_table', 1),
(88, '2022_04_25_113036_create_breeds_table', 1),
(89, '2022_04_25_120057_create_vaccines_table', 1),
(90, '2022_04_25_120421_create_cows_table', 1),
(91, '2022_04_26_082109_create_feeding_schedules_table', 1),
(92, '2022_04_26_111509_create_vaccination_records_table', 1),
(93, '2022_04_26_123958_create_cattle_purchases_table', 1),
(94, '2022_04_26_140510_add_purchase_id_to_cows_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2022-04-28 04:56:52', NULL),
(2, 'Ranch Manager', '2022-04-28 04:56:52', NULL),
(3, 'Feed Expert', '2022-04-28 04:57:58', NULL),
(4, 'Vaccine Expert', '2022-04-28 04:57:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `scheduled_notifications`
--

CREATE TABLE `scheduled_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `target_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_at` datetime NOT NULL,
  `sent_at` datetime DEFAULT NULL,
  `rescheduled_at` datetime DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `surname`, `email`, `gender`, `address`, `phoneNumber`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`, `role_id`) VALUES
(1, 'John', 'Doe', 'ekhayaadmin@gmail.com', 'Male', 'Blantyre', '265123456789', NULL, '$2a$12$FXk1iPfQhNQsE0N3WaJ2WOL1TpwCHJjeCV6q.zmz9hAjj7xvfVzbi', NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 'jane', 'doe', 'ekhayaranchmanager@gmail.com', 'female', 'Chikwawa', '265992991438', NULL, '$2y$10$LLnKZQYUMO889jchvhmQNeoKplE3nTnypVF1lFewkwR.4y9K7Qj3.', NULL, NULL, NULL, NULL, '2022-04-29 08:27:17', '2022-04-29 08:27:17', 2);

-- --------------------------------------------------------

--
-- Table structure for table `vaccination_records`
--

CREATE TABLE `vaccination_records` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date-administered` date NOT NULL,
  `herd_id` bigint(20) UNSIGNED NOT NULL,
  `vaccine_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vaccines`
--

CREATE TABLE `vaccines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vaccines`
--

INSERT INTO `vaccines` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Levofloxacin', NULL, NULL),
(2, 'CD DIORSKIN STAR Studio Makeup Spectacular Brightening with sunscreen Broad Spectrum SPF30 070', NULL, NULL),
(3, 'Morphine sulfate', NULL, NULL),
(4, 'Queen Perfume Hair', NULL, NULL),
(5, 'Simvastatin', NULL, NULL),
(6, 'LBEL FILLING EFFECT FOUNDATION SPF 10', NULL, NULL),
(7, 'hydrocortisone', NULL, NULL),
(8, 'Cyclobenzaprine Hydrochloride', NULL, NULL),
(9, 'AIR', NULL, NULL),
(10, 'Biaxin', NULL, NULL),
(11, 'isosorbide mononitrate', NULL, NULL),
(12, 'Bobbi Brown CC BROAD SPECTRUM SPF 25', NULL, NULL),
(13, 'Headache Relief', NULL, NULL),
(14, 'ProCoMycin', NULL, NULL),
(15, 'exchange select omeprazole', NULL, NULL),
(16, 'IPKN Moist and Firm BB 01 Light', NULL, NULL),
(17, 'American Elm', NULL, NULL),
(18, 'Rembrandt Intense Stain', NULL, NULL),
(19, 'April Bath and Shower Warm Vanilla Scented Hand Sanitizer Anti-Bacterial', NULL, NULL),
(20, 'Extra Strength Gas Relief', NULL, NULL),
(21, 'Varibar Thin Liquid', NULL, NULL),
(22, 'Lemon Verbena Waterless Hand Wash', NULL, NULL),
(23, 'Assured Instant Hand Sanitizer Spray', NULL, NULL),
(24, 'ISOVUE', NULL, NULL),
(25, 'DIAMITE', NULL, NULL),
(26, 'cephalexin', NULL, NULL),
(27, 'Levico Prunus', NULL, NULL),
(28, 'Levetiracetam', NULL, NULL),
(29, 'POTASSIUM CHLORIDE IN SODIUM CHLORIDE', NULL, NULL),
(30, 'Treatment Set TS331884', NULL, NULL),
(31, 'Buprenorphine Hydrochloride', NULL, NULL),
(32, 'VALTREX', NULL, NULL),
(33, 'Up and Up Cold Flu Relief', NULL, NULL),
(34, 'Levothyroxine Sodium', NULL, NULL),
(35, 'SERTRALINE HYDROCHLORIDE', NULL, NULL),
(36, 'LODOSYN', NULL, NULL),
(37, 'Cephalexin', NULL, NULL),
(38, 'Atovaquone and Proguanil Hydrochloride', NULL, NULL),
(39, 'PROPOXYPHENE NAPSYLATE AND ACETAMINOPHEN', NULL, NULL),
(40, 'JANUMET', NULL, NULL),
(41, 'Anticavity', NULL, NULL),
(42, 'Tapioca', NULL, NULL),
(43, 'Allergena', NULL, NULL),
(44, 'MUS MUSCULUS SKIN', NULL, NULL),
(45, 'Etodolac', NULL, NULL),
(46, 'Cipro', NULL, NULL),
(47, 'VENTOLIN', NULL, NULL),
(48, 'Folic Acid', NULL, NULL),
(49, 'Megestrol Acetate', NULL, NULL),
(50, 'Diclofenac Sodium Delayed Release', NULL, NULL),
(51, 'POLY HIST', NULL, NULL),
(52, 'Thuja occidentalis', NULL, NULL),
(53, 'Bystolic', NULL, NULL),
(54, 'IOSAT', NULL, NULL),
(55, 'Undecylenic Acid', NULL, NULL),
(56, 'METFORMIN HYDROCHLORIDE', NULL, NULL),
(57, 'Triple Complex Glucose Control', NULL, NULL),
(58, 'Eve Lom Radiance Lift Foundation SPF 15', NULL, NULL),
(59, 'Miconazole Nitrate', NULL, NULL),
(60, 'Thyroid', NULL, NULL),
(61, 'Duloxetine', NULL, NULL),
(62, 'Glimepiride', NULL, NULL),
(63, 'One Step Hand Sanitizer', NULL, NULL),
(64, 'California Valley White Oak', NULL, NULL),
(65, 'QUETIAPINE FUMARATE', NULL, NULL),
(66, 'Zinc Cold Remedy', NULL, NULL),
(67, 'risperidone', NULL, NULL),
(68, 'Arnica Plumbum Mel', NULL, NULL),
(69, 'good neighbor pharmacy miconazole 1', NULL, NULL),
(70, 'Trandolapril', NULL, NULL),
(71, 'Acetaminophen', NULL, NULL),
(72, 'Ofloxacin', NULL, NULL),
(73, 'Gehwol med Foot', NULL, NULL),
(74, 'WOMENS LAXATIVE', NULL, NULL),
(75, 'JointFlex', NULL, NULL),
(76, 'Hydrocodone Bitartrate And Acetaminophen', NULL, NULL),
(77, 'Idarubicin Hydrochloride', NULL, NULL),
(78, 'Hydrocodone Bitartrate and Acetaminophen', NULL, NULL),
(79, 'Topiclear Paris Beauty', NULL, NULL),
(80, 'BZK Antiseptic Towelette', NULL, NULL),
(81, 'Katinko Pain And Itch Relieving', NULL, NULL),
(82, 'FLURBIPROFEN', NULL, NULL),
(83, 'Eye Wash', NULL, NULL),
(84, 'Amlodipine Besylate', NULL, NULL),
(85, 'Naloxone Hydrochloride', NULL, NULL),
(86, 'Trandolapril', NULL, NULL),
(87, 'Pyridostigmine Bromide', NULL, NULL),
(88, 'Cromolyn Sodium', NULL, NULL),
(89, 'levalbuterol hydrochloride', NULL, NULL),
(90, 'Tizanidine Hydrochloride', NULL, NULL),
(91, 'Ibuprofen', NULL, NULL),
(92, 'Dove', NULL, NULL),
(93, 'Anastrozole', NULL, NULL),
(94, 'KINESYS', NULL, NULL),
(95, 'OXYBUTYNIN CHLORIDE', NULL, NULL),
(96, 'Primidone', NULL, NULL),
(97, 'Dog Hair', NULL, NULL),
(98, 'Norpramin', NULL, NULL),
(99, 'Clearasil Ultra', NULL, NULL),
(100, 'ADVATE', NULL, NULL),
(101, 'Treatment Set TS335101', NULL, NULL),
(102, 'Forest Fresh', NULL, NULL),
(103, 'HAND SANITIZER', NULL, NULL),
(104, 'Lyrica', NULL, NULL),
(105, 'Flumazenil', NULL, NULL),
(106, 'Childbirth Support', NULL, NULL),
(107, 'desonide', NULL, NULL),
(108, 'Fluoxetine', NULL, NULL),
(109, 'Famotidine', NULL, NULL),
(110, 'Baby SensiGel', NULL, NULL),
(111, 'COUGH SORE THROAT', NULL, NULL),
(112, 'Up and up nasal', NULL, NULL),
(113, 'leader tussin', NULL, NULL),
(114, 'HCG Plus', NULL, NULL),
(115, 'Smooth Brome Pollen', NULL, NULL),
(116, 'Quetiapine Fumarate', NULL, NULL),
(117, 'Methazolamide', NULL, NULL),
(118, 'Cilostazol', NULL, NULL),
(119, 'Omeprazole', NULL, NULL),
(120, 'napoleon PERDIS CHINA DOLL FOUNDATION BROAD SPECTRUM SPF 15 Look 4', NULL, NULL),
(121, 'Coppertone Clearly Sheer For Sunny Days', NULL, NULL),
(122, 'NeoStrata Skin Active Matrix Support', NULL, NULL),
(123, 'SENSAI CELLULAR PERFORMANCE HYDRACHANGE TINTED GEL CREAM 1 NUDE BEIGE', NULL, NULL),
(124, 'Cephalexin', NULL, NULL),
(125, 'White Poplar', NULL, NULL),
(126, 'NADH Plus', NULL, NULL),
(127, 'EcoDent Ultimate Essential Mouthcare', NULL, NULL),
(128, 'X-Viate', NULL, NULL),
(129, 'GLYBURIDE AND METFORMIN HYDROCHLORIDE', NULL, NULL),
(130, 'enMotion Antimicrobial Healthcare Personnel Handwash Fragrance Free', NULL, NULL),
(131, 'Ibuprofen', NULL, NULL),
(132, 'Hemorrhoidal', NULL, NULL),
(133, 'natural extensions Antibacterial Foaming Hand Wash', NULL, NULL),
(134, 'Allopurinol', NULL, NULL),
(135, 'HAND SANITIZING', NULL, NULL),
(136, 'Xylocaine', NULL, NULL),
(137, 'ARRID EXTRA EXTRA DRY XX', NULL, NULL),
(138, 'ANTI BACTERIAL HAND SANITIZER', NULL, NULL),
(139, 'WELLBUTRIN', NULL, NULL),
(140, 'Hydroquinone', NULL, NULL),
(141, 'Cetirizine Hydrochloride', NULL, NULL),
(142, 'Sleep Aid', NULL, NULL),
(143, 'Bodycology', NULL, NULL),
(144, 'METOPROLOL SUCCINATE', NULL, NULL),
(145, 'Leucovorin Calcium', NULL, NULL),
(146, 'NO-AD SPF 8 Tanning', NULL, NULL),
(147, 'Acetaminophen', NULL, NULL),
(148, 'Folic Acid', NULL, NULL),
(149, 'Sun Mark Tussin DM', NULL, NULL),
(150, 'Olanzapine', NULL, NULL),
(151, 'simvastatin', NULL, NULL),
(152, 'Neutrogena Wet Skin Swim-Humidity-Sweat Sunblock', NULL, NULL),
(153, 'Furosemide', NULL, NULL),
(154, 'Risperidone', NULL, NULL),
(155, 'Oxygen', NULL, NULL),
(156, 'Adidas', NULL, NULL),
(157, 'Doxazosin', NULL, NULL),
(158, 'Lansoprazole', NULL, NULL),
(159, 'Degree For Women Classic Romance', NULL, NULL),
(160, 'AZITHROMYCIN', NULL, NULL),
(161, 'Eye Lubricant', NULL, NULL),
(162, 'Biaxin', NULL, NULL),
(163, 'ABILIFY', NULL, NULL),
(164, '8 hour pain relief', NULL, NULL),
(165, 'Microgestin', NULL, NULL),
(166, 'Clean and Clear Blackhead Eraser Scrub', NULL, NULL),
(167, 'FENTANYL CITRATE', NULL, NULL),
(168, 'Clindacin ETZ', NULL, NULL),
(169, 'Black Willow', NULL, NULL),
(170, 'SPAI-SONS', NULL, NULL),
(171, 'Mucor plumbeus', NULL, NULL),
(172, 'dg health heartburn prevention', NULL, NULL),
(173, 'LOVASTATIN', NULL, NULL),
(174, 'Desogen', NULL, NULL),
(175, 'Sensodyne Pronamel', NULL, NULL),
(176, 'Buphenyl', NULL, NULL),
(177, 'Carbo Vegetabilis 30c', NULL, NULL),
(178, 'LIDOCAINE VISCOUS', NULL, NULL),
(179, 'Focus RxS', NULL, NULL),
(180, 'Doxepin Hydrochloride', NULL, NULL),
(181, 'ACEPHEN', NULL, NULL),
(182, 'Mint', NULL, NULL),
(183, 'ARTEMISIA TRIDENTATA POLLEN', NULL, NULL),
(184, 'Hydrating Instant Hand Sanitizer', NULL, NULL),
(185, 'acid reducer plus antacid', NULL, NULL),
(186, 'FAMILY CARE LUBRICANT SINGLE USE EYE', NULL, NULL),
(187, 'Cardizem CD', NULL, NULL),
(188, 'PredniSONE', NULL, NULL),
(189, 'Rugby Nasal Decongestant', NULL, NULL),
(190, 'Brussels Sprout', NULL, NULL),
(191, 'Tolnaftate', NULL, NULL),
(192, 'Lisinopril', NULL, NULL),
(193, 'SHISEIDO THE MAKEUP FOUNDATION', NULL, NULL),
(194, 'Aspirin', NULL, NULL),
(195, 'Tenzer', NULL, NULL),
(196, 'Sinosil', NULL, NULL),
(197, 'equaline antacid', NULL, NULL),
(198, 'Granisetron Hydrochloride', NULL, NULL),
(199, 'Russian Olive', NULL, NULL),
(200, 'Cymbalta', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `breeds`
--
ALTER TABLE `breeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cattle_purchases`
--
ALTER TABLE `cattle_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cattle_purchases_farmer_id_foreign` (`farmer_id`),
  ADD KEY `cattle_purchases_herd_id_foreign` (`herd_id`);

--
-- Indexes for table `cows`
--
ALTER TABLE `cows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cows_breed_id_foreign` (`breed_id`),
  ADD KEY `cows_cattle_purchase_id_foreign` (`cattle_purchase_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_role_id_foreign` (`role_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feeding_schedules`
--
ALTER TABLE `feeding_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feeding_schedules_herd_id_foreign` (`herd_id`),
  ADD KEY `feeding_schedules_feed_id_foreign` (`feed_id`);

--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `herds`
--
ALTER TABLE `herds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scheduled_notifications`
--
ALTER TABLE `scheduled_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `vaccination_records`
--
ALTER TABLE `vaccination_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vaccination_records_herd_id_foreign` (`herd_id`),
  ADD KEY `vaccination_records_vaccine_id_foreign` (`vaccine_id`);

--
-- Indexes for table `vaccines`
--
ALTER TABLE `vaccines`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `breeds`
--
ALTER TABLE `breeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `cattle_purchases`
--
ALTER TABLE `cattle_purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cows`
--
ALTER TABLE `cows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farmers`
--
ALTER TABLE `farmers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `feeding_schedules`
--
ALTER TABLE `feeding_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `herds`
--
ALTER TABLE `herds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `scheduled_notifications`
--
ALTER TABLE `scheduled_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vaccination_records`
--
ALTER TABLE `vaccination_records`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vaccines`
--
ALTER TABLE `vaccines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cattle_purchases`
--
ALTER TABLE `cattle_purchases`
  ADD CONSTRAINT `cattle_purchases_farmer_id_foreign` FOREIGN KEY (`farmer_id`) REFERENCES `farmers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cattle_purchases_herd_id_foreign` FOREIGN KEY (`herd_id`) REFERENCES `herds` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cows`
--
ALTER TABLE `cows`
  ADD CONSTRAINT `cows_breed_id_foreign` FOREIGN KEY (`breed_id`) REFERENCES `breeds` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cows_cattle_purchase_id_foreign` FOREIGN KEY (`cattle_purchase_id`) REFERENCES `cattle_purchases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feeding_schedules`
--
ALTER TABLE `feeding_schedules`
  ADD CONSTRAINT `feeding_schedules_feed_id_foreign` FOREIGN KEY (`feed_id`) REFERENCES `feeds` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `feeding_schedules_herd_id_foreign` FOREIGN KEY (`herd_id`) REFERENCES `herds` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vaccination_records`
--
ALTER TABLE `vaccination_records`
  ADD CONSTRAINT `vaccination_records_herd_id_foreign` FOREIGN KEY (`herd_id`) REFERENCES `herds` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vaccination_records_vaccine_id_foreign` FOREIGN KEY (`vaccine_id`) REFERENCES `vaccines` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

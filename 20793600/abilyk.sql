-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 15, 2020 at 02:13 PM
-- Server version: 10.1.26-MariaDB-0+deb9u1
-- PHP Version: 7.0.33-0+deb9u7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abilyk`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `password` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `Plan` varchar(25) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `Plan`) VALUES
(1, 'admin', 'admin', NULL),
(2, 'lorna', 'test', NULL),
(40, 'e', 'e1671797c52e15f763380b45e841ec32', '4'),
(38, 'root', '03c7c0ace395d80182db07ae2c30f034', '1'),
(37, 'b', '92eb5ffee6ae2fec3ad71c777531578f', '1'),
(42, 'Nekit', 'a67e565b11cd18f7a922b58f5476b569', '3'),
(43, 'A', '0cc175b9c0f1b6a831c399e269772661', '4'),
(46, 'test', '098f6bcd4621d373cade4e832627b4f6', '4');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `offer_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`offer_id`, `title`, `description`, `price`, `image`) VALUES
(1, 'SILVER Level', 'Silver level subscribers receieve unlimited usage with ad support', 2.99, 'images/offers/SilverOffer.png'),
(2, 'GOLD Level', 'Subscribe to our gold level subscription and get unlimited access to our entire catalogue', 4.99, 'images/offers/GoldOffer.png'),
(3, 'PLATINUM Level', 'Stream unlimited music on unlimited devices (non concurrently) registered with the same user account', 6.99, 'images/offers/PlatinumOffer.png'),
(4, 'FAMILY Pack', 'Up to 4 separate GOLD user accounts in one pack, all accounts can run concurrently', 9.99, 'images/offers/FamilyOffer.png');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `review` varchar(1000) NOT NULL,
  `rating` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `product_id`, `name`, `review`, `rating`) VALUES
(1, 1, 'Brendan', 'Love this Song!! Wicked Bassline', 8),
(3, 61, 'Brendan', 'Love Watering Hole, this is by far the most epic track on the album, what a closer!', 10),
(116, 25, 'B', '', 10),
(108, 1, 'b', 'xzc', 5),
(114, 16, 'Nekit', 'Played this while rapping Endrew ;)', 0),
(112, 16, 'nekit228', 'sitok', 4),
(102, 9, 'b', 'didn\'y like it', 2),
(101, 9, 'b', 'didn\'y like it', 2),
(110, 10, 'e', 'dwqf', 5),
(98, 9, 'b', 'wow ausowmsouse', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `track_id` int(11) NOT NULL,
  `artist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `description` text COLLATE latin1_general_ci NOT NULL,
  `name` varchar(40) COLLATE latin1_general_ci NOT NULL DEFAULT '0.00',
  `genre` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `image` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `thumb` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `sample` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`track_id`, `artist`, `album`, `description`, `name`, `genre`, `image`, `thumb`, `sample`) VALUES
(1, 'Disoriented Scoundrel', 'Chap In The Recess', '1 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Taking A Seat', 'Rap', 'images/chapintherecess.jpg', 'images/thumbs/chapintherecessTM.jpg', 'samples/chapintherecess.mp3'),
(16, '50 Pence Piece', 'The Misplaced Cassette', '16 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Occupy Your Time', 'Rap', 'images/themisplacedcassette.jpg', 'images/thumbs/themisplacedcassetteTM.jpg', 'samples/chapintherecess.mp3'),
(15, 'Disoriented Scoundrel', 'Chap In The Recess', '15 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Proceed', 'Rap', 'images/chapintherecess.jpg', 'images/thumbs/chapintherecessTM.jpg', 'samples/chapintherecess.mp3'),
(14, 'Disoriented Scoundrel', 'Chap In The Recess', '14 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Survive O', 'Rap', 'images/chapintherecess.jpg', 'images/thumbs/chapintherecessTM.jpg', 'samples/chapintherecess.mp3'),
(13, 'Disoriented Scoundrel', 'Chap In The Recess', '13 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Appears So', 'Rap', 'images/chapintherecess.jpg', 'images/thumbs/chapintherecessTM.jpg', 'samples/chapintherecess.mp3'),
(12, 'Disoriented Scoundrel', 'Chap In The Recess', '12 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Tart', 'Rap', 'images/chapintherecess.jpg', 'images/thumbs/chapintherecessTM.jpg', 'samples/chapintherecess.mp3'),
(9, 'Disoriented Scoundrel', 'Chap In The Recess', '9 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Repeating Process', 'Rap', 'images/chapintherecess.jpg', 'images/thumbs/chapintherecessTM.jpg', 'samples/chapintherecess.mp3'),
(8, 'Disoriented Scoundrel', 'Chap In The Recess', '8 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Bite your Lip', 'Rap', 'images/chapintherecess.jpg', 'images/thumbs/chapintherecessTM.jpg', 'samples/chapintherecess.mp3'),
(7, 'Disoriented Scoundrel', 'Chap In The Recess', '7 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Remove them', 'Rap', 'images/chapintherecess.jpg', 'images/thumbs/chapintherecessTM.jpg', 'samples/chapintherecess.mp3'),
(6, 'Disoriented Scoundrel', 'Chap In The Recess', '6 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Repair it and Look G', 'Rap', 'images/chapintherecess.jpg', 'images/thumbs/chapintherecessTM.jpg', 'samples/chapintherecess.mp3'),
(5, 'Disoriented Scoundrel', 'Chap In The Recess', '5 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Excessive Distance', 'Rap', 'images/chapintherecess.jpg', 'images/thumbs/chapintherecessTM.jpg', 'samples/chapintherecess.mp3'),
(10, 'Disoriented Scoundrel', 'Chap In The Recess', '10 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Simply a Scoundrel', 'Rap', 'images/chapintherecess.jpg', 'images/thumbs/chapintherecessTM.jpg', 'samples/chapintherecess.mp3'),
(11, 'Disoriented Scoundrel', 'Chap In The Recess', '11 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Upon What Are You Pl', 'Rap', 'images/chapintherecess.jpg', 'images/thumbs/chapintherecessTM.jpg', 'samples/chapintherecess.mp3'),
(4, 'Disoriented Scoundrel', 'Chap In The Recess', '4 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Fresh Morrow', 'Rap', 'images/chapintherecess.jpg', 'images/thumbs/chapintherecessTM.jpg', 'samples/chapintherecess.mp3'),
(2, 'Disoriented Scoundrel', 'Chap In The Recess', '2 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Cease, Fourthwith', 'Rap', 'images/chapintherecess.jpg', 'images/thumbs/chapintherecessTM.jpg', 'samples/chapintherecess.mp3'),
(3, 'Disoriented Scoundrel', 'Chap In The Recess', '3 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'I Love You', 'Rap', 'images/chapintherecess.jpg', 'images/thumbs/chapintherecessTM.jpg', 'samples/chapintherecess.mp3'),
(17, '50 Pence Piece', 'The Misplaced Cassette', '17 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Multiply by 2', 'Rap', 'images/themisplacedcassette.jpg', 'images/thumbs/themisplacedcassetteTM.jpg', 'samples/themisplacedcassette.mp3'),
(18, '50 Pence Piece', 'The Misplaced Cassette', '18 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Slay One', 'Rap', 'images/themisplacedcassette.jpg', 'images/thumbs/themisplacedcassetteTM.jpg', 'samples/themisplacedcassette.mp3'),
(19, '50 Pence Piece', 'The Misplaced Cassette', '19 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Fracas', 'Rap', 'images/themisplacedcassette.jpg', 'images/thumbs/themisplacedcassetteTM.jpg', 'samples/themisplacedcassette.mp3'),
(20, '50 Pence Piece', 'The Misplaced Cassette', '20 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Orange Juice', 'Rap', 'images/themisplacedcassette.jpg', 'images/thumbs/themisplacedcassetteTM.jpg', 'samples/themisplacedcassette.mp3'),
(21, '50 Pence Piece', 'The Misplaced Cassette', '21 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'I Will Tell The Trut', 'Rap', 'images/themisplacedcassette.jpg', 'images/thumbs/themisplacedcassetteTM.jpg', 'samples/themisplacedcassette.mp3'),
(22, '50 Pence Piece', 'The Misplaced Cassette', '22 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Complex', 'Rap', 'images/themisplacedcassette.jpg', 'images/thumbs/themisplacedcassetteTM.jpg', 'samples/themisplacedcassette.mp3'),
(23, '50 Pence Piece', 'The Misplaced Cassette', '23 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Impressive Slayer', 'Rap', 'images/themisplacedcassette.jpg', 'images/thumbs/themisplacedcassetteTM.jpg', 'samples/themisplacedcassette.mp3'),
(24, '50 Pence Piece', 'The Misplaced Cassette', '24 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Dont Panic!', 'Rap', 'images/themisplacedcassette.jpg', 'images/thumbs/themisplacedcassetteTM.jpg', 'samples/themisplacedcassette.mp3'),
(25, '50 Pence Piece', 'The Misplaced Cassette', '25 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'I Require Assistance', 'Rap', 'images/themisplacedcassette.jpg', 'images/thumbs/themisplacedcassetteTM.jpg', 'samples/themisplacedcassette.mp3'),
(26, '50 Pence Piece', 'The Misplaced Cassette', '26 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'When I Open The Boot', 'Rap', 'images/themisplacedcassette.jpg', 'images/thumbs/themisplacedcassetteTM.jpg', 'samples/themisplacedcassette.mp3'),
(27, '50 Pence Piece', 'The Misplaced Cassette', '27 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Cosmic Body 50', 'Rap', 'images/themisplacedcassette.jpg', 'images/thumbs/themisplacedcassetteTM.jpg', 'samples/themisplacedcassette.mp3'),
(28, '50 Pence Piece', 'The Misplaced Cassette', '28 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Loot Straight', 'Rap', 'images/themisplacedcassette.jpg', 'images/thumbs/themisplacedcassetteTM.jpg', 'samples/themisplacedcassette.mp3'),
(29, '50 Pence Piece', 'The Misplaced Cassette', '29 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lie Flat (Smoked)', 'Rap', 'images/themisplacedcassette.jpg', 'images/thumbs/themisplacedcassetteTM.jpg', 'samples/themisplacedcassette.mp3'),
(30, '50 Pence Piece', 'The Misplaced Cassette', '30 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'All His Affection', 'Rap', 'images/themisplacedcassette.jpg', 'images/thumbs/themisplacedcassetteTM.jpg', 'samples/themisplacedcassette.mp3'),
(31, 'Frank Saturn', 'Non Orthodox Sound System', '31 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Adolescent Females', 'R and B', 'images/non-orthodoxsoundsystem.jpg', 'images/thumbs/non-orthodoxsoundsystemTM.jpg', 'samples/non-orthodoxsoundsystem.mp3'),
(32, 'Frank Saturn', 'Non Orthodox Sound System', '32 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Celestial Banishment', 'R and B', 'images/non-orthodoxsoundsystem.jpg', 'images/thumbs/non-orthodoxsoundsystemTM.jpg', 'samples/non-orthodoxsoundsystem.mp3'),
(33, 'Frank Saturn', 'Non Orthodox Sound System', '33 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', ' Hominoidea', 'R and B', 'images/non-orthodoxsoundsystem.jpg', 'images/thumbs/non-orthodoxsoundsystemTM.jpg', 'samples/non-orthodoxsoundsystem.mp3'),
(34, 'Frank Saturn', 'Non Orthodox Sound System', '34 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Valuables', 'R and B', 'images/non-orthodoxsoundsystem.jpg', 'images/thumbs/non-orthodoxsoundsystemTM.jpg', 'samples/non-orthodoxsoundsystem.mp3'),
(35, 'Frank Saturn', 'Non Orthodox Sound System', '35 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Homebrew', 'R and B', 'images/non-orthodoxsoundsystem.jpg', 'images/thumbs/non-orthodoxsoundsystemTM.jpg', 'samples/non-orthodoxsoundsystem.mp3'),
(36, 'Frank Saturn', 'Non Orthodox Sound System', '36 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'When I Were Yours', 'R and B', 'images/non-orthodoxsoundsystem.jpg', 'images/thumbs/non-orthodoxsoundsystemTM.jpg', 'samples/non-orthodoxsoundsystem.mp3'),
(37, 'Frank Saturn', 'Non Orthodox Sound System', '37 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Portman', 'R and B', 'images/non-orthodoxsoundsystem.jpg', 'images/thumbs/non-orthodoxsoundsystemTM.jpg', 'samples/non-orthodoxsoundsystem.mp3'),
(38, 'Frank Saturn', 'Non Orthodox Sound System', '38 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Demonstrate', 'R and B', 'images/non-orthodoxsoundsystem.jpg', 'images/thumbs/non-orthodoxsoundsystemTM.jpg', 'samples/non-orthodoxsoundsystem.mp3'),
(39, 'Frank Saturn', 'Non Orthodox Sound System', '39 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Cash Pleases Her', 'R and B', 'images/non-orthodoxsoundsystem.jpg', 'images/thumbs/non-orthodoxsoundsystemTM.jpg', 'samples/non-orthodoxsoundsystem.mp3'),
(40, 'Frank Saturn', 'Non Orthodox Sound System', '40 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Had I Been Aware', 'R and B', 'images/non-orthodoxsoundsystem.jpg', 'images/thumbs/non-orthodoxsoundsystemTM.jpg', 'samples/non-orthodoxsoundsystem.mp3'),
(41, 'Pinniped', 'Pinniped', '41 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'The Start', 'R and B', 'images/pinniped.jpg', 'images/thumbs/pinnipedTM.jpg', 'samples/pinniped.mp3'),
(42, 'Pinniped', 'Pinniped', '42 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Deep Dihydrogen Oxide', 'R and B', 'images/pinniped.jpg', 'images/thumbs/pinnipedTM.jpg', 'samples/pinniped.mp3'),
(43, 'Pinniped', 'Pinniped', '43 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lunatic', 'R and B', 'images/pinniped.jpg', 'images/thumbs/pinnipedTM.jpg', 'samples/pinniped.mp3'),
(44, 'Pinniped', 'Pinniped', '44 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Assassin', 'R and B', 'images/pinniped.jpg', 'images/thumbs/pinnipedTM.jpg', 'samples/pinniped.mp3'),
(45, 'Pinniped', 'Pinniped', '45 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Vortex', 'R and B', 'images/pinniped.jpg', 'images/thumbs/pinnipedTM.jpg', 'samples/pinniped.mp3'),
(46, 'Pinniped', 'Pinniped', '46 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'FLP', 'R and B', 'images/pinniped.jpg', 'images/thumbs/pinnipedTM.jpg', 'samples/pinniped.mp3'),
(47, 'Pinniped', 'Pinniped', '47 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Feral', 'R and B', 'images/pinniped.jpg', 'images/thumbs/pinnipedTM.jpg', 'samples/pinniped.mp3'),
(48, 'Pinniped', 'Pinniped', '48 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Demonstrate', 'R and B', 'images/pinniped.jpg', 'images/thumbs/pinnipedTM.jpg', 'samples/pinniped.mp3'),
(49, 'Pinniped', 'Pinniped', '49 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lavender', 'R and B', 'images/pinniped.jpg', 'images/thumbs/pinnipedTM.jpg', 'samples/pinniped.mp3'),
(50, 'Watering Hole', 'Daybreak Triumph', '50 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Greetings', 'Rock', 'images/daybreaktriumph.jpg', 'images/thumbs/daybreaktriumphTM.jpg', 'samples/daybreaktriumph.mp3'),
(51, 'Watering Hole', 'Daybreak Triumph', '51 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Rotate With It', 'Rock', 'images/daybreaktriumph.jpg', 'images/thumbs/daybreaktriumphTM.jpg', 'samples/daybreaktriumph.mp3'),
(52, 'Watering Hole', 'Daybreak Triumph', '52 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Fascinating Barrier', 'Rock', 'images/daybreaktriumph.jpg', 'images/thumbs/daybreaktriumphTM.jpg', 'samples/daybreaktriumph.mp3'),
(53, 'Watering Hole', 'Daybreak Triumph', '53 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Don\'t Reflect in Acrimony', 'Rock', 'images/daybreaktriumph.jpg', 'images/thumbs/daybreaktriumphTM.jpg', 'samples/daybreaktriumph.mp3'),
(54, 'Watering Hole', 'Daybreak Triumph', '54 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Hey, At This Moment', 'Rock', 'images/daybreaktriumph.jpg', 'images/thumbs/daybreaktriumphTM.jpg', 'samples/daybreaktriumph.mp3'),
(55, 'Watering Hole', 'Daybreak Triumph', '55 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Untitled', 'Rock', 'images/daybreaktriumph.jpg', 'images/thumbs/daybreaktriumphTM.jpg', 'samples/daybreaktriumph.mp3'),
(56, 'Watering Hole', 'Daybreak Triumph', '56 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'A Number May Affirm ', 'Rock', 'images/daybreaktriumph.jpg', 'images/thumbs/daybreaktriumphTM.jpg', 'samples/daybreaktriumph.mp3'),
(57, 'Watering Hole', 'Daybreak Triumph', '57 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Make No Shade', 'Rock', 'images/daybreaktriumph.jpg', 'images/thumbs/daybreaktriumphTM.jpg', 'samples/daybreaktriumph.mp3'),
(58, 'Watering Hole', 'Daybreak Triumph', '58 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'She\'s Charged', 'Rock', 'images/daybreaktriumph.jpg', 'images/thumbs/daybreaktriumphTM.jpg', 'samples/daybreaktriumph.mp3'),
(59, 'Watering Hole', 'Daybreak Triumph', '59 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Daybreak Triumph', 'Rock', 'images/daybreaktriumph.jpg', 'images/thumbs/daybreaktriumphTM.jpg', 'samples/daybreaktriumph.mp3'),
(60, 'Watering Hole', 'Daybreak Triumph', '60 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Untited', 'Rock', 'images/daybreaktriumph.jpg', 'images/thumbs/daybreaktriumphTM.jpg', 'samples/daybreaktriumph.mp3'),
(61, 'Watering Hole', 'Daybreak Triumph', '61 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Prosecco Stellar Explosion', 'Rock', 'images/daybreaktriumph.jpg', 'images/thumbs/daybreaktriumphTM.jpg', 'samples/daybreaktriumph.mp3'),
(73, 'The What', 'Thomas', '73 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Prelude', 'Rock', 'images/thomas.jpg', 'images/thumbs/thomasTM.jpg', 'samples/thomas.mp3'),
(62, 'The Boulder Perennials', 'The Boulder Perennials', '62 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'I Desire Esteem', 'Indie', 'images/theboulderperennials.jpg', 'images/thumbs/theboulderperennialsTM.jpg', 'samples/theboulderperennials.mp3'),
(63, 'The Boulder Perennials', 'The Boulder Perennials', '63 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'She Beats The Gong', 'Indie', 'images/theboulderperennials.jpg', 'images/thumbs/theboulderperennialsTM.jpg', 'samples/theboulderperennials.mp3'),
(64, 'The Boulder Perennials', 'The Boulder Perennials', '64 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Cascade', 'Indie', 'images/theboulderperennials.jpg', 'images/thumbs/theboulderperennialsTM.jpg', 'samples/theboulderperennials.mp3'),
(65, 'The Boulder Perennials', 'The Boulder Perennials', '65 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Continue', 'Indie', 'images/theboulderperennials.jpg', 'images/thumbs/theboulderperennialsTM.jpg', 'samples/theboulderperennials.mp3'),
(66, 'The Boulder Perennials', 'The Boulder Perennials', '66 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Farewell Antagonist', 'Indie', 'images/theboulderperennials.jpg', 'images/thumbs/theboulderperennialsTM.jpg', 'samples/theboulderperennials.mp3'),
(67, 'The Boulder Perennials', 'The Boulder Perennials', '67 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lilly My Darling', 'Indie', 'images/theboulderperennials.jpg', 'images/thumbs/theboulderperennialsTM.jpg', 'samples/theboulderperennials.mp3'),
(68, 'The Boulder Perennials', 'The Boulder Perennials', '68 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Dextrose Rotated Sibling', 'Indie', 'images/theboulderperennials.jpg', 'images/thumbs/theboulderperennialsTM.jpg', 'samples/theboulderperennials.mp3'),
(69, 'The Boulder Perennials', 'The Boulder Perennials', '69 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Of Boulder Construction', 'Indie', 'images/theboulderperennials.jpg', 'images/thumbs/theboulderperennialsTM.jpg', 'samples/theboulderperennials.mp3'),
(70, 'The Boulder Perennials', 'The Boulder Perennials', '70 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Blast you Out', 'Indie', 'images/theboulderperennials.jpg', 'images/thumbs/theboulderperennialsTM.jpg', 'samples/theboulderperennials.mp3'),
(71, 'The Boulder Perennials', 'The Boulder Perennials', '71 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'This Is It', 'Indie', 'images/theboulderperennials.jpg', 'images/thumbs/theboulderperennialsTM.jpg', 'samples/theboulderperennials.mp3'),
(72, 'The Boulder Perennials', 'The Boulder Perennials', '72 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'I\'m The Reawakening', 'Indie', 'images/theboulderperennials.jpg', 'images/thumbs/theboulderperennialsTM.jpg', 'samples/theboulderperennials.mp3'),
(74, 'The What', 'Thomas', '74 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'It\'s A Girl', 'Rock', 'images/thomas.jpg', 'images/thumbs/thomasTM.jpg', 'samples/thomas.mp3'),
(75, 'The What', 'Thomas', '75 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '2119', 'Rock', 'images/thomas.jpg', 'images/thumbs/thomasTM.jpg', 'samples/thomas.mp3'),
(76, 'The What', 'Thomas', '76 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Splendid Outing', 'Rock', 'images/thomas.jpg', 'images/thumbs/thomasTM.jpg', 'samples/thomas.mp3'),
(77, 'The What', 'Thomas', '77 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Embers', 'Rock', 'images/thomas.jpg', 'images/thumbs/thomasTM.jpg', 'samples/thomas.mp3'),
(78, 'The What', 'Thomas', '78 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'The Peddler', 'Rock', 'images/thomas.jpg', 'images/thumbs/thomasTM.jpg', 'samples/thomas.mp3'),
(79, 'The What', 'Thomas', '79 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Noel', 'Rock', 'images/thomas.jpg', 'images/thumbs/thomasTM.jpg', 'samples/thomas.mp3'),
(80, 'The What', 'Thomas', '80 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Nephew Keith', 'Rock', 'images/thomas.jpg', 'images/thumbs/thomasTM.jpg', 'samples/thomas.mp3'),
(81, 'The What', 'Thomas', '81 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'The Alkaline King', 'Rock', 'images/thomas.jpg', 'images/thumbs/thomasTM.jpg', 'samples/thomas.mp3'),
(82, 'The What', 'Thomas', '82 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Epilogue', 'Rock', 'images/thomas.jpg', 'images/thumbs/thomasTM.jpg', 'samples/thomas.mp3'),
(83, 'Polar Primates', 'What People Claim Aboout Me Is Incorrect', '83 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'The Aspect At Noon', 'Indie', 'images/whatpeopleclaimaboutmeisincorrect.jpg', 'images/thumbs/whatpeopleclaimaboutmeisincorrectTM.jpg', 'samples/whatpeopleclaimaboutmeisincorrect.mp3'),
(84, 'Polar Primates', 'What People Claim Aboout Me Is Incorrect', '84 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'I\'d Wager Your An Attractive Dancer', 'Indie', 'images/whatpeopleclaimaboutmeisincorrect.jpg', 'images/thumbs/whatpeopleclaimaboutmeisincorrectTM.jpg', 'samples/whatpeopleclaimaboutmeisincorrect.mp3'),
(85, 'Polar Primates', 'What People Claim Aboout Me Is Incorrect', '85 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Bogus Anecdotes in California', 'Indie', 'images/whatpeopleclaimaboutmeisincorrect.jpg', 'images/thumbs/whatpeopleclaimaboutmeisincorrectTM.jpg', 'samples/whatpeopleclaimaboutmeisincorrect.mp3'),
(86, 'Polar Primates', 'What People Claim Aboout Me Is Incorrect', '86 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Boppin Boots', 'Indie', 'images/whatpeopleclaimaboutmeisincorrect.jpg', 'images/thumbs/whatpeopleclaimaboutmeisincorrectTM.jpg', 'samples/whatpeopleclaimaboutmeisincorrect.mp3'),
(87, 'Polar Primates', 'What People Claim Aboout Me Is Incorrect', '87 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lookin At Me In The Dark', 'Indie', 'images/whatpeopleclaimaboutmeisincorrect.jpg', 'images/thumbs/whatpeopleclaimaboutmeisincorrectTM.jpg', 'samples/whatpeopleclaimaboutmeisincorrect.mp3'),
(88, 'Polar Primates', 'What People Claim Aboout Me Is Incorrect', '88 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Take You Home Regardless', 'Indie', 'images/whatpeopleclaimaboutmeisincorrect.jpg', 'images/thumbs/whatpeopleclaimaboutmeisincorrectTM.jpg', 'samples/whatpeopleclaimaboutmeisincorrect.mp3'),
(89, 'Polar Primates', 'What People Claim Aboout Me Is Incorrect', '89 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Commotion Car', 'Indie', 'images/whatpeopleclaimaboutmeisincorrect.jpg', 'images/thumbs/whatpeopleclaimaboutmeisincorrectTM.jpg', 'samples/whatpeopleclaimaboutmeisincorrect.mp3'),
(90, 'Polar Primates', 'What People Claim Aboout Me Is Incorrect', '90 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Lock Indicator', 'Indie', 'images/whatpeopleclaimaboutmeisincorrect.jpg', 'images/thumbs/whatpeopleclaimaboutmeisincorrectTM.jpg', 'samples/whatpeopleclaimaboutmeisincorrect.mp3'),
(91, 'Polar Primates', 'What People Claim Aboout Me Is Incorrect', '91 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Grumpy Rump', 'Indie', 'images/whatpeopleclaimaboutmeisincorrect.jpg', 'images/thumbs/whatpeopleclaimaboutmeisincorrectTM.jpg', 'samples/whatpeopleclaimaboutmeisincorrect.mp3'),
(92, 'Polar Primates', 'What People Claim Aboout Me Is Incorrect', '92 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Undead Is  Forceful, However..', 'Indie', 'images/whatpeopleclaimaboutmeisincorrect.jpg', 'images/thumbs/whatpeopleclaimaboutmeisincorrectTM.jpg', 'samples/whatpeopleclaimaboutmeisincorrect.mp3'),
(93, 'Polar Primates', 'What People Claim Aboout Me Is Incorrect', '93 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'At Sunset', 'Indie', 'images/whatpeopleclaimaboutmeisincorrect.jpg', 'images/thumbs/whatpeopleclaimaboutmeisincorrectTM.jpg', 'samples/whatpeopleclaimaboutmeisincorrect.mp3'),
(94, 'Polar Primates', 'What People Claim Aboout Me Is Incorrect', '94 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'From Claridges to Crumbs', 'Indie', 'images/whatpeopleclaimaboutmeisincorrect.jpg', 'images/thumbs/whatpeopleclaimaboutmeisincorrectTM.jpg', 'samples/whatpeopleclaimaboutmeisincorrect.mp3'),
(95, 'Polar Primates', 'What People Claim Aboout Me Is Incorrect', '95 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'A Definite Courtship', 'Indie', 'images/whatpeopleclaimaboutmeisincorrect.jpg', 'images/thumbs/whatpeopleclaimaboutmeisincorrectTM.jpg', 'samples/whatpeopleclaimaboutmeisincorrect.mp3'),
(96, 'Old Chaos', 'Entity', '96 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Ritual', 'Dance', 'images/entity.jpg', 'images/thumbs/entityTM.jpg', 'samples/entity.mp3'),
(97, 'Old Chaos', 'Entity', '97 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'It\'s All Gone Blue', 'Dance', 'images/entity.jpg', 'images/thumbs/entityTM.jpg', 'samples/entity.mp3'),
(98, 'Old Chaos', 'Entity', '98 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Allurement', 'Dance', 'images/entity.jpg', 'images/thumbs/entityTM.jpg', 'samples/entity.mp3'),
(99, 'Old Chaos', 'Entity', '99 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Green Tuesday', 'Dance', 'images/entity.jpg', 'images/thumbs/entityTM.jpg', 'samples/entity.mp3'),
(100, 'Old Chaos', 'Entity', '100 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Befuddling', 'Dance', 'images/entity.jpg', 'images/thumbs/entityTM.jpg', 'samples/entity.mp3'),
(101, 'Old Chaos', 'Entity', '101 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Bandits Like Ourselves', 'Dance', 'images/entity.jpg', 'images/thumbs/entityTM.jpg', 'samples/entity.mp3'),
(102, 'Old Chaos', 'Entity', '102 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'The Flawless Smooch', 'Dance', 'images/entity.jpg', 'images/thumbs/entityTM.jpg', 'samples/entity.mp3'),
(103, 'Old Chaos', 'Entity', '103 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Under Civilization', 'Dance', 'images/entity.jpg', 'images/thumbs/entityTM.jpg', 'samples/entity.mp3'),
(104, 'Old Chaos', 'Entity', '104 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Carapace Fright', 'Dance', 'images/entity.jpg', 'images/thumbs/entityTM.jpg', 'samples/entity.mp3'),
(105, 'Old Chaos', 'Entity', '105 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Condition of the Country', 'Dance', 'images/entity.jpg', 'images/thumbs/entityTM.jpg', 'samples/entity.mp3'),
(106, 'Old Chaos', 'Entity', '106 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Strange Amourous Square', 'Dance', 'images/entity.jpg', 'images/thumbs/entityTM.jpg', 'samples/entity.mp3'),
(107, 'Old Chaos', 'Entity', '107 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Correct Belief', 'Dance', 'images/entity.jpg', 'images/thumbs/entityTM.jpg', 'samples/entity.mp3'),
(108, 'Deceased Rod3nt', 'Get Abraded', '108 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '8 Binary Digits', 'Dance', 'images/getabraded.jpg', 'images/thumbs/getabradedTM.jpg', 'samples/getabraded.mp3'),
(109, 'Deceased Rod3nt', 'Get Abraded', '109 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Disinterested in Canada', 'Dance', 'images/getabraded.jpg', 'images/thumbs/getabradedTM.jpg', 'samples/getabraded.mp3'),
(110, 'Deceased Rod3nt', 'Get Abraded', '110 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Disregardful', 'Dance', 'images/getabraded.jpg', 'images/thumbs/getabradedTM.jpg', 'samples/getabraded.mp3'),
(111, 'Deceased Rod3nt', 'Get Abraded', '111 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Tatsletni', 'Dance', 'images/getabraded.jpg', 'images/thumbs/getabradedTM.jpg', 'samples/getabraded.mp3'),
(112, 'Deceased Rod3nt', 'Get Abraded', '112 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Glaring Television', 'Dance', 'images/getabraded.jpg', 'images/thumbs/getabradedTM.jpg', 'samples/getabraded.mp3'),
(113, 'Deceased Rod3nt', 'Get Abraded', '113 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Repeat Attempt', 'Dance', 'images/getabraded.jpg', 'images/thumbs/getabradedTM.jpg', 'samples/getabraded.mp3'),
(114, 'Deceased Rod3nt', 'Get Abraded', '114 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Change Your Acquaintances', 'Dance', 'images/getabraded.jpg', 'images/thumbs/getabradedTM.jpg', 'samples/getabraded.mp3'),
(115, 'Deceased Rod3nt', 'Get Abraded', '115 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'I Do Not Recall', 'Dance', 'images/getabraded.jpg', 'images/thumbs/getabradedTM.jpg', 'samples/getabraded.mp3'),
(116, 'Deceased Rod3nt', 'Get Abraded', '116 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Memo From The Void', 'Dance', 'images/getabraded.jpg', 'images/thumbs/getabradedTM.jpg', 'samples/getabraded.mp3'),
(117, 'Deceased Rod3nt', 'Get Abraded', '117 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Debt', 'Dance', 'images/getabraded.jpg', 'images/thumbs/getabradedTM.jpg', 'samples/getabraded.mp3'),
(118, 'Deceased Rod3nt', 'Get Abraded', '118 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Contentedness', 'Dance', 'images/getabraded.jpg', 'images/thumbs/getabradedTM.jpg', 'samples/getabraded.mp3'),
(119, 'Deceased Rod3nt', 'Get Abraded', '119 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'On Occasion im Unsucessful', 'Dance', 'images/getabraded.jpg', 'images/thumbs/getabradedTM.jpg', 'samples/getabraded.mp3'),
(120, 'Deceased Rod3nt', 'Get Abraded', '120 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Sustain', 'Dance', 'images/getabraded.jpg', 'images/thumbs/getabradedTM.jpg', 'samples/getabraded.mp3'),
(121, 'Deceased Rod3nt', 'Get Abraded', '121 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'The Awahso Relation', 'Dance', 'images/getabraded.jpg', 'images/thumbs/getabradedTM.jpg', 'samples/getabraded.mp3'),
(122, 'Deceased Rod3nt', 'Get Abraded', '122 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'The Standard Things', 'Dance', 'images/getabraded.jpg', 'images/thumbs/getabradedTM.jpg', 'samples/getabraded.mp3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`track_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

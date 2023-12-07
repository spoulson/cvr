-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: amber.explodingcoder.local:3306
-- Generation Time: Dec 07, 2023 at 02:46 AM
-- Server version: 5.7.43
-- PHP Version: 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voter_reg`
--

-- --------------------------------------------------------

--
-- Table structure for table `county`
--

CREATE TABLE `county` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Counties';

-- --------------------------------------------------------

--
-- Table structure for table `county_race`
--

CREATE TABLE `county_race` (
  `county_id` int(11) NOT NULL,
  `race_id` int(11) NOT NULL,
  `raw_column` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Link table';

-- --------------------------------------------------------

--
-- Table structure for table `county_summary`
--

CREATE TABLE `county_summary` (
  `date` date NOT NULL,
  `county` varchar(255) NOT NULL,
  `party` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `new` int(11) DEFAULT NULL,
  `removed` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='County summary';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_1_raw`
--

CREATE TABLE `cvr_2022_1_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_6` tinytext NOT NULL,
  `state_senator_1` tinytext NOT NULL,
  `house_of_delegates_1a` tinytext NOT NULL,
  `house_of_delegates_1b` tinytext NOT NULL,
  `house_of_delegates_1c` tinytext NOT NULL,
  `county_commissioner_1` tinytext NOT NULL,
  `county_commissioner_2` tinytext NOT NULL,
  `county_commissioner_3` tinytext NOT NULL,
  `judge_of_circuit_court` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_1` tinytext NOT NULL,
  `board_of_education_2` tinytext NOT NULL,
  `board_of_education_3` tinytext NOT NULL,
  `mayor_city_of_cumberland` tinytext NOT NULL,
  `council_city_of_cumberland_1` tinytext NOT NULL,
  `council_city_of_cumberland_2` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Allegany County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_2_raw`
--

CREATE TABLE `cvr_2022_2_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_3` tinytext NOT NULL,
  `representative_congress_5` tinytext NOT NULL,
  `state_senator_12` tinytext NOT NULL,
  `state_senator_21` tinytext NOT NULL,
  `state_senator_30` tinytext NOT NULL,
  `state_senator_31` tinytext NOT NULL,
  `state_senator_32` tinytext NOT NULL,
  `state_senator_33` tinytext NOT NULL,
  `house_of_delegates_12b` tinytext NOT NULL,
  `house_of_delegates_21_1` tinytext NOT NULL,
  `house_of_delegates_21_2` tinytext NOT NULL,
  `house_of_delegates_21_3` tinytext NOT NULL,
  `house_of_delegates_30a_1` tinytext NOT NULL,
  `house_of_delegates_30a_2` tinytext NOT NULL,
  `house_of_delegates_30b` tinytext NOT NULL,
  `house_of_delegates_31_1` tinytext NOT NULL,
  `house_of_delegates_31_2` tinytext NOT NULL,
  `house_of_delegates_31_3` tinytext NOT NULL,
  `house_of_delegates_32_1` tinytext NOT NULL,
  `house_of_delegates_32_2` tinytext NOT NULL,
  `house_of_delegates_32_3` tinytext NOT NULL,
  `house_of_delegates_33a` tinytext NOT NULL,
  `house_of_delegates_33b` tinytext NOT NULL,
  `house_of_delegates_33c` tinytext NOT NULL,
  `county_executive` tinytext NOT NULL,
  `county_council_1` tinytext NOT NULL,
  `county_council_2` tinytext NOT NULL,
  `county_council_3` tinytext NOT NULL,
  `county_council_4` tinytext NOT NULL,
  `county_council_5` tinytext NOT NULL,
  `county_council_6` tinytext NOT NULL,
  `county_council_7` tinytext NOT NULL,
  `judge_circuit_court` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `judge_court_of_special_appeals_appellate_court` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL,
  `qa` tinytext NOT NULL,
  `qb` tinytext NOT NULL,
  `qc` tinytext NOT NULL,
  `qd` tinytext NOT NULL,
  `qe` tinytext NOT NULL,
  `qf` tinytext NOT NULL,
  `qg` tinytext NOT NULL,
  `qh` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Anne Arundel County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_3_raw`
--

CREATE TABLE `cvr_2022_3_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_2` tinytext NOT NULL,
  `representative_congress_7` tinytext NOT NULL,
  `state_senator_40` tinytext NOT NULL,
  `state_senator_41` tinytext NOT NULL,
  `state_senator_43` tinytext NOT NULL,
  `state_senator_45` tinytext NOT NULL,
  `state_senator_46` tinytext NOT NULL,
  `house_of_delegates_40_1` tinytext NOT NULL,
  `house_of_delegates_40_2` tinytext NOT NULL,
  `house_of_delegates_40_3` tinytext NOT NULL,
  `house_of_delegates_41_1` tinytext NOT NULL,
  `house_of_delegates_41_2` tinytext NOT NULL,
  `house_of_delegates_41_3` tinytext NOT NULL,
  `house_of_delegates_43a_1` tinytext NOT NULL,
  `house_of_delegates_43a_2` tinytext NOT NULL,
  `house_of_delegates_45_1` tinytext NOT NULL,
  `house_of_delegates_45_2` tinytext NOT NULL,
  `house_of_delegates_45_3` tinytext NOT NULL,
  `house_of_delegates_46_1` tinytext NOT NULL,
  `house_of_delegates_46_2` tinytext NOT NULL,
  `house_of_delegates_46_3` tinytext NOT NULL,
  `judge_circuit_court_1` tinytext NOT NULL,
  `judge_circuit_court_2` tinytext NOT NULL,
  `judge_circuit_court_3` tinytext NOT NULL,
  `judge_circuit_court_4` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_at_large_1` tinytext NOT NULL,
  `board_of_education_at_large_2` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL,
  `qa` tinytext NOT NULL,
  `qb` tinytext NOT NULL,
  `qc` tinytext NOT NULL,
  `qd` tinytext NOT NULL,
  `qe` tinytext NOT NULL,
  `qf` tinytext NOT NULL,
  `qg` tinytext NOT NULL,
  `qh` tinytext NOT NULL,
  `qi` tinytext NOT NULL,
  `qj` tinytext NOT NULL,
  `qk` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Baltimore City';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_4_raw`
--

CREATE TABLE `cvr_2022_4_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_1` tinytext NOT NULL,
  `representative_congress_2` tinytext NOT NULL,
  `representative_congress_7` tinytext NOT NULL,
  `state_senator_6` tinytext NOT NULL,
  `state_senator_7` tinytext NOT NULL,
  `state_senator_8` tinytext NOT NULL,
  `state_senator_10` tinytext NOT NULL,
  `state_senator_11` tinytext NOT NULL,
  `state_senator_42` tinytext NOT NULL,
  `state_senator_43` tinytext NOT NULL,
  `state_senator_44` tinytext NOT NULL,
  `house_of_delegates_6_1` tinytext NOT NULL,
  `house_of_delegates_6_2` tinytext NOT NULL,
  `house_of_delegates_6_3` tinytext NOT NULL,
  `house_of_delegates_7a_1` tinytext NOT NULL,
  `house_of_delegates_7a_2` tinytext NOT NULL,
  `house_of_delegates_8_1` tinytext NOT NULL,
  `house_of_delegates_8_2` tinytext NOT NULL,
  `house_of_delegates_8_3` tinytext NOT NULL,
  `house_of_delegates_10_1` tinytext NOT NULL,
  `house_of_delegates_10_2` tinytext NOT NULL,
  `house_of_delegates_10_3` tinytext NOT NULL,
  `house_of_delegates_11a` tinytext NOT NULL,
  `house_of_delegates_11b_1` tinytext NOT NULL,
  `house_of_delegates_11b_2` tinytext NOT NULL,
  `house_of_delegates_42a` tinytext NOT NULL,
  `house_of_delegates_42b` tinytext NOT NULL,
  `house_of_delegates_43b` tinytext NOT NULL,
  `house_of_delegates_44a` tinytext NOT NULL,
  `house_of_delegates_44b_1` tinytext NOT NULL,
  `house_of_delegates_44b_2` tinytext NOT NULL,
  `county_executive` tinytext NOT NULL,
  `county_council_1` tinytext NOT NULL,
  `county_council_2` tinytext NOT NULL,
  `county_council_3` tinytext NOT NULL,
  `county_council_4` tinytext NOT NULL,
  `county_council_5` tinytext NOT NULL,
  `county_council_6` tinytext NOT NULL,
  `county_council_7` tinytext NOT NULL,
  `judge_circuit_court_1` tinytext NOT NULL,
  `judge_circuit_court_2` tinytext NOT NULL,
  `judge_circuit_court_3` tinytext NOT NULL,
  `judge_circuit_court_4` tinytext NOT NULL,
  `judge_circuit_court_5` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_1` tinytext NOT NULL,
  `board_of_education_2` tinytext NOT NULL,
  `board_of_education_3` tinytext NOT NULL,
  `board_of_education_4` tinytext NOT NULL,
  `board_of_education_5` tinytext NOT NULL,
  `board_of_education_6` tinytext NOT NULL,
  `board_of_education_7` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL,
  `qa` tinytext NOT NULL,
  `qb` tinytext NOT NULL,
  `qc` tinytext NOT NULL,
  `qd` tinytext NOT NULL,
  `qe` tinytext NOT NULL,
  `qf` tinytext NOT NULL,
  `qg` tinytext NOT NULL,
  `qh` tinytext NOT NULL,
  `qi` tinytext NOT NULL,
  `qj` tinytext NOT NULL,
  `qk` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Baltimore County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_5_raw`
--

CREATE TABLE `cvr_2022_5_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_5` tinytext NOT NULL,
  `state_senator_27` tinytext NOT NULL,
  `state_senator_29` tinytext NOT NULL,
  `house_of_delegates_27b` tinytext NOT NULL,
  `house_of_delegates_27c` tinytext NOT NULL,
  `house_of_delegates_29c` tinytext NOT NULL,
  `county_commissioner_at_large_1` tinytext NOT NULL,
  `county_commissioner_at_large_2` tinytext NOT NULL,
  `county_commissioner_1` tinytext NOT NULL,
  `county_commissioner_2` tinytext NOT NULL,
  `county_commissioner_3` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `judge_court_special_appeals` tinytext NOT NULL,
  `treasurer` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_at_large_1` tinytext NOT NULL,
  `board_of_education_at_large_2` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Calvert County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_6_raw`
--

CREATE TABLE `cvr_2022_6_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_1` tinytext NOT NULL,
  `state_senator_36` tinytext NOT NULL,
  `state_senator_37` tinytext NOT NULL,
  `house_of_delegates_36_1` tinytext NOT NULL,
  `house_of_delegates_36_2` tinytext NOT NULL,
  `house_of_delegates_36_3` tinytext NOT NULL,
  `house_of_delegates_37b_1` tinytext NOT NULL,
  `house_of_delegates_37b_2` tinytext NOT NULL,
  `county_commissioner_1` tinytext NOT NULL,
  `county_commissioner_2` tinytext NOT NULL,
  `county_commissioner_3` tinytext NOT NULL,
  `judge_circuit_court` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Caroline County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_7_raw`
--

CREATE TABLE `cvr_2022_7_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_2` tinytext NOT NULL,
  `representative_congress_3` tinytext NOT NULL,
  `state_senator_5` tinytext NOT NULL,
  `state_senator_42` tinytext NOT NULL,
  `house_of_delegates_5_1` tinytext NOT NULL,
  `house_of_delegates_5_2` tinytext NOT NULL,
  `house_of_delegates_5_3` tinytext NOT NULL,
  `house_of_delegates_42c` tinytext NOT NULL,
  `county_commissioner_1` tinytext NOT NULL,
  `county_commissioner_2` tinytext NOT NULL,
  `county_commissioner_3` tinytext NOT NULL,
  `county_commissioner_4` tinytext NOT NULL,
  `county_commissioner_5` tinytext NOT NULL,
  `judge_circuit_court` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_1` tinytext NOT NULL,
  `board_of_education_2` tinytext NOT NULL,
  `board_of_education_3` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Carroll County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_8_raw`
--

CREATE TABLE `cvr_2022_8_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_1` tinytext NOT NULL,
  `state_senator_35` tinytext NOT NULL,
  `state_senator_36` tinytext NOT NULL,
  `house_of_delegates_35a_1` tinytext NOT NULL,
  `house_of_delegates_35a_2` tinytext NOT NULL,
  `house_of_delegates_35b` tinytext NOT NULL,
  `house_of_delegates_36_1` tinytext NOT NULL,
  `house_of_delegates_36_2` tinytext NOT NULL,
  `house_of_delegates_36_3` tinytext NOT NULL,
  `county_council_1` tinytext NOT NULL,
  `county_council_2` tinytext NOT NULL,
  `county_council_3` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_1` tinytext NOT NULL,
  `board_of_education_2` tinytext NOT NULL,
  `board_of_education_3` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL,
  `qa` tinytext NOT NULL,
  `qb` tinytext NOT NULL,
  `qc` tinytext NOT NULL,
  `qd` tinytext NOT NULL,
  `qe` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Cecil County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_9_raw`
--

CREATE TABLE `cvr_2022_9_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_5` tinytext NOT NULL,
  `state_senator_27` tinytext NOT NULL,
  `state_senator_28` tinytext NOT NULL,
  `house_of_delegates_27a` tinytext NOT NULL,
  `house_of_delegates_28_1` tinytext NOT NULL,
  `house_of_delegates_28_2` tinytext NOT NULL,
  `house_of_delegates_28_3` tinytext NOT NULL,
  `county_commissioner_president` tinytext NOT NULL,
  `county_commissioner_1` tinytext NOT NULL,
  `county_commissioner_2` tinytext NOT NULL,
  `county_commissioner_3` tinytext NOT NULL,
  `county_commissioner_4` tinytext NOT NULL,
  `judge_circuit_court` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `judge_court_special_appeals_appellate_circuit` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_at_large` tinytext NOT NULL,
  `board_of_education_1_1` tinytext NOT NULL,
  `board_of_education_1_2` tinytext NOT NULL,
  `board_of_education_2_1` tinytext NOT NULL,
  `board_of_education_2_2` tinytext NOT NULL,
  `board_of_education_3_1` tinytext NOT NULL,
  `board_of_education_3_2` tinytext NOT NULL,
  `board_of_education_4_1` tinytext NOT NULL,
  `board_of_education_4_2` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Charles County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_10_raw`
--

CREATE TABLE `cvr_2022_10_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_1` tinytext NOT NULL,
  `state_senator_37` tinytext NOT NULL,
  `house_of_delegates_37a` tinytext NOT NULL,
  `house_of_delegates_37b_1` tinytext NOT NULL,
  `house_of_delegates_37b_2` tinytext NOT NULL,
  `county_council_1` tinytext NOT NULL,
  `county_council_2` tinytext NOT NULL,
  `county_council_3` tinytext NOT NULL,
  `county_council_4` tinytext NOT NULL,
  `county_council_5` tinytext NOT NULL,
  `judge_circuit_court` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2_1` tinytext NOT NULL,
  `judge_orphans_court_2_2` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_1` tinytext NOT NULL,
  `board_of_education_2` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Dorchester County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_11_raw`
--

CREATE TABLE `cvr_2022_11_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_6` tinytext NOT NULL,
  `state_senator_2` tinytext NOT NULL,
  `state_senator_3` tinytext NOT NULL,
  `state_senator_4` tinytext NOT NULL,
  `state_senator_5` tinytext NOT NULL,
  `house_of_delegates_2a_1` tinytext NOT NULL,
  `house_of_delegates_2a_2` tinytext NOT NULL,
  `house_of_delegates_3_1` tinytext NOT NULL,
  `house_of_delegates_3_2` tinytext NOT NULL,
  `house_of_delegates_3_3` tinytext NOT NULL,
  `house_of_delegates_4_1` tinytext NOT NULL,
  `house_of_delegates_4_2` tinytext NOT NULL,
  `house_of_delegates_4_3` tinytext NOT NULL,
  `house_of_delegates_5_1` tinytext NOT NULL,
  `house_of_delegates_5_2` tinytext NOT NULL,
  `house_of_delegates_5_3` tinytext NOT NULL,
  `county_executive` tinytext NOT NULL,
  `county_council_at_large_1` tinytext NOT NULL,
  `county_council_at_large_2` tinytext NOT NULL,
  `county_council_1` tinytext NOT NULL,
  `county_council_2` tinytext NOT NULL,
  `county_council_3` tinytext NOT NULL,
  `county_council_4` tinytext NOT NULL,
  `county_council_5` tinytext NOT NULL,
  `judge_circuit_court` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_1` tinytext NOT NULL,
  `board_of_education_2` tinytext NOT NULL,
  `board_of_education_3` tinytext NOT NULL,
  `board_of_education_4` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL,
  `qa` tinytext NOT NULL,
  `qb` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Frederick County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_12_raw`
--

CREATE TABLE `cvr_2022_12_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_6` tinytext NOT NULL,
  `state_senator_1` tinytext NOT NULL,
  `house_of_delegates_1a` tinytext NOT NULL,
  `county_commissioner_1` tinytext NOT NULL,
  `county_commissioner_2` tinytext NOT NULL,
  `county_commissioner_3` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_1` tinytext NOT NULL,
  `board_of_education_2` tinytext NOT NULL,
  `board_of_education_3` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Garrett County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_13_raw`
--

CREATE TABLE `cvr_2022_13_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_1` tinytext NOT NULL,
  `state_senator_7` tinytext NOT NULL,
  `state_senator_34` tinytext NOT NULL,
  `state_senator_35` tinytext NOT NULL,
  `house_of_delegates_7b` tinytext NOT NULL,
  `house_of_delegates_34a_1` tinytext NOT NULL,
  `house_of_delegates_34a_2` tinytext NOT NULL,
  `house_of_delegates_34b` tinytext NOT NULL,
  `house_of_delegates_35a_1` tinytext NOT NULL,
  `house_of_delegates_35a_2` tinytext NOT NULL,
  `county_executive` tinytext NOT NULL,
  `president_county_council` tinytext NOT NULL,
  `county_council_1` tinytext NOT NULL,
  `county_council_2` tinytext NOT NULL,
  `county_council_3` tinytext NOT NULL,
  `county_council_4` tinytext NOT NULL,
  `county_council_5` tinytext NOT NULL,
  `county_council_6` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_1` tinytext NOT NULL,
  `board_of_education_2` tinytext NOT NULL,
  `board_of_education_3` tinytext NOT NULL,
  `board_of_education_4` tinytext NOT NULL,
  `board_of_education_5` tinytext NOT NULL,
  `board_of_education_6` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL,
  `qa` tinytext NOT NULL,
  `qb` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Harford County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_14_raw`
--

CREATE TABLE `cvr_2022_14_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_3` tinytext NOT NULL,
  `state_senator_9` tinytext NOT NULL,
  `state_senator_12` tinytext NOT NULL,
  `state_senator_13` tinytext NOT NULL,
  `house_of_delegates_9a_1` tinytext NOT NULL,
  `house_of_delegates_9a_2` tinytext NOT NULL,
  `house_of_delegates_9b` tinytext NOT NULL,
  `house_of_delegates_12a_1` tinytext NOT NULL,
  `house_of_delegates_12a_2` tinytext NOT NULL,
  `house_of_delegates_13_1` tinytext NOT NULL,
  `house_of_delegates_13_2` tinytext NOT NULL,
  `house_of_delegates_13_3` tinytext NOT NULL,
  `county_executive` tinytext NOT NULL,
  `county_council_1` tinytext NOT NULL,
  `county_council_2` tinytext NOT NULL,
  `county_council_3` tinytext NOT NULL,
  `county_council_4` tinytext NOT NULL,
  `county_council_5` tinytext NOT NULL,
  `judge_circuit_court` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_1` tinytext NOT NULL,
  `board_of_education_2` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL,
  `qa` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Howard County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_15_raw`
--

CREATE TABLE `cvr_2022_15_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_1` tinytext NOT NULL,
  `state_senator_36` tinytext NOT NULL,
  `house_of_delegates_36_1` tinytext NOT NULL,
  `house_of_delegates_36_2` tinytext NOT NULL,
  `house_of_delegates_36_3` tinytext NOT NULL,
  `county_commissioner_1` tinytext NOT NULL,
  `county_commissioner_2` tinytext NOT NULL,
  `county_commissioner_3` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_1` tinytext NOT NULL,
  `board_of_education_2` tinytext NOT NULL,
  `board_of_education_3` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Kent County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_16_raw`
--

CREATE TABLE `cvr_2022_16_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` text NOT NULL,
  `comptroller` text NOT NULL,
  `attorney_general` text NOT NULL,
  `us_senator` text NOT NULL,
  `representative_congress_4` text NOT NULL,
  `representative_congress_6` text NOT NULL,
  `representative_congress_8` text NOT NULL,
  `state_senator_9` text NOT NULL,
  `state_senator_14` text NOT NULL,
  `state_senator_15` text NOT NULL,
  `state_senator_16` text NOT NULL,
  `state_senator_17` text NOT NULL,
  `state_senator_18` text NOT NULL,
  `state_senator_19` text NOT NULL,
  `state_senator_20` text NOT NULL,
  `state_senator_39` text NOT NULL,
  `house_of_delegates_9a_1` text NOT NULL,
  `house_of_delegates_9a_2` text NOT NULL,
  `house_of_delegates_14_1` text NOT NULL,
  `house_of_delegates_14_2` text NOT NULL,
  `house_of_delegates_14_3` text NOT NULL,
  `house_of_delegates_15_1` text NOT NULL,
  `house_of_delegates_15_2` text NOT NULL,
  `house_of_delegates_15_3` text NOT NULL,
  `house_of_delegates_16_1` text NOT NULL,
  `house_of_delegates_16_2` text NOT NULL,
  `house_of_delegates_16_3` text NOT NULL,
  `house_of_delegates_17_1` text NOT NULL,
  `house_of_delegates_17_2` text NOT NULL,
  `house_of_delegates_17_3` text NOT NULL,
  `house_of_delegates_18_1` text NOT NULL,
  `house_of_delegates_18_2` text NOT NULL,
  `house_of_delegates_18_3` text NOT NULL,
  `house_of_delegates_19_1` text NOT NULL,
  `house_of_delegates_19_2` text NOT NULL,
  `house_of_delegates_19_3` text NOT NULL,
  `house_of_delegates_20_1` text NOT NULL,
  `house_of_delegates_20_2` text NOT NULL,
  `house_of_delegates_20_3` text NOT NULL,
  `house_of_delegates_39_1` text NOT NULL,
  `house_of_delegates_39_2` text NOT NULL,
  `house_of_delegates_39_3` text NOT NULL,
  `county_executive` text NOT NULL,
  `county_council_at_large_1` text NOT NULL,
  `county_council_at_large_2` text NOT NULL,
  `county_council_at_large_3` text NOT NULL,
  `county_council_at_large_4` text NOT NULL,
  `county_council_1` text NOT NULL,
  `county_council_2` text NOT NULL,
  `county_council_3` text NOT NULL,
  `county_council_4` text NOT NULL,
  `county_council_5` text NOT NULL,
  `county_council_6` text NOT NULL,
  `county_council_7` text NOT NULL,
  `judge_circuit_court_1` text NOT NULL,
  `judge_circuit_court_2` text NOT NULL,
  `judge_circuit_court_3` text NOT NULL,
  `judge_circuit_court_4` text NOT NULL,
  `judge_court_of_appeals` text NOT NULL,
  `judge_court_special_appeals_at_large_1` text NOT NULL,
  `judge_court_special_appeals_at_large_2` text NOT NULL,
  `judge_court_special_appeals_appellate_circuit` text NOT NULL,
  `states_attorney` text NOT NULL,
  `clerk_of_circuit_court` text NOT NULL,
  `register_of_wills` text NOT NULL,
  `sheriff` text NOT NULL,
  `board_of_education_at_large` text NOT NULL,
  `board_of_education_1` text NOT NULL,
  `board_of_education_2` text NOT NULL,
  `board_of_education_3` text NOT NULL,
  `q1` text NOT NULL,
  `q2` text NOT NULL,
  `q3` text NOT NULL,
  `q4` text NOT NULL,
  `q5` text NOT NULL,
  `qa` text NOT NULL,
  `qb` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Montgomery County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_17_raw`
--

CREATE TABLE `cvr_2022_17_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_4` tinytext NOT NULL,
  `representative_congress_5` tinytext NOT NULL,
  `representative_congress_8` tinytext NOT NULL,
  `state_senator_21` tinytext NOT NULL,
  `state_senator_22` tinytext NOT NULL,
  `state_senator_23` tinytext NOT NULL,
  `state_senator_24` tinytext NOT NULL,
  `state_senator_25` tinytext NOT NULL,
  `state_senator_26` tinytext NOT NULL,
  `state_senator_27` tinytext NOT NULL,
  `state_senator_47` tinytext NOT NULL,
  `house_of_delegates_21_1` tinytext NOT NULL,
  `house_of_delegates_21_2` tinytext NOT NULL,
  `house_of_delegates_21_3` tinytext NOT NULL,
  `house_of_delegates_22_1` tinytext NOT NULL,
  `house_of_delegates_22_2` tinytext NOT NULL,
  `house_of_delegates_22_3` tinytext NOT NULL,
  `house_of_delegates_23_1` tinytext NOT NULL,
  `house_of_delegates_23_2` tinytext NOT NULL,
  `house_of_delegates_23_3` tinytext NOT NULL,
  `house_of_delegates_24_1` tinytext NOT NULL,
  `house_of_delegates_24_2` tinytext NOT NULL,
  `house_of_delegates_24_3` tinytext NOT NULL,
  `house_of_delegates_25_1` tinytext NOT NULL,
  `house_of_delegates_25_2` tinytext NOT NULL,
  `house_of_delegates_25_3` tinytext NOT NULL,
  `house_of_delegates_26_1` tinytext NOT NULL,
  `house_of_delegates_26_2` tinytext NOT NULL,
  `house_of_delegates_26_3` tinytext NOT NULL,
  `house_of_delegates_27a` tinytext NOT NULL,
  `house_of_delegates_27b` tinytext NOT NULL,
  `house_of_delegates_47a_1` tinytext NOT NULL,
  `house_of_delegates_47a_2` tinytext NOT NULL,
  `house_of_delegates_47b` tinytext NOT NULL,
  `county_executive` tinytext NOT NULL,
  `county_council_at_large_1` tinytext NOT NULL,
  `county_council_at_large_2` tinytext NOT NULL,
  `county_council_1` tinytext NOT NULL,
  `county_council_2` tinytext NOT NULL,
  `county_council_3` tinytext NOT NULL,
  `county_council_4` tinytext NOT NULL,
  `county_council_5` tinytext NOT NULL,
  `county_council_6` tinytext NOT NULL,
  `county_council_7` tinytext NOT NULL,
  `county_council_8` tinytext NOT NULL,
  `county_council_9` tinytext NOT NULL,
  `judge_circuit_court` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_1` tinytext NOT NULL,
  `board_of_education_2` tinytext NOT NULL,
  `board_of_education_3` tinytext NOT NULL,
  `board_of_education_4` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL,
  `qa` tinytext NOT NULL,
  `qb` tinytext NOT NULL,
  `qc` tinytext NOT NULL,
  `qd` tinytext NOT NULL,
  `qe` tinytext NOT NULL,
  `qf` tinytext NOT NULL,
  `qg` tinytext NOT NULL,
  `qh` tinytext NOT NULL,
  `qi` tinytext NOT NULL,
  `qj` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Prince George''s County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_18_raw`
--

CREATE TABLE `cvr_2022_18_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_1` tinytext NOT NULL,
  `state_senator_36` tinytext NOT NULL,
  `house_of_delegates_36_1` tinytext NOT NULL,
  `house_of_delegates_36_2` tinytext NOT NULL,
  `house_of_delegates_36_3` tinytext NOT NULL,
  `county_commissioner_at_large` tinytext NOT NULL,
  `county_commissioner_1` tinytext NOT NULL,
  `county_commissioner_2` tinytext NOT NULL,
  `county_commissioner_3` tinytext NOT NULL,
  `county_commissioner_4` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_at_large` tinytext NOT NULL,
  `board_of_education` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Queen Anne''s County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_19_raw`
--

CREATE TABLE `cvr_2022_19_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_5` tinytext NOT NULL,
  `state_senator_29` tinytext NOT NULL,
  `house_of_delegates_29a` tinytext NOT NULL,
  `house_of_delegates_29b` tinytext NOT NULL,
  `house_of_delegates_29c` tinytext NOT NULL,
  `county_commissioner_president` tinytext NOT NULL,
  `county_commissioner_1` tinytext NOT NULL,
  `county_commissioner_2` tinytext NOT NULL,
  `county_commissioner_3` tinytext NOT NULL,
  `county_commissioner_4` tinytext NOT NULL,
  `judge_circuit_court` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `judge_court_special_appeals` tinytext NOT NULL,
  `treasurer` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_1` tinytext NOT NULL,
  `board_of_education_2` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Saint Mary''s County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_20_raw`
--

CREATE TABLE `cvr_2022_20_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_1` tinytext NOT NULL,
  `state_senator_38` tinytext NOT NULL,
  `house_of_delegates_38a` tinytext NOT NULL,
  `county_commissioner_1` tinytext NOT NULL,
  `county_commissioner_2` tinytext NOT NULL,
  `county_commissioner_3` tinytext NOT NULL,
  `county_commissioner_4` tinytext NOT NULL,
  `county_commissioner_5` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_1` tinytext NOT NULL,
  `board_of_education_2` tinytext NOT NULL,
  `board_of_education_3` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Somerset County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_21_raw`
--

CREATE TABLE `cvr_2022_21_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_1` tinytext NOT NULL,
  `state_senator_37` tinytext NOT NULL,
  `house_of_delegates_37b_1` tinytext NOT NULL,
  `house_of_delegates_37b_2` tinytext NOT NULL,
  `county_council_1` tinytext NOT NULL,
  `county_council_2` tinytext NOT NULL,
  `county_council_3` tinytext NOT NULL,
  `county_council_4` tinytext NOT NULL,
  `county_council_5` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_1` tinytext NOT NULL,
  `board_of_education_2` tinytext NOT NULL,
  `board_of_education_3` tinytext NOT NULL,
  `board_of_education_4` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL,
  `qa` tinytext NOT NULL,
  `qb` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Talbot County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_22_raw`
--

CREATE TABLE `cvr_2022_22_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_6` tinytext NOT NULL,
  `state_senator_1` tinytext NOT NULL,
  `state_senator_2` tinytext NOT NULL,
  `house_of_delegates_1c` tinytext NOT NULL,
  `house_of_delegates_2a_1` tinytext NOT NULL,
  `house_of_delegates_2a_2` tinytext NOT NULL,
  `house_of_delegates_2b` tinytext NOT NULL,
  `county_commissioner_1` tinytext NOT NULL,
  `county_commissioner_2` tinytext NOT NULL,
  `county_commissioner_3` tinytext NOT NULL,
  `county_commissioner_4` tinytext NOT NULL,
  `county_commissioner_5` tinytext NOT NULL,
  `judge_circuit_court` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `treasurer` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_1` tinytext NOT NULL,
  `board_of_education_2` tinytext NOT NULL,
  `board_of_education_3` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Washington County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_23_raw`
--

CREATE TABLE `cvr_2022_23_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_1` tinytext NOT NULL,
  `state_senator_37` tinytext NOT NULL,
  `state_senator_38` tinytext NOT NULL,
  `house_of_delegates_37a` tinytext NOT NULL,
  `house_of_delegates_37b_1` tinytext NOT NULL,
  `house_of_delegates_37b_2` tinytext NOT NULL,
  `house_of_delegates_38a` tinytext NOT NULL,
  `house_of_delegates_38b` tinytext NOT NULL,
  `house_of_delegates_38c` tinytext NOT NULL,
  `county_executive` tinytext NOT NULL,
  `county_council_at_large_1` tinytext NOT NULL,
  `county_council_at_large_2` tinytext NOT NULL,
  `county_council_1` tinytext NOT NULL,
  `county_council_2` tinytext NOT NULL,
  `county_council_3` tinytext NOT NULL,
  `county_council_4` tinytext NOT NULL,
  `county_council_5` tinytext NOT NULL,
  `judge_circuit_court` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_at_large_1` tinytext NOT NULL,
  `board_of_education_at_large_2` tinytext NOT NULL,
  `board_of_education_1` tinytext NOT NULL,
  `board_of_education_2` tinytext NOT NULL,
  `board_of_education_3` tinytext NOT NULL,
  `board_of_education_4` tinytext NOT NULL,
  `board_of_education_5` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL,
  `qa` tinytext NOT NULL,
  `qb` tinytext NOT NULL,
  `qc` tinytext NOT NULL,
  `qd` tinytext NOT NULL,
  `qe` tinytext NOT NULL,
  `qf` tinytext NOT NULL,
  `qg` tinytext NOT NULL,
  `qh` tinytext NOT NULL,
  `qi` tinytext NOT NULL,
  `qj` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Wicomico County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_24_raw`
--

CREATE TABLE `cvr_2022_24_raw` (
  `record` int(11) NOT NULL,
  `precinct` varchar(255) NOT NULL,
  `ballot_style` varchar(255) NOT NULL,
  `governor` tinytext NOT NULL,
  `comptroller` tinytext NOT NULL,
  `attorney_general` tinytext NOT NULL,
  `us_senator` tinytext NOT NULL,
  `representative_congress_1` tinytext NOT NULL,
  `state_senator_38` tinytext NOT NULL,
  `house_of_delegates_38a` tinytext NOT NULL,
  `house_of_delegates_38c` tinytext NOT NULL,
  `county_commissioner_1` tinytext NOT NULL,
  `county_commissioner_2` tinytext NOT NULL,
  `county_commissioner_3` tinytext NOT NULL,
  `county_commissioner_4` tinytext NOT NULL,
  `county_commissioner_5` tinytext NOT NULL,
  `county_commissioner_6` tinytext NOT NULL,
  `county_commissioner_7` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_1` tinytext NOT NULL,
  `judge_court_special_appeals_at_large_2` tinytext NOT NULL,
  `states_attorney` tinytext NOT NULL,
  `clerk_of_circuit_court` tinytext NOT NULL,
  `register_of_wills` tinytext NOT NULL,
  `judge_orphans_court_1` tinytext NOT NULL,
  `judge_orphans_court_2` tinytext NOT NULL,
  `judge_orphans_court_3` tinytext NOT NULL,
  `sheriff` tinytext NOT NULL,
  `board_of_education_1` tinytext NOT NULL,
  `board_of_education_2` tinytext NOT NULL,
  `board_of_education_3` tinytext NOT NULL,
  `board_of_education_4` tinytext NOT NULL,
  `q1` tinytext NOT NULL,
  `q2` tinytext NOT NULL,
  `q3` tinytext NOT NULL,
  `q4` tinytext NOT NULL,
  `q5` tinytext NOT NULL,
  `qa` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Cast vote record 2022 Worchester County';

-- --------------------------------------------------------

--
-- Table structure for table `cvr_2022_graph`
--

CREATE TABLE `cvr_2022_graph` (
  `county_id` int(11) NOT NULL,
  `race_id` int(11) NOT NULL,
  `record` int(11) NOT NULL,
  `candidate` varchar(255) NOT NULL,
  `vcount` int(11) DEFAULT NULL COMMENT 'Vote counter',
  `ccount` int(11) DEFAULT NULL COMMENT 'Cumulative counter'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='CVR graph data';

-- --------------------------------------------------------

--
-- Table structure for table `el45a`
--

CREATE TABLE `el45a` (
  `county_id` int(11) NOT NULL,
  `evcount` int(11) NOT NULL,
  `edcount` int(11) NOT NULL,
  `mib1count` int(11) NOT NULL,
  `provcount` int(11) NOT NULL,
  `mib2count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Election statistics from EL45A reports.';

-- --------------------------------------------------------

--
-- Table structure for table `election`
--

CREATE TABLE `election` (
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Elections';

-- --------------------------------------------------------

--
-- Table structure for table `race`
--

CREATE TABLE `race` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Races';

-- --------------------------------------------------------

--
-- Table structure for table `race_stats`
--

CREATE TABLE `race_stats` (
  `county_id` int(11) NOT NULL,
  `race_id` int(11) NOT NULL,
  `vcount` int(11) NOT NULL COMMENT 'Total vote count'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `county`
--
ALTER TABLE `county`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_name` (`name`);

--
-- Indexes for table `county_race`
--
ALTER TABLE `county_race`
  ADD KEY `fk_race_2` (`race_id`),
  ADD KEY `fk_county_2` (`county_id`);

--
-- Indexes for table `county_summary`
--
ALTER TABLE `county_summary`
  ADD UNIQUE KEY `date_county_party` (`date`,`county`,`party`);

--
-- Indexes for table `cvr_2022_1_raw`
--
ALTER TABLE `cvr_2022_1_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `ix_cvr_2022_1_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_2_raw`
--
ALTER TABLE `cvr_2022_2_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `ix_cvr_2022_2_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_3_raw`
--
ALTER TABLE `cvr_2022_3_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `ix_cvr_2022_3_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_4_raw`
--
ALTER TABLE `cvr_2022_4_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `idx_cvr_2022_4_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_5_raw`
--
ALTER TABLE `cvr_2022_5_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `idx_cvr_2022_5_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_6_raw`
--
ALTER TABLE `cvr_2022_6_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `idx_cvr_2022_6_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_7_raw`
--
ALTER TABLE `cvr_2022_7_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `idx_cvr_2022_7_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_8_raw`
--
ALTER TABLE `cvr_2022_8_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `idx_cvr_2022_8_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_9_raw`
--
ALTER TABLE `cvr_2022_9_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `idx_cvr_2022_9_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_10_raw`
--
ALTER TABLE `cvr_2022_10_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `idx_cvr_2022_10_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_11_raw`
--
ALTER TABLE `cvr_2022_11_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `idx_cvr_2022_11_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_12_raw`
--
ALTER TABLE `cvr_2022_12_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `idx_cvr_2022_12_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_13_raw`
--
ALTER TABLE `cvr_2022_13_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `idx_cvr_2022_13_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_14_raw`
--
ALTER TABLE `cvr_2022_14_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `idx_cvr_2022_14_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_15_raw`
--
ALTER TABLE `cvr_2022_15_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `ix_cvr_2022_15_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_16_raw`
--
ALTER TABLE `cvr_2022_16_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `idx_cvr_2022_16_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_17_raw`
--
ALTER TABLE `cvr_2022_17_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `idx_cvr_2022_17_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_18_raw`
--
ALTER TABLE `cvr_2022_18_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `idx_cvr_2022_18_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_19_raw`
--
ALTER TABLE `cvr_2022_19_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `idx_cvr_2022_19_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_20_raw`
--
ALTER TABLE `cvr_2022_20_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `idx_cvr_2022_20_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_21_raw`
--
ALTER TABLE `cvr_2022_21_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `idx_cvr_2022_21_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_22_raw`
--
ALTER TABLE `cvr_2022_22_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `idx_cvr_2022_22_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_23_raw`
--
ALTER TABLE `cvr_2022_23_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `idx_cvr_2022_23_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_24_raw`
--
ALTER TABLE `cvr_2022_24_raw`
  ADD PRIMARY KEY (`record`) USING BTREE,
  ADD KEY `idx_cvr_2022_24_raw__ballot_style` (`ballot_style`);

--
-- Indexes for table `cvr_2022_graph`
--
ALTER TABLE `cvr_2022_graph`
  ADD KEY `idx_county_race_record` (`county_id`,`race_id`,`record`) USING BTREE,
  ADD KEY `fk_race_1` (`race_id`);

--
-- Indexes for table `el45a`
--
ALTER TABLE `el45a`
  ADD UNIQUE KEY `uidx_el45a_county_id` (`county_id`);

--
-- Indexes for table `election`
--
ALTER TABLE `election`
  ADD UNIQUE KEY `idx_name` (`name`);

--
-- Indexes for table `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_name` (`name`);

--
-- Indexes for table `race_stats`
--
ALTER TABLE `race_stats`
  ADD PRIMARY KEY (`county_id`,`race_id`),
  ADD KEY `fk_race_0C13` (`race_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `race`
--
ALTER TABLE `race`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `county_race`
--
ALTER TABLE `county_race`
  ADD CONSTRAINT `fk_county_2` FOREIGN KEY (`county_id`) REFERENCES `county` (`id`),
  ADD CONSTRAINT `fk_race_2` FOREIGN KEY (`race_id`) REFERENCES `race` (`id`);

--
-- Constraints for table `cvr_2022_graph`
--
ALTER TABLE `cvr_2022_graph`
  ADD CONSTRAINT `fk_county_1` FOREIGN KEY (`county_id`) REFERENCES `county` (`id`),
  ADD CONSTRAINT `fk_race_1` FOREIGN KEY (`race_id`) REFERENCES `race` (`id`);

--
-- Constraints for table `el45a`
--
ALTER TABLE `el45a`
  ADD CONSTRAINT `fk_el45a_county` FOREIGN KEY (`county_id`) REFERENCES `county` (`id`);

--
-- Constraints for table `race_stats`
--
ALTER TABLE `race_stats`
  ADD CONSTRAINT `fk_county_0C13` FOREIGN KEY (`county_id`) REFERENCES `county` (`id`),
  ADD CONSTRAINT `fk_race_0C13` FOREIGN KEY (`race_id`) REFERENCES `race` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

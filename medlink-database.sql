-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 09, 2025 at 03:10 AM
-- Server version: 8.0.39
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medlink-database`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time(6) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `patient_id` int DEFAULT NULL,
  `provider_id` int NOT NULL,
  `is_booked` bit(1) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_date`, `appointment_time`, `status`, `patient_id`, `provider_id`, `is_booked`, `date`, `time`) VALUES
(1, '2025-04-10', '14:30:00.000000', 'Booked', NULL, 2, NULL, NULL, NULL),
(2, '2025-05-10', '14:30:00.000000', 'Available', NULL, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `patient_id` int NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `insurance_provider` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `medical_history` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `providers` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`patient_id`, `address`, `dob`, `email`, `insurance_provider`, `medical_history`, `name`, `password`, `phone_number`, `profile_picture`, `providers`) VALUES
(1, '1300 Greensboro Rd', '2000-06-16', 'jane06@email.com', 'UnitedHealth Group', 'No Known Allergies\r\nCurrent Medications: Metformin\r\nSurgeries: Appendectomy (2010)', 'Jane Doe', '12345678', '3457539472', NULL, 3),
(3, '1340 United Drive', '2000-04-21', 'kevin12@email.com', 'United Health', 'Allergies: fish, penicillin', 'Kevin Smith', 'rty120', '12387634', 'profilePic.jpg', 3),
(4, '841 Sunset Ave.\r\nAltamonte Springs, FL 32714', '2000-04-21', 'shelbyM@email.com', 'BlueCross', 'No known allergies', 'Shelby Morrison', '56ibfyhe', '568394652', NULL, NULL),
(7, '135 Snow Lane, Greensboro, NC 24563', '2004-08-09', 'olafg@email.com', 'Humana', 'Allergies: Peanuts\r\nFamily History: Father = heart disease, Mother = diabetes', 'Olaf Glass', 'hihi', '3472928462', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `provider_id` int NOT NULL,
  `license_number` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `qualifications` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `specialty` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `availability` json DEFAULT NULL,
  `age` int DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dob` datetime(6) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `med_license_num` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `national_provider_num` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provider_password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `unis` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `years_practicing` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `provider_username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`provider_id`, `license_number`, `location`, `name`, `qualifications`, `specialty`, `availability`, `age`, `description`, `dob`, `email`, `med_license_num`, `national_provider_num`, `profile_picture`, `provider_password`, `unis`, `years_practicing`, `rating`, `role`, `provider_username`) VALUES
(2, '3453434', '5692 Rainbow Vill', 'Karen Doe', 'Phd at Duke University', 'Neurology', '{\"Tuesday\": \"10AM - 6PM\", \"Wednesday\": \"8AM - 3PM\"}', 30, 'I have been a doctor for 5 years specializing in Neurology.', '1995-04-12 00:00:00.000000', 'karendoe@email.com', '2347543', '32435G868', 'profilepic.jpg', 'iuhihiu', 'Phd at Duke University', 5, 6, '', NULL),
(3, 'XYZ789101', 'Boston, MA', 'Dr. Jane Doe', 'MD, FACP', 'Internal Medicine', '{\"Monday\": \"10AM - 6PM\", \"Wednesday\": \"8AM - 3PM\"}', 45, 'I am an internal medicine doctor located in Boston, MA.', '2000-06-16 00:00:00.000000', 'janedoe@email.com', '576868', 'YH8968867YU', 'profilepic.jpg', 'ubyuvio', 'PhD at Wake Forest', 10, 8, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `reply_id` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `reply_message` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `review_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int NOT NULL,
  `comment` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `rating` int NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `patient_id` int NOT NULL,
  `provider_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint NOT NULL,
  `account_status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`),
  ADD KEY `FK301v1oijb0g90dm0d7b0t31j7` (`provider_id`),
  ADD KEY `FK3mbue9w5cldlnxx3hm15t5sfo` (`patient_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`patient_id`),
  ADD KEY `FK1vxqg1bh2viqd35wrqav0xlcg` (`providers`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`provider_id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`reply_id`),
  ADD KEY `FKd5ckwt38d4ibe84wlfc3o8jw8` (`review_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `FKnvu8cph9cqhm6thvtaepkdha8` (`provider_id`),
  ADD KEY `FKt5mluvyi74a6wya06w1wce7xh` (`patient_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `patient_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `provider_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `reply_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `FK301v1oijb0g90dm0d7b0t31j7` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`provider_id`),
  ADD CONSTRAINT `FK3mbue9w5cldlnxx3hm15t5sfo` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  ADD CONSTRAINT `FK4apif2ewfyf14077ichee8g06` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`);

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `FK1vxqg1bh2viqd35wrqav0xlcg` FOREIGN KEY (`providers`) REFERENCES `provider` (`provider_id`);

--
-- Constraints for table `reply`
--
ALTER TABLE `reply`
  ADD CONSTRAINT `FKd5ckwt38d4ibe84wlfc3o8jw8` FOREIGN KEY (`review_id`) REFERENCES `review` (`review_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `FK9lv11ny63mbk7x66uweefc65r` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  ADD CONSTRAINT `FKnvu8cph9cqhm6thvtaepkdha8` FOREIGN KEY (`provider_id`) REFERENCES `provider` (`provider_id`),
  ADD CONSTRAINT `FKt5mluvyi74a6wya06w1wce7xh` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 3.2.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 27, 2015 at 12:34 AM
-- Server version: 5.1.40
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `test_extjs`
--
CREATE DATABASE `test_extjs`;
USE `test_extjs`;
-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `city` varchar(128) CHARACTER SET cp1251 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `user_id`, `city`) VALUES
(1, 1, 'Минск'),
(2, 2, 'Витебск'),
(3, 3, 'Гродно'),
(4, 4, 'Гомель'),
(5, 5, 'Могилёв'),
(6, 6, 'Брест'),
(7, 7, 'Брест'),
(8, 8, 'Витебск'),
(9, 9, 'Витебск'),
(10, 10, 'Витебск'),
(11, 11, 'Минск'),
(12, 12, 'Минск'),
(13, 13, 'Брест'),
(14, 14, 'Могилёв'),
(15, 15, 'Гомель'),
(16, 12, 'Брест'),
(17, 7, 'Гомель'),
(18, 2, 'Минск'),
(19, 7, 'Могилёв'),
(20, 7, 'Витебск'),
(21, 7, 'Минск');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
CREATE TABLE IF NOT EXISTS `education` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `education` varchar(128) CHARACTER SET cp1251 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `user_id`, `education`) VALUES
(1, 1, 'Высшее'),
(2, 2, 'Высшее'),
(3, 3, 'Бакалавр'),
(4, 4, 'Среднее'),
(5, 5, 'Магистр'),
(6, 6, 'Среднее'),
(7, 7, 'Высшее'),
(8, 8, 'Высшее'),
(9, 9, 'Высшее'),
(10, 10, 'Бакалавр'),
(11, 11, 'Среднее'),
(12, 12, 'Магистр'),
(13, 13, 'Магистр'),
(14, 14, 'Среднее'),
(15, 15, 'Высшее');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET cp1251 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'Виктория Уланова'),
(2, 'Марина Коваленко'),
(3, 'Илья Шутиков'),
(4, 'Валентина Лунегова'),
(5, 'Яна Пандова'),
(6, 'Сергей Алимов'),
(7, 'Андрей Симончик'),
(8, 'Мария Жук'),
(9, 'Екатерина Федорова'),
(10, 'Елена Черная'),
(11, 'Алина Алиева'),
(12, 'Кристина Войтеховская'),
(13, 'Дима Верховцов'),
(14, 'Анастасия Грецкая'),
(15, 'Максим Кухаренко');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

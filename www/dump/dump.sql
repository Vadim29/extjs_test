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
(1, 1, '�����'),
(2, 2, '�������'),
(3, 3, '������'),
(4, 4, '������'),
(5, 5, '������'),
(6, 6, '�����'),
(7, 7, '�����'),
(8, 8, '�������'),
(9, 9, '�������'),
(10, 10, '�������'),
(11, 11, '�����'),
(12, 12, '�����'),
(13, 13, '�����'),
(14, 14, '������'),
(15, 15, '������'),
(16, 12, '�����'),
(17, 7, '������'),
(18, 2, '�����'),
(19, 7, '������'),
(20, 7, '�������'),
(21, 7, '�����');

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
(1, 1, '������'),
(2, 2, '������'),
(3, 3, '��������'),
(4, 4, '�������'),
(5, 5, '�������'),
(6, 6, '�������'),
(7, 7, '������'),
(8, 8, '������'),
(9, 9, '������'),
(10, 10, '��������'),
(11, 11, '�������'),
(12, 12, '�������'),
(13, 13, '�������'),
(14, 14, '�������'),
(15, 15, '������');

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
(1, '�������� �������'),
(2, '������ ���������'),
(3, '���� �������'),
(4, '��������� ��������'),
(5, '��� �������'),
(6, '������ ������'),
(7, '������ ��������'),
(8, '����� ���'),
(9, '��������� ��������'),
(10, '����� ������'),
(11, '����� ������'),
(12, '�������� ������������'),
(13, '���� ���������'),
(14, '��������� �������'),
(15, '������ ���������');

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

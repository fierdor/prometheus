-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 25, 2011 at 11:20 AM
-- Server version: 5.0.67
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `prometheus_graph`
--

-- --------------------------------------------------------

--
-- Table structure for table `graph_links`
--

CREATE TABLE IF NOT EXISTS `graph_links` (
  `pt1` varchar(5) NOT NULL,
  `pt2` varchar(5) NOT NULL,
  `state` varchar(5) NOT NULL,
  PRIMARY KEY  (`pt1`,`pt2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `graph_links`
--

INSERT INTO `graph_links` (`pt1`, `pt2`, `state`) VALUES
('1', '2', 'up'),
('1', '3', 'up'),
('2', '3', 'up');

-- --------------------------------------------------------

--
-- Table structure for table `graph_nodes`
--

CREATE TABLE IF NOT EXISTS `graph_nodes` (
  `id` int(5) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `x` varchar(5) NOT NULL,
  `y` varchar(5) NOT NULL,
  `state` varchar(5) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `graph_nodes`
--

INSERT INTO `graph_nodes` (`id`, `name`, `x`, `y`, `state`) VALUES
(1, 'Router1', '50', '50', 'up'),
(2, 'Router2', '200', '200', 'up'),
(3, 'Router3', '50', '200', 'up');

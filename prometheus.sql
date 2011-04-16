-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 16, 2011 at 05:30 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `if-mib`
--
CREATE DATABASE `if-mib` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `if-mib`;

-- --------------------------------------------------------

--
-- Table structure for table `ifobjects`
--

CREATE TABLE IF NOT EXISTS `ifobjects` (
  `router` varchar(20) NOT NULL,
  `ifNumber` tinyint(20) NOT NULL DEFAULT '8',
  PRIMARY KEY (`router`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ifobjects`
--

INSERT INTO `ifobjects` (`router`, `ifNumber`) VALUES
('CE1_1', 8),
('CE1_2', 8),
('CE2_1', 8),
('PE1', 8),
('P1', 8),
('P2', 8),
('P3', 8),
('P4', 8),
('PE2', 8),
('CE1_3', 8),
('CE2_2', 8);

-- --------------------------------------------------------

--
-- Table structure for table `iftable`
--

CREATE TABLE IF NOT EXISTS `iftable` (
  `ifIndex` varchar(20) NOT NULL,
  `ifDescr` varchar(20) NOT NULL,
  `ifType` int(20) NOT NULL DEFAULT '166',
  `ifMtu` int(20) NOT NULL DEFAULT '1500',
  `ifSpeed` float NOT NULL DEFAULT '0',
  `ifPhysAddress` varchar(20) NOT NULL DEFAULT '00:00:00:00:00:00',
  `ifAdminStatus` varchar(20) NOT NULL DEFAULT 'down',
  `ifOperStatus` varchar(20) NOT NULL DEFAULT 'up',
  `ifLastChange` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ifIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iftable`
--


-- --------------------------------------------------------

--
-- Table structure for table `iftable_ce1_1`
--

CREATE TABLE IF NOT EXISTS `iftable_ce1_1` (
  `ifIndex` int(20) NOT NULL,
  `ifDescr` varchar(20) NOT NULL,
  `ifType` int(20) NOT NULL DEFAULT '166',
  `ifMtu` int(20) NOT NULL DEFAULT '1500',
  `ifSpeed` float NOT NULL DEFAULT '0',
  `ifPhysAddress` varchar(20) NOT NULL DEFAULT '00:00:00:00:00:00',
  `ifAdminStatus` varchar(20) NOT NULL DEFAULT 'down',
  `ifOperStatus` varchar(20) NOT NULL DEFAULT 'up',
  `ifLastChange` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iftable_ce1_1`
--

INSERT INTO `iftable_ce1_1` (`ifIndex`, `ifDescr`, `ifType`, `ifMtu`, `ifSpeed`, `ifPhysAddress`, `ifAdminStatus`, `ifOperStatus`, `ifLastChange`) VALUES
(1, 'FastEthernet 0/1', 62, 1500, 0, '00:00:00:00:00:00', 'down', 'up', 0);

-- --------------------------------------------------------

--
-- Table structure for table `iftable_ce1_2`
--

CREATE TABLE IF NOT EXISTS `iftable_ce1_2` (
  `ifIndex` int(20) NOT NULL,
  `ifDescr` varchar(20) NOT NULL,
  `ifType` int(20) NOT NULL DEFAULT '166',
  `ifMtu` int(20) NOT NULL DEFAULT '1500',
  `ifSpeed` float NOT NULL DEFAULT '0',
  `ifPhysAddress` varchar(20) NOT NULL DEFAULT '00:00:00:00:00:00',
  `ifAdminStatus` varchar(20) NOT NULL DEFAULT 'down',
  `ifOperStatus` varchar(20) NOT NULL DEFAULT 'up',
  `ifLastChange` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iftable_ce1_2`
--

INSERT INTO `iftable_ce1_2` (`ifIndex`, `ifDescr`, `ifType`, `ifMtu`, `ifSpeed`, `ifPhysAddress`, `ifAdminStatus`, `ifOperStatus`, `ifLastChange`) VALUES
(1, 'FastEthernet 0/1', 62, 1500, 0, '00:00:00:00:00:00', 'down', 'up', 0);

-- --------------------------------------------------------

--
-- Table structure for table `iftable_ce1_3`
--

CREATE TABLE IF NOT EXISTS `iftable_ce1_3` (
  `ifIndex` int(20) NOT NULL,
  `ifDescr` varchar(20) NOT NULL,
  `ifType` int(20) NOT NULL DEFAULT '166',
  `ifMtu` int(20) NOT NULL DEFAULT '1500',
  `ifSpeed` float NOT NULL DEFAULT '0',
  `ifPhysAddress` varchar(20) NOT NULL DEFAULT '00:00:00:00:00:00',
  `ifAdminStatus` varchar(20) NOT NULL DEFAULT 'down',
  `ifOperStatus` varchar(20) NOT NULL DEFAULT 'up',
  `ifLastChange` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iftable_ce1_3`
--

INSERT INTO `iftable_ce1_3` (`ifIndex`, `ifDescr`, `ifType`, `ifMtu`, `ifSpeed`, `ifPhysAddress`, `ifAdminStatus`, `ifOperStatus`, `ifLastChange`) VALUES
(1, 'FastEthernet 0/1', 62, 1500, 0, '00:00:00:00:00:00', 'down', 'up', 0);

-- --------------------------------------------------------

--
-- Table structure for table `iftable_ce2_1`
--

CREATE TABLE IF NOT EXISTS `iftable_ce2_1` (
  `ifIndex` int(20) NOT NULL,
  `ifDescr` varchar(20) NOT NULL,
  `ifType` int(20) NOT NULL DEFAULT '166',
  `ifMtu` int(20) NOT NULL DEFAULT '1500',
  `ifSpeed` float NOT NULL DEFAULT '0',
  `ifPhysAddress` varchar(20) NOT NULL DEFAULT '00:00:00:00:00:00',
  `ifAdminStatus` varchar(20) NOT NULL DEFAULT 'down',
  `ifOperStatus` varchar(20) NOT NULL DEFAULT 'up',
  `ifLastChange` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iftable_ce2_1`
--

INSERT INTO `iftable_ce2_1` (`ifIndex`, `ifDescr`, `ifType`, `ifMtu`, `ifSpeed`, `ifPhysAddress`, `ifAdminStatus`, `ifOperStatus`, `ifLastChange`) VALUES
(1, 'FastEthernet 0/1', 62, 1500, 0, '00:00:00:00:00:00', 'down', 'up', 0);

-- --------------------------------------------------------

--
-- Table structure for table `iftable_ce2_2`
--

CREATE TABLE IF NOT EXISTS `iftable_ce2_2` (
  `ifIndex` int(20) NOT NULL,
  `ifDescr` varchar(20) NOT NULL,
  `ifType` int(20) NOT NULL DEFAULT '166',
  `ifMtu` int(20) NOT NULL DEFAULT '1500',
  `ifSpeed` float NOT NULL DEFAULT '0',
  `ifPhysAddress` varchar(20) NOT NULL DEFAULT '00:00:00:00:00:00',
  `ifAdminStatus` varchar(20) NOT NULL DEFAULT 'down',
  `ifOperStatus` varchar(20) NOT NULL DEFAULT 'up',
  `ifLastChange` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iftable_ce2_2`
--

INSERT INTO `iftable_ce2_2` (`ifIndex`, `ifDescr`, `ifType`, `ifMtu`, `ifSpeed`, `ifPhysAddress`, `ifAdminStatus`, `ifOperStatus`, `ifLastChange`) VALUES
(1, 'FastEthernet 0/1', 62, 1500, 0, '00:00:00:00:00:00', 'down', 'up', 0);

-- --------------------------------------------------------

--
-- Table structure for table `iftable_p1`
--

CREATE TABLE IF NOT EXISTS `iftable_p1` (
  `ifIndex` int(20) NOT NULL,
  `ifDescr` varchar(20) NOT NULL,
  `ifType` int(20) NOT NULL DEFAULT '166',
  `ifMtu` int(20) NOT NULL DEFAULT '1500',
  `ifSpeed` float NOT NULL DEFAULT '0',
  `ifPhysAddress` varchar(20) NOT NULL DEFAULT '00:00:00:00:00:00',
  `ifAdminStatus` varchar(20) NOT NULL DEFAULT 'down',
  `ifOperStatus` varchar(20) NOT NULL DEFAULT 'up',
  `ifLastChange` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iftable_p1`
--

INSERT INTO `iftable_p1` (`ifIndex`, `ifDescr`, `ifType`, `ifMtu`, `ifSpeed`, `ifPhysAddress`, `ifAdminStatus`, `ifOperStatus`, `ifLastChange`) VALUES
(1, 'MplsEther0/1', 166, 1504, 0, '00:00:00:00:00:00', 'down', 'up', 0),
(2, 'MplsEther0/2', 166, 1504, 0, '00:00:00:00:00:00', 'down', 'up', 0),
(3, 'MplsEther0/3', 166, 1504, 0, '00:00:00:00:00:00', 'down', 'up', 0),
(4, 'MplsEther0/4', 166, 1504, 0, '00:00:00:00:00:00', 'down', 'up', 0);

-- --------------------------------------------------------

--
-- Table structure for table `iftable_p2`
--

CREATE TABLE IF NOT EXISTS `iftable_p2` (
  `ifIndex` int(20) NOT NULL,
  `ifDescr` varchar(20) NOT NULL,
  `ifType` int(20) NOT NULL DEFAULT '166',
  `ifMtu` int(20) NOT NULL DEFAULT '1500',
  `ifSpeed` float NOT NULL DEFAULT '0',
  `ifPhysAddress` varchar(20) NOT NULL DEFAULT '00:00:00:00:00:00',
  `ifAdminStatus` varchar(20) NOT NULL DEFAULT 'down',
  `ifOperStatus` varchar(20) NOT NULL DEFAULT 'up',
  `ifLastChange` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iftable_p2`
--

INSERT INTO `iftable_p2` (`ifIndex`, `ifDescr`, `ifType`, `ifMtu`, `ifSpeed`, `ifPhysAddress`, `ifAdminStatus`, `ifOperStatus`, `ifLastChange`) VALUES
(1, 'MplsEther0/1', 166, 1504, 0, '00:00:00:00:00:00', 'down', 'up', 0),
(2, 'MplsEther0/2', 166, 1504, 0, '00:00:00:00:00:00', 'down', 'up', 0),
(3, 'MplsEther0/3', 166, 1504, 0, '00:00:00:00:00:00', 'down', 'up', 0),
(4, 'MplsEther0/4', 166, 1504, 0, '00:00:00:00:00:00', 'down', 'up', 0);

-- --------------------------------------------------------

--
-- Table structure for table `iftable_p3`
--

CREATE TABLE IF NOT EXISTS `iftable_p3` (
  `ifIndex` int(20) NOT NULL,
  `ifDescr` varchar(20) NOT NULL,
  `ifType` int(20) NOT NULL DEFAULT '166',
  `ifMtu` int(20) NOT NULL DEFAULT '1500',
  `ifSpeed` float NOT NULL DEFAULT '0',
  `ifPhysAddress` varchar(20) NOT NULL DEFAULT '00:00:00:00:00:00',
  `ifAdminStatus` varchar(20) NOT NULL DEFAULT 'down',
  `ifOperStatus` varchar(20) NOT NULL DEFAULT 'up',
  `ifLastChange` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iftable_p3`
--

INSERT INTO `iftable_p3` (`ifIndex`, `ifDescr`, `ifType`, `ifMtu`, `ifSpeed`, `ifPhysAddress`, `ifAdminStatus`, `ifOperStatus`, `ifLastChange`) VALUES
(1, 'MplsEther0/1', 166, 1504, 0, '00:00:00:00:00:00', 'down', 'up', 0),
(2, 'MplsEther0/2', 166, 1504, 0, '00:00:00:00:00:00', 'down', 'up', 0),
(3, 'MplsEther0/3', 166, 1504, 0, '00:00:00:00:00:00', 'down', 'up', 0),
(4, 'MplsEther0/4', 166, 1504, 0, '00:00:00:00:00:00', 'down', 'up', 0);

-- --------------------------------------------------------

--
-- Table structure for table `iftable_p4`
--

CREATE TABLE IF NOT EXISTS `iftable_p4` (
  `ifIndex` int(20) NOT NULL,
  `ifDescr` varchar(20) NOT NULL,
  `ifType` int(20) NOT NULL DEFAULT '166',
  `ifMtu` int(20) NOT NULL DEFAULT '1500',
  `ifSpeed` float NOT NULL DEFAULT '0',
  `ifPhysAddress` varchar(20) NOT NULL DEFAULT '00:00:00:00:00:00',
  `ifAdminStatus` varchar(20) NOT NULL DEFAULT 'down',
  `ifOperStatus` varchar(20) NOT NULL DEFAULT 'up',
  `ifLastChange` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iftable_p4`
--

INSERT INTO `iftable_p4` (`ifIndex`, `ifDescr`, `ifType`, `ifMtu`, `ifSpeed`, `ifPhysAddress`, `ifAdminStatus`, `ifOperStatus`, `ifLastChange`) VALUES
(1, 'MplsEther0/1', 166, 1504, 0, '00:00:00:00:00:00', 'down', 'up', 0),
(2, 'MplsEther0/2', 166, 1504, 0, '00:00:00:00:00:00', 'down', 'up', 0),
(3, 'MplsEther0/3', 166, 1504, 0, '00:00:00:00:00:00', 'down', 'up', 0),
(4, 'MplsEther0/4', 166, 1504, 0, '00:00:00:00:00:00', 'down', 'up', 0);

-- --------------------------------------------------------

--
-- Table structure for table `iftable_pe1`
--

CREATE TABLE IF NOT EXISTS `iftable_pe1` (
  `ifIndex` int(20) NOT NULL,
  `ifDescr` varchar(20) NOT NULL,
  `ifType` int(20) NOT NULL DEFAULT '166',
  `ifMtu` int(20) NOT NULL DEFAULT '1500',
  `ifSpeed` float NOT NULL DEFAULT '0',
  `ifPhysAddress` varchar(20) NOT NULL DEFAULT '00:00:00:00:00:00',
  `ifAdminStatus` varchar(20) NOT NULL DEFAULT 'down',
  `ifOperStatus` varchar(20) NOT NULL DEFAULT 'up',
  `ifLastChange` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iftable_pe1`
--

INSERT INTO `iftable_pe1` (`ifIndex`, `ifDescr`, `ifType`, `ifMtu`, `ifSpeed`, `ifPhysAddress`, `ifAdminStatus`, `ifOperStatus`, `ifLastChange`) VALUES
(1, 'FastEthernet 0/1', 62, 1500, 0, '00:00:00:00:00:00', 'down', 'up', 0),
(2, 'FastEthernet 0/2', 62, 1500, 0, '00:00:00:00:00:00', 'down', 'up', 0),
(3, 'FastEthernet 0/3', 62, 1500, 0, '00:00:00:00:00:00', 'down', 'up', 0),
(4, 'MplsEther0/1', 166, 1504, 0, '00:00:00:00:00:00', 'down', 'up', 0),
(5, 'MplsEther0/2', 166, 1504, 0, '00:00:00:00:00:00', 'down', 'up', 0);

-- --------------------------------------------------------

--
-- Table structure for table `iftable_pe2`
--

CREATE TABLE IF NOT EXISTS `iftable_pe2` (
  `ifIndex` int(20) NOT NULL,
  `ifDescr` varchar(20) NOT NULL,
  `ifType` int(20) NOT NULL DEFAULT '166',
  `ifMtu` int(20) NOT NULL DEFAULT '1500',
  `ifSpeed` float NOT NULL DEFAULT '0',
  `ifPhysAddress` varchar(20) NOT NULL DEFAULT '00:00:00:00:00:00',
  `ifAdminStatus` varchar(20) NOT NULL DEFAULT 'down',
  `ifOperStatus` varchar(20) NOT NULL DEFAULT 'up',
  `ifLastChange` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `iftable_pe2`
--

INSERT INTO `iftable_pe2` (`ifIndex`, `ifDescr`, `ifType`, `ifMtu`, `ifSpeed`, `ifPhysAddress`, `ifAdminStatus`, `ifOperStatus`, `ifLastChange`) VALUES
(1, 'MplsEther0/1', 166, 1504, 0, '00:00:00:00:00:00', 'down', 'up', 0),
(2, 'MplsEther0/2', 166, 1504, 0, '00:00:00:00:00:00', 'down', 'up', 0),
(3, 'FastEthernet 0/1', 62, 1500, 0, '00:00:00:00:00:00', 'down', 'up', 0),
(4, 'FastEthernet 0/2', 62, 1500, 0, '00:00:00:00:00:00', 'down', 'up', 0);
--
-- Database: `ip-mib`
--
CREATE DATABASE `ip-mib` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ip-mib`;

-- --------------------------------------------------------

--
-- Table structure for table `ipaddrtable`
--

CREATE TABLE IF NOT EXISTS `ipaddrtable` (
  `ipAdEntAddr` varchar(20) NOT NULL,
  `ipAdEntIfIndex` tinyint(4) NOT NULL,
  `ipAdEntNetMask` varchar(20) NOT NULL,
  `ipAdEntBcastAddr` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipaddrtable`
--


-- --------------------------------------------------------

--
-- Table structure for table `ipaddrtable_ce1_1`
--

CREATE TABLE IF NOT EXISTS `ipaddrtable_ce1_1` (
  `ipAdEntAddr` varchar(20) NOT NULL,
  `ipAdEntIfIndex` tinyint(4) NOT NULL,
  `ipAdEntNetMask` varchar(20) NOT NULL,
  `ipAdEntBcastAddr` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipaddrtable_ce1_1`
--

INSERT INTO `ipaddrtable_ce1_1` (`ipAdEntAddr`, `ipAdEntIfIndex`, `ipAdEntNetMask`, `ipAdEntBcastAddr`) VALUES
('10.1.0.2', 1, '255.255.0.0', '10.1.255.255');

-- --------------------------------------------------------

--
-- Table structure for table `ipaddrtable_ce1_2`
--

CREATE TABLE IF NOT EXISTS `ipaddrtable_ce1_2` (
  `ipAdEntAddr` varchar(20) NOT NULL,
  `ipAdEntIfIndex` tinyint(4) NOT NULL,
  `ipAdEntNetMask` varchar(20) NOT NULL,
  `ipAdEntBcastAddr` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipaddrtable_ce1_2`
--

INSERT INTO `ipaddrtable_ce1_2` (`ipAdEntAddr`, `ipAdEntIfIndex`, `ipAdEntNetMask`, `ipAdEntBcastAddr`) VALUES
('10.2.0.2', 1, '255.255.0.0', '10.2.255.255');

-- --------------------------------------------------------

--
-- Table structure for table `ipaddrtable_ce1_3`
--

CREATE TABLE IF NOT EXISTS `ipaddrtable_ce1_3` (
  `ipAdEntAddr` varchar(20) NOT NULL,
  `ipAdEntIfIndex` tinyint(4) NOT NULL,
  `ipAdEntNetMask` varchar(20) NOT NULL,
  `ipAdEntBcastAddr` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipaddrtable_ce1_3`
--

INSERT INTO `ipaddrtable_ce1_3` (`ipAdEntAddr`, `ipAdEntIfIndex`, `ipAdEntNetMask`, `ipAdEntBcastAddr`) VALUES
('10.3.0.2', 1, '255.255.0.0', '10.3.255.255');

-- --------------------------------------------------------

--
-- Table structure for table `ipaddrtable_ce2_1`
--

CREATE TABLE IF NOT EXISTS `ipaddrtable_ce2_1` (
  `ipAdEntAddr` varchar(20) NOT NULL,
  `ipAdEntIfIndex` tinyint(4) NOT NULL,
  `ipAdEntNetMask` varchar(20) NOT NULL,
  `ipAdEntBcastAddr` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipaddrtable_ce2_1`
--

INSERT INTO `ipaddrtable_ce2_1` (`ipAdEntAddr`, `ipAdEntIfIndex`, `ipAdEntNetMask`, `ipAdEntBcastAddr`) VALUES
('172.16.1.2', 1, '255.255.255.0', '172.16.1.255');

-- --------------------------------------------------------

--
-- Table structure for table `ipaddrtable_ce2_2`
--

CREATE TABLE IF NOT EXISTS `ipaddrtable_ce2_2` (
  `ipAdEntAddr` varchar(20) NOT NULL,
  `ipAdEntIfIndex` tinyint(4) NOT NULL,
  `ipAdEntNetMask` varchar(20) NOT NULL,
  `ipAdEntBcastAddr` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipaddrtable_ce2_2`
--

INSERT INTO `ipaddrtable_ce2_2` (`ipAdEntAddr`, `ipAdEntIfIndex`, `ipAdEntNetMask`, `ipAdEntBcastAddr`) VALUES
('172.16.2.2', 1, '255.255.255.0', '172.16.2.255');

-- --------------------------------------------------------

--
-- Table structure for table `ipaddrtable_p1`
--

CREATE TABLE IF NOT EXISTS `ipaddrtable_p1` (
  `ipAdEntAddr` varchar(20) NOT NULL,
  `ipAdEntIfIndex` tinyint(4) NOT NULL,
  `ipAdEntNetMask` varchar(20) NOT NULL,
  `ipAdEntBcastAddr` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipaddrtable_p1`
--

INSERT INTO `ipaddrtable_p1` (`ipAdEntAddr`, `ipAdEntIfIndex`, `ipAdEntNetMask`, `ipAdEntBcastAddr`) VALUES
('192.168.1.2', 1, '255.255.255.0', '192.168.1.255'),
('192.168.3.1', 2, '255.255.255.0', '192.168.3.255'),
('192.168.4.1', 3, '255.255.255.0', '192.168.4.255'),
('192.168.10.1', 4, '255.255.255.0', '192.168.10.255');

-- --------------------------------------------------------

--
-- Table structure for table `ipaddrtable_p2`
--

CREATE TABLE IF NOT EXISTS `ipaddrtable_p2` (
  `ipAdEntAddr` varchar(20) NOT NULL,
  `ipAdEntIfIndex` tinyint(4) NOT NULL,
  `ipAdEntNetMask` varchar(20) NOT NULL,
  `ipAdEntBcastAddr` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipaddrtable_p2`
--

INSERT INTO `ipaddrtable_p2` (`ipAdEntAddr`, `ipAdEntIfIndex`, `ipAdEntNetMask`, `ipAdEntBcastAddr`) VALUES
('192.168.4.2', 1, '255.255.255.0', '192.168.4.255'),
('192.168.6.1', 2, '255.255.255.0', '192.168.6.255'),
('192.168.7.1', 3, '255.255.255.0', '192.168.7.255'),
('192.168.9.2', 4, '255.255.255.0', '192.168.7.255');

-- --------------------------------------------------------

--
-- Table structure for table `ipaddrtable_p3`
--

CREATE TABLE IF NOT EXISTS `ipaddrtable_p3` (
  `ipAdEntAddr` varchar(20) NOT NULL,
  `ipAdEntIfIndex` tinyint(4) NOT NULL,
  `ipAdEntNetMask` varchar(20) NOT NULL,
  `ipAdEntBcastAddr` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipaddrtable_p3`
--

INSERT INTO `ipaddrtable_p3` (`ipAdEntAddr`, `ipAdEntIfIndex`, `ipAdEntNetMask`, `ipAdEntBcastAddr`) VALUES
('192.168.2.2', 1, '255.255.255.0', '192.168.2.255'),
('192.168.3.2', 2, '255.255.255.0', '192.168.3.255'),
('192.168.5.1', 3, '255.255.255.0', '192.168.5.255'),
('192.168.9.1', 4, '255.255.255.0', '192.168.9.255');

-- --------------------------------------------------------

--
-- Table structure for table `ipaddrtable_p4`
--

CREATE TABLE IF NOT EXISTS `ipaddrtable_p4` (
  `ipAdEntAddr` varchar(20) NOT NULL,
  `ipAdEntIfIndex` tinyint(4) NOT NULL,
  `ipAdEntNetMask` varchar(20) NOT NULL,
  `ipAdEntBcastAddr` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipaddrtable_p4`
--

INSERT INTO `ipaddrtable_p4` (`ipAdEntAddr`, `ipAdEntIfIndex`, `ipAdEntNetMask`, `ipAdEntBcastAddr`) VALUES
('192.168.5.2', 1, '255.255.255.0', '192.168.5.255'),
('192.168.6.2', 2, '255.255.255.0', '192.168.6.255'),
('192.168.8.1', 3, '255.255.255.0', '192.168.8.255'),
('192.168.10.2', 4, '255.255.255.0', '192.168.10.255');

-- --------------------------------------------------------

--
-- Table structure for table `ipaddrtable_pe1`
--

CREATE TABLE IF NOT EXISTS `ipaddrtable_pe1` (
  `ipAdEntAddr` varchar(20) NOT NULL,
  `ipAdEntIfIndex` tinyint(4) NOT NULL,
  `ipAdEntNetMask` varchar(20) NOT NULL,
  `ipAdEntBcastAddr` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipaddrtable_pe1`
--

INSERT INTO `ipaddrtable_pe1` (`ipAdEntAddr`, `ipAdEntIfIndex`, `ipAdEntNetMask`, `ipAdEntBcastAddr`) VALUES
('10.1.0.1', 1, '255.255.0.0', '10.1.255.255'),
('10.2.0.1', 2, '255.255.0.0', '10.2.255.255'),
('172.16.1.1', 3, '255.255.255.0', '172.16.1.255'),
('192.168.2.1', 4, '255.255.255.0', '192.168.2.255'),
('192.168.1.1', 5, '255.255.255.0', '192.168.1.255');

-- --------------------------------------------------------

--
-- Table structure for table `ipaddrtable_pe2`
--

CREATE TABLE IF NOT EXISTS `ipaddrtable_pe2` (
  `ipAdEntAddr` varchar(20) NOT NULL,
  `ipAdEntIfIndex` tinyint(4) NOT NULL,
  `ipAdEntNetMask` varchar(20) NOT NULL,
  `ipAdEntBcastAddr` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ipaddrtable_pe2`
--

INSERT INTO `ipaddrtable_pe2` (`ipAdEntAddr`, `ipAdEntIfIndex`, `ipAdEntNetMask`, `ipAdEntBcastAddr`) VALUES
('192.168.7.2', 1, '255.255.255.0', '192.168.7.255'),
('192.168.8.2', 2, '255.255.255.0', '192.168.8.255'),
('10.3.0.1', 3, '255.255.0.0', '10.3.255.255'),
('172.16.2.1', 4, '255.255.255.0', '172.16.2.255');
--
-- Database: `mpls-ftn-mib`
--
CREATE DATABASE `mpls-ftn-mib` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mpls-ftn-mib`;

-- --------------------------------------------------------

--
-- Table structure for table `mplsftntable`
--

CREATE TABLE IF NOT EXISTS `mplsftntable` (
  `mplsFTNIndex` tinyint(4) NOT NULL,
  `mplsFTNSourceIpv4AddrMin` varchar(20) NOT NULL,
  `mplsFTNSourceIpv4AddrMax` varchar(20) NOT NULL,
  `mplsFTNDestIpv4AddrMin` varchar(20) NOT NULL,
  `mplsFTNDestIpv4AddrMax` varchar(20) NOT NULL,
  `mplsFTNActionType` varchar(20) NOT NULL,
  `mplsFTNActionPointer` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsftntable`
--


-- --------------------------------------------------------

--
-- Table structure for table `mplsftntable_pe1`
--

CREATE TABLE IF NOT EXISTS `mplsftntable_pe1` (
  `mplsFTNIndex` tinyint(4) NOT NULL,
  `mplsFTNSourceIpv4AddrMin` varchar(20) NOT NULL,
  `mplsFTNSourceIpv4AddrMax` varchar(20) NOT NULL DEFAULT '0.0.0.0',
  `mplsFTNDestIpv4AddrMin` varchar(20) NOT NULL,
  `mplsFTNDestIpv4AddrMax` varchar(20) NOT NULL DEFAULT '0.0.0.0',
  `mplsFTNActionType` varchar(20) NOT NULL,
  `mplsFTNActionPointer` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsftntable_pe1`
--

INSERT INTO `mplsftntable_pe1` (`mplsFTNIndex`, `mplsFTNSourceIpv4AddrMin`, `mplsFTNSourceIpv4AddrMax`, `mplsFTNDestIpv4AddrMin`, `mplsFTNDestIpv4AddrMax`, `mplsFTNActionType`, `mplsFTNActionPointer`) VALUES
(1, '10.1.0.0', '0.0.0.0', '10.3.0.0', '0.0.0.0', 'redirectLSP', 1),
(2, '10.2.0.0', '0.0.0.0', '10.3.0.0', '0.0.0.0', 'redirectLSP', 1),
(3, '172.16.1.0', '0.0.0.0', '172.16.2.0', '0.0.0.0', 'redirectLSP', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mplsftntable_pe2`
--

CREATE TABLE IF NOT EXISTS `mplsftntable_pe2` (
  `mplsFTNIndex` tinyint(4) NOT NULL,
  `mplsFTNSourceIpv4AddrMin` varchar(20) NOT NULL,
  `mplsFTNSourceIpv4AddrMax` varchar(20) NOT NULL,
  `mplsFTNDestIpv4AddrMin` varchar(20) NOT NULL,
  `mplsFTNDestIpv4AddrMax` varchar(20) NOT NULL,
  `mplsFTNActionType` varchar(20) NOT NULL,
  `mplsFTNActionPointer` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsftntable_pe2`
--

INSERT INTO `mplsftntable_pe2` (`mplsFTNIndex`, `mplsFTNSourceIpv4AddrMin`, `mplsFTNSourceIpv4AddrMax`, `mplsFTNDestIpv4AddrMin`, `mplsFTNDestIpv4AddrMax`, `mplsFTNActionType`, `mplsFTNActionPointer`) VALUES
(1, '10.3.0.0', '0.0.0.0', '10.1.0.0', '0.0.0.0', 'redirectLSP', 1),
(2, '10.3.0.0', '0.0.0.0', '10.2.0.0', '0.0.0.0', 'redirectLSP', 1),
(3, '172.16.2.0', '0.0.0.0', '172.16.1.0', '0.0.0.0', 'redirectLSP', 3);
--
-- Database: `mpls-ldp-mib`
--
CREATE DATABASE `mpls-ldp-mib` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mpls-ldp-mib`;
--
-- Database: `mpls-lsr-mib`
--
CREATE DATABASE `mpls-lsr-mib` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mpls-lsr-mib`;

-- --------------------------------------------------------

--
-- Table structure for table `mplsinsegmentperftable`
--

CREATE TABLE IF NOT EXISTS `mplsinsegmentperftable` (
  `mplsInSegmentOctets` varchar(20) NOT NULL,
  `mplsInSegmentPackets` varchar(20) NOT NULL,
  `mplsInSegmentErrors` varchar(20) NOT NULL,
  `mplsInSegmentDiscards` varchar(20) NOT NULL,
  `mplsInSegmentHCOctets` varchar(20) NOT NULL,
  `mplsInSegmentPerfDiscontinuityTime` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsinsegmentperftable`
--


-- --------------------------------------------------------

--
-- Table structure for table `mplsinsegmenttable`
--

CREATE TABLE IF NOT EXISTS `mplsinsegmenttable` (
  `mplsInSegmentIfIndex` tinyint(20) NOT NULL,
  `mplsInSegmentAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentOperStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentLabel` int(20) NOT NULL,
  `mplsInSegmentNPop` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentAddrFamily` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentXCIndex` int(20) NOT NULL,
  `mplsInSegmentOwner` tinyint(20) NOT NULL DEFAULT '3',
  `mplsInSegmentTrafficParamPtr` int(20) NOT NULL,
  `mplsInSegmentRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentStorageType` tinyint(20) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsinsegmenttable`
--


-- --------------------------------------------------------

--
-- Table structure for table `mplsinsegmenttable_p1`
--

CREATE TABLE IF NOT EXISTS `mplsinsegmenttable_p1` (
  `mplsInSegmentIfIndex` tinyint(20) NOT NULL,
  `mplsInSegmentAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentOperStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentLabel` int(20) NOT NULL,
  `mplsInSegmentNPop` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentAddrFamily` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentXCIndex` int(20) NOT NULL,
  `mplsInSegmentOwner` tinyint(20) NOT NULL DEFAULT '3',
  `mplsInSegmentTrafficParamPtr` int(20) NOT NULL,
  `mplsInSegmentRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentStorageType` tinyint(20) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsinsegmenttable_p1`
--

INSERT INTO `mplsinsegmenttable_p1` (`mplsInSegmentIfIndex`, `mplsInSegmentAdminStatus`, `mplsInSegmentOperStatus`, `mplsInSegmentLabel`, `mplsInSegmentNPop`, `mplsInSegmentAddrFamily`, `mplsInSegmentXCIndex`, `mplsInSegmentOwner`, `mplsInSegmentTrafficParamPtr`, `mplsInSegmentRowStatus`, `mplsInSegmentStorageType`) VALUES
(1, 1, 1, 20, 1, 1, 1, 3, 1, 1, 3),
(3, 1, 1, 10, 1, 1, 2, 3, 2, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mplsinsegmenttable_p2`
--

CREATE TABLE IF NOT EXISTS `mplsinsegmenttable_p2` (
  `mplsInSegmentIfIndex` tinyint(20) NOT NULL,
  `mplsInSegmentAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentOperStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentLabel` int(20) NOT NULL,
  `mplsInSegmentNPop` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentAddrFamily` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentXCIndex` int(20) NOT NULL,
  `mplsInSegmentOwner` tinyint(20) NOT NULL DEFAULT '3',
  `mplsInSegmentTrafficParamPtr` int(20) NOT NULL,
  `mplsInSegmentRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentStorageType` tinyint(20) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsinsegmenttable_p2`
--

INSERT INTO `mplsinsegmenttable_p2` (`mplsInSegmentIfIndex`, `mplsInSegmentAdminStatus`, `mplsInSegmentOperStatus`, `mplsInSegmentLabel`, `mplsInSegmentNPop`, `mplsInSegmentAddrFamily`, `mplsInSegmentXCIndex`, `mplsInSegmentOwner`, `mplsInSegmentTrafficParamPtr`, `mplsInSegmentRowStatus`, `mplsInSegmentStorageType`) VALUES
(2, 1, 1, 10, 1, 1, 1, 3, 1, 1, 3),
(4, 1, 1, 8, 1, 1, 2, 3, 2, 1, 3),
(3, 1, 1, 15, 1, 1, 3, 3, 3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mplsinsegmenttable_p3`
--

CREATE TABLE IF NOT EXISTS `mplsinsegmenttable_p3` (
  `mplsInSegmentIfIndex` tinyint(20) NOT NULL,
  `mplsInSegmentAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentOperStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentLabel` int(20) NOT NULL,
  `mplsInSegmentNPop` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentAddrFamily` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentXCIndex` int(20) NOT NULL,
  `mplsInSegmentOwner` tinyint(20) NOT NULL DEFAULT '3',
  `mplsInSegmentTrafficParamPtr` int(20) NOT NULL,
  `mplsInSegmentRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentStorageType` tinyint(20) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsinsegmenttable_p3`
--

INSERT INTO `mplsinsegmenttable_p3` (`mplsInSegmentIfIndex`, `mplsInSegmentAdminStatus`, `mplsInSegmentOperStatus`, `mplsInSegmentLabel`, `mplsInSegmentNPop`, `mplsInSegmentAddrFamily`, `mplsInSegmentXCIndex`, `mplsInSegmentOwner`, `mplsInSegmentTrafficParamPtr`, `mplsInSegmentRowStatus`, `mplsInSegmentStorageType`) VALUES
(1, 1, 1, 11, 1, 1, 1, 3, 1, 1, 3),
(1, 1, 1, 10, 1, 1, 2, 3, 2, 1, 3),
(3, 1, 1, 4, 1, 1, 3, 3, 3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mplsinsegmenttable_p4`
--

CREATE TABLE IF NOT EXISTS `mplsinsegmenttable_p4` (
  `mplsInSegmentIfIndex` tinyint(20) NOT NULL,
  `mplsInSegmentAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentOperStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentLabel` int(20) NOT NULL,
  `mplsInSegmentNPop` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentAddrFamily` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentXCIndex` int(20) NOT NULL,
  `mplsInSegmentOwner` tinyint(20) NOT NULL DEFAULT '3',
  `mplsInSegmentTrafficParamPtr` int(20) NOT NULL,
  `mplsInSegmentRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentStorageType` tinyint(20) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsinsegmenttable_p4`
--

INSERT INTO `mplsinsegmenttable_p4` (`mplsInSegmentIfIndex`, `mplsInSegmentAdminStatus`, `mplsInSegmentOperStatus`, `mplsInSegmentLabel`, `mplsInSegmentNPop`, `mplsInSegmentAddrFamily`, `mplsInSegmentXCIndex`, `mplsInSegmentOwner`, `mplsInSegmentTrafficParamPtr`, `mplsInSegmentRowStatus`, `mplsInSegmentStorageType`) VALUES
(1, 1, 1, 15, 1, 1, 1, 3, 1, 1, 3),
(3, 1, 1, 7, 1, 1, 2, 3, 2, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mplsinsegmenttable_pe1`
--

CREATE TABLE IF NOT EXISTS `mplsinsegmenttable_pe1` (
  `mplsInSegmentIfIndex` tinyint(20) NOT NULL,
  `mplsInSegmentAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentOperStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentLabel` int(20) NOT NULL,
  `mplsInSegmentNPop` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentAddrFamily` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentXCIndex` int(20) NOT NULL,
  `mplsInSegmentOwner` tinyint(20) NOT NULL DEFAULT '3',
  `mplsInSegmentTrafficParamPtr` int(20) NOT NULL,
  `mplsInSegmentRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentStorageType` tinyint(20) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsinsegmenttable_pe1`
--


-- --------------------------------------------------------

--
-- Table structure for table `mplsinsegmenttable_pe2`
--

CREATE TABLE IF NOT EXISTS `mplsinsegmenttable_pe2` (
  `mplsInSegmentIfIndex` tinyint(20) NOT NULL,
  `mplsInSegmentAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentOperStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentLabel` int(20) NOT NULL,
  `mplsInSegmentNPop` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentAddrFamily` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentXCIndex` int(20) NOT NULL,
  `mplsInSegmentOwner` tinyint(20) NOT NULL DEFAULT '3',
  `mplsInSegmentTrafficParamPtr` int(20) NOT NULL,
  `mplsInSegmentRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsInSegmentStorageType` tinyint(20) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsinsegmenttable_pe2`
--


-- --------------------------------------------------------

--
-- Table structure for table `mplsintefaceconftable`
--

CREATE TABLE IF NOT EXISTS `mplsintefaceconftable` (
  `mplsInterfaceConfIndex` int(20) NOT NULL,
  `mplsInterfaceLabelParticipationType` tinyint(4) NOT NULL DEFAULT '1',
  `mplsInterfaceConfStorageType` tinyint(4) NOT NULL DEFAULT '3',
  `mplsInterfaceLabelMinIn` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceLabelMaxIn` int(20) NOT NULL DEFAULT '50',
  `mplsInterfaceLabelMinOut` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceLabelMaxOut` int(20) NOT NULL DEFAULT '50',
  `mplsInterfaceTotalBandwidth` int(20) NOT NULL DEFAULT '2000',
  `mplsInterfaceAvailableBandwidth` int(20) NOT NULL DEFAULT '1000',
  `mplsInterfaceTotalBuffer` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceAvailableBuffer` int(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mplsInterfaceConfIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsintefaceconftable`
--


-- --------------------------------------------------------

--
-- Table structure for table `mplsintefaceconftable_p1`
--

CREATE TABLE IF NOT EXISTS `mplsintefaceconftable_p1` (
  `mplsInterfaceConfIndex` int(20) NOT NULL,
  `mplsInterfaceLabelParticipationType` tinyint(4) NOT NULL DEFAULT '1',
  `mplsInterfaceConfStorageType` tinyint(4) NOT NULL DEFAULT '3',
  `mplsInterfaceLabelMinIn` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceLabelMaxIn` int(20) NOT NULL DEFAULT '50',
  `mplsInterfaceLabelMinOut` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceLabelMaxOut` int(20) NOT NULL DEFAULT '50',
  `mplsInterfaceTotalBandwidth` int(20) NOT NULL DEFAULT '2000',
  `mplsInterfaceAvailableBandwidth` int(20) NOT NULL DEFAULT '1000',
  `mplsInterfaceTotalBuffer` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceAvailableBuffer` int(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsintefaceconftable_p1`
--

INSERT INTO `mplsintefaceconftable_p1` (`mplsInterfaceConfIndex`, `mplsInterfaceLabelParticipationType`, `mplsInterfaceConfStorageType`, `mplsInterfaceLabelMinIn`, `mplsInterfaceLabelMaxIn`, `mplsInterfaceLabelMinOut`, `mplsInterfaceLabelMaxOut`, `mplsInterfaceTotalBandwidth`, `mplsInterfaceAvailableBandwidth`, `mplsInterfaceTotalBuffer`, `mplsInterfaceAvailableBuffer`) VALUES
(1, 1, 3, 0, 50, 0, 50, 2000, 1000, 0, 0),
(2, 1, 3, 0, 50, 0, 50, 2000, 1000, 0, 0),
(3, 1, 3, 0, 50, 0, 50, 2000, 1000, 0, 0),
(4, 1, 3, 0, 50, 0, 50, 2000, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mplsintefaceconftable_p2`
--

CREATE TABLE IF NOT EXISTS `mplsintefaceconftable_p2` (
  `mplsInterfaceConfIndex` int(20) NOT NULL,
  `mplsInterfaceLabelParticipationType` tinyint(4) NOT NULL DEFAULT '1',
  `mplsInterfaceConfStorageType` tinyint(4) NOT NULL DEFAULT '3',
  `mplsInterfaceLabelMinIn` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceLabelMaxIn` int(20) NOT NULL DEFAULT '50',
  `mplsInterfaceLabelMinOut` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceLabelMaxOut` int(20) NOT NULL DEFAULT '50',
  `mplsInterfaceTotalBandwidth` int(20) NOT NULL DEFAULT '2000',
  `mplsInterfaceAvailableBandwidth` int(20) NOT NULL DEFAULT '1000',
  `mplsInterfaceTotalBuffer` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceAvailableBuffer` int(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsintefaceconftable_p2`
--

INSERT INTO `mplsintefaceconftable_p2` (`mplsInterfaceConfIndex`, `mplsInterfaceLabelParticipationType`, `mplsInterfaceConfStorageType`, `mplsInterfaceLabelMinIn`, `mplsInterfaceLabelMaxIn`, `mplsInterfaceLabelMinOut`, `mplsInterfaceLabelMaxOut`, `mplsInterfaceTotalBandwidth`, `mplsInterfaceAvailableBandwidth`, `mplsInterfaceTotalBuffer`, `mplsInterfaceAvailableBuffer`) VALUES
(1, 1, 3, 0, 50, 0, 50, 2000, 1000, 0, 0),
(2, 1, 3, 0, 50, 0, 50, 2000, 1000, 0, 0),
(3, 1, 3, 0, 50, 0, 50, 2000, 1000, 0, 0),
(4, 1, 3, 0, 50, 0, 50, 2000, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mplsintefaceconftable_p3`
--

CREATE TABLE IF NOT EXISTS `mplsintefaceconftable_p3` (
  `mplsInterfaceConfIndex` int(20) NOT NULL,
  `mplsInterfaceLabelParticipationType` tinyint(4) NOT NULL DEFAULT '1',
  `mplsInterfaceConfStorageType` tinyint(4) NOT NULL DEFAULT '3',
  `mplsInterfaceLabelMinIn` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceLabelMaxIn` int(20) NOT NULL DEFAULT '50',
  `mplsInterfaceLabelMinOut` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceLabelMaxOut` int(20) NOT NULL DEFAULT '50',
  `mplsInterfaceTotalBandwidth` int(20) NOT NULL DEFAULT '2000',
  `mplsInterfaceAvailableBandwidth` int(20) NOT NULL DEFAULT '1000',
  `mplsInterfaceTotalBuffer` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceAvailableBuffer` int(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsintefaceconftable_p3`
--

INSERT INTO `mplsintefaceconftable_p3` (`mplsInterfaceConfIndex`, `mplsInterfaceLabelParticipationType`, `mplsInterfaceConfStorageType`, `mplsInterfaceLabelMinIn`, `mplsInterfaceLabelMaxIn`, `mplsInterfaceLabelMinOut`, `mplsInterfaceLabelMaxOut`, `mplsInterfaceTotalBandwidth`, `mplsInterfaceAvailableBandwidth`, `mplsInterfaceTotalBuffer`, `mplsInterfaceAvailableBuffer`) VALUES
(1, 1, 3, 0, 50, 0, 50, 2000, 1000, 0, 0),
(2, 1, 3, 0, 50, 0, 50, 2000, 1000, 0, 0),
(3, 1, 3, 0, 50, 0, 50, 2000, 1000, 0, 0),
(4, 1, 3, 0, 50, 0, 50, 2000, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mplsintefaceconftable_p4`
--

CREATE TABLE IF NOT EXISTS `mplsintefaceconftable_p4` (
  `mplsInterfaceConfIndex` int(20) NOT NULL,
  `mplsInterfaceLabelParticipationType` tinyint(4) NOT NULL DEFAULT '1',
  `mplsInterfaceConfStorageType` tinyint(4) NOT NULL DEFAULT '3',
  `mplsInterfaceLabelMinIn` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceLabelMaxIn` int(20) NOT NULL DEFAULT '50',
  `mplsInterfaceLabelMinOut` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceLabelMaxOut` int(20) NOT NULL DEFAULT '50',
  `mplsInterfaceTotalBandwidth` int(20) NOT NULL DEFAULT '2000',
  `mplsInterfaceAvailableBandwidth` int(20) NOT NULL DEFAULT '1000',
  `mplsInterfaceTotalBuffer` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceAvailableBuffer` int(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsintefaceconftable_p4`
--

INSERT INTO `mplsintefaceconftable_p4` (`mplsInterfaceConfIndex`, `mplsInterfaceLabelParticipationType`, `mplsInterfaceConfStorageType`, `mplsInterfaceLabelMinIn`, `mplsInterfaceLabelMaxIn`, `mplsInterfaceLabelMinOut`, `mplsInterfaceLabelMaxOut`, `mplsInterfaceTotalBandwidth`, `mplsInterfaceAvailableBandwidth`, `mplsInterfaceTotalBuffer`, `mplsInterfaceAvailableBuffer`) VALUES
(1, 1, 3, 0, 50, 0, 50, 2000, 1000, 0, 0),
(2, 1, 3, 0, 50, 0, 50, 2000, 1000, 0, 0),
(3, 1, 3, 0, 50, 0, 50, 2000, 1000, 0, 0),
(4, 1, 3, 0, 50, 0, 50, 2000, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mplsintefaceconftable_pe1`
--

CREATE TABLE IF NOT EXISTS `mplsintefaceconftable_pe1` (
  `mplsInterfaceConfIndex` int(20) NOT NULL,
  `mplsInterfaceLabelParticipationType` tinyint(4) NOT NULL DEFAULT '1',
  `mplsInterfaceConfStorageType` tinyint(4) NOT NULL DEFAULT '3',
  `mplsInterfaceLabelMinIn` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceLabelMaxIn` int(20) NOT NULL DEFAULT '50',
  `mplsInterfaceLabelMinOut` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceLabelMaxOut` int(20) NOT NULL DEFAULT '50',
  `mplsInterfaceTotalBandwidth` int(20) NOT NULL DEFAULT '2000',
  `mplsInterfaceAvailableBandwidth` int(20) NOT NULL DEFAULT '1000',
  `mplsInterfaceTotalBuffer` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceAvailableBuffer` int(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsintefaceconftable_pe1`
--

INSERT INTO `mplsintefaceconftable_pe1` (`mplsInterfaceConfIndex`, `mplsInterfaceLabelParticipationType`, `mplsInterfaceConfStorageType`, `mplsInterfaceLabelMinIn`, `mplsInterfaceLabelMaxIn`, `mplsInterfaceLabelMinOut`, `mplsInterfaceLabelMaxOut`, `mplsInterfaceTotalBandwidth`, `mplsInterfaceAvailableBandwidth`, `mplsInterfaceTotalBuffer`, `mplsInterfaceAvailableBuffer`) VALUES
(4, 1, 3, 0, 50, 0, 50, 2000, 1000, 0, 0),
(5, 1, 3, 0, 50, 0, 50, 2000, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mplsintefaceconftable_pe2`
--

CREATE TABLE IF NOT EXISTS `mplsintefaceconftable_pe2` (
  `mplsInterfaceConfIndex` int(20) NOT NULL,
  `mplsInterfaceLabelParticipationType` tinyint(4) NOT NULL DEFAULT '1',
  `mplsInterfaceConfStorageType` tinyint(4) NOT NULL DEFAULT '3',
  `mplsInterfaceLabelMinIn` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceLabelMaxIn` int(20) NOT NULL DEFAULT '50',
  `mplsInterfaceLabelMinOut` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceLabelMaxOut` int(20) NOT NULL DEFAULT '50',
  `mplsInterfaceTotalBandwidth` int(20) NOT NULL DEFAULT '2000',
  `mplsInterfaceAvailableBandwidth` int(20) NOT NULL DEFAULT '1000',
  `mplsInterfaceTotalBuffer` int(20) NOT NULL DEFAULT '0',
  `mplsInterfaceAvailableBuffer` int(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsintefaceconftable_pe2`
--

INSERT INTO `mplsintefaceconftable_pe2` (`mplsInterfaceConfIndex`, `mplsInterfaceLabelParticipationType`, `mplsInterfaceConfStorageType`, `mplsInterfaceLabelMinIn`, `mplsInterfaceLabelMaxIn`, `mplsInterfaceLabelMinOut`, `mplsInterfaceLabelMaxOut`, `mplsInterfaceTotalBandwidth`, `mplsInterfaceAvailableBandwidth`, `mplsInterfaceTotalBuffer`, `mplsInterfaceAvailableBuffer`) VALUES
(1, 1, 3, 0, 50, 0, 50, 2000, 1000, 0, 0),
(2, 1, 3, 0, 50, 0, 50, 2000, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mplsinterfaceperftable`
--

CREATE TABLE IF NOT EXISTS `mplsinterfaceperftable` (
  `mplsInterfaceInLabelsUsed` varchar(20) NOT NULL,
  `mplsInterfaceInPackets` varchar(20) NOT NULL,
  `mplsInterfaceInDiscards` varchar(20) NOT NULL,
  `mplsInterfaceFailedLabelLookup` varchar(20) NOT NULL,
  `mplsInterfaceOutLabelsUsed` varchar(20) NOT NULL,
  `mplsInterfaceOutPackets` varchar(20) NOT NULL,
  `mplsInterfaceOutDiscards` varchar(20) NOT NULL,
  `mplsInterfaceOutFragments` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsinterfaceperftable`
--


-- --------------------------------------------------------

--
-- Table structure for table `mplsinterfaceperftable_p1`
--

CREATE TABLE IF NOT EXISTS `mplsinterfaceperftable_p1` (
  `mplsInterfaceInLabelsUsed` bigint(20) NOT NULL DEFAULT '0',
  `mplsInterfaceInPackets` bigint(20) NOT NULL DEFAULT '0',
  `mplsInterfaceInDiscards` bigint(20) NOT NULL DEFAULT '0',
  `mplsInterfaceFailedLabelLookup` bigint(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutLabelsUsed` bigint(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutPackets` bigint(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutDiscards` bigint(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutFragments` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsinterfaceperftable_p1`
--

INSERT INTO `mplsinterfaceperftable_p1` (`mplsInterfaceInLabelsUsed`, `mplsInterfaceInPackets`, `mplsInterfaceInDiscards`, `mplsInterfaceFailedLabelLookup`, `mplsInterfaceOutLabelsUsed`, `mplsInterfaceOutPackets`, `mplsInterfaceOutDiscards`, `mplsInterfaceOutFragments`) VALUES
(0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mplsinterfaceperftable_p2`
--

CREATE TABLE IF NOT EXISTS `mplsinterfaceperftable_p2` (
  `mplsInterfaceInLabelsUsed` bigint(20) NOT NULL,
  `mplsInterfaceInPackets` bigint(20) NOT NULL DEFAULT '0',
  `mplsInterfaceInDiscards` bigint(20) NOT NULL DEFAULT '0',
  `mplsInterfaceFailedLabelLookup` bigint(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutLabelsUsed` bigint(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutPackets` bigint(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutDiscards` bigint(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutFragments` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsinterfaceperftable_p2`
--

INSERT INTO `mplsinterfaceperftable_p2` (`mplsInterfaceInLabelsUsed`, `mplsInterfaceInPackets`, `mplsInterfaceInDiscards`, `mplsInterfaceFailedLabelLookup`, `mplsInterfaceOutLabelsUsed`, `mplsInterfaceOutPackets`, `mplsInterfaceOutDiscards`, `mplsInterfaceOutFragments`) VALUES
(0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mplsinterfaceperftable_p3`
--

CREATE TABLE IF NOT EXISTS `mplsinterfaceperftable_p3` (
  `mplsInterfaceInLabelsUsed` varchar(20) NOT NULL,
  `mplsInterfaceInPackets` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceInDiscards` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceFailedLabelLookup` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutLabelsUsed` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutPackets` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutDiscards` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutFragments` varchar(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsinterfaceperftable_p3`
--

INSERT INTO `mplsinterfaceperftable_p3` (`mplsInterfaceInLabelsUsed`, `mplsInterfaceInPackets`, `mplsInterfaceInDiscards`, `mplsInterfaceFailedLabelLookup`, `mplsInterfaceOutLabelsUsed`, `mplsInterfaceOutPackets`, `mplsInterfaceOutDiscards`, `mplsInterfaceOutFragments`) VALUES
('0', '0', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `mplsinterfaceperftable_p4`
--

CREATE TABLE IF NOT EXISTS `mplsinterfaceperftable_p4` (
  `mplsInterfaceInLabelsUsed` varchar(20) NOT NULL,
  `mplsInterfaceInPackets` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceInDiscards` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceFailedLabelLookup` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutLabelsUsed` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutPackets` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutDiscards` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutFragments` varchar(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsinterfaceperftable_p4`
--

INSERT INTO `mplsinterfaceperftable_p4` (`mplsInterfaceInLabelsUsed`, `mplsInterfaceInPackets`, `mplsInterfaceInDiscards`, `mplsInterfaceFailedLabelLookup`, `mplsInterfaceOutLabelsUsed`, `mplsInterfaceOutPackets`, `mplsInterfaceOutDiscards`, `mplsInterfaceOutFragments`) VALUES
('0', '0', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `mplsinterfaceperftable_pe1`
--

CREATE TABLE IF NOT EXISTS `mplsinterfaceperftable_pe1` (
  `mplsInterfaceInLabelsUsed` varchar(20) NOT NULL,
  `mplsInterfaceInPackets` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceInDiscards` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceFailedLabelLookup` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutLabelsUsed` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutPackets` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutDiscards` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutFragments` varchar(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsinterfaceperftable_pe1`
--

INSERT INTO `mplsinterfaceperftable_pe1` (`mplsInterfaceInLabelsUsed`, `mplsInterfaceInPackets`, `mplsInterfaceInDiscards`, `mplsInterfaceFailedLabelLookup`, `mplsInterfaceOutLabelsUsed`, `mplsInterfaceOutPackets`, `mplsInterfaceOutDiscards`, `mplsInterfaceOutFragments`) VALUES
('0', '1', '0', '0', '0', '100', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `mplsinterfaceperftable_pe2`
--

CREATE TABLE IF NOT EXISTS `mplsinterfaceperftable_pe2` (
  `mplsInterfaceInLabelsUsed` varchar(20) NOT NULL,
  `mplsInterfaceInPackets` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceInDiscards` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceFailedLabelLookup` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutLabelsUsed` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutPackets` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutDiscards` varchar(20) NOT NULL DEFAULT '0',
  `mplsInterfaceOutFragments` varchar(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsinterfaceperftable_pe2`
--

INSERT INTO `mplsinterfaceperftable_pe2` (`mplsInterfaceInLabelsUsed`, `mplsInterfaceInPackets`, `mplsInterfaceInDiscards`, `mplsInterfaceFailedLabelLookup`, `mplsInterfaceOutLabelsUsed`, `mplsInterfaceOutPackets`, `mplsInterfaceOutDiscards`, `mplsInterfaceOutFragments`) VALUES
('0', '0', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `mplslabelstacktable`
--

CREATE TABLE IF NOT EXISTS `mplslabelstacktable` (
  `mplsLabelStackIndex` varchar(20) NOT NULL,
  `mplsLabelStackLabelIndex` varchar(20) NOT NULL,
  `mplsLabelStackLabel` varchar(20) NOT NULL,
  `mplsLabelStackRowStatus` varchar(20) NOT NULL,
  `mplsLabelStackStorageType` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplslabelstacktable`
--


-- --------------------------------------------------------

--
-- Table structure for table `mplslsrobjects`
--

CREATE TABLE IF NOT EXISTS `mplslsrobjects` (
  `router` varchar(20) NOT NULL,
  `mplsMaxLabelStackDepth` varchar(20) NOT NULL,
  `mplsInSegmentTrapEnable` varchar(20) NOT NULL,
  `mplsOutSegmentTrapEnable` varchar(20) NOT NULL,
  `mplsXCTrapEnable` varchar(20) NOT NULL,
  `mplsInSegmentUp` varchar(20) NOT NULL,
  `mplsInSegmentDown` varchar(20) NOT NULL,
  `mplsOutSegmentUp` varchar(20) NOT NULL,
  `mplsOutSegmentDown` varchar(20) NOT NULL,
  `mplsXCUp` varchar(20) NOT NULL,
  `mplsXCDown` varchar(20) NOT NULL,
  PRIMARY KEY (`router`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplslsrobjects`
--


-- --------------------------------------------------------

--
-- Table structure for table `mplsoutsegmentperftable`
--

CREATE TABLE IF NOT EXISTS `mplsoutsegmentperftable` (
  `mplsOutSegmentOctets` varchar(20) NOT NULL,
  `mplsOutSegmentPackets` varchar(20) NOT NULL,
  `mplsOutSegmentErrors` varchar(20) NOT NULL,
  `mplsOutSegmentDiscards` varchar(20) NOT NULL,
  `mplsOutSegmentHCOctets` varchar(20) NOT NULL,
  `mplsOutSegmentPerfDiscontinuityTime` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsoutsegmentperftable`
--


-- --------------------------------------------------------

--
-- Table structure for table `mplsoutsegmenttable`
--

CREATE TABLE IF NOT EXISTS `mplsoutsegmenttable` (
  `mplsOutSegmentIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentTrafficParamPtr` tinyint(20) NOT NULL,
  `mplsOutSegmentRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentStorageType` tinyint(20) NOT NULL DEFAULT '3',
  `mplsOutSegmentAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentOperStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentIfIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentPushTopLabel` varchar(20) NOT NULL DEFAULT 'true',
  `mplsOutSegmentTopLabel` int(20) NOT NULL,
  `mplsOutSegmentNextHopIpAddrType` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentNextHopIpv4Addr` varchar(20) NOT NULL,
  `mplsOutSegmentXCIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentOwner` tinyint(20) NOT NULL DEFAULT '3',
  PRIMARY KEY (`mplsOutSegmentIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsoutsegmenttable`
--


-- --------------------------------------------------------

--
-- Table structure for table `mplsoutsegmenttable_p1`
--

CREATE TABLE IF NOT EXISTS `mplsoutsegmenttable_p1` (
  `mplsOutSegmentIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentTrafficParamPtr` tinyint(20) NOT NULL,
  `mplsOutSegmentRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentStorageType` tinyint(20) NOT NULL DEFAULT '3',
  `mplsOutSegmentAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentOperStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentIfIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentPushTopLabel` varchar(20) NOT NULL DEFAULT 'true',
  `mplsOutSegmentTopLabel` int(20) NOT NULL,
  `mplsOutSegmentNextHopIpAddrType` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentNextHopIpv4Addr` varchar(20) NOT NULL,
  `mplsOutSegmentXCIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentOwner` tinyint(20) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsoutsegmenttable_p1`
--

INSERT INTO `mplsoutsegmenttable_p1` (`mplsOutSegmentIndex`, `mplsOutSegmentTrafficParamPtr`, `mplsOutSegmentRowStatus`, `mplsOutSegmentStorageType`, `mplsOutSegmentAdminStatus`, `mplsOutSegmentOperStatus`, `mplsOutSegmentIfIndex`, `mplsOutSegmentPushTopLabel`, `mplsOutSegmentTopLabel`, `mplsOutSegmentNextHopIpAddrType`, `mplsOutSegmentNextHopIpv4Addr`, `mplsOutSegmentXCIndex`, `mplsOutSegmentOwner`) VALUES
(3, 2, 1, 3, 1, 1, 3, 'true', 10, 1, '192.168.4.2', 1, 3),
(1, 4, 1, 3, 1, 1, 1, 'false', 0, 1, '172.16.1.2', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mplsoutsegmenttable_p2`
--

CREATE TABLE IF NOT EXISTS `mplsoutsegmenttable_p2` (
  `mplsOutSegmentIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentTrafficParamPtr` tinyint(20) NOT NULL,
  `mplsOutSegmentRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentStorageType` tinyint(20) NOT NULL DEFAULT '3',
  `mplsOutSegmentAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentOperStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentIfIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentPushTopLabel` varchar(20) NOT NULL DEFAULT 'true',
  `mplsOutSegmentTopLabel` int(20) NOT NULL,
  `mplsOutSegmentNextHopIpAddrType` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentNextHopIpv4Addr` varchar(20) NOT NULL,
  `mplsOutSegmentXCIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentOwner` tinyint(20) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsoutsegmenttable_p2`
--

INSERT INTO `mplsoutsegmenttable_p2` (`mplsOutSegmentIndex`, `mplsOutSegmentTrafficParamPtr`, `mplsOutSegmentRowStatus`, `mplsOutSegmentStorageType`, `mplsOutSegmentAdminStatus`, `mplsOutSegmentOperStatus`, `mplsOutSegmentIfIndex`, `mplsOutSegmentPushTopLabel`, `mplsOutSegmentTopLabel`, `mplsOutSegmentNextHopIpAddrType`, `mplsOutSegmentNextHopIpv4Addr`, `mplsOutSegmentXCIndex`, `mplsOutSegmentOwner`) VALUES
(3, 2, 1, 3, 1, 1, 3, 'false', 0, 1, '192.168.7.2', 1, 3),
(3, 4, 1, 3, 1, 1, 3, 'false', 0, 1, '192.168.7.2', 2, 3),
(1, 6, 1, 3, 1, 1, 1, 'true', 10, 1, '192.168.4.1', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mplsoutsegmenttable_p3`
--

CREATE TABLE IF NOT EXISTS `mplsoutsegmenttable_p3` (
  `mplsOutSegmentIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentTrafficParamPtr` tinyint(20) NOT NULL,
  `mplsOutSegmentRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentStorageType` tinyint(20) NOT NULL DEFAULT '3',
  `mplsOutSegmentAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentOperStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentIfIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentPushTopLabel` varchar(20) NOT NULL DEFAULT 'true',
  `mplsOutSegmentTopLabel` int(20) NOT NULL,
  `mplsOutSegmentNextHopIpAddrType` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentNextHopIpv4Addr` varchar(20) NOT NULL,
  `mplsOutSegmentXCIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentOwner` tinyint(20) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsoutsegmenttable_p3`
--

INSERT INTO `mplsoutsegmenttable_p3` (`mplsOutSegmentIndex`, `mplsOutSegmentTrafficParamPtr`, `mplsOutSegmentRowStatus`, `mplsOutSegmentStorageType`, `mplsOutSegmentAdminStatus`, `mplsOutSegmentOperStatus`, `mplsOutSegmentIfIndex`, `mplsOutSegmentPushTopLabel`, `mplsOutSegmentTopLabel`, `mplsOutSegmentNextHopIpAddrType`, `mplsOutSegmentNextHopIpv4Addr`, `mplsOutSegmentXCIndex`, `mplsOutSegmentOwner`) VALUES
(4, 2, 1, 3, 1, 1, 4, 'true', 8, 1, '192.168.9.2', 1, 3),
(3, 4, 1, 3, 1, 1, 3, 'true', 15, 1, '192.168.5.2', 2, 3),
(1, 6, 1, 3, 1, 1, 1, 'false', 0, 1, '192.168.2.1', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mplsoutsegmenttable_p4`
--

CREATE TABLE IF NOT EXISTS `mplsoutsegmenttable_p4` (
  `mplsOutSegmentIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentTrafficParamPtr` tinyint(20) NOT NULL,
  `mplsOutSegmentRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentStorageType` tinyint(20) NOT NULL DEFAULT '3',
  `mplsOutSegmentAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentOperStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentIfIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentPushTopLabel` varchar(20) NOT NULL DEFAULT 'true',
  `mplsOutSegmentTopLabel` int(20) NOT NULL,
  `mplsOutSegmentNextHopIpAddrType` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentNextHopIpv4Addr` varchar(20) NOT NULL,
  `mplsOutSegmentXCIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentOwner` tinyint(20) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsoutsegmenttable_p4`
--

INSERT INTO `mplsoutsegmenttable_p4` (`mplsOutSegmentIndex`, `mplsOutSegmentTrafficParamPtr`, `mplsOutSegmentRowStatus`, `mplsOutSegmentStorageType`, `mplsOutSegmentAdminStatus`, `mplsOutSegmentOperStatus`, `mplsOutSegmentIfIndex`, `mplsOutSegmentPushTopLabel`, `mplsOutSegmentTopLabel`, `mplsOutSegmentNextHopIpAddrType`, `mplsOutSegmentNextHopIpv4Addr`, `mplsOutSegmentXCIndex`, `mplsOutSegmentOwner`) VALUES
(1, 2, 1, 3, 1, 1, 1, 'false', 0, 1, '192.168.8.2', 1, 3),
(3, 4, 1, 3, 1, 1, 3, 'true', 4, 1, '192.168.5.1', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mplsoutsegmenttable_pe1`
--

CREATE TABLE IF NOT EXISTS `mplsoutsegmenttable_pe1` (
  `mplsOutSegmentIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentTrafficParamPtr` tinyint(20) NOT NULL,
  `mplsOutSegmentRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentStorageType` tinyint(20) NOT NULL DEFAULT '3',
  `mplsOutSegmentAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentOperStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentIfIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentPushTopLabel` varchar(20) NOT NULL DEFAULT 'true',
  `mplsOutSegmentTopLabel` int(20) NOT NULL,
  `mplsOutSegmentNextHopIpAddrType` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentNextHopIpv4Addr` varchar(20) NOT NULL,
  `mplsOutSegmentXCIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentOwner` tinyint(20) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsoutsegmenttable_pe1`
--

INSERT INTO `mplsoutsegmenttable_pe1` (`mplsOutSegmentIndex`, `mplsOutSegmentTrafficParamPtr`, `mplsOutSegmentRowStatus`, `mplsOutSegmentStorageType`, `mplsOutSegmentAdminStatus`, `mplsOutSegmentOperStatus`, `mplsOutSegmentIfIndex`, `mplsOutSegmentPushTopLabel`, `mplsOutSegmentTopLabel`, `mplsOutSegmentNextHopIpAddrType`, `mplsOutSegmentNextHopIpv4Addr`, `mplsOutSegmentXCIndex`, `mplsOutSegmentOwner`) VALUES
(1, 1, 1, 3, 1, 1, 5, 'true', 20, 1, '192.168.1.2', 1, 3),
(2, 2, 1, 3, 1, 1, 5, 'true', 20, 1, '192.168.1.2', 2, 3),
(3, 3, 1, 3, 1, 1, 5, 'true', 20, 1, '192.168.1.2', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mplsoutsegmenttable_pe2`
--

CREATE TABLE IF NOT EXISTS `mplsoutsegmenttable_pe2` (
  `mplsOutSegmentIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentTrafficParamPtr` tinyint(20) NOT NULL,
  `mplsOutSegmentRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentStorageType` tinyint(20) NOT NULL DEFAULT '3',
  `mplsOutSegmentAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentOperStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentIfIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentPushTopLabel` varchar(20) NOT NULL DEFAULT 'true',
  `mplsOutSegmentTopLabel` int(20) NOT NULL,
  `mplsOutSegmentNextHopIpAddrType` tinyint(20) NOT NULL DEFAULT '1',
  `mplsOutSegmentNextHopIpv4Addr` varchar(20) NOT NULL,
  `mplsOutSegmentXCIndex` tinyint(20) NOT NULL,
  `mplsOutSegmentOwner` tinyint(20) NOT NULL DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsoutsegmenttable_pe2`
--

INSERT INTO `mplsoutsegmenttable_pe2` (`mplsOutSegmentIndex`, `mplsOutSegmentTrafficParamPtr`, `mplsOutSegmentRowStatus`, `mplsOutSegmentStorageType`, `mplsOutSegmentAdminStatus`, `mplsOutSegmentOperStatus`, `mplsOutSegmentIfIndex`, `mplsOutSegmentPushTopLabel`, `mplsOutSegmentTopLabel`, `mplsOutSegmentNextHopIpAddrType`, `mplsOutSegmentNextHopIpv4Addr`, `mplsOutSegmentXCIndex`, `mplsOutSegmentOwner`) VALUES
(1, 1, 1, 3, 1, 1, 1, 'true', 15, 1, '192.168.7.1', 1, 3),
(2, 2, 1, 3, 1, 1, 1, 'true', 15, 1, '192.168.7.1', 2, 3),
(3, 3, 1, 3, 1, 1, 2, 'true', 7, 1, '192.168.8.1', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mplstrafficparamtable`
--

CREATE TABLE IF NOT EXISTS `mplstrafficparamtable` (
  `mplsTrafficParamIndex` varchar(20) NOT NULL,
  `mplsTrafficParamMaxRate` varchar(20) NOT NULL,
  `mplsTrafficParamMeanRate` varchar(20) NOT NULL,
  `mplsTrafficParamMaxBurstSize` varchar(20) NOT NULL,
  `mplsTrafficParamRowStatus` varchar(20) NOT NULL,
  `mplsTrafficParamStorageType` varchar(20) NOT NULL,
  PRIMARY KEY (`mplsTrafficParamIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplstrafficparamtable`
--


-- --------------------------------------------------------

--
-- Table structure for table `mplsxctable`
--

CREATE TABLE IF NOT EXISTS `mplsxctable` (
  `mplsXCIndex` tinyint(20) NOT NULL,
  `mplsXCLspId` varchar(20) NOT NULL,
  `mplsXCIsPersistent` tinyint(20) NOT NULL DEFAULT '2',
  `mplsXCOwner` tinyint(20) NOT NULL DEFAULT '3',
  `mplsXCRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsXCStorageType` tinyint(20) NOT NULL DEFAULT '3',
  `mplsXCAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsXCOperStatus` tinyint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`mplsXCIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsxctable`
--


-- --------------------------------------------------------

--
-- Table structure for table `mplsxctable_p1`
--

CREATE TABLE IF NOT EXISTS `mplsxctable_p1` (
  `mplsXCIndex` tinyint(20) NOT NULL,
  `mplsXCLspId` varchar(20) NOT NULL,
  `mplsXCIsPersistent` tinyint(20) NOT NULL DEFAULT '2',
  `mplsXCOwner` tinyint(20) NOT NULL DEFAULT '3',
  `mplsXCRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsXCStorageType` tinyint(20) NOT NULL DEFAULT '3',
  `mplsXCAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsXCOperStatus` tinyint(20) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsxctable_p1`
--

INSERT INTO `mplsxctable_p1` (`mplsXCIndex`, `mplsXCLspId`, `mplsXCIsPersistent`, `mplsXCOwner`, `mplsXCRowStatus`, `mplsXCStorageType`, `mplsXCAdminStatus`, `mplsXCOperStatus`) VALUES
(1, '1.1.3', 2, 3, 1, 3, 1, 1),
(2, '1.3.2', 2, 3, 1, 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mplsxctable_p2`
--

CREATE TABLE IF NOT EXISTS `mplsxctable_p2` (
  `mplsXCIndex` tinyint(20) NOT NULL,
  `mplsXCLspId` varchar(20) NOT NULL,
  `mplsXCIsPersistent` tinyint(20) NOT NULL DEFAULT '2',
  `mplsXCOwner` tinyint(20) NOT NULL DEFAULT '3',
  `mplsXCRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsXCStorageType` tinyint(20) NOT NULL DEFAULT '3',
  `mplsXCAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsXCOperStatus` tinyint(20) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsxctable_p2`
--

INSERT INTO `mplsxctable_p2` (`mplsXCIndex`, `mplsXCLspId`, `mplsXCIsPersistent`, `mplsXCOwner`, `mplsXCRowStatus`, `mplsXCStorageType`, `mplsXCAdminStatus`, `mplsXCOperStatus`) VALUES
(1, '1.1.3', 2, 3, 1, 3, 1, 1),
(2, '2.1.2', 2, 3, 1, 3, 1, 1),
(3, '1.3.2', 2, 3, 1, 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mplsxctable_p3`
--

CREATE TABLE IF NOT EXISTS `mplsxctable_p3` (
  `mplsXCIndex` tinyint(20) NOT NULL,
  `mplsXCLspId` varchar(20) NOT NULL,
  `mplsXCIsPersistent` tinyint(20) NOT NULL DEFAULT '2',
  `mplsXCOwner` tinyint(20) NOT NULL DEFAULT '3',
  `mplsXCRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsXCStorageType` tinyint(20) NOT NULL DEFAULT '3',
  `mplsXCAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsXCOperStatus` tinyint(20) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsxctable_p3`
--

INSERT INTO `mplsxctable_p3` (`mplsXCIndex`, `mplsXCLspId`, `mplsXCIsPersistent`, `mplsXCOwner`, `mplsXCRowStatus`, `mplsXCStorageType`, `mplsXCAdminStatus`, `mplsXCOperStatus`) VALUES
(1, '2.1.2', 2, 3, 1, 3, 1, 1),
(2, '1.2.3', 2, 3, 1, 3, 1, 1),
(3, '2.2.1', 2, 3, 1, 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mplsxctable_p4`
--

CREATE TABLE IF NOT EXISTS `mplsxctable_p4` (
  `mplsXCIndex` tinyint(20) NOT NULL,
  `mplsXCLspId` varchar(20) NOT NULL,
  `mplsXCIsPersistent` tinyint(20) NOT NULL DEFAULT '2',
  `mplsXCOwner` tinyint(20) NOT NULL DEFAULT '3',
  `mplsXCRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsXCStorageType` tinyint(20) NOT NULL DEFAULT '3',
  `mplsXCAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsXCOperStatus` tinyint(20) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsxctable_p4`
--

INSERT INTO `mplsxctable_p4` (`mplsXCIndex`, `mplsXCLspId`, `mplsXCIsPersistent`, `mplsXCOwner`, `mplsXCRowStatus`, `mplsXCStorageType`, `mplsXCAdminStatus`, `mplsXCOperStatus`) VALUES
(1, '1.2.3', 2, 3, 1, 3, 1, 1),
(2, '2.2.1', 2, 3, 1, 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mplsxctable_pe1`
--

CREATE TABLE IF NOT EXISTS `mplsxctable_pe1` (
  `mplsXCIndex` tinyint(20) NOT NULL,
  `mplsXCLspId` varchar(20) NOT NULL,
  `mplsXCIsPersistent` tinyint(20) NOT NULL DEFAULT '2',
  `mplsXCOwner` tinyint(20) NOT NULL DEFAULT '3',
  `mplsXCRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsXCStorageType` tinyint(20) NOT NULL DEFAULT '3',
  `mplsXCAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsXCOperStatus` tinyint(20) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsxctable_pe1`
--

INSERT INTO `mplsxctable_pe1` (`mplsXCIndex`, `mplsXCLspId`, `mplsXCIsPersistent`, `mplsXCOwner`, `mplsXCRowStatus`, `mplsXCStorageType`, `mplsXCAdminStatus`, `mplsXCOperStatus`) VALUES
(1, '1.1.3', 2, 3, 1, 3, 1, 1),
(2, '1.1.2', 2, 3, 1, 3, 1, 1),
(3, '2.1.2', 2, 3, 1, 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mplsxctable_pe2`
--

CREATE TABLE IF NOT EXISTS `mplsxctable_pe2` (
  `mplsXCIndex` tinyint(20) NOT NULL,
  `mplsXCLspId` varchar(20) NOT NULL,
  `mplsXCIsPersistent` tinyint(20) NOT NULL DEFAULT '2',
  `mplsXCOwner` tinyint(20) NOT NULL DEFAULT '3',
  `mplsXCRowStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsXCStorageType` tinyint(20) NOT NULL DEFAULT '3',
  `mplsXCAdminStatus` tinyint(20) NOT NULL DEFAULT '1',
  `mplsXCOperStatus` tinyint(20) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsxctable_pe2`
--

INSERT INTO `mplsxctable_pe2` (`mplsXCIndex`, `mplsXCLspId`, `mplsXCIsPersistent`, `mplsXCOwner`, `mplsXCRowStatus`, `mplsXCStorageType`, `mplsXCAdminStatus`, `mplsXCOperStatus`) VALUES
(1, '1.3.1', 2, 3, 1, 3, 1, 1),
(2, '1.3.2', 2, 3, 1, 3, 1, 1),
(3, '2.2.1', 2, 3, 1, 3, 1, 1);
--
-- Database: `mpls-vpn-mib`
--
CREATE DATABASE `mpls-vpn-mib` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mpls-vpn-mib`;

-- --------------------------------------------------------

--
-- Table structure for table `mplsvpninterfaceconftable`
--

CREATE TABLE IF NOT EXISTS `mplsvpninterfaceconftable` (
  `mplsVpnInterfaceConfIndex` tinyint(4) NOT NULL,
  `mplsVpnInterfaceLabelEdgeType` tinyint(4) NOT NULL,
  `mplsVpnInterfaceVpnClassification` tinyint(4) NOT NULL,
  `mplsVpnInterfaceVpnRouteDistProtocol` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsvpninterfaceconftable`
--


-- --------------------------------------------------------

--
-- Table structure for table `mplsvpninterfaceconftable_pe1`
--

CREATE TABLE IF NOT EXISTS `mplsvpninterfaceconftable_pe1` (
  `mplsVpnInterfaceConfIndex` tinyint(4) NOT NULL,
  `mplsVpnInterfaceLabelEdgeType` tinyint(4) NOT NULL,
  `mplsVpnInterfaceVpnClassification` tinyint(4) NOT NULL,
  `mplsVpnInterfaceVpnRouteDistProtocol` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsvpninterfaceconftable_pe1`
--

INSERT INTO `mplsvpninterfaceconftable_pe1` (`mplsVpnInterfaceConfIndex`, `mplsVpnInterfaceLabelEdgeType`, `mplsVpnInterfaceVpnClassification`, `mplsVpnInterfaceVpnRouteDistProtocol`) VALUES
(1, 2, 2, 3),
(2, 2, 2, 3),
(3, 2, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mplsvpninterfaceconftable_pe2`
--

CREATE TABLE IF NOT EXISTS `mplsvpninterfaceconftable_pe2` (
  `mplsVpnInterfaceConfIndex` tinyint(4) NOT NULL,
  `mplsVpnInterfaceLabelEdgeType` tinyint(4) NOT NULL,
  `mplsVpnInterfaceVpnClassification` tinyint(4) NOT NULL,
  `mplsVpnInterfaceVpnRouteDistProtocol` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsvpninterfaceconftable_pe2`
--

INSERT INTO `mplsvpninterfaceconftable_pe2` (`mplsVpnInterfaceConfIndex`, `mplsVpnInterfaceLabelEdgeType`, `mplsVpnInterfaceVpnClassification`, `mplsVpnInterfaceVpnRouteDistProtocol`) VALUES
(3, 2, 2, 3),
(4, 2, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mplsvpnvrfbgpnbraddrtable`
--

CREATE TABLE IF NOT EXISTS `mplsvpnvrfbgpnbraddrtable` (
  `mplsVpnVrfBgpNbrIndex` tinyint(4) NOT NULL,
  `mplsVpnVrfBgpNbrRole` tinyint(4) NOT NULL,
  `mplsVpnVrfBgpNbrType` tinyint(4) NOT NULL DEFAULT '1',
  `mplsVpnVrfBgpNbrAddr` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsvpnvrfbgpnbraddrtable`
--


-- --------------------------------------------------------

--
-- Table structure for table `mplsvpnvrfbgpnbraddrtable_pe1`
--

CREATE TABLE IF NOT EXISTS `mplsvpnvrfbgpnbraddrtable_pe1` (
  `mplsVpnVrfBgpNbrIndex` tinyint(4) NOT NULL,
  `mplsVpnVrfBgpNbrRole` tinyint(4) NOT NULL,
  `mplsVpnVrfBgpNbrType` tinyint(4) NOT NULL DEFAULT '1',
  `mplsVpnVrfBgpNbrAddr` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsvpnvrfbgpnbraddrtable_pe1`
--

INSERT INTO `mplsvpnvrfbgpnbraddrtable_pe1` (`mplsVpnVrfBgpNbrIndex`, `mplsVpnVrfBgpNbrRole`, `mplsVpnVrfBgpNbrType`, `mplsVpnVrfBgpNbrAddr`) VALUES
(1, 1, 1, '10.1.0.2'),
(2, 1, 1, '10.2.0.2'),
(3, 1, 1, '172.16.1.2'),
(4, 2, 1, '192.168.7.2');

-- --------------------------------------------------------

--
-- Table structure for table `mplsvpnvrfbgpnbraddrtable_pe2`
--

CREATE TABLE IF NOT EXISTS `mplsvpnvrfbgpnbraddrtable_pe2` (
  `mplsVpnVrfBgpNbrIndex` tinyint(4) NOT NULL,
  `mplsVpnVrfBgpNbrRole` tinyint(4) NOT NULL,
  `mplsVpnVrfBgpNbrType` tinyint(4) NOT NULL DEFAULT '1',
  `mplsVpnVrfBgpNbrAddr` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsvpnvrfbgpnbraddrtable_pe2`
--

INSERT INTO `mplsvpnvrfbgpnbraddrtable_pe2` (`mplsVpnVrfBgpNbrIndex`, `mplsVpnVrfBgpNbrRole`, `mplsVpnVrfBgpNbrType`, `mplsVpnVrfBgpNbrAddr`) VALUES
(1, 1, 1, '10.3.0.2'),
(2, 1, 1, '173.16.2.2'),
(3, 2, 1, '192.168.1.1');

-- --------------------------------------------------------

--
-- Table structure for table `mplsvpnvrfroutetable`
--

CREATE TABLE IF NOT EXISTS `mplsvpnvrfroutetable` (
  `mplsVpnVrfRouteDest` varchar(20) NOT NULL,
  `mplsVpnVrfRouteMask` varchar(20) NOT NULL,
  `mplsVpnVrfRouteNextHop` varchar(20) NOT NULL,
  `mplsVpnVrfRouteIfIndex` tinyint(4) NOT NULL,
  `mplsVpnVrfRouteType` tinyint(4) NOT NULL DEFAULT '4'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsvpnvrfroutetable`
--


-- --------------------------------------------------------

--
-- Table structure for table `mplsvpnvrfroutetable_pe1`
--

CREATE TABLE IF NOT EXISTS `mplsvpnvrfroutetable_pe1` (
  `mplsVpnVrfRouteDest` varchar(20) NOT NULL,
  `mplsVpnVrfRouteMask` varchar(20) NOT NULL,
  `mplsVpnVrfRouteNextHop` varchar(20) NOT NULL,
  `mplsVpnVrfRouteIfIndex` tinyint(4) NOT NULL,
  `mplsVpnVrfRouteType` tinyint(4) NOT NULL DEFAULT '4'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsvpnvrfroutetable_pe1`
--

INSERT INTO `mplsvpnvrfroutetable_pe1` (`mplsVpnVrfRouteDest`, `mplsVpnVrfRouteMask`, `mplsVpnVrfRouteNextHop`, `mplsVpnVrfRouteIfIndex`, `mplsVpnVrfRouteType`) VALUES
('10.3.0.2', '255.255.0.0', '192.168.7.2', 5, 4),
('172.16.2.2', '255.255.255.0', '192.168.7.2', 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `mplsvpnvrfroutetable_pe2`
--

CREATE TABLE IF NOT EXISTS `mplsvpnvrfroutetable_pe2` (
  `mplsVpnVrfRouteDest` varchar(20) NOT NULL,
  `mplsVpnVrfRouteMask` varchar(20) NOT NULL,
  `mplsVpnVrfRouteNextHop` varchar(20) NOT NULL,
  `mplsVpnVrfRouteIfIndex` tinyint(4) NOT NULL,
  `mplsVpnVrfRouteType` tinyint(4) NOT NULL DEFAULT '4'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsvpnvrfroutetable_pe2`
--

INSERT INTO `mplsvpnvrfroutetable_pe2` (`mplsVpnVrfRouteDest`, `mplsVpnVrfRouteMask`, `mplsVpnVrfRouteNextHop`, `mplsVpnVrfRouteIfIndex`, `mplsVpnVrfRouteType`) VALUES
('10.1.0.2', '255.255.0.0', '192.168.1.1', 1, 4),
('10.2.0.2', '255.255.0.0', '192.168.1.1', 1, 4),
('172.16.1.2', '255.255.255.0', '192.168.2.1', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `mplsvpnvrfroutetargettable`
--

CREATE TABLE IF NOT EXISTS `mplsvpnvrfroutetargettable` (
  `mplsVpnVrfRouteTargetIndex` tinyint(4) NOT NULL,
  `mplsVpnVrfRouteTargetType` tinyint(4) NOT NULL,
  `mplsVpnVrfRouteTarget` varchar(100) NOT NULL,
  `mplsVpnVrfRouteTargetDescr` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsvpnvrfroutetargettable`
--


-- --------------------------------------------------------

--
-- Table structure for table `mplsvpnvrfroutetargettable_pe1`
--

CREATE TABLE IF NOT EXISTS `mplsvpnvrfroutetargettable_pe1` (
  `mplsVpnVrfRouteTargetIndex` tinyint(4) NOT NULL,
  `mplsVpnVrfRouteTargetType` tinyint(4) NOT NULL,
  `mplsVpnVrfRouteTarget` varchar(100) NOT NULL,
  `mplsVpnVrfRouteTargetDescr` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsvpnvrfroutetargettable_pe1`
--

INSERT INTO `mplsvpnvrfroutetargettable_pe1` (`mplsVpnVrfRouteTargetIndex`, `mplsVpnVrfRouteTargetType`, `mplsVpnVrfRouteTarget`, `mplsVpnVrfRouteTargetDescr`) VALUES
(1, 3, '101:1', 'VPN 1 RD'),
(2, 3, '102:1', 'VPN 2 RD');

-- --------------------------------------------------------

--
-- Table structure for table `mplsvpnvrfroutetargettable_pe2`
--

CREATE TABLE IF NOT EXISTS `mplsvpnvrfroutetargettable_pe2` (
  `mplsVpnVrfRouteTargetIndex` tinyint(4) NOT NULL,
  `mplsVpnVrfRouteTargetType` tinyint(4) NOT NULL,
  `mplsVpnVrfRouteTarget` varchar(100) NOT NULL,
  `mplsVpnVrfRouteTargetDescr` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsvpnvrfroutetargettable_pe2`
--

INSERT INTO `mplsvpnvrfroutetargettable_pe2` (`mplsVpnVrfRouteTargetIndex`, `mplsVpnVrfRouteTargetType`, `mplsVpnVrfRouteTarget`, `mplsVpnVrfRouteTargetDescr`) VALUES
(1, 3, '101:1', 'VPN 1 RD'),
(2, 3, '102:1', 'VPN 2 RD');

-- --------------------------------------------------------

--
-- Table structure for table `mplsvpnvrftable`
--

CREATE TABLE IF NOT EXISTS `mplsvpnvrftable` (
  `mplsVpnVrfName` varchar(100) NOT NULL,
  `mplsVpnVrfDescription` varchar(100) NOT NULL,
  `mplsVpnVrfRouteDistinguisher` varchar(20) NOT NULL,
  `mplsVpnVrfActiveInterfaces` tinyint(4) NOT NULL,
  `mplsVpnVrfAssociatedInterfaces` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsvpnvrftable`
--


-- --------------------------------------------------------

--
-- Table structure for table `mplsvpnvrftable_pe1`
--

CREATE TABLE IF NOT EXISTS `mplsvpnvrftable_pe1` (
  `mplsVpnVrfName` varchar(100) NOT NULL,
  `mplsVpnVrfDescription` varchar(100) NOT NULL,
  `mplsVpnVrfRouteDistinguisher` varchar(20) NOT NULL,
  `mplsVpnVrfActiveInterfaces` tinyint(4) NOT NULL,
  `mplsVpnVrfAssociatedInterfaces` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsvpnvrftable_pe1`
--

INSERT INTO `mplsvpnvrftable_pe1` (`mplsVpnVrfName`, `mplsVpnVrfDescription`, `mplsVpnVrfRouteDistinguisher`, `mplsVpnVrfActiveInterfaces`, `mplsVpnVrfAssociatedInterfaces`) VALUES
('vpn1', 'VPN 1 with 3 routers - 2 Connected to PE 1', '101:1', 2, 2),
('vpn2', 'VPN 2 with 2 routers - 1 Connected to PE 1', '102:1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mplsvpnvrftable_pe2`
--

CREATE TABLE IF NOT EXISTS `mplsvpnvrftable_pe2` (
  `mplsVpnVrfName` varchar(100) NOT NULL,
  `mplsVpnVrfDescription` varchar(100) NOT NULL,
  `mplsVpnVrfRouteDistinguisher` varchar(20) NOT NULL,
  `mplsVpnVrfActiveInterfaces` tinyint(4) NOT NULL,
  `mplsVpnVrfAssociatedInterfaces` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mplsvpnvrftable_pe2`
--

INSERT INTO `mplsvpnvrftable_pe2` (`mplsVpnVrfName`, `mplsVpnVrfDescription`, `mplsVpnVrfRouteDistinguisher`, `mplsVpnVrfActiveInterfaces`, `mplsVpnVrfAssociatedInterfaces`) VALUES
('vpn1', 'VPN 1 with 3 routers - 1 Connected to PE 2', '101:1', 1, 1),
('vpn2', 'VPN 2 with 2 routers - 1 Connected to PE 1', '102:1', 1, 1);
--
-- Database: `prometheus_graph`
--
CREATE DATABASE `prometheus_graph` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `prometheus_graph`;

-- --------------------------------------------------------

--
-- Table structure for table `graph_links`
--

CREATE TABLE IF NOT EXISTS `graph_links` (
  `pt1` varchar(5) NOT NULL,
  `pt2` varchar(5) NOT NULL,
  `state` varchar(5) NOT NULL,
  PRIMARY KEY (`pt1`,`pt2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `graph_links`
--

INSERT INTO `graph_links` (`pt1`, `pt2`, `state`) VALUES
('1', '4', 'up'),
('2', '4', 'up'),
('3', '4', 'up'),
('4', '5', 'up'),
('4', '7', 'up'),
('5', '7', 'up'),
('5', '6', 'up'),
('7', '6', 'up'),
('7', '8', 'up'),
('6', '8', 'up'),
('6', '9', 'up'),
('8', '9', 'up'),
('9', '10', 'up'),
('9', '11', 'up'),
('5', '8', 'up');

-- --------------------------------------------------------

--
-- Table structure for table `graph_nodes`
--

CREATE TABLE IF NOT EXISTS `graph_nodes` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `x` varchar(5) NOT NULL,
  `y` varchar(5) NOT NULL,
  `state` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `graph_nodes`
--

INSERT INTO `graph_nodes` (`id`, `name`, `x`, `y`, `state`) VALUES
(1, 'CE1_1', '50', '50', 'up'),
(2, 'CE1_2', '50', '125', 'up'),
(3, 'CE2_1', '50', '300', 'up'),
(4, 'PE1', '100', '150', 'up'),
(5, 'P1', '150', '100', 'up'),
(6, 'P2', '200', '100', 'up'),
(7, 'P3', '175', '300', 'up'),
(8, 'P4', '225', '300', 'up'),
(9, 'PE2', '250', '150', 'up'),
(10, 'CE1_3', '300', '150', 'up'),
(11, 'CE2_2', '300', '300', 'up');
--
-- Database: `snmpv2-mib`
--
CREATE DATABASE `snmpv2-mib` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `snmpv2-mib`;

-- --------------------------------------------------------

--
-- Table structure for table `snmpv2objects`
--

CREATE TABLE IF NOT EXISTS `snmpv2objects` (
  `sysDescr` varchar(100) NOT NULL,
  `sysObjectID` varchar(100) NOT NULL DEFAULT '1.3.6.1.4.1.4242',
  `sysContact` varchar(100) NOT NULL DEFAULT 'helpdesk@networks.com',
  `sysName` varchar(100) NOT NULL,
  `sysLocation` varchar(100) NOT NULL,
  `sysServices` int(10) NOT NULL DEFAULT '4',
  `sysUpTime` double NOT NULL DEFAULT '58600',
  PRIMARY KEY (`sysObjectID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `snmpv2objects`
--

INSERT INTO `snmpv2objects` (`sysDescr`, `sysObjectID`, `sysContact`, `sysName`, `sysLocation`, `sysServices`, `sysUpTime`) VALUES
('CE Vpn1 Router1', '1.3.6.1.4.1.4242.1.1', 'helpdesk@networks.com', 'CE1_1', 'Washington', 4, 58600),
('CE Vpn1 Router2', '1.3.6.1.4.1.4242.1.2', 'helpdesk@networks.com', 'CE1_2', 'Texas', 4, 58600),
('CE Vpn1 Router3', '1.3.6.1.4.1.4242.1.3', 'helpdesk@networks.com', 'CE1_3', 'New York', 4, 58600),
('CE Vpn2 Router1', '1.3.6.1.4.1.4242.2.1', 'helpdesk@networks.com', 'CE2_1', 'Washington', 4, 58600),
('CE Vpn2 Router2', '1.3.6.1.4.1.4242.2.2', 'helpdesk@networks.com', 'CE2_2', 'Ohio', 4, 58600),
('PE Router1', '1.3.6.1.4.1.4242.3.1', 'helpdesk@networks.com', 'PE1', 'Washington', 4, 58600),
('PE Router2', '1.3.6.1.4.1.4242.3.2', 'helpdesk@networks.com', 'PE2', 'Texas', 4, 58600),
('P Router1', '1.3.6.1.4.1.4242.4.1', 'helpdesk@networks.com', 'P1', 'Washington', 4, 58600),
('P Router2', '1.3.6.1.4.1.4242.4.2', 'helpdesk@networks.com', 'P2', 'Washington', 4, 58600),
('P Router3', '1.3.6.1.4.1.4242.4.3', 'helpdesk@networks.com', 'P3', 'Washington', 4, 58600),
('P Router4', '1.3.6.1.4.1.4242.4.4', 'helpdesk@networks.com', 'P4', 'Washington', 4, 58600);

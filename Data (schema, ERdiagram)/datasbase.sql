-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 07, 2024 lúc 09:46 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `appotheke`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customers` (
  `Id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Name` varchar(255) NOT NULL,
  `phone_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suppliers`
--

CREATE TABLE suppliers (
    Id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name varchar(255) NOT NULL,
    phone_number varchar(10) NOT NULL,
    Email varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `medicine`
--
CREATE TABLE medicines (
    Id int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    medicine_name varchar(255) NOT NULL,
    Price varchar(255) NOT NULL,
    Type varchar(255) NOT NULL,
    Id_supplier int(11) NOT NULL,
    quantity varchar(255) NOT NULL,
    expiry_date date NOT NULL,
    FOREIGN KEY (Id_supplier) REFERENCES suppliers(Id) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pharmacist`
--

CREATE TABLE `pharmacists` (
  `Id` int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Username` varchar(255) NOT NULL,
  `Pwd` varchar(255) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Role` varchar(255) NOT NULL,
  `last_seen` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales`
--

CREATE TABLE `sales` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Id_pharmacist` int(11) NOT NULL,
  `Id_customer` int(11) NOT NULL,
  `Id_medicine` int(11) NOT NULL,
  `time` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`Id`),
  FOREIGN KEY (`Id_pharmacist`) REFERENCES `pharmacists`(`Id`),
  FOREIGN KEY (`Id_customer`) REFERENCES `customers`(`Id`),
  FOREIGN KEY (`Id_medicine`) REFERENCES `medicines`(`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

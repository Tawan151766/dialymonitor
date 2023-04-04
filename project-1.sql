-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2023 at 05:03 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project-1`
--

-- --------------------------------------------------------

--
-- Table structure for table `category1`
--

CREATE TABLE `category1` (
  `category1_id` int(11) NOT NULL,
  `category1_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category1`
--

INSERT INTO `category1` (`category1_id`, `category1_name`) VALUES
(2, 'Car Problemm'),
(5, 'Meet Overall Target 45M/Q'),
(7, 'test update');

-- --------------------------------------------------------

--
-- Table structure for table `category2`
--

CREATE TABLE `category2` (
  `category2_id` int(11) NOT NULL,
  `category2_name` varchar(50) NOT NULL,
  `category1_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category2`
--

INSERT INTO `category2` (`category2_id`, `category2_name`, `category1_id`) VALUES
(1, 'Car Problem', 1),
(4, 'Car Problem', 1),
(5, 'Car Problem', 2),
(6, 'Meet KOP Target 45M/Q', 4),
(7, 'Meet 450QN/3APP/Q', 4),
(8, 'Car ProblemSub', 2),
(9, 'Customer', 3),
(10, 'Meet Overall Target 45M/Q', 5),
(11, '', 6);

-- --------------------------------------------------------

--
-- Table structure for table `dailymonitor`
--

CREATE TABLE `dailymonitor` (
  `subject_id` int(11) NOT NULL,
  `subject_date` datetime NOT NULL,
  `subject_name` text NOT NULL,
  `subject_by` varchar(20) NOT NULL,
  `subject_department` varchar(20) NOT NULL,
  `category1` varchar(100) NOT NULL,
  `category2` varchar(100) NOT NULL,
  `response_person` varchar(100) NOT NULL,
  `response_department` varchar(100) NOT NULL,
  `action_person` varchar(100) NOT NULL,
  `subject_status` varchar(10) NOT NULL,
  `remarks` text NOT NULL,
  `solutions` varchar(300) NOT NULL,
  `io_number` varchar(50) NOT NULL,
  `po_number` varchar(50) NOT NULL,
  `q_number` varchar(50) NOT NULL,
  `company_code` varchar(10) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `company_address` text NOT NULL,
  `des_cription` varchar(300) NOT NULL,
  `pdf_attached` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `dailymonitor`
--

INSERT INTO `dailymonitor` (`subject_id`, `subject_date`, `subject_name`, `subject_by`, `subject_department`, `category1`, `category2`, `response_person`, `response_department`, `action_person`, `subject_status`, `remarks`, `solutions`, `io_number`, `po_number`, `q_number`, `company_code`, `company_name`, `company_address`, `des_cription`, `pdf_attached`) VALUES
(135, '2021-02-08 11:00:21', 'io.484-20 ไม่ได้เปลี่ยนStickerติดสินค้าก่อนส่งให้ลูกค้า โดยปกติทุกงานขายจะต้องเปลี่ยนStickerโดยใส่รายละเอียดสินค้าตามPOลูกค้า และอ้างอิงเลขPOของลูกค้าลงไปด้วย งานนี้พี่ใหม่ไปส่งโดยเคลียร์กับทางพี่อ๋วยและแจ้งลูกค้าแล้ว ลูกค้าจึงรับสินค้าให้ แต่ให้แก้ไขในครั้งต่อไปด้วย ( Customer require to change label sticker as indicate in customer PO. This time customer accept but next time will not. )', 'ON', 'Account', 'Delivery Problem', 'Wrong Information', 'TT', 'QC', '', 'COMPLETE', '', '', 'E-LT-A-S-484-1220-IXX1', '', 'E-LT-0-1493-1220', '', 'Dow Chemical Thailand Ltd. SCG-DOW Group', '8, I-4 Road, Map Ta Phut Industrial Estate, Muang District, Rayong 21150', 'Spare Part for \"Leistritz\" Pump Model : L4HK-330/189-AHMKI-G, S/N : 121557-000 Shaft Seal (Viton) Pos.116', '08022021110021.jpg'),
(140, '2021-02-16 15:19:01', 'IO 044-20 คิวเทคลูกค้าไม่รับสินค้า เนื่องจากไม่มั่นใจ Part number ของสินค้าที่ติด ไม่ตรงกับ PO ลูกค้า พี่ใหม่ได้ทำการแจ้งพี่บิ๊กแล้ว ลูกค้าให้ส่งอีเมลชี้แจ้ง แล้วถึงจะไปส่งได้ค่ะ \r\n( Customer require to change label sticker as indicate in customer PO. ', 'ON', 'Account', 'Delivery Problem', 'Wrong Information', 'TT', 'QC', '', '', '', '', 'I-IP-A-S-044-0121-IXX1', '', 'I-IP-0-0013-0121', '', 'QTEC Technology Co., Ltd.', '457 Bonstreet Rd., Tambol Bangpood, Amphur Pakkred, Nonthaburi, 11120 THAILAND', '\"Inpro/Seal\" Bearing Isolator JS00028263-0000 & JS00028262-0000  ', ''),
(146, '2021-02-19 13:24:16', 'ไม่สามารถส่งสินค้า IO 484-20 Siam Synthetic latex ได้เนื่องจากลูกค้ารับสินค้าถึงแค่ 11.00 น. ', 'TP', 'Account', 'Delivery Problem', 'Not In Time', 'ON', 'TR', '', '', '', '', 'E-LT-A-S-484-1220-IXX1', '', 'E-LT-0-1493-1220', '', 'Siam Synthetic Latex Co., Ltd.', '8, I-4 Rd., Map-Ta-Phut Industrial Estate P.O. Box 72 Map-Ta-Phut Muang, Rayong 21150 Thailand', 'Spare Part for \"Leistritz\" Pump Model : L4HK-330/189-AHMKI-G, S/N : 121557-000 Shaft Seal (Viton) Pos.116', ''),
(155, '2021-02-25 18:14:58', 'ส่งงบการเงินเดือน มกราคม2564', 'ON', 'Account', 'Financial Statement', 'Pictures+Report', 'DK', 'ACC', '', 'COMPLETE', '', '', '', '', '', '', '', '', '', '155@02032021095118.jpg'),
(160, '2021-03-03 10:14:50', 'ตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', 'Pictures+Report', 'ON', 'TR', '', 'COMPLETE', '', '', '', '', '', '', '', '', '', '03032021101450.pdf'),
(161, '2021-03-10 09:12:32', 'ตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', 'Pictures+Report', 'ON', 'TR', '', 'COMPLETE', '', '', '', '', '', '', '', '', '', '10032021091232.pdf'),
(163, '2021-03-13 15:03:31', 'P\'JH มีการตั้งกลุ่มสอนภาษาอังกฤษ\r\nโดยแบ่งเป็น 3 ระดับให้ทุกคนเข้าร่วม การเรียน อ่าน เขียน', 'SJ', 'BD', 'Creativity', '', 'ON', 'ACC,APP,BD,HR,LO,PC,QC,Sales,Store,SV,TR,TS', '', 'IN PROCESS', '', '', '', '', '', '', '', '', '', ''),
(165, '2021-03-16 15:49:05', 'ประดิษฐ์กล่องใส่เครื่องมือแสตนเลส จากวัสดุเหลือใช้', 'SJ', 'BD', 'Creativity', '', 'PL', '', '', 'IN PROCESS', '', '', '', '', '', '', '', '', '', '165@16032021155409.jpg'),
(166, '2021-03-16 15:53:04', 'ประดิษฐ์ตัวดูดใบพัด Vacuum Pump ของ Single stage liquid ring vacuum pump in compact design จากวัสดุเหลือใช้', 'SJ', 'BD', 'Creativity', '', 'PL', '', '', 'IN PROCESS', '', '', '', '', '', '', '', '', '', '166@16032021155424.jpg'),
(167, '2021-03-19 09:20:58', 'ทำปลั๊กตามเสา Service', 'CA', 'QC', 'Creativity', '', 'PL', '', '', 'PENDING', '', '', '', '', '', '', '', '', '', ''),
(168, '2021-03-19 10:58:44', '069-21 PTT Global  สินค้าไม่ตรง\r\nพฤ.18/3/2021 TRไปส่งสินค้า แต่ลูกค้าแจ้งสินค้าไม่ตรงกับที่ลูกค้ามีอยู่', 'ON', 'Account', 'Delivery Problem', 'Item Mistake', 'TC', 'APP,Sales', '', '', '', '', 'E-LT-A-S-069-0221-IPX1', '', 'E-LT-0-0107-0121', '', 'PTT Global Chemical Public Company Limited', '8, I-8 Road, Map Ta Phut Industrial Estate, Map Ta Phut, Mueang Rayong, Rayong 21150 Thailand.', 'Spare Part for \"Leistritz\" Pump For Pump Model : L2NG-116/180-ISOGIO-G, S/N : 123097-001 Pos. 066 & 031', '19032021105844.pdf'),
(169, '2021-03-22 16:03:34', 'ป้ายกำกับ บอกถึงหน้าที่ และคนที่รับผิดชอบเครื่องนั้นๆ', 'SJ', 'BD', 'Creativity', '', 'PL', '', '', '', '', '', '', '', '', '', '', '', '', '22032021160334.jpg'),
(172, '2021-03-25 17:40:22', 'ส่งงบการเงินเดือน\r\nกุมภาพันธ์ 2564', 'ON', 'Account', 'Financial Statement', 'Pictures+Report', 'DK', 'ACC', '', 'COMPLETE', '', '', '', '', '', '', '', '', '', '25032021174022.jpg'),
(173, '2021-04-01 00:00:00', 'แจ้งปัญหาการใช้สายพานขอของไม่เก็บคืนที่เดิม\r\nให้พนักงานที่ใช้สายพานในการขนของ รบกวนใช้เสร็จแล้วเก็บทุกครั้ง', 'SJ', 'BD', 'Recommendation', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '173@01042021110411.jpeg'),
(174, '2021-04-01 00:00:00', 'ให้ทุกคนระวังหลังคาที่จอดรถ เนื่องหลังคามีความคม ระวังจะโดนบาดได้', 'SJ', 'BD', 'Recommendation', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(176, '2021-04-02 11:43:41', 'ประดิษฐ์รถเข็นเก็บท่อ เก็บนั่งร้าน', 'SJ', 'BD', 'Creativity', '', 'WK', '', '', '', '', '', '', '', '', '', '', '', '', '176@02042021114455.jpg'),
(177, '2021-04-05 10:39:35', 'กิจกรรมBig Cleaning Day 3/4/2021 พนักงานเข้าร่วมทั้งสิ้น 39 คน จาก 41 คน', 'ON', 'Account', 'Activity Participation', 'Pictures+Report', '', 'ACC,APP,BD,HR,LO,PC,QC,Sales,Store,SV,TR,TS', '', 'COMPLETE', '', '', '', '', '', '', '', '', '', '05042021103935.pdf'),
(178, '2021-04-06 11:20:24', 'ทำความสะอาดหลังคาตึกออฟฟิศ By.SM/TR', 'ON', 'Account', 'Activity Participation', '', '', 'TR', '', 'COMPLETE', '', '', '', '', '', '', '', '', '', '06042021112024.jpg'),
(179, '2021-03-29 00:00:00', 'ออกเอกสารอินวอยส์ผิด เนื่องจากออกตามหน้าไอโอๆ เป็นที่อยู่กรุงเทพฯ แต่ลูกค้าให้แก้ไขเป็นที่อยู่สมุทรปราการ ', 'TP', 'Account', 'IO Mistake', 'Document Mistake', 'NP', '', '', '', 'เรื่องแก้ไขอินวอยส์ทางลูกค้าแจ้งมาทางเซลล์ค่ะ', '', 'F-OT-A-S-402-1020-AXX1', '', 'F-OT-0-380-0419', '', 'LAM SOON (THAILAND) PUBLIC COMPANY LIMITED', '236 Moo 4 Bangpoo Industrial Estate, Sukhumvit Rd., Prakasa, Muang, Samutprakarn 10280', '\"ROTO\" RLAB67MR2CD1L rev.4', '179@06042021153811.pdf'),
(193, '2021-04-23 08:19:13', 'ตรวจสภาพรถยนต์ 8/4/21\r\nVios BMWดำ', 'ON', 'Account', 'Car Checking', '', 'TR', 'TR', '', 'COMPLETE', '', '', '', '', '', '', '', '', '', '23042021081913.pdf'),
(194, '2021-04-23 19:04:43', 'ส่งงบการเงินเดือน\r\nมีนาคม 2564', 'ON', 'Account', 'Financial Statement', 'Pictures+Report', '', 'ACC', '', 'COMPLETE', '', '', '', '', '', '', '', '', '', '23042021190443.jpg'),
(197, '2021-04-29 15:33:29', 'Stocked list: Description of Inpro seal should be separate between 9196 and Max3.', 'TSS', 'Sales', 'Recommendation', 'Data Not Complete', 'TSS', '', '', 'PENDING', '', '', '', '', '', '', '', '', '', '197@29042021153749.pdf'),
(199, '2021-05-04 09:36:35', 'Week 17 รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', 'TR', '', '', '', '', '', '', '', '', '', '', '', '04052021093635.pdf'),
(200, '2021-05-04 09:38:18', 'Week 11 รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', 'TR', '', '', '', '', '', '', '', '', '', '', '', '04052021093818.pdf'),
(201, '2021-05-04 09:39:22', 'Week 16 รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', 'TR', '', '', '', '', '', '', '', '', '', '', '', '04052021093922.pdf'),
(202, '2021-05-04 09:39:59', 'Week 12 รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', 'TR', '', '', '', '', '', '', '', '', '', '', '', '04052021093959.pdf'),
(203, '2021-05-04 09:40:37', 'Week 13 รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', 'TR', '', '', '', '', '', '', '', '', '', '', '', '04052021094037.pdf'),
(204, '2021-05-04 09:57:13', 'กวาดหลังคา30 เมษายน 2564', 'ON', 'Account', 'Activity Participation', '', '', 'TR', '', '', '', '', '', '', '', '', '', '', '', '04052021095713.pdf'),
(215, '2021-05-08 15:22:33', 'Week 18\r\nรายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', 'Pictures+Report', '', 'SV,TR', '', '', '', '', '', '', '', '', '', '', '', '08052021152233.pdf'),
(221, '2021-05-12 11:23:03', 'SRKทำชั้นวางของสำหรับโชว์ของ', 'ON', 'Account', 'Creativity', '', 'SRK', 'TR', '', 'COMPLETE', '', '', '', '', '', '', '', '', '', '12052021112303.jpg'),
(224, '2021-05-14 16:53:54', 'Week 19รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', 'SV,TR', '', 'COMPLETE', '', '', '', '', '', '', '', '', '', '14052021165354.pdf'),
(225, '2021-05-14 17:03:08', 'รบกวนBDช่วยจัดการ 2 เรื่องค่ะ\r\n1.GPSติดรถยนต์ (กระบะบริษัท 3 คัน)\r\n2.ติดกล้องวงจรปิดออฟฟิศระยอง 2 จุด บริเวณหน้าบ้าน และออฟฟิศ(ให้เห็นออฟฟิศทุกมุม) ', 'ON', 'Account', 'Recommendation', '', '', 'BD', '', '', '', '', '', '', '', '', '', '', '', ''),
(228, '2021-05-21 09:52:12', '( mechanical seal item missing ) เนื่องจากวันที่ 19/05/2021 นำ Mechanical Seal ไปส่งลูกค้าแต่เนื่องจากส่ง Seat ไปไม่ครบ วันที่ 21/05/2021 จึงต้องนำ Seat ไปส่งลูกค้าอีก 1 ชิ้น  ', 'NA', 'QC', 'Delivery Problem', 'Item Missing', 'TT', '', '', '', '', '', 'F-KM-S-S-255-0521-QXX2', '', 'F-KM-A-0929-0820', '', 'THAI COLD ROLLED STEEL SHEET PUBLIC COMPANY LIMITED', '111 Moo 4, Maeramphueng , Bangsaphan , Prachuabkirikhan 77140  Thailand. ', 'KDRO Size 1.875\" QQ/QBKMG', ''),
(239, '2021-06-03 14:35:15', 'กวาดหลังคาออฟฟิศ 3/6/2021', 'ON', 'Account', 'Activity Participation', 'Pictures+Report', '', 'TR', '', '', '', '', '', '', '', '', '', '', '', '03062021143515.pdf'),
(240, '2021-06-04 13:37:18', 'Week20รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', 'Pictures+Report', '', 'TR', '', '', '', '', '', '', '', '', '', '', '', '04062021133718.pdf'),
(241, '2021-06-04 13:37:56', 'Week21รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', 'TR', '', '', '', '', '', '', '', '', '', '', '', '04062021133756.pdf'),
(242, '2021-06-04 13:38:25', 'Week22รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', 'TR', '', '', '', '', '', '', '', '', '', '', '', '04062021133825.pdf'),
(245, '2021-06-21 15:34:33', 'ได้ออเดอร์จาก โรงเรียนอัสสัมชัญ(พระราม2)\r\nOverhaul \"CRANE\" Pump  Serial No. 2122232\r\nเปลี่ยน Mechanical Seal/ Bearing 6308/ Gasket &O-ring Set/ Oil Seal', 'SJ', 'BD', 'Useful Report/Enquiry', 'Enquiry', 'PL', '', '', 'COMPLETE', '', '', '', '', 'S-SR-0-0571-0421', '', '', '', '', ''),
(246, '2021-06-24 16:11:40', 'สั่งงานSM ให้ไปรับ KSB ปั๊มที่ AI สมุทรสาคร 24/6/21 แต่ไม่ไปงานให้และไม่มีการแจ้ง กลับมาออฟฟิศตั้งแต่ 14.30น. ทำให้ลูกค้าต่อว่าทางRS\r\n', 'ON', 'Account', 'Delivery Problem', '', 'SM', 'TR', '', '', '', '', '', '', '', '', '', '', '', ''),
(247, '2021-06-25 00:00:00', '6nd on June Meeting with Allied supreme to\r\nupdate status the job and sales forecast', 'NL', 'Sales', '', '', 'NL', '', '', 'COMPLETE', 'Update with TC Issue Except Thai Polyethylene(TPE)', '', '', '', '', '', '', '', '', '25062021111220.jpeg'),
(248, '2021-07-06 14:00:30', 'Week23รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '06072021140030.pdf'),
(249, '2021-07-06 14:00:51', 'Week24รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '06072021140051.pdf'),
(250, '2021-07-06 14:01:10', 'Week25รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '06072021140110.pdf'),
(251, '2021-07-06 14:01:32', 'Week26รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '06072021140132.pdf'),
(252, '2021-07-06 15:45:25', 'สั่งงานSMรับปั๊มสี่สหายขนส่งให้พี่RS 2/7/2021 แต่ไม่ได้ไปงานและไม่แจ้งไปรับให้อีกที5/7/2021เนื่องจากพี่ปุ๊กโทรตาม', 'ON', 'Account', 'Delivery Problem', '', 'SM', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(253, '2021-07-09 17:04:29', 'ส่งงบการเงินเดือน เมษายน และพฤษภาคม 2564', 'ON', 'Account', 'Financial Statement', '', '', 'ACC', '', '', '', '', '', '', '', '', '', '', '', '09072021170429.jpg'),
(254, '2021-07-12 09:10:20', 'Week27รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12072021091020.pdf'),
(255, '2021-07-14 15:57:11', 'Issued repeat IO so have to cancel IO139/21 ', 'UL', 'Application', 'IO Mistake', 'Document Mistake', 'UL', 'APP', '', 'CANCEL', '', '', 'E-RM-A-S-139-0321-IPX1', '', 'E-RM-P-873-0919', '', 'Thai Plastic and Chemicals Public Company Limited ( Rayong )', '8, I-1 RD, MAP TA PHUT INDUSTRIAL ESTATE, MUANG, RAYONG 21150 THAILAND', 'Spare Parts for \"Robbins & Myers\" Pump Pin Joint Seal P/N RF A1F 6400 Q\'ty 2 pc', '255@14072021160121.pdf'),
(261, '2021-07-23 18:34:21', 'ส่งงบการเงินเดือน มิถุนายน2564', 'ON', 'Account', 'Financial Statement', '', '', 'ACC', '', '', '', '', '', '', '', '', '', '', '', '23072021183421.jpg'),
(262, '2021-07-29 00:00:00', '7nd on July Meeting with Allied supreme to\r\nupdate status the job and sales forecast', 'NL', 'Sales', '', 'Pictures+Report', 'NL', 'Sales', '', 'COMPLETE', '', '', '', '', '', '', '', '', '', ''),
(273, '2021-08-19 13:42:41', 'งาน331-21 ลูกค้าเปิดPO.ใหม่มาทดแทนอันเก่าแล้วส่งมาให้เรา ทางAppจึงเปิดio.ขึ้นมาใหม่ และสั่งสินค้ามาซ้ำ สินค้าจึงต้องเก็บเข้าStock (งานเดิมคือ 195-21)', 'ON', 'Account', 'IO Mistake', '', 'NP', '', '', '', '', '', 'F-KM-A-S-331-0721-IXX2', '', 'F-KM-A-0403-0321', '', 'The Siam Cement ( Kaeng Khoi ) Co.,Ltd.', '33/1 Moo 3 Banpa , Kaeng Khoi , Saraburi 18110 , Thailand', 'KBM7N Size 35 mm Q2Q2VGG', ''),
(280, '2021-08-25 17:46:43', 'ส่งงบการเงินเดือนกรกฏาคม 2564', 'ON', 'Account', 'Financial Statement', '', '', 'ACC', '', '', '', '', '', '', '', '', '', '', '', '280@25082021174836.jpg'),
(281, '2021-08-26 10:15:36', 'Week28รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '26082021101536.pdf'),
(282, '2021-08-26 10:16:05', 'Week30รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '26082021101605.pdf'),
(283, '2021-08-26 10:16:14', 'Week31รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '283@26082021101711.pdf'),
(284, '2021-08-26 10:16:17', 'Week32รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '284@26082021101724.pdf'),
(285, '2021-08-26 10:17:37', 'Week33รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '285@26082021102136.pdf'),
(287, '2021-09-07 12:00:00', 'Volute Casing 3x1.5-6(AB) model 811 leaking at drain\r\nSeal KJ891 1.375 BUVGG leaking', 'KN', 'BD', 'QC and SV Pass Test', 'Leakage Problem', 'AM', 'SV@TSS,AM', '', 'COMPLETE', 'สาเหตุ : เกิดจากการกัดกร่อนของรอยแยก และการเสียดสีจากของแข็งที่ไม่ละลาย\r\n', 'problem fixed by welding', 'F-GW-A-S-372-1020-QXX1', '', 'F-GW-0-1048-0820', '', 'Sime Darby Oils Nonthaburi Co., Ltd.', '39/6, ถนน ติวานนท์ อำเภอปากเกร็ด นนทบุรี 11120', 'ANSI Pump Model 3x2-10 (A60), 1.5x1-6 (AA), 3x1.5-6 (AB)', '287@07092021120615.pdf'),
(289, '2021-09-18 01:30:25', 'Bearing Unit APP3 leaking', 'WJ', 'Sales', 'QC and SV Pass Test', 'Leakage Problem', '', 'Sales', '', 'CANCEL', 'สาเหตุ : เกิดจากความผิดพลาดของลูกค้าที่เติมน้ำมันเกินที่กำหนดไว้', 'ชี้แจ้งให้ลูกค้าเติมน้ำมันให้พอดีกึ่งกลางตาแมว', 'F-KS-A-S-214-0421-IXX3', '8010352193', 'F-KS-1-0576-0421', '', 'Phoenix Pulp & Paper Public Company Limited', '99 Moo 3, Kudnamsai Sub-district, Nampong District, Khon Kaen 40310 Thailand', 'KOP Interchangeable Spare Parts with Sulzer Pump Model : APP31-150 Bearing unit APP3 Q\'ty 1', '289@18092021212657.pdf'),
(290, '2021-09-24 19:59:33', 'ส่งงบการเงินเดือน สิงหาคม 2564', 'ON', 'Account', 'Financial Statement', '', '', 'ACC', '', '', '', '', '', '', '', '', '', '', '', '24092021195933.jpg'),
(292, '2021-09-30 14:46:46', 'การกดยกเลิกใบเบิกในระบบ IO 248-21 ได้มีการกดยกเลิกใบเบิกสินค้าที่ไม่ได้มีการยกเลิกจริง และสินค้าได้ทำการส่งไปเรียบร้อยแล้ว ', 'TP', 'Account', 'IO Mistake', 'Document Mistake', 'NP', '@NA', '', '', 'คาดว่าเกิดการยกเลิกใบเบิก แต่ไม่ส่งต่อทางบัญชี ได้มีการยกเลิกใบเบิกตั้งแต่วันที่ 2/6/2021 แต่ให้เอกสารวันที่ 4/10/2021 เอกสารฉบับนี้มีผลกับการปิดงบ และสต๊อกสินค้า ', '', 'F-KP-A-S-248-0521-AXX1', '', 'F-KP-A-0427-0321', '', 'Patum Vegetable Oil Company Limited', '29/3 Moo 6 Pathumthani- Ladlumkaew Rd. Pathumthani 12140, Thailand', '9196 M1 3x4-8G OCM XXA  Rev.2', ''),
(293, '2021-10-02 14:35:09', 'Week35รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '02102021143509.pdf'),
(294, '2021-10-02 14:35:37', 'Week36รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '02102021143537.pdf'),
(297, '2021-10-02 14:36:04', 'Week37รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '02102021143604.pdf'),
(298, '2021-10-02 14:36:24', 'Week38รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '02102021143624.pdf'),
(299, '2021-10-02 14:36:44', 'Week39รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '02102021143644.pdf'),
(300, '2021-10-02 18:42:22', 'กิจกรรมBig Cleaning Day 28/8/2021\r\nพนักงานเข้าร่วมทั้งสิ้น\r\n39 คน จาก 41 คน (พนักงานที่ไม่เข้าร่วมคือ TT, NL )', 'ON', 'Account', 'Activity Participation', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(301, '2021-10-07 08:43:31', 'เนื่องจากสินค้า IO 464-21 สินค้าเข้ามาตั้งแต่วันจันทร์ช่วงเย็นๆ แต่เอกสาร IO ยังไม่ได้อัพโหลด ทาง QC ไม่สามารถตรวจสอบสินค้าได้ ทำให้สินค้ายังไม่ได้ทำการ QC และจัดส่งออกไปไม่ได้', 'NA', 'QC', 'IO Not Available', 'Not In Time', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(302, '2021-10-12 18:31:20', 'Week40รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12102021183120.pdf'),
(304, '2021-10-26 21:32:44', 'ส่งงบการเงินเดือนกันยายน 2564', 'ON', 'Account', 'Financial Statement', '', '', 'ACC', '', '', '', '', '', '', '', '', '', '', '', '26102021213244.jpg'),
(309, '2021-11-04 00:00:00', 'เนื่องจากวันศุกร์ที่ 5/11/2021 จะมีสินค้าในประเทศงาน IO 308-21 มาส่งที่บ.แล้วต้องนำส่งสินค้าให้ลูกค้าวันจันทร์ ทางจัดซื้อไม่มีการแจ้งล่วงหน้า แจ้งมาในวันเวลาที่กระชั้นชิดเกินไป ', 'NA', 'QC', 'Communication Problem', 'Not In Time', 'OJ', '', '', '', '', '', 'F-KB-L-S-308-0621-IXX3', '', 'F-KB-0-0774-0621', '', 'Phoenix Pulp & Paper Public Company Limited', '99 Moo 3, Kudnamsai Sub-district, Nampong District, Khon Kaen 40310 Thailand', 'Spare Parts for \"KSB\" Pump Model : CPK C4 100-315 S/N : 5111032117 (Shaft with Keys Mat SS 1.462 P/N : 210 & Shaft sleeve P/N : 524)', ''),
(310, '2021-11-09 19:04:34', 'Week34รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '09112021190434.pdf'),
(311, '2021-11-09 19:04:41', 'Week41รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '311@09112021190525.pdf'),
(312, '2021-11-09 19:04:42', 'Week42รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '312@09112021190548.pdf'),
(313, '2021-11-09 19:06:08', 'Week43รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '09112021190608.pdf'),
(314, '2021-11-09 19:06:31', 'Week44รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '09112021190631.pdf'),
(316, '2021-11-15 15:43:22', 'Oil lubrication from Mechanical Seal of Allprime Self-Priming Pump XS-6 into pump volute (sent to customer 22/2/2021)', 'KN', 'BD', 'Customer Complaint', 'Leakage Problem', 'TT', 'QC@SK', '', 'COMPLETE', 'คาดว่าเกิดจากการ Run Dried เนื่องจากลูกค้าลืมเติมน้ำเข้าไปในห้องปั๊ม / elastomer ของ O-Ring ใน Mech Seal เสื่อม', 'เปลี่ยน O-ring ของ Mech Seal', 'P-AP-A-S-448-1120-APX1', '', 'P-AP-0-0909-0720', '', 'Double A (1991) Public Company Limited', '1 Moo 2 Thatoom , Srimahaphote , Prachinburil 25140 , Thailand', '\"All Prime\" Self-Priming Centrifugal Pump XS-6', '316@29112021170702.pdf'),
(319, '2021-11-23 14:47:45', 'มีความเข้าใจผิดในการสื่อสารเกี่ยวกับ Model Pump เนื่องจากลูกค้าเข้าใจผิดว่าเป็น Oppose Impeller แต่สินค้าที่มาจริงไม่ใช่', 'KN', 'BD', 'Customer Complaint', 'Wrong Information', 'WR', 'Sales@WR', '', 'COMPLETE', 'มีความเข้าใจผิดในการนำเสนอรุ่น Multistage Pump กับลูกค้า เนื่องจากลูกค้าต้องการแก้ปัญหา Vibration และทางเราเสนอเป็น Horizontal Multistage Pump ไป แต่ไม่ใช่รุ่นที่ลูกค้าต้องการ', 'ดำเนินการทบทวนข้อตกลงใหม่ในเรื่องของสินค้า โดยการเสนอให้ลูกค้าลองใช้ก่อน และถ้าค่า Vibration ไม่เกิน 2 mm/s ลูกค้าจะยอมรับสินค้า ', 'C-KP-A-S-087-0221-QXX1', '', 'C-KP-0-1332-1120', '', 'SCG Cement Company Limited. Branch 00017 Saraburi', '42 ม.2 ถ.หน้าพระลาน-บ้านครัว ต.เขาวง อ.พระพุทธบาท จ.สระบุรี 18120', '\"KOP\" Horizontal Multistage Pump Model : KSMA 150-168 125-27 / 9', '319@23112021150042.pdf'),
(320, '2021-11-29 14:09:16', 'Week45รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '29112021140916.pdf'),
(321, '2021-11-29 14:09:35', 'Week46รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '29112021140935.pdf'),
(322, '2021-11-29 14:09:52', 'Week47รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '29112021140952.pdf'),
(329, '2022-01-05 14:22:10', 'กิจกรรมท่องเที่ยวประจำปี 2564 5-7/11/2564\r\nทริปชุมพร พนักงานเข้าร่วม 30 จาก 40 คน คิดเป็น 75%', 'ON', 'Account', 'Activity Participation', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '05012022142210.pdf'),
(330, '2022-01-05 14:24:10', 'กิจกรรมงานเลี้ยงปีใหม่ 24/12/2564\r\nคนเข้าร่วม 40 จาก 41 คน คิดเป็น 97.56%', 'ON', 'Account', 'Activity Participation', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '05012022142410.pdf'),
(331, '2022-01-05 17:41:59', 'Week48รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '05012022174159.pdf'),
(332, '2022-01-05 17:42:22', 'Week49รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '05012022174222.pdf'),
(333, '2022-01-05 17:42:44', 'Week50รายงานการตรวจสภาพรถยนต์', 'ON', 'Account', 'Car Checking', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '05012022174244.pdf'),
(344, '2022-01-14 08:50:11', 'IO 465-21 ลงลูกค้าใน PEC System ผิดเป็น A-0104 AGC Chemicals (Thailand) Co., Ltd. (สมุทรปราการ) \r\nที่ต้องเป็น A-0002 AGC Chemicals (Thailand) Co., Ltd. (ระยอง) <- ตามที่อยู่หน้า IO', 'KN', 'BD', 'IO Mistake', 'Wrong Information', 'NP', '', '', '', '', '', 'E-KS-A-S-465-0921-IXX3', '', 'E-KS-1-1134-0821', '', 'AGC Chemicals (Thailand) Co., Ltd.', '202 Moo 1 Suksawasdi Rd., T. Parkklongbangplakod, A. Prasamutjedi, Samutprakan 10290, Thailand', '\"KOP\" Spare Parts (Equivalent to Durco Mark III Pump Model : 2K 2x1-10A) Impeller Type : Reverse vane Diameter : 222 mm Material : Nickel 200', ''),
(346, '2022-01-18 14:39:39', '14/1/2565 SMลืมหยิบงาน 412-21 INEOS ไปส่งให้ลุกค้า \r\nลูกค้าจึงให้ส่งEMSไปให้', 'ON', 'Account', 'Delivery Problem', '', 'SM', 'TR', '', '', '', '', '', '', '', '', '', '', '', ''),
(347, '2022-01-18 15:08:23', 'อ่านรายละเอียดงานไม่ครบถ้วน ทำให้รับเอกสารกลับมาไม่ครบ ต้องไปรับใหม่อีกครั้ง (ธ.กสิกร ถนนประชาอุทิศ) ', 'WS', 'Account', 'Delivery Problem', '', 'SM', 'TR', '', '', '', '', '', '', '', '', '', '', '', ''),
(372, '2022-01-21 11:33:58', 'ทำชั้นวางปั๊ม', 'SJ', 'BD', 'Creativity', '', '', '@PL', '', 'COMPLETE', '', '', '', '', '', '', '', '', '', '21012022113358.jpg'),
(373, '2022-01-25 15:27:05', '25/1/22 io.604-21 SM นำของไปส่งแต่ลูกค้าตีกลับ เนื่องจาก\r\n1.item9 ขนาดสินค้าผิดไซส์ คาดว่าจะผิดมาจากโรงงาน\r\n2.item 12 โรงงานไม่ได้แยกSetมาให้ และไม่สามารถแยกได้ว่าเซทไหนมีอะไรบ้างไม่ลงตัว\r\nงานนี้ฝ่ายขาย TSU รับทราบเรียบร้อยก่อนนำของกลับ', 'ON', 'Account', 'Delivery Problem', 'Item Mistake', '', '', '', '', '', '', 'C-KS-A-S-604-1221-IPX3', '', 'C-KS-A-1118-0821', '', 'TPI Polene Public Company Limited (Concrete Roof Tiles Plant)', '99 Moo 7, Tambol Ban Kang, Amphur Chaloem Phrakiat, Saraburi 18260', 'KOP Interchangeable Spare Parts with Warman Pump ', ''),
(386, '2022-04-05 11:38:31', 'Automatic Pipe Cert + Report Generating', 'KN', 'BD', 'Company Development', '', 'TS', 'BD@KN,CA', '', '', 'P\'TS สร้างระบบการ generate Report + Certificate สำหรับงานท่อ เพื่อสะดวกต่อการทำงานท่อ', '', '', '', '', '', '', '', '', ''),
(387, '2022-04-05 14:05:31', 'io. 1096-22 Patum Vegetable Oil \r\nQCpass18/3/22 Due Date 24/3/22 แต่ส่งของ 28/3/22 \r\n(ON แพลนงานหลุดทำให้Late)', 'ON', 'Account', 'Delivery Problem', '', 'ON', 'TR', '', '', '', '', '', '', '', '', '', '', '', ''),
(388, '2022-04-06 18:24:49', '1121-22 Circular Energy \r\nส่ง 30/3/22 แต่ลูกค้าให้นำกลับ เนื่องจากต้องการมอเตอร์ด้วย จึงต้องนำปั๊มกลับมาก่อน\r\nสรุปงานนี้ยกเลิก PO', 'ON', 'Account', 'Delivery Problem', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(389, '2022-04-07 17:56:05', 'Zendesk Messaging System', 'KN', 'BD', 'Company Development', '', 'TS', 'BD,Sales', '', '', 'P\' TS สร้างระบบเชื่อมต่อ Zendesk เข้ากับ PEC System เพื่อให้ Sales สามารถติดต่อกับลูกค้าที่ทักเข้ามาผ่าน Facebook, Website ได้ในที่เดียว ', '', '', '', '', '', '', '', '', ''),
(390, '2022-04-07 17:57:52', 'Budget Monitoring System', 'KN', 'BD', 'Company Development', '', 'TS', 'ACC,BD', '', '', 'P\' TS สร้างระบบดูงบประมาณมาเพื่อให้ฝ่ายบัญชี และผู้บริหารสามารถควบคุมดูแลงบประมาณประจำปีได้', '', '', '', '', '', '', '', '', ''),
(391, '2022-04-07 17:59:55', 'Pump Sets Database  ', 'KN', 'BD', 'Company Development', '', '', 'BD,QC,Sales,Store', '', '', 'P\' TS สร้างระบบขึ้นมาเพื่อรวบรวมรายละเอียดของ Pump Sets ที่ Khun TT ส่งมาให้ เพื่อเป็นประวัติที่พนักงานสามารถเข้าถึงได้', '', '', '', '', '', '', '', '', ''),
(392, '2022-04-08 02:18:50', 'Sales Target by Products', 'KN', 'BD', 'Company Development', '', 'KN', 'Sales', '', '', 'ระบบดึงข้อมูลการซื้อ ขายกับ Suppliers ทั้งออกมาจาก PEC System เพื่อแสดงผลให้ Sales วิเคราะห์ต่อ', '', '', '', '', '', '', '', '', ''),
(393, '2022-04-08 02:21:11', 'Training System', 'KN', 'BD', 'Company Development', '', 'KN', 'HR', '', '', 'ใช้ห้อง Studio ในการอัดวิดีโอ Training และเก็บคลิปวิดีโอลงใน One Drive เพื่อสนับสนุนแต่ละฝ่ายในบริษัท', '', '', '', '', '', '', '', '', ''),
(394, '2022-04-08 02:25:29', 'Improving PEC Form 2022', 'KN', 'BD', 'Company Development', '', 'KN', 'ACC,APP,BD,HR,LO,PC,QC,Sales,Store,SV,TR,TS', '', '', 'เพิ่มเติมเอกสาร Purchase Request, Repair Request, Customer Complaint, QC Job Tracking, และอัพเดท Service Request ให้สามารถดึงข้อมูลจำนวนวันที่ทำงานมาได้', '', '', '', '', '', '', '', '', ''),
(395, '2022-04-08 03:06:15', 'ใบเข้างาน Service (เดือน 2)', 'KN', 'BD', 'Creativity', '', 'PL', '', '', '', 'ใช้เพื่อการลงบันทึกรายละเอียดการเข้างาน และให้ลูกค้าเซ็นรับรอง ในกรณีที่ไม่มี Invoice', '', '', '', '', '', '', '', '', ''),
(396, '2022-04-18 08:47:10', 'รถทะเบียน ฒข 8395 หม้อลมปั๊มเบรกเสีย ณ จังหวัดสระบุรี', 'KN', 'BD', 'Car Problem', '', 'KN', 'TR', '', '', '', '', '', '', '', '', '', '', '', ''),
(399, '2022-07-07 13:59:14', 'กิจกรรมกีฬาสี 2/7/22 พนักงานเข้าร่วม 45 จาก 47 ท่าน คิดเป็น  95.74% (คนที่ไม่เข้าร่วม WR/SI)', 'ON', 'Account', 'Activity Participation', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(400, '2022-07-07 14:05:47', 'กิจกรรมBig Cleaning Day 5/3/22    พนักงาน 40 คน เข้าร่วม 37 คิดเป็น 92.5% (คนที่ไม่เข้าร่วม WR/KP/MO)\r\n', 'ON', 'Account', 'Activity Participation', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(401, '2022-07-07 16:26:13', '29/6/22 รถฟอร์ด 3กพ8395 ทีมเซอร์วิสขับไปขอนแก่นแล้วเลื่อนกระจกขึ้นไม่ได้\r\n6/7/22 นำรถเข้าเช็คที่อู่คุณวุฒิ', 'ON', 'Account', 'Car Problem', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(402, '2022-07-12 00:00:00', 'Supplier meeting Document Update MOM and Monthly update from ASC', 'CK', 'Sales', '', '', 'CK', '', '', 'COMPLETE', 'Oversea', '', '', '', '', '', 'Allied supreme', '', 'Supplier meeting', ''),
(403, '2022-07-18 13:46:17', 'งานIO457-21 เอกสาร MRT-050-2021 คืนสินค้าผิดไซต์ และเอกสาร MRT-009-2022 คืนสินค้าซ้ำซ้อนกัน ทั้งสองชุดเป็นสินค้าเหมือนกัน แต่ความยาวของสินค้าไม่เหมือนกัน ', 'TP', 'Account', 'IO Mistake', 'Document Mistake', 'NP', 'APP', '', '', '', '', '', '', '', '', '', '', '', '18072022134617.pdf'),
(404, '2022-07-22 15:40:28', 'โดนค่าปรับสินค้าล่าช้าเกินกว่ากำหนด เนื่องจาก กำหนดส่งสินค้า : วันที่ 30/4/2022  สินค้าเข้าถึงบริษัท : วันที่ 5/5/2022   QC ผ่าน :  วันที่ 6/5/2022 (วันศุกร์)  และทางจัดส่งดำเนินการส่งสินค้า : วันที่ 9/5/2022 (วันจันทร์) จึงทำให้มีค่าปรับจำนวน 770.40 บาท ', 'DK', 'Account', 'Delivery Problem', 'Not In Time', '', '', '', '', '', '', 'C-KS-A-S-1138-0422-QPX1', '', 'C-KS-1-0374-0422', '', 'Bangchak Bioethanol Co,. Ltd', '96/10-11, Koh Khanun, Phanom Sarakham District, Chachoengsao 24120', 'KOP 9196 spare parts for 3x4-8', ''),
(405, '2022-07-27 10:39:10', 'Cost Calculation สำหรับงานท่อ  ควรมี IO 513/21,1113/22,1153/22,299/21 ไม่มี Cost', 'JH', 'Account', 'IO Mistake', 'Not In Time', 'NP', 'APP', '', 'IN PROCESS', '', '', 'V-AS-S-S-1153-0422-IPXT', '', 'V-AS-0-0402-0422', '', 'Covestro (Thailand) Co., Ltd.', 'No. 4-4/1, I-8 Road,Map Ta Phut Industrial Estate, T.Map Ta Phut, A. Muang,Rayong 21150', 'PTFE lined pipe 2\"x305mm, Solid spacer 3\"x15mm', ''),
(408, '2022-08-18 14:31:39', 'โดนค่าปรับ เนื่องจากสินค้าเข้าล่าช้า เกินกว่ากำหนด กำหนดส่งสินค้า 03/06/2022 สินค้าเข้าถึงบริษัทฯ 28/06/2022\r\nสินค้ามีปัญหา QC แก้ไข แก้ไขแล้วเสร็จ 04/07/2022 จัดส่งสินค้า 06/07/2022 ค่าปรับจำนวนเงิน 10,777.80 ', 'WS', 'Account', 'Delivery Problem', 'Not In Time', '', '', '', '', '', '', 'C-KS-A-S-1129-0322-IPX3', '', 'C-KS-1-0230-0322', '', 'TPI Polene Public Company Limited (Cement Plant)', '299, Moo 5, Mittraphap Road Km.134, Tabkwang Sub-District, Kaeng Koei District, Saraburi 18260', 'KOP Interchangeable Spare Parts with METSO VASA 335-100 / 1. Expeller Ring 2. Expeller Cover 3. Expeller 4. Shaft Sleeve 5. Expeller Housing 6. Gland 7. Adapter', ''),
(409, '2022-08-22 09:55:27', 'งานปั๊ม KOP Max3 ทางช่างทำ Mech Seal แตก 1 ตัว', 'KN', 'BD', '', 'Item Mistake', '', '', '', '', '', '', 'E-KP-A-S-1026-0122-AXX3', '', 'E-KP-1-0021-0122', '', 'AGC Chemicals (Thailand) Co.,Ltd.', '4 Soi G-12, Pakorn Songkrohrad Rd., Hemaraj Eastern Industrial Estate (Maptaphut), T. Map-Ta-Phut, A. Muang-Rayong, Rayong Province 21150, Thailand', 'MAX3 1M 1.5×1-8 R1A 12A c/w \"ABB\" high efficiency motor (IE2) 7.5 kW, 2900 rpm,', ''),
(410, '2022-09-06 10:53:21', 'โดนค่าปรับ เนื่องจากสินค้าเข้าล่าช้า เกินกว่ากำหนด\r\nกำหนดส่งสินค้า 06/07/2022 สินค้าเข้าถึงบริษัทฯ\r\n19/07/2022\r\nสินค้ามีปัญหา QC Complain แก้ไขแล้วเสร็จ 26/07/2022\r\nจัดส่งสินค้า 29/07/2022 มีทำจดหมายเลื่อนการจดส่งสินค้า 01/08/2022 ค่าปรับจำนวนเงิน 3,588', 'WS', 'Account', 'Delivery Problem', 'Not In Time', '', '', '', '', '', '', '1211-22', '', '', '', '', '', '', ''),
(411, '2022-09-14 09:54:32', 'เอกสารเซ็นนำของออกจาก Store ในกรณีนำไปส่งลูกค้า ', 'KN', 'BD', 'Creativity', '', 'NA', 'QC,Store,TR', '', 'COMPLETE', '', '', '', '', '', '', '', '', '', ''),
(412, '2022-09-21 00:00:00', 'โดนค่าปรับ เนื่องจากส่งสินค้าล่าช้า \r\nกำหนดส่งสินค้า 09/08/2022 สินค้าเข้าถึงบริษัทฯ\r\n09/08/2022 (PO. 529-999-0722)\r\nQC แจ้งสินค้าพร้อมส่ง 16/08/2022\r\nจัดส่งสินค้า 19/08/2022\r\nค่าปรับจำนวนเงิน 840.00 บาท', 'WS', 'Account', 'Delivery Problem', 'Not In Time', '', '', '', '', '', '', 'C-KS-S-S-1276-0722-IPX1', '', 'C-KS-0-0762-0722', '', 'BBGI BIO ETHANOL (Chachoengsao) COMPANY LIMITED', '96/10-11, Koh Khanun, Phanom Sarakham District, Chachoengsao 24120', '\"KOP\" Interchangeable Spare Parts with \"Goulds\" 3196 Pump Open Impeller for Pump model : 3x4-13 Material : CD4MCu. Qty 3 EA', ''),
(413, '2022-09-29 15:49:33', 'แจ้งเรื่องรหัสสินค้าไม่ตรงกับหน้า IO กับ ใน SO ค่ะ สินค้ารายการที่ 1 หน้าไอโอเป็นรหัส 53RMB2FCDY4SPA-1 แต่หน้า SO ใบระบบ IBIZ เป็นรหัส 53RMB2FCDY4SPA ตามเอกสวรแนบค่ะ', 'TP', 'Account', '', 'Wrong Information', 'OJ', '', '', '', '', '', '', '', '', '', '', '', '', '29092022154933.pdf'),
(414, '2022-10-01 15:47:18', 'ช่างทำ Bearing แตก ', 'KN', 'BD', '', 'Item Mistake', 'NT', 'SV', '', '', '', '', '', '', '', '', '', '', '', ''),
(416, '2022-10-05 11:30:34', '18/8/22 พี่ใหม่ขับรถฟอร์ด ขับรถขนของและไปรับช่างที่สนามบินขอนแก่น ระหว่างทางเกิดปัญหาท่อน้ำมันพาวเวอร์เสีย ทำให้พวงมาลัยแข็ง โดยไม่ได้มีอาการล่วงหน้ามาก่อน จึงเข้าแก้ไขที่อู่ใกล้ๆและไปงานต่อ\r\n', 'ON', 'Account', 'Car Problem', 'Car Problem', 'TR', '', '', 'COMPLETE', '', '', '', '', '', '', '', '', '', '05102022113034.pdf'),
(417, '2022-10-05 11:36:26', '21/9/22  ทศNTPใช้รถสเปซขาว 8กข5810 เดินทางไประยอง เจอน้ำท่วมรถดับเคลมประกันส่งซ่อมอู่ใกล้ๆ รถจะเสร็จไปรับได้ เสาร์ที่8/10/22 ', 'ON', 'Account', 'Car Problem', 'Car Problem', 'NTP', '', '', 'IN PROCESS', '', '', '', '', '', '', '', '', '', ''),
(418, '2022-10-05 12:01:41', '23/9/22 TJ วีออสขาว 9กญ8395 แบตฯหมด ทำการเปลี่ยนแบตเรียบร้อย', 'ON', 'Account', 'Car Problem', 'Car Problem', 'TJ', '', '', 'COMPLETE', '', '', '', '', '', '', '', '', '', '05102022120141.jpg'),
(419, '2022-10-05 13:25:40', 'มีสินค้าเข้าแต่ไม่มีการลงตารางแผนงานของเข้า / แจ้งแล้วตั้งแต่วันที่ 04/10/2022 แต่ไม่มีการลงรายละเอียดให้ครบ ไม่ชัดเจน (ขาด ชื่อซัพพลายเออร์ วันที่ของเข้า จำนวนของที่เข้า ชนิดงาน)', 'NA', 'Store', '', 'Document Mistake', 'OJ', '', '', 'PENDING', 'ถ้าไม่แก้ไขภายในวันที่ 05/10/2022 จะมีการแจ้งไปอีกครั้ง ', '', 'STOCK', '', '', '', '', '', '', '05102022132540.jpg'),
(420, '2022-10-05 13:29:41', '29/9/22 Viosขาว9กญ8395 ทีมงานเซอร์วิสช่างสมพงษ์ไปขอนแก่นขับรถตกหลุมยางแตก ล้อแม็คคด ตอนนี้ใช้ยางสำรองอยู่ \r\n5/10/22 พี่ใหม่นำแมกซ์ไปทำให้กลับมาใช้งานได้ และจะนำไปเปลี่ยนยางที่บี-ควิกทีหลัง', 'ON', 'Account', 'Car Problem', 'Car Problem', 'NT', '', '', 'IN PROCESS', '', '', '', '', '', '', '', '', '', '05102022132941.jpg'),
(421, '2022-10-05 14:41:01', '9/9/22 รถIsuzuฒข8395พี่ไอซ์นำรถไปฉะเชิงเทรา/ปราจีนบุรี รถมีอาการสั่นและดับกลางทาง รถมายกไปอู่คุณวุฒิ\r\n16/9/22 ซ่อมจากอู่คุณวุฒิเสร็จ พี่ใหม่และลุงตาขับไประยองดับกลางทางด้วยอาการเดิม รถมายกไปอู่คุณวุฒิอีกรอบ', 'ON', 'Account', 'Car Problem', 'Car Problem', 'SM', '', '', 'COMPLETE', '', '', '', '', '', '', '', '', '', '05102022144101.pdf'),
(423, '2022-10-06 14:25:22', 'คีย์ SO ผิด ดึงรหัสสินผิด \r\nทำให้ระบบ STOCKผิดพลาด ', 'WS', 'Account', '', 'Document Mistake', 'OJ', '', '', '', '', '', '1321-22', '', '', '', '', '', '', '423@06102022142830.pdf'),
(424, '2022-10-06 14:35:54', 'ใส่รหัสสินค้าหน้า IO ผิด ทำให้ตอนคีย์รหัสสินค้าเข้าระบบผิด Stock ผิดพลาด ', 'WS', 'Account', 'IO Mistake', 'Wrong Information', '', '', '', 'IN PROCESS', '', '', '', '', '', '', '', '', '', '424@29012023031936.pdf'),
(425, '2022-10-07 16:11:33', 'OJ เปิด po ไม่ตรงกับใยขอซื้อซึ้งใส่ราคาไม่ตรงกับใบขอซื้อ', 'MS', 'Service', 'PO Problems Local', 'Document Mistake', 'OJ', '', '', '', '', '', '', '', '', '', '', '', '', '07102022161133.pdf'),
(426, '2022-10-07 16:24:18', 'UNP Polyvalves WCB+PFA Lined Ball Valve Size DN50 Missing from Stock', 'KN', 'BD', 'Stock Problems', 'Item Missing', '', '', '', 'PENDING', '', '', '', '', '', '', '', '', '', ''),
(427, '2022-10-10 10:48:55', 'นำเอกสารค่านายหน้า เข้าระบบ', 'WS', 'Account', '', '', 'OJ', '', '', '', '', '', '1375-22', '', '', '', '', '', '', '427@10102022104914.pdf'),
(428, '2022-10-14 16:31:48', 'OJ เพิ่มรหัสสินค้า แต่เลือกการคิดต้นทุนผิด จากที่ต้องใช้ FIFO แต่ OJ เลือก Average \r\n ', 'TP', 'Account', '', 'Document Mistake', 'OJ', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(429, '2022-10-12 00:00:00', 'โดนค่าปรับ เนื่องจากส่งสินค้าล่าช้า\r\nกำหนดส่งสินค้า 30/08/2022 \r\nสินค้าเข้าถึงบริษัทฯ 06/09/2022 \r\nQC แจ้งสินค้าพร้อมส่ง 07/09/2022\r\nจัดส่งสินค้า 09/09/2022\r\nค่าปรับจำนวนเงิน 1,840.00 บาท (10 วัน/0.2%)', 'WS', 'Account', 'Delivery Problem', 'Not In Time', '', '', '', '', '', '', '1297-22', '', '', '', '', '', '', ''),
(431, '2022-10-27 09:33:13', 'IO 1108-22 ใส่ข้อมูลชื่อบริษัท ผิดใน IO Report Acess  OJ คีย์เป็นสยามคราฟท์ แต่จริงชื่อลูกค้าคือ สยามอุตสาหกรรมวัสดุทนไฟ \r\n(งานP\'JH )', 'DK', 'Account', '', 'Document Mistake', 'OJ', '', '', '', '', '', '', '', '', '', '', '', '', '27102022093313.pdf'),
(432, '2022-10-27 09:36:53', 'IO 1240-22 สยามคราฟท์  ใน IO Report Acess คีย์ต้นทุนผิดจาก 15,977 เป็น 5,975 (งาน P\'JH)', 'DK', 'Account', '', 'Document Mistake', '', '', '', '', '', '', '', '', '', '', '', '', '', '432@31102022105828.pdf'),
(482, '2023-01-29 15:22:14', 'test', 'TR1', 'BD', 'Meet Overall Target 45M/Q', 'Meet Overall Target 45M/Q', '', '', '', '', '', '', '', '', '', '', '', '', '', '482@06022023150714.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `io_report`
--

CREATE TABLE `io_report` (
  `io_id` int(11) NOT NULL,
  `io_date` datetime NOT NULL,
  `io_number` int(11) NOT NULL,
  `io_year` varchar(5) NOT NULL,
  `io_no` varchar(50) NOT NULL,
  `customer_po` varchar(100) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `des_cription` varchar(300) NOT NULL,
  `price` int(15) NOT NULL,
  `customer_code` varchar(10) NOT NULL,
  `sales` varchar(10) NOT NULL,
  `pec_group` varchar(10) NOT NULL,
  `issue_by` varchar(10) NOT NULL,
  `exchange` decimal(10,2) NOT NULL,
  `currency` varchar(5) NOT NULL,
  `margin` decimal(10,2) NOT NULL,
  `margin_q` decimal(10,2) NOT NULL,
  `credit` int(11) NOT NULL,
  `product_code` varchar(5) NOT NULL,
  `remarks` varchar(300) NOT NULL,
  `remarks1` text NOT NULL,
  `delivery` datetime NOT NULL,
  `quotation_no` varchar(100) NOT NULL,
  `purpose` varchar(50) NOT NULL,
  `est_cost` int(15) NOT NULL,
  `term` varchar(100) NOT NULL,
  `io_status` varchar(30) NOT NULL,
  `po_receive` datetime NOT NULL,
  `term1` varchar(20) NOT NULL,
  `term2` varchar(20) NOT NULL,
  `term3` varchar(20) NOT NULL,
  `io_order` int(1) NOT NULL,
  `seal1` varchar(100) NOT NULL,
  `seal2` varchar(100) NOT NULL,
  `rev` int(2) NOT NULL,
  `prev_delivery` datetime NOT NULL,
  `io_ready` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `io_report`
--

INSERT INTO `io_report` (`io_id`, `io_date`, `io_number`, `io_year`, `io_no`, `customer_po`, `customer`, `des_cription`, `price`, `customer_code`, `sales`, `pec_group`, `issue_by`, `exchange`, `currency`, `margin`, `margin_q`, `credit`, `product_code`, `remarks`, `remarks1`, `delivery`, `quotation_no`, `purpose`, `est_cost`, `term`, `io_status`, `po_receive`, `term1`, `term2`, `term3`, `io_order`, `seal1`, `seal2`, `rev`, `prev_delivery`, `io_ready`) VALUES
(1900, '2022-08-10 08:43:36', 1316, '2022', 'M-KM-S-S-1316-0822-IXXT', 'ลูกค้าเซ็นต์คอนเฟิร์มใบเสนอราคา', 'N.I.M. Co., Ltd.', 'KSGNZ size 32 mm Material BQVGG', 12000, 'N-0020', 'NTP', 'MS', 'NP', '39.00', 'USD', '73.67', '50.54', 16800, '', '', '', '2022-08-17 00:00:00', 'M-KM-0-0732-0722', '', 0, '', 'DELIVERED ADVANCE -6 days', '2022-08-10 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-08-17 00:00:00', '2022-08-11 00:00:00'),
(1901, '2022-08-10 15:23:25', 1317, '2022', 'P-KS-A-S-1317-0822-IXX2', '5000088350', 'Thai Paper Co., Ltd. ( วังศาลา )', 'KOP Spare Parts equivalent to Sulzer pump 1. Bearing Unit for APP2 (UBC Bearing Unit, Oil Lubrication)', 39000, 'T-0015', 'JN', 'PW', 'UL', '38.00', 'USD', '20.00', '20.00', 39000, '', '', '1:Bearing Unit (UBC Bearing, Oil lube) for APP2, P/N: , MAT: , PUMP:Sulzer , MODEL:APP2 , UNIT PRICE:39000 , QTY:1 / ', '2022-11-28 00:00:00', 'P-KS-0-0888-0822', '', 0, '', 'MARGIN REMAIN -82 days', '2022-08-10 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-11-28 00:00:00', '2022-08-11 00:00:00'),
(1902, '2022-08-10 15:25:56', 1318, '2022', 'P-KS-A-S-1318-0822-IXX2', '5000087898', 'Siam Kraft Industry Co., Ltd ( Ban Pong )', 'KOP Spare Part for Self Priming Pump equivalent to GR pump model : U4B60S-B  Impeller Wear Plate Seal Plate', 164000, 'S-0060', 'JN', 'PW', 'UL', '37.00', 'USD', '48.02', '25.00', 246000, '', '', '1:Impeller , P/N: , MAT:SS304 , PUMP:Gormann-rupp , MODEL:U4B60S-B , UNIT PRICE:37000 , QTY:2 /2:Wear Plate , P/N: , MAT:SS304 , PUMP:Gormann-rupp , MODEL:U4B60S-B , UNIT PRICE:19000 , QTY:2 /3:Seal Plate , P/N: , MAT:SS304 , PUMP:Gormann-rupp , MODEL:U4B60S-B , UNIT PRICE:26000 , QTY:2 /', '2022-12-06 00:00:00', 'P-KS-0-0889-0822', '', 0, '', 'MARGIN REMAIN -90 days', '2022-08-10 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-12-06 00:00:00', '2022-08-11 00:00:00'),
(1903, '2022-08-10 15:28:33', 1319, '2022', 'P-KS-A-S-1319-0822-IXX2', '5000087899', 'Siam Kraft Industry Co., Ltd ( Ban Pong )', 'KOP Interchangeable Spare Parts with Sulzer Pump model : APP53-200 Serial no. 100192856 Casing Cover Material : A216 Grade WCB (Carbon Steel) Item code : 1420540146', 73000, 'S-0060', 'JN', 'PW', 'UL', '37.00', 'USD', '45.62', '40.00', 109500, '', '', '1:Casing Cover Item code 1420540146 , P/N: , MAT:A216 Grade WCB (Carbon Steel) , PUMP:Sulzer , MODEL:APP53-200 Serial no. 100192856 , UNIT PRICE:73000 , QTY:1 /', '2022-12-06 00:00:00', 'P-KS-1-0495-0522', '', 0, '', 'MARGIN REMAIN -90 days', '2022-08-10 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-12-06 00:00:00', '2022-08-11 00:00:00'),
(1904, '2022-08-10 15:36:39', 1320, '2022', 'P-KS-A-S-1320-0822-IXX2', '5000087900', 'Siam Kraft Industry Co., Ltd ( Ban Pong )', 'KOP Interchangeable Spare Parts with Sulzer Pump model : APP53-200 Serial no. 100192856 Casing Cover Material : A216 Grade WCB (Carbon Steel) Item code : 1420540146', 73000, 'S-0060', 'JN', 'PW', 'UL', '37.00', 'USD', '45.62', '40.00', 109500, '', '', '1:Casing Cover Item code 1420540146 , P/N: , MAT:A216 Grade WCB (Carbon Steel) , PUMP:Sulzer , MODEL:APP53-200 Serial\r\nno. 100192856 , UNIT PRICE:73000 , QTY:1 /', '2022-12-06 00:00:00', 'P-KS-A-0495-0522', '', 0, '', 'MARGIN REMAIN -90 days', '2022-08-10 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-12-06 00:00:00', '2022-08-11 00:00:00'),
(1905, '2022-08-11 10:52:11', 1321, '2022', 'P-KS-A-S-1321-0822-IXC2', '5000088194', 'Siam Kraft Industry Co., Ltd ( Wang-Sala )', '\"KOP\" Spare Parts for Self Priming Pump (Model : KT11 2X2-6 SCM2A), Bearing Rotation Assembly Units', 90000, 'S-0167', 'JN', 'PW', 'SI', '37.00', 'USD', '26.36', '28.00', 90000, '', '', 'MCT 2 rotating assembly PUMP:Gormann-rupp , MODEL:T-Series 2 inches 90000 THB/Set 1:Bearing Frame, P/N:, MAT:Cast Iron, QTY:1 / 2:Seal Plate , P/N: , MAT:Cast Iron, QTY:1 / 3:Impeller , P/N: , MAT:SS316, QTY:1 / 4:Shaft , P/N: , MAT:17-4PH, QTY:1 / 5:Mechanical Seal , P/N: , MAT:SiC-SiC-FKM-316-630, QTY:1', '2022-12-17 00:00:00', 'P-KS-0-0679-0622', '', 0, '', 'MARGIN REMAIN -101 days', '2022-08-09 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-12-17 00:00:00', '2022-08-11 00:00:00'),
(1906, '2022-08-15 11:13:26', 1322, '2022', 'M-GF-S-S-1322-0822-IXXT', 'PO-CKR-220800066', 'CHAKANGRAO STARCH CO., LTD.', '\"GRUNDFOS\" Mechanical seal Kit, Shaft seal H QQEGG 2 sets', 19600, 'C-0121', 'NR', 'MS', 'SI', '0.00', '', '28.36', '29.89', 13720, '', 'Ref. quotation M-GF-1-0893-0822', '', '2022-08-29 00:00:00', 'M-GF-1-0893-0822', '', 0, '', 'DELIVERED ADVANCE -11 days', '2022-08-15 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-08-18 00:00:00', '2022-08-15 00:00:00'),
(1907, '2022-08-15 17:25:16', 1323, '2022', 'I-IP-A-S-1323-0822-IPX1', '4501413302', 'AGC Vinythai Public Co.,Ltd', 'Inpro/Seal Bearing Isolator VB45S Design 1. Shaft 1.875\", Bore 2.625\", OAL 0.625\"  2. Shaft 1.125\", Bore 2.001\", OAL 0.625\"', 237500, 'V-0010', 'WR', 'ES', 'UL', '37.00', 'USD', '68.93', '50.00', 475000, '', '', '', '2022-09-05 00:00:00', 'I-IP-1-0886-0822', '', 0, '', 'DELIVERED ADVANCE -11 days', '2022-08-15 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-09-05 00:00:00', '2022-08-16 00:00:00'),
(1908, '2022-08-16 08:53:39', 1324, '2022', 'M-KM-A-S-1324-0822-IXXT', '5000090370', 'Thai Paper Co., Ltd. ( Ban Pong )', 'KBCTD-1.375 QQ/QQEGG', 42000, 'T-0237', 'NR', 'MS', 'NP', '37.00', 'USD', '53.07', '50.00', 58800, '', '', '', '2022-10-29 00:00:00', 'M-KM-0-0918-0822', '', 0, '', 'MARGIN REMAIN -52 days', '2022-08-16 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-10-29 00:00:00', '2022-08-18 00:00:00'),
(1909, '2022-08-16 13:16:51', 1325, '2022', 'V-AS-L-S-1325-0822-IPXT', '2414407364', 'Covestro (Thailand) Co., Ltd.', 'PTFE lined pipe Size 2\" x 198 mm, 2\" x 290 mm', 15200, 'C-0057', 'CK', 'VP', 'NP', '0.00', '', '50.21', '50.00', 21280, '', '', '', '2022-09-27 00:00:00', 'V-AS-0-0915-0822', '', 0, '', 'DELIVERED ADVANCE -29 days', '2022-08-16 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-09-27 00:00:00', '2022-08-19 00:00:00'),
(1910, '2022-08-16 13:20:59', 1326, '2022', 'V-AS-A-S-1326-0822-IPXT', '2414407366', 'Covestro (Thailand) Co., Ltd.', 'PTFE lined pipe Size 2\" x 5402 mm, Distance Spacer Size 3\" x 1280 mm', 114000, 'C-0057', 'CK', 'VP', 'NP', '0.00', '', '59.32', '50.00', 159600, '', '', '', '2022-09-27 00:00:00', 'V-AS-0-0922-0822', '', 0, '', 'DELIVERED ADVANCE -29 days', '2022-08-16 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-09-27 00:00:00', '2022-08-19 00:00:00'),
(1911, '2022-08-16 16:34:17', 1327, '2022', 'E-OT-L-S-1327-0822-AXX2', 'รอ PO', 'AGC Vinythai Public Co.,Ltd', 'Baseplate แท่นพับต๊าปเกลียว SS400 หนา 12 มม. + Liffting Lug 4 มุม + Adjust motor + Coupling guard (ปิดหัว-ท้าย) for KOP pump MAX3 With Motor 7.5kw.,Spacer Coupling', 12500, 'V-0010', 'PS', 'ES', 'NP', '0.00', '', '0.00', '0.00', 0, '', 'Addition for IO 1026/22', '', '2022-09-22 00:00:00', 'E-OT-1-0869-0822', '', 0, '', 'MARGIN REMAIN -15 days', '0000-00-00 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-08-31 00:00:00', '2022-09-15 00:00:00'),
(1912, '2022-08-18 16:13:56', 1328, '2022', 'P-KB-L-S-1328-0822-IXX1', '5000091833', 'THAI CANE PAPER PUBLIC COMPANY LIMITED', 'Spare Parts for \"KSB\" Pump Model : MEGACHEM 50-315, 1. Shaft Sleeve P/N 524     2. Shaft P/N 210', 49000, 'T-0071', 'SK', 'PW', 'SI', '0.00', '', '29.18', '29.18', 49000, '', '', '', '2023-02-14 00:00:00', 'P-KB-0-0874-0822', '', 0, '', 'MARGIN REMAIN -160 days', '2022-08-18 00:00:00', '', '100/30', '', 0, '', '', 0, '2023-02-14 00:00:00', '2022-08-18 00:00:00'),
(1913, '2022-08-19 17:35:00', 1329, '2022', 'P-KS-A-S-1329-0822-IXX2', '5000091604', 'Thai Paper Co., Ltd. ( Ban Pong )', 'KOP Interchangeable Spare Parts with Sulzer Pump APP11-32 Shaft P/N 210 Material : SS2324', 20200, 'T-0237', 'JN', 'PW', 'UL', '37.00', 'USD', '31.49', '30.00', 20200, '', '', '1:Shaft APP1 Item code 2837860133, P/N:210 , MAT:SS2324 , PUMP:Ahlstrom , MODEL:APP11-32 , UNIT PRICE:20200 , QTY:1 / ', '2022-09-06 00:00:00', 'P-KS-0-0937-0822', '', 0, '', 'OVERDUE 1 days', '2022-08-18 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-09-06 00:00:00', '2022-08-19 00:00:00'),
(1914, '2022-08-19 17:42:40', 1330, '2022', 'I-IP-A-S-1330-0822-IPX1', '1040433240', 'PTT Global Chemical Public Company Limited', 'Inpro/Seal Bearing Isolator VBXXD for Flowserve Ensival Shaft 2.520\" Bore 3.543\" OAL 0.7\" Bronze/FKM', 42000, 'P-0132', 'WR', 'ES', 'UL', '37.00', 'USD', '35.20', '0.00', 42000, '', '', '', '2022-09-16 00:00:00', 'I-IP-0-0955-0822', '', 0, '', 'MARGIN REMAIN -9 days', '2022-08-19 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-09-16 00:00:00', '2022-08-22 00:00:00'),
(1915, '2022-08-22 14:13:26', 1331, '2022', 'A-ES-L-M-1331-0822-SXX1', '3B/M228/000064', 'Indorama Petrochem Limited', 'ค่าบริการวิศวกรควบคุมและอำนวยการใช้หม้อไอน้ำ ตั้งแต่วันที่ 1 ก.ย. 2565 - 31 ส.ค. 2566 (1 ปี) โดยคุณอนุสรณ์', 300000, 'I-0005', 'UL', 'AP', 'UL', '0.00', '', '20.00', '20.00', 300000, '', '', '', '2023-08-31 00:00:00', 'A-ES-0-0896-0822', '', 0, '', 'NA 0 days', '2022-08-22 00:00:00', '', '100/30', '', 0, '', '', 0, '2023-08-31 00:00:00', '2022-08-24 00:00:00'),
(1916, '2022-08-22 14:23:20', 1332, '2022', 'E-RI-A-S-1332-0822-APX2', '4501417022', 'Vinythai Public Co.,Ltd', 'Volute Casing for Richter Pump model : SCK/F 80-50-250 c/w ABB Motor 18.5 kW, 2P, IE3', 560000, 'V-0010', 'PS', 'ES', 'UL', '37.00', 'EUR', '26.19', '22.00', 560000, '', '', '', '2022-11-30 00:00:00', 'E-RI-4-0690-0622', '', 0, '', 'MARGIN REMAIN -84 days', '2022-08-22 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-11-30 00:00:00', '2022-08-24 00:00:00'),
(1917, '2022-08-22 14:28:47', 1333, '2022', 'E-OT-L-S-1333-0822-IXX1', 'PO-2208-091', 'Iharanikkei Chemical (Thailand) Co., Ltd.', 'Additional charge for changing shipment mode to air freight for GT Graphite Heat Exchanger', 155473, 'I-0056', 'WR', 'ES', 'UL', '0.00', '', '100.00', '0.00', 310946, '', 'ค่าใช้จ่ายทั้งหมดเอาไปลง IO1117/22 แล้ว', '', '2022-08-25 00:00:00', 'E-OT-0-0929-0822', '', 0, '', 'OVERDUE 13 days', '2022-08-22 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-08-25 00:00:00', '2022-08-24 00:00:00'),
(1918, '2022-08-22 14:37:21', 1334, '2022', 'I-IP-A-S-1334-0822-IPX1', '5024040431', 'Thai Polyethylene Co., Ltd.', 'Inpro/Seal Throttle and O-ring P/N 9965-ZA-67913-5', 213000, 'T-0010', 'WR', 'ES', 'UL', '37.00', 'USD', '26.67', '30.00', 213000, '', '', '', '2022-10-09 00:00:00', 'I-IP-0-0959-0822', '', 0, '', 'MARGIN REMAIN -32 days', '2022-08-22 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-10-09 00:00:00', '2022-08-24 00:00:00'),
(1919, '2022-08-22 14:40:34', 1335, '2022', 'I-IP-A-S-1335-0822-IPX1', '5024040432', 'Thai Polyethylene Co., Ltd.', 'Inpro/Seal Throttle and O-ring P/N 9965-ZA-67929-5', 203000, 'T-0010', 'WR', 'ES', 'UL', '37.00', 'USD', '26.05', '30.00', 203000, '', '', '', '2022-09-29 00:00:00', 'I-IP-0-0960-0822', '', 0, '', 'MARGIN REMAIN -22 days', '2022-08-22 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-09-29 00:00:00', '2022-08-24 00:00:00'),
(1920, '2022-08-22 14:44:41', 1336, '2022', 'I-IP-A-S-1336-0822-IPX1', '5024040324', 'Rayong Olefins Co ., Ltd.', 'Inpro/Seal size: D114.3x140x0.700\" P/N 1787-E-32076-2 Material : Aluminum', 76000, 'R-0041', 'WR', 'ES', 'UL', '37.00', 'USD', '23.30', '30.00', 76000, '', '', '', '2022-12-31 00:00:00', 'I-IP-0-0961-0822', '', 0, '', 'MARGIN REMAIN -115 days', '2022-08-22 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-12-31 00:00:00', '2022-08-24 00:00:00'),
(1921, '2022-08-22 14:50:56', 1337, '2022', 'I-IP-A-S-1337-0822-IPX1', '5024040302', 'Rayong Olefins Co ., Ltd.', 'Inpro/Seal size: D114.3x140x0.700\" P/N 1787-E-32076-2 Material : Aluminum', 38000, 'R-0041', 'WR', 'ES', 'UL', '37.00', 'USD', '21.33', '30.00', 38000, '', '', '', '2022-11-01 00:00:00', 'I-IP-0-0962-0822', '', 0, '', 'MARGIN REMAIN -55 days', '2022-08-22 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-11-01 00:00:00', '2022-08-24 00:00:00'),
(1922, '2022-08-23 10:57:15', 1338, '2022', 'P-KB-L-S-1338-0822-IXX1', 'PO-086083-1', 'Metro M.D.F. Co.,Ltd. (Karnchanaburi)', '\"KSB\" End Suction Pump For Replacement \"KSB\" Pump Model : SYT 80-200', 153500, 'M-0055', 'SK', 'PW', 'SI', '0.00', '', '20.08', '25.00', 153500, '', '', '', '2022-08-28 00:00:00', 'P-KB-0-0752-0722', '', 0, '', 'OVERDUE 10 days', '2022-08-22 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-11-21 00:00:00', '2022-08-23 00:00:00'),
(1923, '2022-08-24 19:28:02', 1339, '2022', 'P-KS-A-S-1339-0822-IXX1', '5000094320', 'THAI CANE PAPER PUBLIC COMPANY LIMITED', 'KOP Spare Parts IMPELLER CLOSED DIA.320 MM. APP32-100', 38000, 'T-0071', 'SK', 'PW', 'UL', '37.00', 'USD', '23.22', '20.00', 38000, '', '', '1:Impeller closed dia. 320 mm Item code 2839150141, P/N:230 , MAT:A890 3A , PUMP:Sulzer , MODEL:APP32-100 , UNIT PRICE:38000 , QTY:1 /', '2022-11-22 00:00:00', 'P-KS-0-0971-0822', '', 0, '', 'MARGIN REMAIN -76 days', '2022-08-24 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-11-22 00:00:00', '2022-08-24 00:00:00'),
(1924, '2022-08-25 13:22:57', 1340, '2022', 'V-AS-S-S-1340-0822-IPXT', '2414424130', 'Covestro (Thailand) Co., Ltd.', 'PTFE lined pipe Size 1\" x 6000 mm, 1\" x 507 mm', 60800, 'C-0057', 'CK', 'VP', 'NP', '0.00', '', '65.44', '50.00', 85120, '', '', '', '2022-09-03 00:00:00', 'V-AS-0-0979-0822', '', 0, '', 'DELIVERED ADVANCE -1 days', '2022-09-01 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-09-03 00:00:00', '2022-09-02 00:00:00'),
(1925, '2022-08-25 15:15:48', 1341, '2022', 'I-IP-A-S-1341-0822-IPX1', '1040434560', 'PTT Global Chemical Public Company Limited ', 'Inpro/Seal Bearing Isolator P/N PE9323-A-94200-6', 23000, 'P-0118', 'WR', 'ES', 'UL', '37.00', 'USD', '38.07', '25.00', 23000, '', '', '', '2022-09-23 00:00:00', 'I-IP-0-0872-0822', '', 0, '', 'MARGIN REMAIN -16 days', '2022-08-25 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-09-23 00:00:00', '2022-08-26 00:00:00'),
(1926, '2022-08-26 17:26:11', 1342, '2022', 'C-KV-S-S-1342-0822-IXX1', '65080308', 'Pharmaceuticals and Medical Supply Co., Ltd. (PMS Machinery)', 'KOP Liquid Ring Vacuum Pump model : K2BV2 061 WC4 51E c/w motor 1.45 kw, 2840 rpm', 28000, 'P-0187', 'PD', 'CG', 'UL', '0.00', '', '31.30', '30.00', 28000, '', '', '', '2022-12-15 00:00:00', 'C-KV-0-0531-0522', '', 0, '', 'MARGIN REMAIN -99 days', '2022-08-26 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-12-15 00:00:00', '2022-08-29 00:00:00'),
(1927, '2022-08-29 10:09:49', 1343, '2022', 'M-KM-S-S-1343-0822-IXXT', '5000095924', 'THAI CANE PAPER PUBLIC COMPANY LIMITED', '\"KOP\" Interchangeable Mechanical Seal with \"Gorman-Rupp\" Pump Model: T6 Material : Tungsten carbide / Viton / SS316. Qty 1 Ea', 16000, 'T-0007', 'NR', 'MS', 'NP', '0.00', '', '50.23', '50.00', 22400, '', '', '', '2022-09-28 00:00:00', 'M-KM-0-0985-0822', '', 0, '', 'DELIVERED ADVANCE -22 days', '2022-08-29 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-09-28 00:00:00', '2022-08-30 00:00:00'),
(1928, '2022-08-29 10:55:10', 1344, '2022', 'P-RA-L-S-1344-0822-IPX1', '4110192067', 'Electricity Generating Authority of Thailand (EGAT โรงไฟฟ้าแม่เมาะ)', 'Rathi Tyre flex coupling Type : TO-9B : 2 EA', 15000, 'M-0037', 'SK', 'PW', 'SI', '0.00', '', '54.92', '0.00', 30000, '', '', '', '2022-09-05 00:00:00', 'P-RA-0-0992-0822', '', 0, '', 'OVERDUE 2 days', '2022-08-29 00:00:00', '', '', '', 0, '', '', 0, '2022-09-05 00:00:00', '2022-08-29 00:00:00'),
(1929, '2022-08-29 14:38:14', 1345, '2022', 'P-KS-A-S-1345-0822-IPX1', 'AAH2206553-00', 'Double A (1991) Public Company Limited', 'KOP Interchangeable Spare Parts with Sulzer Pump APP54-400 S/N 94360801 Impeller open dia. 599 mm. Material : A890 3A', 356400, 'D-0004', 'SK', 'PW', 'UL', '37.00', 'USD', '22.00', '22.00', 356400, '', '', '1:Impeller Open type dia. 599 mm. Item code 2839000141, P/N: , MAT:A890 3A , PUMP:SUlzer , MODEL:APP54-400 S/N 94360801 , UNIT PRICE:118800 , QTY:3 / ', '2022-12-30 00:00:00', 'P-KS-1-0902-0822', '', 0, '', 'MARGIN REMAIN -114 days', '2022-08-29 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-12-30 00:00:00', '2022-08-31 00:00:00'),
(1930, '2022-08-29 14:40:04', 1346, '2022', 'P-KS-A-S-1346-0822-IPX1', 'AAH2206290-00', 'Double A (1991) Public Company Limited', 'KOP Pump model : KAP 32 125x80-315 O3A F7E and spare parts', 44640, 'D-0004', 'SK', 'PW', 'UL', '37.00', 'USD', '53.03', '20.00', 89280, '', 'แก้ไขกำหนดส่งสินค้าใน PO ลูกค้า', '1:Adjusting Screw, M12x80 , P/N: , MAT:SS2324 , PUMP:Sulzer , MODEL:APP54-400 , UNIT PRICE:2115 , QTY:6 / 2:Socket Head Screw, M10x20 , P/N: , MAT:A890 3A , PUMP:Sulzer , MODEL: , UNIT PRICE: 1080, QTY:5 /3:Socket Head Screw, M12x30, P/N: , MAT:A890 3A , PUMP:Sulzer , MODEL: , UNIT PRICE:1350 , QTY:5 /4:Socket Head Screw, M16x40 , P/N: , MAT:A890 3A , PUMP:Sulzer , MODEL: , UNIT PRICE:1800 , QTY:5 /', '2022-10-14 00:00:00', 'P-KP-1-0876-0822', '', 0, '', 'MARGIN REMAIN -37 days', '2022-08-29 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-09-30 00:00:00', '2022-09-01 00:00:00'),
(1931, '2022-08-29 14:42:57', 1347, '2022', 'P-KP-A-S-1347-0822-IPX1', 'AAH2207174-00', 'Double A (1991) Public Company Limited', 'KOP Pump model : KAP 32 125x80-315 O3A F7E and spare parts', 449100, 'D-0004', 'SK', 'PW', 'UL', '37.00', 'USD', '20.00', '20.00', 449100, '', '', '1:Sideplate for open impeller , P/N:135 , MAT:A890 3A , PUMP:Sulzer , MODEL:APP54-400 , UNIT PRICE:80100 , QTY:2 /2:Sideplate for open impeller , P/N:135 , MAT:A890 3A , PUMP:Sulzer , MODEL:APP51-250 , UNIT PRICE:53100 , QTY:1 /', '2022-12-30 00:00:00', 'P-KP-A-0876-0822', '', 0, '', 'MARGIN REMAIN -114 days', '2022-08-29 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-12-30 00:00:00', '2022-08-31 00:00:00'),
(1932, '2022-08-29 14:45:16', 1348, '2022', 'P-KS-A-S-1348-0822-IPX1', 'AAH2207173-00', 'Double A (1991) Public Company Limited', 'KOP Spare Parts Impeller open type dia. 450 mm. Material : A890 3A Model : APP51-250', 70200, 'D-0004', 'SK', 'PW', 'UL', '37.00', 'USD', '26.76', '20.00', 70200, '', '', '1:Impeller open type dia. 450 mm., P/N: , MAT:A890 3A , PUMP:Sulzer, MODEL:APP51-250 , UNIT PRICE:70200 , QTY:15 /', '2022-11-25 00:00:00', 'P-KP-B-0876-0822', '', 0, '', 'MARGIN REMAIN -79 days', '2022-08-29 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-11-25 00:00:00', '2022-08-31 00:00:00'),
(1933, '2022-08-29 15:28:12', 1349, '2022', 'F-RA-L-S-1349-0822-IXC1', 'B65/07143', 'CHAO KHUN AGRO PRODUCTS CO., LTD.', '\"Rathi\" N-flex coupling N-flex coupling type RN(A)180 pilot bore 9 EA.', 85500, 'C-0081', 'TSS', 'FI', 'SI', '0.00', '', '32.03', '38.03', 85500, '', '', '', '2022-12-19 00:00:00', 'F-RA-0-0534-0522', '', 0, '', 'MARGIN REMAIN -103 days', '2022-08-29 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-11-30 00:00:00', '2022-08-29 00:00:00'),
(1934, '2022-08-30 08:52:55', 1350, '2022', 'F-KS-S-S-1350-0822-IXX1', 'PVO.B0073/01/2022', 'Patum Vegetable Oil Company Limited', '\"KOP\" Interchangeable Spare Part with \"Durco\" MARK III Pump Model : 6x4-10D Sleeve Material : Titanium', 15000, 'P-0110', 'TSS', 'FI', 'NP', '0.00', '', '51.67', '50.00', 30000, '', '', '', '2022-09-30 00:00:00', 'F-KS-B-0987-0721', '', 0, '', 'DELIVERED ADVANCE -25 days', '2022-08-30 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-09-30 00:00:00', '2022-08-31 00:00:00'),
(1935, '2022-08-30 16:38:19', 1351, '2022', 'M-KM-A-S-1351-0822-IXXT', '4500071776', 'Green Spot Co. Ltd.', 'KOP Mechanical Seal  Type    :   KU2KR  Size 20 mm. GQVGG  1  Q\'ty', 38400, 'G-0033', 'NR', 'MS', 'SI', '0.00', '', '56.89', '54.00', 53760, '', '', '', '2022-09-15 00:00:00', 'M-KM-1-0899-0822', '', 0, '', 'MARGIN REMAIN -8 days', '2022-08-30 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-09-15 00:00:00', '0000-00-00 00:00:00'),
(1936, '2022-08-31 09:21:42', 1352, '2022', 'C-RI-A-S-1352-0822-APX1', '77407', 'Siam PVS Chemicals Co.,Ltd.', 'Richter Magnetic Drive Pump Model : RMA/F 3x2x6 with ABB motor 11 kW, 2900 rpm, IE1 and spacer coupling and baseplate', 395000, 'S-0056', 'PD', 'CG', 'UL', '37.00', 'USD', '15.79', '17.00', 311853, '', '', '', '2022-12-20 00:00:00', 'C-RI-2-0828-0722', '', 0, '', 'MARGIN REMAIN -104 days', '2022-08-31 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-12-20 00:00:00', '2022-09-02 00:00:00'),
(1937, '2022-08-31 09:31:17', 1353, '2022', 'I-IP-A-S-1353-0822-IPX1', '1040435782', 'PTT Global Chemical Public Company Limited', 'Inpro/Seal Bearing Isolator ID2.932xOD 3.5 x 1.07', 108000, 'P-0117', 'WR', 'ES', 'UL', '37.00', 'USD', '43.62', '30.00', 162000, '', '', '', '2022-12-15 00:00:00', 'I-IP-0-1003-0822', '', 0, '', 'MARGIN REMAIN -99 days', '2022-08-31 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-12-15 00:00:00', '2022-09-02 00:00:00'),
(1938, '2022-08-31 11:45:13', 1354, '2022', 'E-RM-A-S-1354-0822-IPX1', '5024040614', 'Thai Plastic and Chemicals Public Company Limited ( Rayong )', 'Spare Parts for \"Robbins & Myers\" Pump 1. Stator P/N RQ A4E 6500 2. Rotor P/N SS A4E 5000', 338369, 'T-0006', 'WR', 'ES', 'UL', '37.00', 'USD', '32.65', '25.00', 338369, '', '', '', '2022-12-20 00:00:00', 'E-RM-0-1005-0822', '', 0, '', 'MARGIN REMAIN -104 days', '2022-08-31 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-12-20 00:00:00', '2022-09-02 00:00:00'),
(1939, '2022-08-31 16:02:39', 1355, '2022', 'F-KM-S-S-1355-0822-IXXT', 'PO22-005020', 'THAI COLD ROLLED STEEL SHEET PUBLIC COMPANY LIMITED', 'KDRO Size 1.875\" Material : SIC / SIC / FFKM / SIC / M106K / VITON / HAST-C / 316', 58000, 'T-0150', 'TSS', 'FI', 'NP', '0.00', '', '63.05', '50.50', 81200, '', '', '', '2022-09-26 00:00:00', 'F-KM-0-0942-0822', '', 0, '', 'MARGIN REMAIN -19 days', '2022-08-31 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-09-26 00:00:00', '2022-09-03 00:00:00'),
(1940, '2022-08-31 16:21:06', 1356, '2022', 'P-KP-S-S-1356-0822-AXX3', 'PO 7800703741', 'ROSS BREEDERS SIAM COMPANY LIMITED', '\"KOP\" End Suction Centrifugal Pump  (DIN 24255) Model : KDIN 13 50x32-200 CC4 A1D c/w \"Inline\" high efficiency motor (IE2) 5.5 kW, 2900 rpm, IM B3 1 Set', 39000, 'R-0070', 'SS', 'PW', 'SI', '0.00', '', '29.83', '0.00', 39000, '', '', '', '2022-09-30 00:00:00', 'P-KP-0-0931-0822', '', 0, '', 'MARGIN REMAIN -23 days', '2022-08-31 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-09-12 00:00:00', '2022-09-01 00:00:00'),
(1941, '2022-09-01 09:15:50', 1357, '2022', 'V-UP-S-S-1357-0922-IXX1', 'PO22-005067', 'THAI COLD ROLLED STEEL SHEET PUBLIC COMPANY LIMITED', '\"UNP Polyvalves\" CS + PFA Lined Plug Valve (ANSI 150 LBS) Size : DN50', 14500, 'T-0150', 'CK', 'VP', 'NP', '1.00', 'THB', '23.86', '21.00', 14500, '', '', '', '2022-09-12 00:00:00', 'V-UP-0-0977-0822', '', 0, '', 'DELIVERED ADVANCE -6 days', '2022-09-01 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-09-12 00:00:00', '2022-09-02 00:00:00'),
(1942, '2022-09-01 13:37:30', 1358, '2022', 'M-KM-S-S-1358-0922-IXXT', '5000097701', 'Srithai Food Service co.,ltd.', '\"KOP\" Interchangeable Mechanical Seal with \"Gorman-Rupp\" Pump Model: Super T6 Material : Tungsten carbide / Viton / SS316. Qty 3 Ea', 51000, 'S-0012', 'NR', 'MS', 'NP', '0.00', '', '55.00', '50.50', 71400, '', '', '', '2022-10-01 00:00:00', 'M-KM-0-1002-0822', '', 0, '', 'MARGIN REMAIN -24 days', '2022-09-01 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-10-01 00:00:00', '2022-09-02 00:00:00'),
(1943, '2022-09-06 08:59:51', 1359, '2022', 'V-RV-A-S-1359-0922-IPX1', '4501424570', 'AGC Vinythai Public Co.,Ltd', '\"Richter\" Lined Ball Valve Series : KNA/F Size : 2\"', 59000, 'V-0010', 'CK', 'VP', 'NP', '38.00', 'EUR', '29.96', '20.00', 59000, '', '', '', '2022-11-04 00:00:00', 'V-RV-1-0986-0822', '', 0, '', 'MARGIN REMAIN -58 days', '2022-09-06 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-11-04 00:00:00', '2022-09-08 00:00:00'),
(1944, '2022-09-07 12:19:20', 1360, '2022', 'E-RM-A-S-1360-0922-IPX1', '5024040807', 'Thai Plastic and Chemicals Public Company Limited ( Rayong )', 'Spare Parts for \"Robbins & Myers\" Pump 1. Stator P/N RB A4D 6510 Q\'ty 1 pc', 68785, 'T-0006', 'WR', 'ES', 'UL', '37.00', 'USD', '34.30', '30.00', 68785, '', '', '', '2022-12-27 00:00:00', 'E-RM-0-1049-0922', '', 0, '', '', '2022-09-07 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-12-27 00:00:00', '2022-09-07 00:00:00'),
(1945, '2022-09-07 13:26:55', 1361, '2022', 'F-KP-S-S-1361-0922-QXX1', 'PVO.B2543/09/2022', 'Patum Vegetable Oil Company Limited', 'KDIN 35 150x125-315 CC4 A1D', 78000, 'P-0110', 'TSS', 'FI', 'NP', '0.00', '', '55.00', '55.00', 156000, '', '', '', '2022-11-04 00:00:00', 'F-KP-3-0396-0422', '', 0, '', '', '2022-09-07 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-11-04 00:00:00', '0000-00-00 00:00:00'),
(1946, '2022-09-07 13:36:03', 1362, '2022', 'F-KM-S-S-1362-0922-IXXT', 'PVO.B2516/09/2022', 'Patum Vegetable Oil Company Limited', 'KJ8-1 1875 KWG BQVGGXXXX, KJ8-1 1875 KAG QQ/M1TMGGX', 26000, 'P-0110', 'TSS', 'FI', 'NP', '0.00', '', '50.00', '50.00', 27300, '', '', '', '2022-12-02 00:00:00', 'F-KM-F-0289-0321', '', 0, '', '', '2022-09-07 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-12-02 00:00:00', '0000-00-00 00:00:00'),
(1947, '2022-09-07 13:40:22', 1363, '2022', 'F-KS---1363-0922-IXX1', 'PVO.B2518/09/2022', 'Patum Vegetable Oil Company Limited', '\"KOP\" Interchangeable Spare Part with \"Durco\" MARK III Pump Model : 6x4-10D Sleeve Material : Titanium', 15000, 'P-0110', 'TSS', 'FI', 'NP', '0.00', '', '50.00', '50.00', 22500, '', '', '', '2022-12-02 00:00:00', 'F-KS-C-0987-0721', '', 0, '', '', '2022-09-07 00:00:00', '', '100/30', '', 0, '', '', 0, '2022-12-02 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `io_report_id`
--

CREATE TABLE `io_report_id` (
  `io_id` int(11) NOT NULL,
  `io_date` datetime NOT NULL,
  `io_number` int(11) NOT NULL,
  `io_year` varchar(5) NOT NULL,
  `io_no` varchar(50) NOT NULL,
  `customer_po` varchar(100) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `des_cription` varchar(300) NOT NULL,
  `price` int(15) NOT NULL,
  `customer_code` varchar(10) NOT NULL,
  `sales` varchar(10) NOT NULL,
  `pec_group` varchar(10) NOT NULL,
  `issue_by` varchar(10) NOT NULL,
  `exchange` decimal(10,2) NOT NULL,
  `currency` varchar(5) NOT NULL,
  `margin` decimal(10,2) NOT NULL,
  `margin_q` decimal(10,2) NOT NULL,
  `credit` int(11) NOT NULL,
  `product_code` varchar(5) NOT NULL,
  `remarks` varchar(300) NOT NULL,
  `remarks1` text NOT NULL,
  `delivery` datetime NOT NULL,
  `quotation_no` varchar(100) NOT NULL,
  `purpose` varchar(50) NOT NULL,
  `est_cost` int(15) NOT NULL,
  `term` varchar(100) NOT NULL,
  `io_status` varchar(30) NOT NULL,
  `po_receive` datetime NOT NULL,
  `term1` varchar(20) NOT NULL,
  `term2` varchar(20) NOT NULL,
  `term3` varchar(20) NOT NULL,
  `io_order` int(1) NOT NULL,
  `seal1` varchar(100) NOT NULL,
  `seal2` varchar(100) NOT NULL,
  `rev` int(2) NOT NULL,
  `prev_delivery` datetime NOT NULL,
  `supplier_code` varchar(10) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `delivery_term` varchar(50) NOT NULL,
  `selling1` int(11) NOT NULL,
  `selling2` int(11) NOT NULL,
  `commission` decimal(10,2) NOT NULL,
  `commission1` int(11) NOT NULL,
  `commission2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `io_report_id`
--

INSERT INTO `io_report_id` (`io_id`, `io_date`, `io_number`, `io_year`, `io_no`, `customer_po`, `customer`, `des_cription`, `price`, `customer_code`, `sales`, `pec_group`, `issue_by`, `exchange`, `currency`, `margin`, `margin_q`, `credit`, `product_code`, `remarks`, `remarks1`, `delivery`, `quotation_no`, `purpose`, `est_cost`, `term`, `io_status`, `po_receive`, `term1`, `term2`, `term3`, `io_order`, `seal1`, `seal2`, `rev`, `prev_delivery`, `supplier_code`, `supplier`, `delivery_term`, `selling1`, `selling2`, `commission`, `commission1`, `commission2`) VALUES
(1, '2022-10-20 13:09:27', 9901, '2022', 'E-GB-A-I-9901-1022-IXX1', '183/2022DMCR2', 'SEA CREST MARINE  CO.,LTD.', 'Varisco Fire Pump Model : JE2-180 F10 NT20', 15725, 'S-0022', 'WR', 'ES', 'UL', '37.80', 'EUR', '0.00', '0.00', 0, '', '', '', '2023-01-20 00:00:00', '', '', 0, '', '', '0000-00-00 00:00:00', '30/0', '70/0', '', 5, '', '', 0, '0000-00-00 00:00:00', 'G-0006', 'บริษัท GPA Engineering corporation Pte Ltd.', 'CIF BKK Seaport', 8320, 314496, '5.00', 416, 15725);

-- --------------------------------------------------------

--
-- Table structure for table `io_report_sv`
--

CREATE TABLE `io_report_sv` (
  `io_id` int(11) NOT NULL,
  `io_date` datetime NOT NULL,
  `io_number` int(11) NOT NULL,
  `io_year` varchar(5) NOT NULL,
  `io_no` varchar(50) NOT NULL,
  `customer_po` varchar(100) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `des_cription` varchar(300) NOT NULL,
  `price` int(15) NOT NULL,
  `customer_code` varchar(10) NOT NULL,
  `sales` varchar(10) NOT NULL,
  `pec_group` varchar(10) NOT NULL,
  `issue_by` varchar(10) NOT NULL,
  `exchange` decimal(10,2) NOT NULL,
  `currency` varchar(5) NOT NULL,
  `margin` decimal(10,2) NOT NULL,
  `margin_q` decimal(10,2) NOT NULL,
  `credit` int(11) NOT NULL,
  `product_code` varchar(5) NOT NULL,
  `remarks` varchar(300) NOT NULL,
  `remarks1` text NOT NULL,
  `delivery` datetime NOT NULL,
  `quotation_no` varchar(100) NOT NULL,
  `purpose` varchar(50) NOT NULL,
  `est_cost` int(15) NOT NULL,
  `term` varchar(100) NOT NULL,
  `io_status` varchar(30) NOT NULL,
  `po_receive` datetime NOT NULL,
  `term1` varchar(20) NOT NULL,
  `term2` varchar(20) NOT NULL,
  `term3` varchar(20) NOT NULL,
  `io_order` int(1) NOT NULL,
  `seal1` varchar(100) NOT NULL,
  `seal2` varchar(100) NOT NULL,
  `rev` int(2) NOT NULL,
  `prev_delivery` datetime NOT NULL,
  `io_ready` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `io_report_sv`
--

INSERT INTO `io_report_sv` (`io_id`, `io_date`, `io_number`, `io_year`, `io_no`, `customer_po`, `customer`, `des_cription`, `price`, `customer_code`, `sales`, `pec_group`, `issue_by`, `exchange`, `currency`, `margin`, `margin_q`, `credit`, `product_code`, `remarks`, `remarks1`, `delivery`, `quotation_no`, `purpose`, `est_cost`, `term`, `io_status`, `po_receive`, `term1`, `term2`, `term3`, `io_order`, `seal1`, `seal2`, `rev`, `prev_delivery`, `io_ready`) VALUES
(200, '2021-11-15 12:05:27', 902, '2021', 'S-SF-L-M-902-1121-SXX2', 'PO202111037F2', 'Thai Glycerine Co.,Ltd.', 'Performance Test for KSB Model: MCPK 200-150-250', 17100, 'T-0043', 'RS', 'Service', 'MO', '0.00', '', '23.39', '30.00', 13332, '', 'Test@ศรีโพธิ์ทอง, ลค accept updated due date 17/12/21 (AM 13/12/21) - Complete', '', '2021-12-17 00:00:00', 'S-SF-0-1391-1021', '', 0, '', 'DELIVERED ADVANCE -1 days', '2021-11-10 00:00:00', '', '100/30', '', 2, '', '', 0, '2021-11-16 00:00:00', '0000-00-00 00:00:00'),
(201, '2021-11-15 14:29:45', 903, '2021', 'S-SP-L-M-903-1121-SXX2', '8010392935', 'Siam Kraft Industry Co., Ltd ( Wang-Sala )', 'Performance Test for \"SCAN Pump BA 150/80-32 5203 3\"', 15000, 'S-0167', 'RS', 'Service', 'MO', '0.00', '', '23.07', '25.00', 11535, '', 'ทางลูกค้าแจ้งว่าตัว Pump ยังประกอบจากลูกค้าเองไม่เสร็จเนื่องจาก spare parts ยังมาไม่ครบครับ จึงขอเลื่อน due date เป็นวันที่ 18/3/22 ครับ ลูกค้ารับทราบครับ - Complete', '', '2022-03-31 00:00:00', 'S-SP-0-1225-0921', '', 0, '', 'DELIVERED ONTIME 0 days', '2021-11-09 00:00:00', '', '100/30', '', 2, '', '', 0, '2021-12-10 00:00:00', '2021-11-15 00:00:00'),
(202, '2021-11-19 08:35:23', 904, '2021', 'S-SF-L-M-904-1121-SXX2', 'ไม่มี PO', 'LAO THONG SING CO., LTD.', 'Repair SIHI CBSD 050200 CCBMT4BCAB', 25000, 'L-0017', 'RS', 'Service', 'MO', '0.00', '', '33.68', '30.00', 25000, '', 'Complete', '', '2021-12-03 00:00:00', 'S-SF-0-1471-1121', '', 0, '', 'DELIVERED ADVANCE -9 days', '2021-11-19 00:00:00', '', '100/30', '', 2, '', '', 0, '2021-12-03 00:00:00', '2021-11-19 00:00:00'),
(203, '2021-11-29 12:13:24', 905, '2021', 'S-SR-L-M-905-1121-SXX2', 'ไม่มี PO', 'บริษัท รอแยลเฮ้าส์ จำกัด', 'Repair \"Grundfos\" pump', 748, 'R-0065', 'RS', 'Service', 'MO', '0.00', '', '33.12', '30.00', 748, '', 'Complete - ซ่อมเสร็จแล้วรอลูกค้ามารับเอง (ลูกค้าชำระเงินแล้ว)', '', '2021-12-03 00:00:00', 'S-SR-0-1480-1121', '', 0, '', 'DELIVERED ONTIME 0 days', '2021-11-26 00:00:00', '100/0', '', '', 2, '', '', 0, '2021-12-03 00:00:00', '2021-11-29 00:00:00'),
(204, '2021-11-30 10:36:24', 906, '2021', 'S-GF-L-S-906-1121-IXX2', 'ลูกค้าเซ็นต์คอนเฟิร์มใบเสนอราคา', 'มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี', 'GRUNDFOS UPS15-50 130 1x230V 50Hz 9H', 20000, 'K-0097', 'RS', 'Service', 'MO', '0.00', '', '31.87', '35.00', 20000, '', 'ลูกค้าโอนเงินเรียบร้อยแล้ว 30/11/2021 - แจ้งเลื่อนลูกค้าเป็นวันที่ 7/1/2022 ลูกค้า accept ไม่ต้องออกจดหมายเลื่อน', '', '2022-01-07 00:00:00', 'S-GF-0-1493-1121', '', 0, '', 'DELIVERED ONTIME 0 days', '2021-11-30 00:00:00', '100/0', '', '', 2, '', '', 0, '2021-12-21 00:00:00', '0000-00-00 00:00:00'),
(205, '2021-11-30 16:22:54', 907, '2021', 'S-GT-A-S-907-1121-IXX2', '9222102962', 'Thai Rayon Public Company Limited', 'Spare parts for graphite heat exchanger Cement Kit Powder + Resin (1.2 kg)', 18050, 'T-0257', 'RS', 'Service', 'MO', '36.00', 'USD', '31.43', '31.72', 18050, '', 'Complete', '', '2021-12-24 00:00:00', 'S-GT-0-1491-1121', '', 0, '', 'DELIVERED ADVANCE -7 days', '2021-11-30 00:00:00', '', '100/30', '', 2, '', '', 0, '2021-12-24 00:00:00', '0000-00-00 00:00:00'),
(206, '2021-12-07 11:58:54', 908, '2021', 'S-SE-L-M-908-1221-SPX2', '1440107125', 'Thai Ethoxylate Company Limited', 'Performance Test with Report 1. 01P010 motor ขนาด 75 kw 2. 05P001 motor ขนาด 75 kw', 25000, 'T-0154', 'RS', 'Service', 'MO', '0.00', 'THB', '40.64', '30.00', 25000, '', 'Complete - Start work on 7th December 2021. After finish work, please submit report and invoice within 17 December 2021 (เข้าหน้างาน 7/12/21 ยังไม่ได้ทำ tag no. 01P009 เนื่องจากอุณหภูมิ 160C แต่ sensor ของเรารับได้แค่ 90C ลูกค้าให้แก้ใน PO มาเลย โดยตัด 01P009 ออก และลดราคาเหลือ 25,000 THB จาก 37,000', '', '2021-12-17 00:00:00', 'S-SE-0-1379-1021', '', 0, '', 'DELIVERED ADVANCE -1 days', '2021-12-02 00:00:00', '', '100/30', '', 2, '', '', 0, '2021-12-17 00:00:00', '0000-00-00 00:00:00'),
(207, '2021-12-15 10:48:56', 909, '2021', 'S-SR-L-M-909-1221-SXXT', 'None Official PO from customer', 'DANAI PUMPS CO., LTD. ', 'Modify baseplate for pre-alignment, Laser alignment, Commisioning test run 22 sets (10,080 USD)', 322560, 'D-0047', 'RS', 'Service', 'MO', '0.00', '', '57.00', '50.00', 483840, '', 'เข้าหน้างานที่ขอนแก่น 7-9/12/21', '', '2022-08-30 00:00:00', 'S-SR-2-0723-0622', '', 0, '', 'OVERDUE 8 days', '2022-08-15 00:00:00', '100/0', '', '', 2, '', '', 0, '2022-08-19 00:00:00', '2022-08-15 00:00:00'),
(208, '2021-12-18 09:39:36', 910, '2021', 'S-SE-L-M-910-1221-SXX2', '4502296658', 'Momentive Performance Materials (Thailand) Limited', 'Overhaul \"FINDER\" Liquid Ring Vacuum Pump Model : VPH 50160-A/XX, S/N : 0307621/ 01', 63600, 'M-0047', 'RS', 'Service', 'MO', '0.00', '', '32.06', '32.06', 63600, '', 'Complete', '', '2022-01-15 00:00:00', 'S-SE-0-1557-1221', '', 0, '', 'DELIVERED ADVANCE -3 days', '2021-12-17 00:00:00', '', '100/45', '', 2, '', '', 0, '2022-01-15 00:00:00', '2021-12-18 00:00:00'),
(209, '2021-12-18 11:48:27', 911, '2021', 'S-SF-L-M-911-1221-SXX2', 'ลูกค้าเซ็นต์คอนเฟิร์มในใบเสนอราคา', 'LAO THONG SING CO., LTD.', 'Overhaul \"Klaus Union\" Pump Model : SLM NVB 050-032-200-09E03 W, S/N : SN0081542', 60000, 'L-0017', 'RS', 'Service', 'MO', '0.00', '', '51.43', '30.00', 90000, '', 'Complete', '', '2022-01-14 00:00:00', 'S-SF-0-1556-1221', '', 0, '', 'DELIVERED ONTIME 0 days', '2021-12-18 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-01-14 00:00:00', '2021-12-18 00:00:00'),
(210, '2021-12-21 16:19:04', 912, '2021', 'S-SE-L-M-912-1221-SXX2', '4502297009', 'Momentive Performance Materials (Thailand) Limited', 'Overhaul \"SIHI\" Liquid Ring Vacuum Pump Model : LPHX 45316 AB AGE 0K 1, S/N : D-14-160021-01', 43000, 'M-0047', 'RS', 'Service', 'MO', '0.00', '', '41.50', '41.50', 43000, '', 'Complete', '', '2022-01-10 00:00:00', 'S-SE-0-1559-1221', '', 0, '', 'DELIVERED ADVANCE -3 days', '2021-12-21 00:00:00', '', '100/45', '', 2, '', '', 0, '2022-01-10 00:00:00', '2021-12-23 00:00:00'),
(211, '2021-12-27 11:58:08', 913, '2021', 'S-SP-L-M-913-1221-SXX2', 'POL-2564/0716', 'Dragonal Co.,Ltd.', 'Test capacity pump', 19000, 'D-0006', 'RS', 'Service', 'MO', '0.00', '', '51.05', '30.00', 28500, '', 'Complete', '', '2021-12-27 00:00:00', 'S-SP-0-1205-0921', '', 0, '', 'DELIVERED LATE 14 days', '2021-12-23 00:00:00', '', '100/30', '', 2, '', '', 0, '2021-12-27 00:00:00', '2021-12-27 00:00:00'),
(212, '2021-12-27 14:25:53', 914, '2021', 'S-SF-L-M-914-1221-SXX2', '4164005219', 'GENERAL CANDY CO.,LTD', 'Overhaul \"SIHI\" Liquid Ring Vacuum Pump Model : LEMB 161 8Z AA1 4B 0 GW, S/N : D-10-125384-01', 42750, 'G-0053', 'RS', 'Service', 'MO', '0.00', 'THB', '41.08', '44.02', 42750, '', 'Complete', '', '2022-01-28 00:00:00', 'S-SF-0-1579-1221', '', 0, '', 'DELIVERED ADVANCE -3 days', '2021-12-24 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-01-28 00:00:00', '2021-12-27 00:00:00'),
(213, '2021-12-29 09:17:06', 915, '2021', 'S-SF-L-M-915-1221-SPX2', 'P42110910', 'SAHAVIRIYA STEEL INDUSTRIES PUBLIC CO., LTD.', 'Change Packing & Hydrostatic Test for \"MERSEN\" Graphite Heat Exchanger Model : PBC13SL-3PU-1-1, S/N : 12335', 74000, 'S-0162', 'RS', 'Service', 'MO', '0.00', 'THB', '30.27', '30.27', 74000, '', 'Complete', '', '2022-02-16 00:00:00', 'S-SF-0-1576-1221', '', 0, '', 'DELIVERED ADVANCE -35 days', '2021-12-29 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-02-16 00:00:00', '2021-12-29 00:00:00'),
(214, '2022-01-26 13:59:21', 8001, '2022', 'S-SC-L-M-8001-0122-SXX2', '9222400136', 'Thai Rayon Public Company Limited', 'Overhaul \"SIHI\" Liquid Ring Vacuum Pump Model : LPHA 65327 BH 041 42 0', 78000, 'T-0257', 'RS', 'SR', 'MO', '0.00', '', '35.19', '40.00', 78000, '', 'Complete', '', '2022-03-16 00:00:00', 'S-SC-0-0046-0122', '', 0, '', 'DELIVERED ADVANCE -35 days', '2022-02-01 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-03-16 00:00:00', '2022-02-05 00:00:00'),
(215, '2022-02-02 15:25:54', 8002, '2022', 'S-SP-L-M-8002-0222-SXX2', 'AAH2201435-00', 'Double A (1991) Public Company Limited', 'PERFORMANCE TEST DIESEL FIRE PUMP Model : NT-855-G6, S/N : 11602 ', 18000, 'D-0004', 'RS', 'SR', 'MO', '0.00', '', '40.89', '40.89', 18000, '', 'ทำงานเสร็จแล้ว ลูกค้าเปิด PO ทีหลัง', '', '2022-03-11 00:00:00', 'S-SP-0-0086-0122', '', 0, '', 'DELIVERED ADVANCE -14 days', '2022-02-24 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-03-11 00:00:00', '2022-02-24 00:00:00'),
(216, '2022-02-02 15:27:18', 8003, '2022', 'S-SP-L-M-8003-0222-SXX2', 'POL-2565/0067', 'Dragonal Co.,Ltd.', 'Test capacity pump Flow measurement (2 sets)', 19000, 'D-0006', 'RS', 'SR', 'MO', '0.00', '', '30.53', '30.00', 19000, '', 'Complete - เข้าหน้างานแล้ววันที่ 03/02/2022 ลูกค้าเปิด PO ตามหลัง', '', '2022-02-14 00:00:00', 'S-SP-0-0103-0122', '', 0, '', 'DELIVERED ONTIME 0 days', '2022-02-03 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-02-03 00:00:00', '2022-02-05 00:00:00'),
(217, '2022-02-11 13:24:46', 8004, '2022', 'S-SF-L-M-8004-0222-SXX2', 'ลูกค้าเซ็นต์คอนเฟิร์มในใบเสนอราคา', 'LAO THONG SING CO., LTD.', 'Overhaul SIHI ZLND 032200 A1 AFK 4B 4G2', 18000, 'L-0017', 'RS', 'SR', 'MO', '0.00', '', '30.36', '41.93', 18000, '', 'Complete', '', '2022-02-25 00:00:00', 'S-SF-0-0170-0222', '', 0, '', 'DELIVERED ADVANCE -7 days', '2022-02-14 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-02-25 00:00:00', '2022-02-14 00:00:00'),
(218, '2022-02-11 13:48:42', 8005, '2022', 'S-SC-L-M-8005-0222-SXXC', '9000059746', 'Huntsman (Thailand) Ltd.', '(1) Performance Test for \"SIHI\" Liquid Ring Vacuum Pump Model : LPHX 55320 (No nameplate) Delivery Date : 7/5/22 (2) Overhaul \"Pompetravaini\" Vacuum Pump Model : PMH 156 D6X3 SP (Ref. SR-I-008-N-1221) Delivery Date : 7/4/22 ', 45000, 'H-0001', 'RS', 'SR', 'MO', '0.00', '', '39.50', '40.32', 45000, '', 'ลูกค้าเปิด PO รวม ลง delivery ตามกำหนดส่งที่มาถึงก่อน >>> Job1 : S-SC-0-0150-0222 (SIHI Vacuum Pump Test / Del : 7/5/22), Job2 : S-SC-0-0152-0222 & SR-I-008-N-1221 (Overhaul Pompetravaini Pump / Del : 7/4/22)', '', '2022-04-07 00:00:00', 'S-SC-0-0152-0222', '', 0, '', 'DELIVERED ADVANCE -16 days', '2022-02-10 00:00:00', '', '100/60', '', 2, '', '', 0, '2022-04-07 00:00:00', '2022-03-04 00:00:00'),
(219, '2022-02-17 11:12:30', 8006, '2022', 'S-SE-L-M-8006-0222-SXXE', '5004001397', 'Thai Plastic and Chemicals Public Company Limited ( Rayong )', 'Overhaul Existing Equipment for M-EA1312 ', 153000, 'T-0006', 'WR', 'SR', 'UL', '36.00', 'USD', '45.00', '45.42', 153000, '', '', '', '2022-03-12 00:00:00', 'S-SE-0-0184-0222', '', 0, '', 'DELIVERED LATE 82 days', '2022-03-02 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-03-12 00:00:00', '2022-03-03 00:00:00'),
(220, '2022-02-28 11:42:27', 8007, '2022', 'S-SC-L-M-8007-0222-SXXC', 'POD2200366', 'RCI Labscan Limited', 'Overhaul \"SIHI\" Liquid Ring Vacuum Pump Model : LEHY 8007 AB X3E VA 4', 70000, 'R-0024', 'RS', 'SR', 'UL', '0.00', 'THB', '32.02', '32.00', 70000, '', '', '', '2022-04-08 00:00:00', 'S-SC-0-0188-0222', '', 0, '', 'DELIVERED LATE 10 days', '2022-03-02 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-04-08 00:00:00', '2022-03-02 00:00:00'),
(221, '2022-03-03 17:30:09', 8008, '2022', 'S-SC-L-M-8008-0322-SXXC', '9000061715', 'Huntsman (Thailand) Ltd.', 'Addition Cost for Overhaul \"SIHI\" Liquid Ring Vacuum Pump Model : LPHX 55320 (No nameplate)', 37000, 'H-0001', 'RS', 'SR', 'MO', '0.00', 'THB', '40.00', '40.00', 37000, '', '', '', '2022-05-01 00:00:00', 'S-SC-0-0190-0222', '', 0, '', 'DELIVERED ADVANCE -40 days', '2022-03-02 00:00:00', '', '100/60', '', 2, '', '', 0, '2022-05-01 00:00:00', '2022-03-04 00:00:00'),
(222, '2022-03-08 09:53:11', 8009, '2022', 'S-SC-L-M-8009-0322-SXXC', '22PO02030032', 'GENERAL HOSPITAL PRODUCTS PUBLIC CO.,LTD.', 'Overhaul KOP KDIN-C 150/20-160 + Transportation', 41500, 'G-0016', 'RS', 'SR', 'UL', '0.00', 'THB', '41.83', '40.00', 41500, '', '', '', '2022-04-04 00:00:00', 'S-SC-A-0216-0222', '', 0, '', 'DELIVERED ONTIME 0 days', '2022-03-08 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-04-04 00:00:00', '2022-03-08 00:00:00'),
(223, '2022-03-09 09:06:21', 8010, '2022', 'S-SP-L-M-8010-0322-SXXP', '5000032239', 'Siam Kraft Industry Co., Ltd ( Ban Pong )', 'Overhaul \"ANDRITZ\" Pump Model : MP40.3', 77000, 'S-0060', 'RS', 'SR', 'UL', '0.00', 'THB', '40.28', '40.00', 77000, '', '', '', '2022-05-06 00:00:00', 'S-SP-1-0088-0122', '', 0, '', 'DELIVERED ADVANCE -9 days', '2022-03-08 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-05-06 00:00:00', '2022-03-09 00:00:00'),
(224, '2022-03-09 09:25:19', 8011, '2022', 'S-SC-L-M-8011-0322-SXXC', '9222400167', 'Thai Rayon Public Company Limited', 'Repairing \"HOWDEN\" Rotary Lobe Blower Model : 711M-URAI 19046', 55800, 'T-0257', 'RS', 'SR', 'UL', '0.00', '', '50.72', '57.66', 83700, '', '', '', '2022-04-08 00:00:00', 'S-SC-1-0130-0222', '', 0, '', 'DELIVERED ADVANCE -1 days', '2022-03-08 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-04-08 00:00:00', '2022-03-09 00:00:00'),
(225, '2022-03-14 13:04:48', 8012, '2022', 'S-SC-L-M-8012-0322-SXXC', '9222400168', 'Thai Rayon Public Company Limited', 'Overhaul \"SIHI\" Liquid Ring Vacuum Pump Model : LPHA 55320 BN 135 42 0', 185000, 'T-0257', 'RS', 'SR', 'UL', '35.00', 'USD', '48.11', '40.00', 185000, '', '', '', '2022-05-13 00:00:00', 'S-SC-2-0044-0122', '', 0, '', 'DELIVERED ADVANCE -1 days', '2022-03-14 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-05-13 00:00:00', '2022-03-14 00:00:00'),
(226, '2022-03-17 09:12:57', 8013, '2022', 'S-SC-L-M-8013-0322-SXXC', 'PO6503002', 'Maximize Innovation Co., Ltd.', 'Remove \"Waterflow\" Pump Model : SW 220 to work shop for inspection', 5000, 'M-0103', 'RS', 'SR', 'MO', '0.00', 'THB', '16.00', '0.00', 2667, '', '', '', '2022-03-25 00:00:00', 'S-SC-1-0187-0222', '', 0, '', 'DELIVERED ADVANCE -7 days', '2022-03-16 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-03-03 00:00:00', '2022-03-17 00:00:00'),
(227, '2022-03-18 14:33:05', 8014, '2022', 'S-SC-L-M-8014-0322-SXXC', '22PO02030178', 'GENERAL HOSPITAL PRODUCTS PUBLIC CO.,LTD.', 'Overhaul \"SIHI\" Pump Model : ZLKY 125-200/195 AK DA0 4B 4', 46000, 'G-0016', 'RS', 'SR', 'UL', '0.00', '', '40.22', '40.00', 46000, '', '', '', '2022-04-18 00:00:00', 'S-SC-0-0256-0322', '', 0, '', 'DELIVERED ONTIME 0 days', '2022-03-18 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-04-13 00:00:00', '2022-03-14 00:00:00'),
(228, '2022-03-29 13:58:05', 8015, '2022', 'S-SE-L-M-8015-0322-SXXE', 'PO/2022/631-0', 'TPT Petrochemicals Public Company Limited', 'Overhaul \"Leistritz\" Three Spindle Pump Model : L3MG-125/250-VFOGNO-O, S/N : 005753', 133000, 'T-0215', 'RS', 'SR', 'UL', '40.00', 'EUR', '37.44', '37.00', 133000, '', 'Revised PO no. R1-273-8015-0322 เนื่องจาก Leistritz เปลี่ยน delivery term เป็น DAP Thailand', '', '2022-07-01 00:00:00', 'S-SE-3-0191-0222', '', 0, '', 'DELIVERED ADVANCE -44 days', '2022-03-28 00:00:00', '', '100/30', '', 2, '', '', 1, '2022-07-01 00:00:00', '2022-03-30 00:00:00'),
(229, '2022-04-05 11:05:22', 8016, '2022', 'S-SC-L-M-8016-0422-SXXT', 'PO650400017', 'Circular Energy Co., Ltd.', 'Overhaul Flowserve ZLND 150200 A1 AFK 4B 4A2', 50600, 'C-0150', 'RS', 'SR', 'UL', '0.00', '', '38.67', '40.00', 35420, '', '', '', '2022-05-09 00:00:00', 'S-SC-1-0376-0422', '', 0, '', 'DELIVERED LATE 16 days', '2022-05-11 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-05-09 00:00:00', '2022-05-11 00:00:00'),
(230, '2022-04-05 11:46:56', 8017, '2022', 'S-SR-L-M-8017-0422-SXXT', 'FT295/65', 'Yearrakarn Co., Ltd.', 'Repairing \"Grundfos\" Pump model : CR15-17 A-F-A-E-HQQE', 70000, 'Y-0022', 'RS', 'SR', 'UL', '0.00', '', '42.93', '42.00', 49000, '', '', '', '2022-05-05 00:00:00', 'S-SR-0-0322-0322', '', 0, '', 'DELIVERED LATE 5 days', '2022-04-05 00:00:00', '100/0', '', '', 2, '', '', 0, '2022-05-05 00:00:00', '2022-04-06 00:00:00'),
(231, '2022-04-08 10:19:57', 8018, '2022', 'S-SP-L-M-8018-0422-SXXT', '8010399921', 'Siam Kraft Industry Co., Ltd ( Ban Pong )', 'Overhaul for \"SIHI\" Type:MSLA 05005 9BA AF3 0R P07', 306000, 'S-0060', 'RS', 'SR', 'UL', '0.00', '', '50.49', '30.00', 321300, '', 'ออก IO ล่าช้ากว่า 3 วัน เนื่องจากต้องรอเช็คราคา spare parts จาก source ใหม่', '', '2022-09-16 00:00:00', 'S-SP-1-0661-0521', '', 0, '', 'MARGIN REMAIN -9 days', '2022-04-06 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-09-16 00:00:00', '2022-04-18 00:00:00'),
(232, '2022-04-18 15:57:01', 8019, '2022', 'S-SC-L-M-8019-0422-SXXT', 'PO6504027', 'Asia Pacific Petrochemical Co., Ltd. Mae Nam Tank Terminal ( MNT  )', 'Overhaul \"EBARA\" 80x65 FSS HA, S/N P140714-07', 29250, 'A-0330', 'RS', 'SR', 'UL', '0.00', '', '14.53', '21.37', 9917, '', 'แก้ไข delivery date ใน PO ที่ระบุมาวันที่ 1/4/2022 แต่ทางบริษัทฯ ได้รับ PO วันที่ 18/4/2022 กำหนดส่ง 2 weeks after PO', '', '2022-05-06 00:00:00', 'S-SC-1-0345-0322', '', 0, '', 'DELIVERED ADVANCE -3 days', '2022-04-18 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-04-01 00:00:00', '2022-04-18 00:00:00'),
(233, '2022-04-18 16:15:34', 8020, '2022', 'S-SC-L-M-8020-0422-SPXT', '9223400003', 'Thai Rayon Public Company Limited', 'Overhaul \"SIHI\" Liquid Ring Vacuum Pump Model : LPHA 65327 BH 041 42 0 S/N D-02-70953-01', 111465, 'T-0257', 'RS', 'SR', 'UL', '0.00', '', '27.05', '33.33', 70353, '', '', '', '2022-07-19 00:00:00', 'S-SC-1-0246-0322', '', 0, '', 'DELIVERED ADVANCE -8 days', '2022-04-18 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-07-19 00:00:00', '2022-04-19 00:00:00'),
(234, '2022-04-18 16:21:52', 8021, '2022', 'S-SC-L-M-8021-0422-SPXT', '9223500033', 'Thai Rayon Public Company Limited', 'Overhaul Graphite India', 430000, 'T-0257', 'RS', 'SR', 'UL', '0.00', '', '38.51', '40.00', 301000, '', '', '', '2022-08-01 00:00:00', 'S-SC-1-0300-0322', '', 0, '', 'DELIVERED LATE 14 days', '2022-04-18 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-06-10 00:00:00', '2022-04-19 00:00:00'),
(235, '2022-04-27 16:27:17', 8022, '2022', 'S-SE-L-M-8022-0422-SXXT', '4972458517', 'BASF (Thai) Ltd.', 'Overhaul SIHI model: NOWA 200400', 70000, 'B-0097', 'RS', 'SR', 'UL', '0.00', '', '43.44', '40.00', 49000, '', '', '', '2022-05-13 00:00:00', 'S-SE-0-0419-0422', '', 0, '', 'DELIVERED ADVANCE -9 days', '2022-04-29 00:00:00', '', '100/90', '', 2, '', '', 0, '2022-04-29 00:00:00', '2022-04-29 00:00:00'),
(236, '2022-04-27 17:44:03', 8023, '2022', 'S-SP-L-M-8023-0422-SPXT', 'AAH2203208-00', 'Double A (1991) Public Company Limited', 'Overhaul for \"NASH CL 2001\" Vacuum pump', 165000, 'D-0004', 'RS', 'SR', 'UL', '0.00', '', '45.94', '40.00', 115500, '', '', '', '2022-09-26 00:00:00', 'S-SP-1-0350-0322', '', 0, '', 'MARGIN REMAIN -19 days', '2022-05-06 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-05-31 00:00:00', '2022-05-07 00:00:00'),
(237, '2022-04-29 16:17:06', 8024, '2022', 'S-SR-L-M-8024-0422-SXXT', 'FT384/65', 'Yearrakarn Co., Ltd.', 'Overhaul Stator for Motor Brand: Grundfos 15KW.2POLE 380 V ', 6000, 'Y-0022', 'RS', 'SR', 'RS', '0.00', '', '36.67', '58.00', 4200, '', '', '', '2022-06-07 00:00:00', 'S-SR-0-0451-0422', '', 0, '', 'DELIVERED ADVANCE -28 days', '2022-05-07 00:00:00', '', '0', '', 2, '', '', 0, '2022-06-07 00:00:00', '2022-05-09 00:00:00'),
(238, '2022-05-03 10:39:15', 8025, '2022', 'S-SR-L-M-8025-0522-SXXT', 'PO0018202', 'Productive Vacuum Technology Co., Ltd.', 'Overhaul Liquid Ring Pump LRP LR1A1600 + Performance Test', 71000, 'P-0152', 'RS', 'SR', 'UL', '0.00', 'THB', '33.94', '34.00', 49700, '', 'Cancelled IO เนื่องจากมีรายการที่ต้องซ่อมเพิ่มเติม และมีค่าใช้จ่ายเพิ่ม ลูกค้า revised PO ยอดใหม่มาให้ จึงออกเป็น IO ใหม่แทน (เปลี่ยนเป็น IO 8029)', '', '2022-05-31 00:00:00', 'S-SR-1-0134-0222', '', 0, '', 'CANCEL', '2022-05-03 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-05-31 00:00:00', '2022-05-06 00:00:00'),
(239, '2022-05-12 14:13:12', 8026, '2022', 'S-SC-L-M-8026-0522-SXXT', '9223400013', 'Thai Rayon Public Company Limited', 'Overhaul \"SIHI\" Liquid Ring Vacuum Pump Model : LPHA 65327 BN 041 42 0', 129465, 'T-0257', 'RS', 'SR', 'UL', '0.00', '', '23.29', '33.00', 70356, '', '', '', '2022-08-16 00:00:00', 'S-SC-1-0244-0322', '', 0, '', 'DELIVERED LATE 6 days', '2022-05-12 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-08-16 00:00:00', '2022-05-12 00:00:00'),
(240, '2022-05-13 09:39:38', 8027, '2022', 'S-SF-L-M-8027-0522-SPXF', 'P42203627', 'SAHAVIRIYA STEEL INDUSTRIES PUBLIC CO., LTD.', 'Overhaul Heat Exchanger MERSON PBC13SL-3PU-1-1 Polybloc II H.E. S/N 12338', 81000, 'S-0162', 'RS', 'SR', 'UL', '0.00', '', '43.95', '44.00', 56700, '', 'Commission to TSS', '', '2022-06-27 00:00:00', 'S-SF-3-0344-0322', '', 0, '', 'DELIVERED ONTIME 0 days', '2022-05-12 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-06-27 00:00:00', '2022-05-13 00:00:00'),
(241, '2022-05-13 16:59:00', 8028, '2022', 'S-SF-L-M-8028-0522-SPXF', 'P42203631', 'SAHAVIRIYA STEEL INDUSTRIES PUBLIC CO., LTD.', 'Block 316G Merson Material : GT Kelite+ Qty 2 pc', 338000, 'S-0162', 'RS', 'SR', 'UL', '0.00', 'USD', '39.35', '40.00', 236600, '', 'Commission to TSS', '', '2022-10-12 00:00:00', 'S-SF-3-0343-0322', '', 0, '', 'MARGIN REMAIN -35 days', '2022-05-13 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-10-12 00:00:00', '2022-05-13 00:00:00'),
(242, '2022-05-20 10:31:35', 8029, '2022', 'S-SR-L-M-8029-0522-SXXT', 'PO0018202 REV#1', 'Productive Vacuum Technology Co., Ltd.', 'Overhaul Liquid Ring Vacuum Pump LRP LR1A1600', 91000, 'P-0152', 'RS', 'SR', 'UL', '0.00', '', '28.57', '28.00', 60664, '', '', '', '2022-06-07 00:00:00', 'S-SR-1-0500-0522', '', 0, '', 'DELIVERED ONTIME 0 days', '2022-05-19 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-05-31 00:00:00', '2022-05-20 00:00:00'),
(243, '2022-05-20 13:48:35', 8030, '2022', 'S-SC-L-M-8030-0522-SXXT', '9223400020', 'Thai Rayon Public Company Limited', 'Overhaul \"SIHI\" Liquid Ring Vacuum Pump Model : LPHA 65327 BN 041 42 0', 129465, 'T-0257', 'RS', 'SR', 'UL', '0.00', '', '23.29', '37.96', 70356, '', '', '', '2022-08-22 00:00:00', 'S-SC-1-0245-0322', '', 0, '', 'DELIVERED ONTIME 0 days', '2022-05-20 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-08-22 00:00:00', '2022-05-20 00:00:00'),
(244, '2022-05-24 14:53:09', 8031, '2022', 'S-SP-L-M-8031-0522-SXXT', '5000057627', 'Siam Kraft Industry Co., Ltd ( Wang-Sala )', 'Repair Grundfos Model:CRE10-06 A-A-A-E-HQQE', 30000, 'S-0167', 'RS', 'SR', 'UL', '0.00', '', '47.58', '40.00', 21000, '', '', '', '2022-07-07 00:00:00', 'S-SP-0-0529-0522', '', 0, '', 'DELIVERED ADVANCE -21 days', '2022-05-24 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-07-07 00:00:00', '2022-05-25 00:00:00'),
(245, '2022-06-01 10:20:10', 8032, '2022', 'S-SF-L-M-8032-0622-SXXT', 'POU222050011', 'Chok Chai Starch Co., Ltd.', 'Overhul for \"Grundfos/ A96512214P20810', 53900, 'C-0147', 'RS', 'SR', 'RS', '0.00', '', '43.67', '40.00', 37730, '', '', '', '2022-06-16 00:00:00', 'S-SF-0-0493-0522', '', 0, '', 'DELIVERED LATE 14 days', '2022-06-01 00:00:00', '', '', '', 2, '', '', 0, '2022-06-16 00:00:00', '2022-06-04 00:00:00'),
(246, '2022-06-03 11:32:37', 8033, '2022', 'S-SF-L-M-8033-0622-SXXT', '4510019617', 'Dole Thailand Limited', 'Overhaul KOP KLGB-220/Serial No.20052', 58000, 'D-0012', 'RS', 'SR', 'UL', '0.00', '', '50.00', '50.00', 40600, '', '', '', '2022-08-29 00:00:00', 'S-SF-2-0440-0422', '', 0, '', 'DELIVERED ADVANCE -34 days', '2022-05-31 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-06-24 00:00:00', '2022-06-03 00:00:00'),
(247, '2022-06-13 17:10:25', 8034, '2022', 'S-SP-L-M-8034-0622-SXXT', '5000064746', 'Siam Kraft Industry Co., Ltd ( Wang-Sala )', 'Overhaul Sulzer MBN50 ', 28000, 'S-0167', 'RS', 'SR', 'UL', '0.00', '', '63.10', '65.00', 39200, '', '', '', '2022-07-11 00:00:00', 'S-SP-1-0497-0522', '', 0, '', 'DELIVERED ONTIME 0 days', '2022-06-13 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-07-11 00:00:00', '2022-06-14 00:00:00'),
(248, '2022-06-17 15:36:19', 8035, '2022', 'S-SR-L-M-8035-0622-SXXT', '210068705', 'Saharoj Textile (1991) CO.,LTD.', 'Repair for Grundfos Model:CR15-12-A-0', 17000, 'S-0297', 'RS', 'SR', 'UL', '0.00', '', '27.88', '35.00', 11059, '', '', '', '2022-06-23 00:00:00', 'S-SR-1-0630-0622', '', 0, '', 'DELIVERED ONTIME 0 days', '2022-06-17 00:00:00', '0', '', '', 2, '', '', 0, '2022-06-23 00:00:00', '2022-06-17 00:00:00'),
(249, '2022-06-23 13:23:42', 8036, '2022', 'S-SR-L-M-8036-0622-SXXT', 'ใช้เลข Quotation ไม่มี PO', 'หจก.เทพเพ็ญวานิสย์', '', 1500, 'P-0217', 'RS', 'SR', 'RS', '0.00', '', '48.00', '48.00', 1050, '', '', '', '2022-06-23 00:00:00', 'S-SR-0-0696-0622', '', 0, '', 'DELIVERED ONTIME 0 days', '2022-06-23 00:00:00', '0', '', '', 2, '', '', 0, '2022-06-23 00:00:00', '2022-06-23 00:00:00'),
(250, '2022-06-27 14:10:37', 8037, '2022', 'S-SR-L-M-8037-0622-SXXT', 'PO0018523', 'Productive Vacuum Technology Co., Ltd.', 'Overhaul Liquid Ring Vacuum Pump LRP LR1A1600', 80000, 'P-0152', 'RS', 'SR', 'UL', '0.00', '', '27.50', '30.00', 51333, '', '', '', '2022-08-10 00:00:00', 'S-SR-2-0660-0622', '', 0, '', 'DELIVERED LATE 1 days', '2022-06-27 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-07-08 00:00:00', '2022-06-29 00:00:00'),
(251, '2022-06-27 14:15:23', 8038, '2022', 'S-SC-L-M-8038-0622-SXXT', '4501386934', 'AGC Chemicals (Thailand) Co., Ltd.', 'Overhaul PACO KP12209-JQ00J9', 90250, 'A-0104', 'RS', 'SR', 'UL', '0.00', '', '39.72', '40.00', 63175, '', '', '', '2022-07-06 00:00:00', 'S-SC-1-0490-0522', '', 0, '', 'DELIVERED LATE 13 days', '2022-06-23 00:00:00', '', '100/60', '', 2, '', '', 0, '2022-07-06 00:00:00', '2022-06-27 00:00:00'),
(252, '2022-06-27 14:17:49', 8039, '2022', 'S-SC-L-M-8039-0622-SXXT', '4501386708', 'AGC Chemicals (Thailand) Co., Ltd.', 'ตีปลอก housing bearing pump for Ebara pump', 9500, 'A-0104', 'RS', 'SR', 'UL', '0.00', '', '39.47', '39.00', 6650, '', '', '', '2022-07-05 00:00:00', 'S-SC-0-0282-0322', '', 0, '', 'DELIVERED LATE 14 days', '2022-06-23 00:00:00', '', '100/60', '', 2, '', '', 0, '2022-07-05 00:00:00', '2022-06-27 00:00:00'),
(253, '2022-06-27 14:27:42', 8040, '2022', 'S-SF-L-M-8040-0622-SXXT', '4510023885', 'Dole Thailand Limited', 'Addition Cost For Overhaul KOP KLGB-220/Serial No.20052', 85560, 'D-0012', 'RS', 'SR', 'UL', '0.00', '', '12.34', '17.00', 24636, '', '', '', '2022-09-26 00:00:00', 'S-SF-1-0623-0622', '', 0, '', 'MARGIN REMAIN -19 days', '2022-06-27 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-07-29 00:00:00', '2022-06-29 00:00:00'),
(254, '2022-06-27 14:47:59', 8041, '2022', 'S-SC-L-M-8041-0622-SXXT', '9000070944', 'Huntsman (Thailand) Ltd.', 'Repair For LPHX 55320 vacuum pump', 32550, 'H-0001', 'RS', 'SR', 'UL', '0.00', '', '35.09', '30.00', 22785, '', '', '', '2022-08-05 00:00:00', 'S-SC-0-0694-0622', '', 0, '', 'DELIVERED ADVANCE -32 days', '2022-06-28 00:00:00', '', '100/60', '', 2, '', '', 0, '2022-08-05 00:00:00', '2022-06-30 00:00:00'),
(255, '2022-06-29 17:02:52', 8042, '2022', 'S-SF-L-M-8042-0622-SXXT', '3174009708', 'Great Glove (Thailand) Co., Ltd.', 'Change mechanical seal \"KOP Type:KBH7N Size 50 mm. for Caprari Pump', 63705, 'G-0083', 'RS', 'SR', 'UL', '0.00', '', '42.27', '40.00', 44594, '', '', '', '2022-09-08 00:00:00', 'S-SF-3-0411-0422', '', 0, '', 'MARGIN REMAIN -1 days', '2022-06-29 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-07-15 00:00:00', '2022-07-01 00:00:00'),
(256, '2022-06-30 15:54:06', 8043, '2022', 'S-SC-L-M-8043-0622-SXXT', '9223400037', 'Thai Rayon Public Company Limited', 'Addition Cost for Repair blocks heat exchangers Type : Graphite India (H2SO4 Cooler)', 68000, 'T-0257', 'RS', 'SR', 'UL', '0.00', '', '34.68', '40.00', 47600, '', '', '', '2022-07-29 00:00:00', 'S-SC-0-0592-0622', '', 0, '', 'DELIVERED LATE 4 days', '2022-07-11 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-07-29 00:00:00', '2022-07-12 00:00:00'),
(257, '2022-07-11 11:41:56', 8044, '2022', 'S-SE-L-M-8044-0722-SXXT', '2414381947', 'Covestro (Thailand) Co., Ltd.', 'Laser Alignment For Pump 013-19-004 ', 28800, 'C-0057', 'RS', 'SR', 'UL', '0.00', '', '32.43', '30.00', 20160, '', '', '', '2022-08-23 00:00:00', 'S-SE-0-0716-0622', '', 0, '', 'DELIVERED ADVANCE -4 days', '2022-08-16 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-07-29 00:00:00', '2022-08-17 00:00:00'),
(258, '2022-07-12 11:16:49', 8045, '2022', 'S-SP-L-M-8045-0722-SXXT', '5000076686', 'Siam Kraft Industry Co., Ltd ( Wang-Sala )', 'Overhaul \"SERO\" SPZ 118 WW G12E12E', 80000, 'S-0167', 'RS', 'SR', 'UL', '0.00', '', '29.40', '40.00', 54880, '', 'Sero increased the price', '', '2022-09-16 00:00:00', 'S-SP-0-0521-0522', '', 0, '', 'MARGIN REMAIN -9 days', '2022-07-13 00:00:00', '', '100/30', '', 2, '', '', 1, '2022-08-10 00:00:00', '2022-07-15 00:00:00'),
(259, '2022-07-18 11:33:30', 8046, '2022', 'S-SC-L-M-8046-0722-SXXT', '4974130754', 'BASF (Thai) Limited', 'Cleaning for \"Leistritz L2NG-082/140 IHOKIO-M\"', 25000, 'B-0059', 'RS', 'SR', 'UL', '0.00', '', '37.88', '30.00', 17500, '', '', '', '2022-08-09 00:00:00', 'S-SC-0-0780-0722', '', 0, '', 'DELIVERED ADVANCE -3 days', '2022-08-02 00:00:00', '', '100/90', '', 2, '', '', 0, '2022-07-30 00:00:00', '2022-08-03 00:00:00'),
(260, '2022-07-25 13:58:08', 8047, '2022', 'S-SF-L-M-8047-0722-SXXT', '4165003613', 'GENERAL CANDY CO.,LTD', 'Overhaul Motor Brand \"sterling sihi gmbh \" 5.0-6.0 KW. 4 POLE 380 Volt', 15000, 'G-0053', 'RS', 'SR', 'UL', '0.00', '', '25.23', '30.00', 8831, '', '', '', '2022-08-11 00:00:00', 'S-SF-0-0769-0722', '', 0, '', 'DELIVERED ADVANCE -5 days', '2022-07-25 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-08-11 00:00:00', '2022-07-25 00:00:00'),
(261, '2022-08-01 13:32:31', 8048, '2022', 'S-SE-L-M-8048-0822-SXXT', '6600079816', 'Aditya Birla Chemicals (Thailand) Limited', 'Cleaning and assembly for blocks heat exchangers', 170000, 'A-0054', 'RS', 'SR', 'UL', '0.00', '', '47.84', '40.00', 119000, '', '', '', '2022-08-19 00:00:00', 'S-SE-2-0827-0722', '', 0, '', 'DELIVERED ONTIME 0 days', '2022-08-11 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-08-19 00:00:00', '2022-08-16 00:00:00'),
(262, '2022-08-03 16:21:59', 8049, '2022', 'S-SR-L-M-8049-0822-SXXT', '3174009833', 'Great Glove (Thailand) Co., Ltd.', 'Addition Cost For Repair Water Feed Pump NUM.1 (Caprari)', 27000, 'G-0083', 'RS', 'SR', 'UL', '0.00', '', '67.04', '68.00', 37800, '', '', '', '2022-09-08 00:00:00', 'S-SR-0-0768-0722', '', 0, '', 'MARGIN REMAIN -1 days', '2022-08-03 00:00:00', '', '100/60', '', 2, '', '', 0, '2022-08-22 00:00:00', '2022-08-04 00:00:00'),
(263, '2022-08-05 13:28:49', 8050, '2022', 'S-SC-L-M-8050-0822-SXXT', 'POS650800001', 'Circular Energy Co., Ltd.', 'Service contracts for preventive maintenance 4 time/1 year ', 247000, 'C-0150', 'RS', 'SR', 'UL', '0.00', '', '39.27', '40.00', 172900, '', '', '', '2023-08-31 00:00:00', 'S-SC-2-0672-0622', '', 0, '', 'MARGIN REMAIN -358 days', '2022-08-05 00:00:00', '', '100/30', '', 2, '', '', 0, '2023-08-31 00:00:00', '2022-08-06 00:00:00'),
(264, '2022-08-15 16:02:21', 8051, '2022', 'S-SC-L-M-8051-0822-SXXT', 'ยังไม่ได้ PO ลูกค้า', 'Circular Energy Co., Ltd.', 'Alignment for main cooling water pump', 20000, 'C-0150', 'RS', 'SR', 'RS', '0.00', '', '40.00', '40.00', 14000, '', '', '', '2022-09-09 00:00:00', 'S-SC-0-0920-0822', '', 0, '', 'MARGIN REMAIN -2 days', '0000-00-00 00:00:00', '', '', '', 2, '', '', 0, '2022-08-22 00:00:00', '0000-00-00 00:00:00'),
(265, '2022-08-16 14:47:00', 8052, '2022', 'S-SR-L-S-8052-0822-IXXT', 'PO22001016-1', 'All Coco Group Co.,LTD.', 'Spare Parts Kit \"GRUNDFOS\"CRN3-2', 20000, 'A-0347', 'RS', 'SR', 'RS', '0.00', '', '35.37', '30.00', 14000, '', '', '', '2022-09-03 00:00:00', 'S-SR-1-0777-0722', '', 0, '', 'DELIVERED LATE 2 days', '2022-08-16 00:00:00', '100/0', '', '', 2, '', '', 0, '2022-08-16 00:00:00', '2022-08-17 00:00:00'),
(266, '2022-08-18 16:46:36', 8053, '2022', 'S-SP-L-M-8053-0822-SPXT', 'AAH2205352-00', 'Double A (1991) Public Company Limited', 'Shaft and spare part kit \"KSB\" Multistage Pump. Model : MTC D 50/10B-03.1 23.65', 93000, 'D-0004', 'RS', 'SR', 'RS', '0.00', '', '51.46', '50.00', 97650, '', '', '', '2022-09-30 00:00:00', 'S-SP-1-0743-0722', '', 0, '', 'MARGIN REMAIN -23 days', '2022-08-17 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-09-30 00:00:00', '2022-08-19 00:00:00'),
(267, '2022-08-18 16:48:07', 8054, '2022', 'S-SE-L-M-8054-0822-SXXT', '6600079902', 'Aditya Birla Chemicals (Thailand) Limited', 'Joint sealant W1/8(3MM.)XTHK1.5MMXL30MTR', 9000, 'A-0054', 'RS', 'SR', 'RS', '0.00', '', '46.60', '50.00', 6300, '', '', '', '2022-09-22 00:00:00', 'S-SE-0-0892-0822', '', 0, '', 'DELIVERED ADVANCE -34 days', '2022-08-10 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-09-22 00:00:00', '2022-08-17 00:00:00'),
(268, '2022-08-19 14:20:06', 8055, '2022', 'S-SC-L-M-8055-0822-SXXT', 'PM13665977-PM', 'Unilever Thai Holdings Ltd.', 'Overhaul SIHI Liquid ring vacuum pump Model:55320', 55000, 'U-0010', 'RS', 'SR', 'RS', '0.00', '', '44.52', '40.00', 38500, '', '', '', '2022-09-16 00:00:00', 'S-SC-0-0880-0822', '', 0, '', 'MARGIN REMAIN -9 days', '2022-08-19 00:00:00', '', '100/45', '', 2, '', '', 0, '2022-08-16 00:00:00', '2022-08-19 00:00:00'),
(269, '2022-08-19 15:06:05', 8056, '2022', 'S-SP-L-M-8056-0822-SXXT', '5000091829', 'Siam Kraft Industry Co., Ltd ( Wang-Sala )', 'Inspection for self priming pump', 5000, 'S-0167', 'RS', 'SR', 'RS', '0.00', '', '30.00', '40.00', 3500, '', '', '', '2022-09-06 00:00:00', 'S-SP-0-0928-0822', '', 0, '', 'DELIVERED ONTIME 0 days', '2022-08-19 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-09-06 00:00:00', '2022-08-19 00:00:00'),
(270, '2022-08-22 15:51:48', 8057, '2022', 'S-SC-L-M-8057-0822-SXXT', 'ยังไม่ได้ PO จากลูกค้า', 'Circular Energy Co., Ltd.', 'Air vent for Root blower pump.', 4000, 'C-0150', 'RS', 'SR', 'RS', '0.00', '', '35.00', '30.00', 2800, '', '', '', '2022-09-16 00:00:00', 'S-SC-0-0932-0822', '', 0, '', 'MARGIN REMAIN -9 days', '0000-00-00 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-08-26 00:00:00', '0000-00-00 00:00:00'),
(271, '2022-08-24 15:50:42', 8058, '2022', 'S-SC-L-M-8058-0822-SXXT', 'ยังไม่ได้ PO ลูกค้า', 'Circular Energy Co., Ltd.', 'Overhaul Flowserve Pump.ZLND125200,040250 ', 150000, 'C-0150', 'RS', 'SR', 'RS', '0.00', '', '40.00', '40.00', 105000, '', '', '', '2022-09-16 00:00:00', 'S-SC-2-0940-0822', '', 0, '', 'MARGIN REMAIN -9 days', '0000-00-00 00:00:00', '', '', '', 2, '', '', 0, '2022-08-31 00:00:00', '0000-00-00 00:00:00'),
(272, '2022-08-29 11:15:34', 8059, '2022', 'S-SE-L-M-8059-0822-SXXT', '2414425474', 'Covestro (Thailand) Co., Ltd.', 'Laser Alignment For Pump.013-19-044 & 013-19-045', 10000, 'C-0057', 'RS', 'SR', 'RS', '0.00', '', '11.70', '30.00', 2730, '', '', '', '2022-09-08 00:00:00', 'S-SE-0-0935-0822', '', 0, '', 'DELIVERED ADVANCE -6 days', '2022-09-01 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-09-08 00:00:00', '2022-09-01 00:00:00'),
(273, '2022-09-01 14:45:52', 8060, '2022', 'S-SR-L-M-8060-0922-SXXT', 'ยังไม่ได้รับ PO', 'DANAI PUMPS CO., LTD. ', 'Commisioning test run with report 22 sets', 90720, 'D-0047', 'RS', 'SR', 'RS', '0.00', '', '48.77', '40.00', 63504, '', '2,520 USD x 36 = 90720', '', '2022-09-10 00:00:00', 'S-SR-1-0726-0622', '', 0, '', 'MARGIN REMAIN -3 days', '0000-00-00 00:00:00', '100/0', '', '', 2, '', '', 0, '2022-09-10 00:00:00', '0000-00-00 00:00:00'),
(274, '2022-09-05 14:53:49', 8061, '2022', 'S-SC-L-M-8061-0922-SXXT', '9223400065', 'Thai Rayon Public Company Limited', 'Service charge for dismantle, cleaning and assembly for blocks heat exchangers', 430000, 'T-0257', 'RS', 'SR', 'RS', '0.00', '', '77.67', '40.00', 602000, '', '', '', '2022-11-16 00:00:00', 'S-SC-1-0873-0822', '', 0, '', 'MARGIN REMAIN -70 days', '2022-09-05 00:00:00', '', '100/30', '', 2, '', '', 0, '2022-11-16 00:00:00', '2022-09-06 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `io_report_wr`
--

CREATE TABLE `io_report_wr` (
  `io_id` int(11) NOT NULL,
  `io_date` datetime NOT NULL,
  `io_number` int(11) NOT NULL,
  `io_year` varchar(5) NOT NULL,
  `io_no` varchar(50) NOT NULL,
  `customer_po` varchar(100) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `des_cription` varchar(300) NOT NULL,
  `price` int(15) NOT NULL,
  `customer_code` varchar(10) NOT NULL,
  `sales` varchar(10) NOT NULL,
  `pec_group` varchar(10) NOT NULL,
  `issue_by` varchar(10) NOT NULL,
  `exchange` decimal(10,2) NOT NULL,
  `currency` varchar(5) NOT NULL,
  `margin` decimal(10,2) NOT NULL,
  `margin_q` decimal(10,2) NOT NULL,
  `credit` int(11) NOT NULL,
  `product_code` varchar(5) NOT NULL,
  `remarks` varchar(300) NOT NULL,
  `delivery` datetime NOT NULL,
  `from_io` varchar(100) NOT NULL,
  `exp_io` varchar(100) NOT NULL,
  `purpose` varchar(50) NOT NULL,
  `est_cost` int(15) NOT NULL,
  `term` varchar(100) NOT NULL,
  `io_status` varchar(30) NOT NULL,
  `po_receive` datetime NOT NULL,
  `term1` varchar(20) NOT NULL,
  `term2` varchar(20) NOT NULL,
  `term3` varchar(20) NOT NULL,
  `io_order` int(1) NOT NULL,
  `seal1` varchar(100) NOT NULL,
  `seal2` varchar(100) NOT NULL,
  `rev` int(2) NOT NULL,
  `prev_delivery` datetime NOT NULL,
  `io_ready` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `io_report_wr`
--

INSERT INTO `io_report_wr` (`io_id`, `io_date`, `io_number`, `io_year`, `io_no`, `customer_po`, `customer`, `des_cription`, `price`, `customer_code`, `sales`, `pec_group`, `issue_by`, `exchange`, `currency`, `margin`, `margin_q`, `credit`, `product_code`, `remarks`, `delivery`, `from_io`, `exp_io`, `purpose`, `est_cost`, `term`, `io_status`, `po_receive`, `term1`, `term2`, `term3`, `io_order`, `seal1`, `seal2`, `rev`, `prev_delivery`, `io_ready`) VALUES
(1, '2019-11-06 00:00:00', 950, '2019', 'P-KS-S-W-950-1119-IXXS', '', 'Inter Pacific Paper Co., Ltd.', '', 0, 'I-0014', 'JN', 'PW', 'UL', '0.00', '', '0.00', '0.00', 0, 'KS', '', '2019-11-08 08:44:29', '', '', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '2020-02-05 00:00:00', 950, '2020', 'F-KM-S-W-950-0220-IXX1', '', 'Thai Glycerine Co.,Ltd.', '', 0, 'T-0043', 'TSS', 'FI', 'MO', '0.00', '', '0.00', '0.00', 0, 'KM', '', '2020-02-07 09:01:38', '', '', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '2020-02-07 00:00:00', 951, '2020', 'F-SKF-L-W-951-0220-IXX1', '', 'Patum Vegetable Oil Company Limited', '', 0, 'P-0110', 'TSS', 'FI', 'MO', '0.00', '', '0.00', '0.00', 0, 'SKF', '', '2020-02-11 09:01:38', '', '', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '2020-02-07 00:00:00', 952, '2020', 'F-KM-S-W-952-0220-IXX1', '', 'THAI COLD ROLLED STEEL SHEET PUBLIC COMPANY LIMITED', '', 0, 'T-0150', 'TSS', 'FI', 'MO', '0.00', '', '0.00', '0.00', 0, 'KM', '', '2020-03-03 09:01:38', '', '', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '2020-03-16 00:00:00', 953, '2020', 'F-KM-A-W-953-0320-IXX1', '', 'Thai Glycerine Co.,Ltd.', '', 0, 'T-0043', 'TSS', 'FI', 'MO', '0.00', '', '0.00', '0.00', 0, 'KM', '', '0000-00-00 00:00:00', '', '', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '2020-03-17 00:00:00', 954, '2020', 'P-OT-L-W-954-0320-IXX1', '', 'ASIA KRAFT PAPER CO., LTD.', '', 0, 'A-0007', 'SK', 'PW', 'MO', '0.00', '', '0.00', '0.00', 0, 'OT', '', '0000-00-00 00:00:00', '', '', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '2020-04-16 00:00:00', 955, '2020', 'F-KS-A-W-955-0420-IXX1', '', 'Oleen Co., Ltd.', '', 0, 'O-0006', 'TSS', 'FI', 'NP', '0.00', '', '0.00', '0.00', 0, 'KS', 'Thai Cold Rolled Steel Sheet Public Company Limited.', '2020-05-15 00:00:00', '', '', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '2020-04-27 00:00:00', 956, '2020', 'C-SM-L-W-956-0420-IXX1', '', 'GENERAL HOSPITAL PRODUCTS PUBLIC CO.,LTD.', '\"SIEMENS\" Motor ( Europe )', 0, 'G-0016', 'NS', 'CG', 'MO', '0.00', '', '0.00', '0.00', 0, 'SM', '', '0000-00-00 00:00:00', '', '', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '2020-05-04 13:04:19', 957, '2020', 'F-CP-L-W-957-0520-IXX1', '', 'YTC Technology Co.,Ltd', '', 0, 'Y-0002', 'TSS', 'FI', 'MO', '0.00', '', '0.00', '0.00', 0, '', '', '0000-00-00 00:00:00', '', '', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '2020-09-21 14:44:09', 960, '2020', 'P-OT-L-W-960-0920-IXX1', '', 'THAI CANE PAPER PUBLIC COMPANY LIMITED', '', 0, 'T-0071', 'SK', 'PW', 'MO', '0.00', '', '0.00', '0.00', 0, '', '', '0000-00-00 00:00:00', '', '', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '2020-08-27 21:14:43', 958, '2020', 'F-KP-S-W-958-0820-IXX1', '', 'Katevanich Industry Co., Ltd.', '', 0, 'K-0003', 'TSS', 'FI', 'NP', '0.00', '', '0.00', '0.00', 0, '', '', '0000-00-00 00:00:00', '', '', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '2020-09-15 21:14:43', 959, '2020', 'F-KM-S-W-959-0920-IXX1', '', 'Oleen Co., Ltd.', '', 0, 'O-0006', 'TSS', 'FI', 'MO', '0.00', '', '0.00', '0.00', 0, '', '', '2020-09-16 00:00:00', '', '', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '2020-09-28 15:45:17', 961, '2020', 'F-KP-S-W-961-0920-IXX1', '', 'Three Top', '', 0, 'T-0296', 'TSS', 'FI', 'NP', '0.00', '', '0.00', '0.00', 0, '', '', '0000-00-00 00:00:00', '', '', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '2020-10-07 15:45:17', 962, '2020', 'C-RI-L-W-962-1020-IXX2', '', 'Siam PVS', '', 0, 'S-0056', 'PD', 'CG', 'MO', '0.00', '', '0.00', '0.00', 0, '', '', '0000-00-00 00:00:00', '', '', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '2020-10-21 16:45:36', 963, '2020', 'P-SU-S-W-963-1020-IXX1', '', 'Thaicane Paper', '', 0, '', 'SK', 'PW', 'NP', '0.00', '', '0.00', '0.00', 0, '', '', '0000-00-00 00:00:00', 'P-AP-A-S-232-0619-AXXS', '', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '2020-11-05 15:14:18', 964, '2020', 'P-SU-S-W-964-1120-IXX1', '', 'Siam Kraft Industry', '', 0, '', 'SK', 'PW', 'NP', '0.00', '', '0.00', '0.00', 0, '', '', '2019-08-31 00:00:00', 'P-AP-A-S-224-0619-AXXS', '', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '2020-11-09 16:01:36', 965, '2020', 'F-KM-S-W-965-1120-IXX1', '', 'Patum Vegetable Oil Company Limited', 'KOP MAX 3 Titanium pump_Pattanan Rev.3', 0, 'P-0110', 'TSS', 'FI', 'NP', '0.00', '', '0.00', '0.00', 0, '', '', '2020-07-30 00:00:00', 'F-KP-A-S-107-0320-AXX1', 'F-KP-A-S-375-1020-IXX1', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '2020-11-18 09:28:47', 966, '2020', 'F-OT-S-W-966-1120-IXX1', '', 'เกตุวานิชอุตสาหกรรม', '', 0, '', 'TSS', 'FI', 'MO', '0.00', '', '0.00', '0.00', 0, '', '', '2019-12-30 00:00:00', 'F-OT-A-S-426-1219-IXX1', '', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, '2020-11-27 16:36:22', 967, '2020', 'S-SF-L-W-967-1120-SXXS', '', 'THAI VISTA ENTERPRISE CO.,LTD', 'Overhaul Liquid Ring Compressor \" GEC ALSTHOM\" CL110', 0, 'T-0198', 'WW', 'Service', 'MO', '0.00', '', '0.00', '0.00', 0, '', '', '2018-12-20 00:00:00', 'S-SF-L-M-821-0818-SXXS', '', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, '2020-12-01 17:01:41', 968, '2020', 'P-OT-L-W-968-1220-IPXS', '', 'การไฟฟ้าฝ่ายผลิตแห่งประเทศไทย', '', 0, '', 'SK', 'PW', 'MO', '0.00', '', '0.00', '0.00', 0, '', '', '2019-08-10 00:00:00', 'P-OT-A-S-089-0219-IPXS', '', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, '2020-12-11 10:52:58', 969, '2020', 'F-KS-A-W-969-1220-IXX1', '', 'Thai Glycerine Co.,Ltd.', 'Mech seal and Shaft sleeve  BP202', 0, 'T-0043', 'TSS', 'FI', 'NP', '0.00', '', '0.00', '0.00', 0, '', '', '2020-09-18 00:00:00', 'F-KS-A-S-262-0720-IXX1', 'F-KS-A-S-034-0121-IXC1', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, '2021-01-14 08:35:21', 950, '2021', 'C-GW-L-W-950-0121-IXX1', '', 'The Siam Refractory Industry Co., Ltd', 'Grisword 1.5x1-6 (AA)', 0, 'S-0237', 'NS', 'CG', 'NP', '0.00', '', '0.00', '0.00', 0, '', '', '2020-09-16 00:00:00', 'C-GW-L-S-267-0820-AXX1', 'C-RV-A-S-001-0121-IXX1', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, '2021-01-22 11:39:26', 951, '2021', 'F-KP-S-W-951-0121-QXX1', '', 'Patum Vegetable Oil Company Limited', '9196 M2 1.5×3-10 OCM 11A_ Rev.9 (8 items)K.วิเนตร/คุณถนอมศักดิ์', 0, 'P-0110', 'TSS', 'FI', 'NP', '0.00', '', '0.00', '0.00', 0, '', '', '2020-09-30 00:00:00', 'F-KP-A-S-200-0620-QXX1', 'F-KP-A-S-406-1120-QXX1', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, '2021-02-12 15:34:17', 952, '2021', 'F-KP-S-W-952-0221-SXX1', '', 'Patum Vegetable Oil Company Limited', 'KOP MAx 3 Titanium pump_Pattanan Rev.3', 0, 'P-0110', 'TSS', 'FI', 'UL', '0.00', '', '0.00', '0.00', 0, '', '', '2020-07-15 00:00:00', 'F-KP-A-S-108-0320-AXX1', 'F-KS-A-S-034-0121-IXC1', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, '2021-03-30 13:17:48', 953, '2021', 'F-KP-S-W-953-0321-SXX1', '', 'บริษัท เหล็กแผ่นรีดเย็นไทย จำกัด(มหาชน)', '\"KOP\" Max 3, TiPd', 0, '', 'TSS', 'FI', 'NP', '0.00', '', '0.00', '0.00', 0, '', '', '2020-05-22 00:00:00', 'F-KP-A-S-002-0120-AXX1', 'P-KS-A-S-114-0321-IXC1', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, '2021-04-16 08:53:57', 954, '2021', 'E-KP-S-W-954-0421-AXX2', '', 'SCG CHEMICALS CO., LTD.', 'KDIN 24 150x125-250 CC4 A1D', 0, 'S-0153', 'AP', 'ES', 'NP', '0.00', '', '0.00', '0.00', 0, '', '', '2020-06-16 00:00:00', 'E-KP-S-S-159-0420-APX2', 'E-RM-A-S-178-0421-IPX2', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, '2021-04-20 08:33:37', 955, '2021', 'F-GW-S-W-955-0421-QXX1', '', 'Sime Darby OilsNonthaburi Co., Ltd.', 'ANSI Pump Model 3x2-10 (A60), 1.5x1-6 (AA), 3x1.5-6 (AB)', 0, 'S-0259', 'TSS', 'FI', 'NP', '0.00', '', '0.00', '0.00', 0, '', '', '2021-01-06 00:00:00', 'F-GW-A-S-372-1020-QXX1', 'F-KS-A-S-151-0321-IXX1', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, '2021-05-05 16:04:48', 956, '2021', 'C-KM-S-W-956-0521-IXX1', '', 'Eternal Resin', 'KOP Mechanical Seal Type : KJ9, Size : 41.2 mm, Q1Q1TGG', 0, '', 'KV', 'CG', 'MO', '0.00', '', '0.00', '0.00', 0, '', 'AM เข้าหน้างาน 06/05/21', '2021-05-06 00:00:00', 'C-ER-A-S-136-0319-AXXS', 'I-GW-S-S-080-0221-APX1', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, '2021-05-13 15:40:18', 957, '2021', 'F-KM-S-W-957-0521-SXX1', '', 'Katevanich Industry Co., Ltd.', '\"KOP\" Mechanical Seal KU2 for \"EBAB\" Rotary Gear Pump Model  :  RN25 L', 0, 'K-0003', 'TSS', 'FI', 'MO', '0.00', '', '0.00', '0.00', 0, '', '', '0000-00-00 00:00:00', 'F-EB-A-S-471-1220-IXX1', 'F-KM-S-S-152-0321-IXX1', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, '2021-06-08 14:37:47', 958, '2021', 'P-KP-L-W-958-0621-QPX1', '', 'Double A (1991) Public Company Limited', 'KDIN 125-32 CI-SS304-SS-MS', 0, 'D-0004', 'SK', 'PW', 'NP', '0.00', '', '0.00', '0.00', 0, '', 'เปลี่ยน oil seal', '2021-06-16 00:00:00', 'P-KP-A-S-420-1120-QPX1', 'P-KP-A-S-260-0521-IPC1', '', 0, '', '', '0000-00-00 00:00:00', '0', '0', '0', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, '2021-06-18 16:32:43', 959, '2021', 'F-KM-A-W-959-0621-IXX2', '', 'Siam Kraft Industry Co., Ltd', 'MP04-103-7A, Q2,', 0, 'S-0167', 'PB', 'FI', 'NP', '0.00', '', '0.00', '0.00', 0, '', '', '2021-06-27 00:00:00', 'F-KM-A-S-004-0121-IXX2', 'F-KM-A-S-175-0421-IXX2', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, '2021-07-14 16:44:35', 960, '2021', 'F-KP-A-W-960-0721-SXX1', '', 'CHAO KHUN AGRO PRODUCTS CO., LTD.', 'KOP Interchangeable with Sulzer Pump (Tag no. P126B) Model: KAPS 21 125x80-200 O3A XXD', 0, 'C-0081', 'TSS', 'FI', 'UL', '0.00', '', '0.00', '0.00', 0, '', '', '2021-09-16 00:00:00', 'F-KP-A-S-305-0820-QXC1', 'F-KP-A-S-104-0321-AXC1', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 3, '', '', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, '2021-07-29 11:24:09', 961, '2021', 'F-KV-L-W-961-0721-SXX1', '', 'Dole Thailand Limited', 'KOP Dry Vacuum Pump model: KLGB220', 0, 'D-0012', 'TSS', 'FI', 'UL', '0.00', '', '0.00', '0.00', 0, '', '', '2021-08-16 00:00:00', 'F-KV-A-S-356-0920-IXX1', 'F-KP-A-S-162-0321-AXC1', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, '2021-09-21 14:33:16', 962, '2021', 'C-RI-L-W-962-0921-IXX2', '', 'AGC Chemicals', 'Richter Magnetic Drive Pump model : RMA/F 3x2x6', 0, '', 'KV', 'CG', 'UL', '0.00', '', '0.00', '0.00', 0, '', 'Sales : PD', '2020-02-14 00:00:00', 'C-RI-A-S-363-1019-AXXS', 'C-RI-A-S-411-0821-APX2', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, '2021-09-24 16:26:02', 963, '2021', 'F-KP-A-W-963-0921-IXX1', '', 'Patum Vegetable Oil Company Limited', 'KDIN 32-26', 0, 'P-0110', 'TSS', 'FI', 'NP', '0.00', '', '0.00', '0.00', 0, '', 'ซื้อ Coupling ใหม่', '2020-11-13 00:00:00', 'F-KP-A-S-375-1020-IXX1', 'F-KS-S-S-377-0721-IXX1', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, '2021-09-28 17:05:53', 964, '2021', 'F-KM-A-W-964-0921-IXX2', '', 'GENERAL HOSPITAL PRODUCTS PUBLIC CO.,LTD.', '\"KOP\" Mechanical seal for KDIN 36 125x100-400 CC4 A1J Type KSGNZ 44 mm BQVGG', 0, 'G-0016', 'PB', 'FI', 'NP', '0.00', '', '0.00', '0.00', 0, '', 'ซื้อ seat ใหม่', '2021-03-17 00:00:00', 'F-KM-A-S-041-0121-IXX2', 'F-KM-A-S-447-0921-IXX2', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, '2021-10-04 11:26:39', 965, '2021', 'C-HM-A-W-965-1021-IXX2', '', 'Siam PVS Chemicals Co.,Ltd.', 'Hunt & Mitton Size 1 & 1.5\"', 0, 'S-0056', 'PD', 'CG', 'UL', '0.00', '', '0.00', '0.00', 0, '', 'โรงงานส่ง part มาให้ (ยังอยู่ใน warranty) เราทำการเปลี่ยน', '2020-12-08 00:00:00', 'C-HM-A-S-365-0920-IPX2', 'C-RV-A-S-321-0621-IXX2', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, '2021-10-18 14:38:30', 966, '2021', 'F-KM-A-W-966-1021-IXX2', '', 'Momentive Performance Materials (Thailand) Limited', '\"KOP\" Mechanical seal KE503', 0, 'M-0047', 'PB', 'FI', 'NP', '0.00', '', '0.00', '0.00', 0, '', 'ส่ง mech seal ไปซ่อมที่ TianFeng', '2021-05-28 00:00:00', 'F-KM-A-S-136-0321-IXX2', 'F-KM-L-S-504-1021-IXX2', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, '2021-11-22 08:14:51', 967, '2021', 'S-SE-L-W-967-1121-SXX2', '', 'Thai Ethoxylate Company Limited', 'Overhaul \"SIHI\" Liquid Ring Vacuum Pump Model : LPHX 55320 A5 AG1 4B1', 0, 'T-0154', 'RS', 'Service', 'MO', '0.00', '', '0.00', '0.00', 0, '', '', '2021-05-28 00:00:00', 'S-SE-L-M-826-0421-SPX2', 'S-SP-L-M-903-1121-SXX2', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, '2021-12-20 09:35:27', 968, '2021', 'C-GW-S-W-968-1221-AXX1', '', 'AGC Chemicals (Thailand) Co., Ltd.', '\"Griswold\" ANSI 811 Centrifugal Pump for tag no. PU-420', 0, 'A-0104', 'NS', 'CG', 'NP', '0.00', '', '0.00', '0.00', 0, '', 'Change mechanical seal because of leakage', '2020-06-30 00:00:00', 'C-GW-A-S-127-0420-AXX1', 'C-RI-A-S-518-1021-IXX2', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, '2022-01-15 14:31:22', 9001, '2022', 'C-KS-L-W-9001-0122-IPX2', '', 'Bangchak Bioethanol Co,. Ltd', 'Shaft Sleeve for Pump size 17\" SS316L', 0, 'B-0101', 'PD', 'CG', 'NP', '0.00', '', '0.00', '0.00', 0, '', 'Dimension sleeve ที่สั่งมา Size XL เล็กกว่า ใส่กับปั๊มลูกค้า 17\" ไม่ได้', '2022-02-03 00:00:00', 'C-KS-A-S-616-1221-IPX2', 'C-KV-A-S-492-1021-AXX2', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, '2022-03-23 16:06:18', 9002, '2022', 'F-OT-L-W-9002-0322-IXX1', '', 'CHAO KHUN AGRO PRODUCTS CO., LTD.', 'KOP Centrifugal Pump model : KAPS 33 150x125-400 O3A XXD c/w Siemens motor 45 kw, 4P  Qty 2 set  K-DIN-C 23 100x80-200 C34 J1D', 0, 'C-0081', 'TSS', 'FI', 'UL', '0.00', '', '0.00', '0.00', 0, '', 'เปลี่ยน mechanical seal, bearing ซ่อมมอเตอร์ไหม้', '2022-05-13 00:00:00', 'F-KP-A-S-357-0721-AXC1', 'F-KS-A-S-1038-0122-IXC1', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 3, '', '', 0, '0000-00-00 00:00:00', '2022-04-07 00:00:00'),
(43, '2022-04-11 16:25:03', 9003, '2022', 'F-KM-S-W-9003-0422-IXX1', '', 'Patum Vegetable Oil Company Limited', 'KOP MAx 3 Titanium pump_Pattanan Rev.3', 0, 'P-0110', 'TSS', 'FI', 'UL', '0.00', '', '0.00', '0.00', 0, '', 'Mech seal leak', '2020-07-15 00:00:00', 'F-KP-A-S-108-0320-AXX1', 'F-KP-A-S-476-0921-AXX1', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 3, '', '', 0, '0000-00-00 00:00:00', '2022-04-11 00:00:00'),
(44, '2022-05-05 16:58:11', 9004, '2022', 'F-KM-S-W-9004-0522-IXX2', '', 'THAI COLD ROLLED STEEL SHEET PUBLIC COMPANY LIMITED', 'KDRO Size 1.375 QQ/QBKMG', 0, 'T-0150', 'PB', 'FI', 'NP', '0.00', '', '0.00', '0.00', 0, '', '', '2021-10-18 00:00:00', 'F-KM-S-S-402-0821-IXX2', 'F-KM-A-S-447-0921-IXX2', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, '2022-06-04 13:26:53', 9005, '2022', 'I-IP-A-W-9005-0622-IXX1', '', 'PTT Global Chemical Public Company Limited', 'Throttle only for -AERP-58676-11', 0, 'P-0111', 'WR', 'CG', 'UL', '0.00', '', '0.00', '0.00', 0, '', '', '2022-06-20 00:00:00', 'I-IP-A-S-108-0321-IXX1', 'I-IP-S-S-1119-0322-IXX1', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 3, '', '', 0, '0000-00-00 00:00:00', '2022-06-04 00:00:00'),
(46, '2022-07-29 11:20:53', 9006, '2022', 'P-KP-S-W-9006-0722-AXX2', '', 'Siam Kraft Industry Co., Ltd ( Ban Pong )', '\"KOP\" End Suction Centrifugal Pump  (DIN 24255) Model : KDIN 13 65x50-200 CC4 A1D c/w \"ABB/SIEMENS\" High Efficiency Motor (IE2) 18.5 kw, 2 Poles, 400V / 3Ph / 50Hz, TEFC, IP55, Class F', 0, 'S-0060', 'JN', 'PW', 'MO', '0.00', '', '0.00', '0.00', 0, '', '', '2021-10-08 00:00:00', 'P-KP-S-S-441-0921-AXX2', 'P-KS-A-S-1280-0722-IXX2', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, '2022-08-02 08:54:03', 9007, '2022', 'P-KP-L-W-9007-0822-IXX2', '', 'THAI CANE PAPER PUBLIC COMPANY LIMITED', 'KOP Pump (Copied Andritz S8) c/w \"ABB/Siemens\" Motor IE2  Q\'ty 8 set', 0, 'T-0007', 'JN', 'PW', 'UL', '0.00', '', '0.00', '0.00', 0, '', 'เปลี่ยน Bearing', '2022-08-31 00:00:00', 'P-KP-A-S-610-1221-AXX2', 'P-KP-A-S-1216-0622-AXX2', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 3, '', '', 0, '0000-00-00 00:00:00', '2022-08-31 00:00:00'),
(48, '2022-08-04 11:45:43', 9008, '2022', 'M-KM-L-W-9008-0822-IXXT', '', 'Siam Kraft Industry Co., Ltd ( Wang-Sala )', '\"KOP\" Mechanical Seal for KOP MAX3 1M 1.5x1LF-82 , S/N 02609-314-0817 Type : KACDP Size 1.375\" QQ/QBDMG, ID1207 , 92KPKACDP-1375-GS-QQQBDMG-TBB', 0, 'S-0167', 'PB', 'FI', 'NP', '0.00', '', '0.00', '0.00', 0, '', 'กลึงเพลา 2 Pcs', '2021-12-24 00:00:00', 'F-KM-S-S-578-1121-IXX2', 'M-KM-A-S-1175-0522-IXCT', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, '2022-09-07 15:08:14', 9009, '2022', 'F-SO-S-W-9009-0922-IXX1', '', 'Sime Darby Oils Nonthaburi Co., Ltd.', 'Sero Horizontal Side Channel Pump model : SFH 442 WW G11T.10 c/w Marelli Motori Explosion Proof Motor 3 kW, 1450 rpm, EExd IIB, 380V/3PH/50Hz, IP55, Class F. All mounted on baseplate, coupling and coupling guard', 0, 'S-0259', 'TSS', 'FI', 'UL', '0.00', '', '0.00', '0.00', 0, '', 'เปลี่ยน oil seal', '2021-11-03 00:00:00', 'F-SO-A-S-396-0821-AXX1', 'F-KS-A-S-1213-0622-IXX1', '', 0, '', '', '0000-00-00 00:00:00', '', '', '', 3, '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `id` int(11) NOT NULL,
  `login_name` varchar(50) NOT NULL,
  `login_password` varchar(50) NOT NULL,
  `login_time` datetime NOT NULL,
  `logout_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`id`, `login_name`, `login_password`, `login_time`, `logout_time`) VALUES
(1, 'TR1', '??&??-L?&S?]0O&i', '2022-10-31 10:38:50', '2022-10-31 10:47:40'),
(2, 'TR1', '??&??-L?&S?]0O&i', '2022-10-31 10:47:44', '2022-10-31 10:47:44'),
(3, 'TR1', '??&??-L?&S?]0O&i', '2023-01-21 03:46:44', '2023-01-21 03:46:44'),
(4, 'TR1', '??&??-L?&S?]0O&i', '2023-01-25 15:49:38', '2023-01-25 15:49:38'),
(5, 'TR1', '??&??-L?&S?]0O&i', '2023-01-26 15:13:48', '2023-01-26 15:13:48'),
(6, 'TR1', '??&??-L?&S?]0O&i', '2023-01-27 01:20:24', '2023-01-27 01:20:24'),
(7, 'TR1', '??&??-L?&S?]0O&i', '2023-01-28 00:53:17', '2023-01-28 00:53:17'),
(8, 'TR1', '??&??-L?&S?]0O&i', '2023-01-31 05:11:59', '2023-01-31 05:11:59'),
(9, 'TR1', '??&??-L?&S?]0O&i', '2023-02-06 15:01:36', '2023-02-06 15:01:36'),
(10, 'TR1', '??&??-L?&S?]0O&i', '2023-02-07 07:56:34', '2023-02-07 07:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `pec_person`
--

CREATE TABLE `pec_person` (
  `pec_person_id` int(10) NOT NULL,
  `pec_code` varchar(20) NOT NULL,
  `name_surname_en` varchar(100) NOT NULL,
  `name_surname_th` varchar(100) NOT NULL,
  `pec_group` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  `dep_code` varchar(10) NOT NULL,
  `position` varchar(50) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `auth` varchar(50) NOT NULL,
  `io_code` varchar(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` blob NOT NULL,
  `sta_tus` varchar(10) NOT NULL,
  `target_start` datetime NOT NULL,
  `onleave` int(11) NOT NULL,
  `visit_start` datetime NOT NULL,
  `gender` varchar(10) NOT NULL,
  `level` int(11) NOT NULL,
  `dep_code_new` varchar(20) NOT NULL,
  `region` varchar(100) NOT NULL,
  `province` varchar(300) NOT NULL,
  `district` text NOT NULL,
  `tambon` text NOT NULL,
  `estate` text NOT NULL,
  `industry` text NOT NULL,
  `region_id` varchar(50) NOT NULL,
  `province_id` varchar(100) NOT NULL,
  `district_id` varchar(100) NOT NULL,
  `tambon_id` varchar(100) NOT NULL,
  `estate_id` varchar(100) NOT NULL,
  `industry_id` varchar(200) NOT NULL,
  `province_inc_id` varchar(100) NOT NULL,
  `province_inc` varchar(100) NOT NULL,
  `province_exc_id` varchar(100) NOT NULL,
  `province_exc` varchar(100) NOT NULL,
  `customer_inc` text NOT NULL,
  `customer_inc_id` varchar(100) NOT NULL,
  `customer_exc` text NOT NULL,
  `customer_exc_id` varchar(100) NOT NULL,
  `remarks` text NOT NULL,
  `area_code` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `pec_person`
--

INSERT INTO `pec_person` (`pec_person_id`, `pec_code`, `name_surname_en`, `name_surname_th`, `pec_group`, `department`, `dep_code`, `position`, `tel`, `mobile`, `email`, `auth`, `io_code`, `username`, `password`, `sta_tus`, `target_start`, `onleave`, `visit_start`, `gender`, `level`, `dep_code_new`, `region`, `province`, `district`, `tambon`, `estate`, `industry`, `region_id`, `province_id`, `district_id`, `tambon_id`, `estate_id`, `industry_id`, `province_inc_id`, `province_inc`, `province_exc_id`, `province_exc`, `customer_inc`, `customer_inc_id`, `customer_exc`, `customer_exc_id`, `remarks`, `area_code`) VALUES
(77, 'TR1', 'TR1', 'TR1', '', 'BD', 'BD', '', '', '', 'email1', 'BDM', '', 'TR1', 0x9bd126899e2d4c992653875d304f2669, '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 'Male', 0, 'BDT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(78, 'TR2', 'TR2', 'TR2', '', 'BD', 'BD', '', '', '', 'email2', 'BDM', '', 'TR2', 0x7f7916991f752db12befb49139bc6749, '', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 'Male', 0, 'BDT', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `po_report`
--

CREATE TABLE `po_report` (
  `po_id` int(11) NOT NULL,
  `po_year` varchar(10) NOT NULL,
  `po_date` datetime NOT NULL,
  `po_no` int(11) NOT NULL,
  `po_number` varchar(20) NOT NULL,
  `supplier_code` varchar(10) NOT NULL,
  `supplier_name` varchar(200) NOT NULL,
  `des_cription` varchar(300) NOT NULL,
  `issue_by` varchar(20) NOT NULL,
  `issue_for` varchar(20) NOT NULL,
  `po_type` varchar(20) NOT NULL,
  `remarks` varchar(300) NOT NULL,
  `combined` varchar(300) NOT NULL,
  `io_other` varchar(20) NOT NULL,
  `revised` varchar(10) NOT NULL,
  `rev_time` datetime NOT NULL,
  `po_status` varchar(10) NOT NULL,
  `cancel_io` varchar(100) NOT NULL,
  `supplier_codeA` varchar(10) DEFAULT NULL,
  `product_code` varchar(10) DEFAULT NULL,
  `buy_usd` decimal(12,2) NOT NULL,
  `buy_original` decimal(12,2) NOT NULL,
  `buy_currency` varchar(10) NOT NULL,
  `exchange_rate` decimal(10,4) NOT NULL,
  `shipped_by` varchar(50) NOT NULL,
  `region` varchar(20) NOT NULL,
  `credit` varchar(50) NOT NULL,
  `eta` datetime NOT NULL,
  `ata` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `po_report`
--

INSERT INTO `po_report` (`po_id`, `po_year`, `po_date`, `po_no`, `po_number`, `supplier_code`, `supplier_name`, `des_cription`, `issue_by`, `issue_for`, `po_type`, `remarks`, `combined`, `io_other`, `revised`, `rev_time`, `po_status`, `cancel_io`, `supplier_codeA`, `product_code`, `buy_usd`, `buy_original`, `buy_currency`, `exchange_rate`, `shipped_by`, `region`, `credit`, `eta`, `ata`) VALUES
(4200, '2022', '2022-08-25 09:54:03', 666, '666-1334-0822', 'I-0005', 'Inpro/seal company', 'Throttle and O-rings for Air Mizer Inpro/Seal DWG. No. T9965-ZA-67913-5   ', 'UL', 'WR', 'OVERSEAS', '', 'IO-1334/22 ', '', '0', '2022-08-26 13:19:43', '', '', 'IP', 'IP', '3354.00', '3354.00', 'USD', '1.0000', 'Air Freight', 'America', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4201, '2022', '2022-08-25 09:55:27', 667, '667-1335-0822', 'I-0005', 'Inpro/seal company', 'Throttle and O-rings for Air Mizer Inpro/Seal DWG. No. T9965-ZA-67929-5    ', 'UL', 'WR', 'OVERSEAS', '', 'IO-1335/22 ', '', '0', '2022-08-26 13:32:43', '', '', 'IP', 'IP', '3218.00', '3218.00', 'USD', '1.0000', 'Air Freight', 'America', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4202, '2022', '2022-08-25 15:18:19', 668, '668-1341-0822', 'I-0005', 'Inpro/seal company', 'Inpro/Seal Bearing Isolator for Goulds 3705MA 8x10-13N P/N 1787-A-M0019-5 shaft 2.063 bore 3.063 ', 'UL', 'WR', 'OVERSEAS', '', 'IO-1341/22 ', '', '0', '2022-08-25 15:19:31', '', '', 'IP', 'IP', '162.00', '162.00', 'USD', '1.0000', 'Air Freight', 'America', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4203, '2022', '2022-08-26 10:17:40', 669, '669-000-0822', 'ท-0100', 'ไทย ยูนิฟอร์ม เซ็นเตอร์ ', 'ชุดช่าง', 'OJ', 'ON', 'LOCAL', '', 'IO-000/22 ', 'IO-000', '0', '2022-08-30 14:01:53', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4204, '2022', '2022-08-26 16:10:26', 670, '670-8058-0822', 'ค-0058', 'บริษัท คอนเนอร์ เซอร์วิส เอ็นจิเนียริ่ง จำกัด', 'AC. Motor Brand \"ABB\'', 'OJ', 'RS', 'LOCAL', '', 'IO-8058/22 ', '', '0', '2022-08-30 14:01:30', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4205, '2022', '2022-08-26 16:11:15', 671, '671-1222-0822', 'ม-0042', 'ห้างหุ้นส่วนจำกัด เมธาเมทัลพลัส', 'เพลา ', 'OJ', '์NA', 'LOCAL', '', 'IO-1222/22 ', '', '0', '2022-08-30 14:02:31', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4206, '2022', '2022-08-26 17:38:45', 672, '672-1222-0822', 'ส-0004', 'บริษัท สเปค แมคคานิคอล จำกัด', '', 'OJ', 'NA', 'LOCAL', '', 'IO-1222/22 ', '', '0', '2022-08-30 14:02:15', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4207, '2022', '2022-08-29 11:20:51', 673, '673-1344-0822', 'ท-0066', 'บริษัท ทีอีพี คอร์ปอเรชั่น จำกัด', 'Rathi Tyre Flex Coupling Type : TO-9B', 'SI', 'SK', 'LOCAL', '', 'IO-1344/22 ', '', '0', '2022-08-30 11:07:14', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4208, '2022', '2022-08-29 11:38:54', 674, '674-000-0822', 'อ-0187', 'บริษัท อุดมทรัพย์ แมชชินทูล จำกัด', 'เม็ดมีด ', 'OJ', 'NA', 'LOCAL', '', 'IO-000/22 ', 'IO-000', '0', '2022-09-01 08:52:24', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4209, '2022', '2022-08-29 13:58:12', 675, '675-1332-0822', 'R-0009', 'RICHTER CHEMIE TECHNIK GMBH', 'Spare Parts for Richter Pump model : SCK/F 80-50-250 S/N 14-184162-11-2  1. PFA Lined Housing ID no. 9217-31-1513', 'UL', 'PS', 'OVERSEAS', '', 'IO-1332/22 ', '', '0', '2022-08-29 14:00:15', '', '', 'RI', 'RI', '11040.77', '9049.81', 'EUR', '1.2200', 'Air Freight', 'Asia', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4210, '2022', '2022-08-29 14:01:19', 676, '676-1332-0822', 'ค-0059', 'บริษัท เค เพาเวอร์ เอ็นจิเนียริ่ง จำกัด', 'Flender Spacer Coupling type N-Eupex H-110/100', 'UL', 'PS', 'LOCAL', '', 'IO-1332/22 ', '', '0', '2022-09-01 08:52:36', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '60', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4211, '2022', '2022-08-29 14:03:39', 677, '677-1332-0822', 'ฮ-0020', 'บริษัท ฮ.พัฒนารุ่งเรือง จำกัด', 'ค่าประกอบแท่น Richter Pump SCK/F 80-50-250 ', 'UL', 'PS', 'LOCAL', '', 'IO-1332/22 ', '', '0', '2022-08-29 14:04:35', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4212, '2022', '2022-08-29 16:02:31', 678, '678-1349-0822', 'ท-0066', 'บริษัท ทีอีพี คอร์ปอเรชั่น จำกัด', '\"Rathi\" N-flex coupling Type : RN(A)180 pilot bore', 'SI', 'TSS', 'LOCAL', '', 'IO-1349/22 ', '', '0', '2022-08-30 13:43:03', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4213, '2022', '2022-08-30 08:47:17', 679, '679-000-0822', 'D-0015', 'บริษัท ดับเบิ้ล พริ้น อินเตอร์ จำกัด ', 'ใบกำกับภาษี/ใบเสร็จรับเงิน  งานใบส่งของ/ใบแจ้งหนี้', 'OJ', 'OJ', 'LOCAL', '', 'IO-000/22 ', 'IO-000', '0', '2022-09-05 14:55:04', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4214, '2022', '2022-08-30 08:47:17', 680, '680-000-0822', 'อ-0128', 'บริษัท ออฟฟิศเมท จำกัด (มหาชน)', 'ของใช้สำนักงาน ', 'OJ', 'TP', 'LOCAL', '', 'IO-000/22 ', 'IO-000', '0', '2022-08-30 10:16:43', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4215, '2022', '2022-08-30 16:26:25', 681, '681-000-0822', 'น-0017', 'บริษัท นิวม่า ซิสเต็มส์ จำกัด', 'Vacumm Gauge 4\" ', 'OJ', 'MS', 'LOCAL', '', 'IO-000/22 ', 'IO-000', '0', '0000-00-00 00:00:00', '', '', NULL, NULL, '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4216, '2022', '2022-08-30 16:29:35', 682, '682-8055-0822', 'ส-0004', 'บริษัท สเปค แมคคานิคอล จำกัด', 'Dynamic balance impeller dia. 230x340x904 L', 'OJ', 'MS', 'LOCAL', '', 'IO-8055/22 ', '', '0', '0000-00-00 00:00:00', '', '', NULL, NULL, '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4217, '2022', '2022-08-30 16:35:06', 683, '683-999-0822', 'อ-0123', 'บริษัท อีโคซีล จำกัด', 'O-ring ', 'OJ', 'MS', 'LOCAL', '', 'IO-8053/22, IO-8055/22 ', '', '0', '2022-08-31 16:25:17', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4218, '2022', '2022-08-30 16:36:21', 684, '684-999-0822', 'อ-0123', 'บริษัท อีโคซีล จำกัด', 'O-ring', 'OJ', 'MS', 'LOCAL', '', 'IO-8053/22, IO-8055/22 ', '', '0', '0000-00-00 00:00:00', '', '', NULL, NULL, '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4219, '2022', '2022-08-30 16:37:49', 685, '685-8055-0822', 'ร-0009', 'ห้างหุ้นส่วนจำกัด รุ้งจรัสแสง', 'ฺBearing ', 'OJ', 'MS', 'LOCAL', '', 'IO-8055/22 ', '', '0', '0000-00-00 00:00:00', '', '', NULL, NULL, '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4220, '2022', '2022-08-30 16:37:49', 686, '686-999-0822', 'N-0008', 'NINGBO TIANGONG MECHANICAL SEALS CO.,LTD', 'KU2KR', 'SI', 'MS', 'OVERSEAS', '', 'IO-1285/22, IO-1351/22, IO-016/22 ', 'IO-016', '0', '2022-09-02 10:08:59', '', '', 'NB', 'KM', '0.00', '0.00', '', '0.0000', 'Air Freight', 'Asia', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4221, '2022', '2022-08-31 14:07:52', 687, '687-000-0822', 'ค-0058', 'บริษัท คอนเนอร์ เซอร์วิส เอ็นจิเนียริ่ง จำกัด', 'AC Motor ', 'OJ', 'MS', 'LOCAL', '', 'IO-000/22 ', 'IO-000', '0', '0000-00-00 00:00:00', '', '', NULL, NULL, '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4222, '2022', '2022-08-31 14:07:52', 688, '688-000-0822', 'T-0033', 'บริษัท ไตรภพกลการ จำกัด ', 'ค่ารับจ้างซ่อม', 'OJ', 'MS', 'LOCAL', '', 'IO-000/22 ', 'IO-000', '0', '2022-08-31 15:32:36', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4223, '2022', '2022-08-31 17:41:03', 689, '689-016-0822', 'ร-0023', 'บริษัท โรจน์ไพบูลย์ อีควิ๊ปเม้นท์ จำกัด', 'ท่อ เข้าสต็อค 4\", 3\",6\" ', 'OJ', 'TS', 'LOCAL', '', 'IO-016/22 ', 'IO-016', '0', '2022-09-01 08:52:52', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4224, '2022', '2022-09-01 09:57:24', 690, '690-1356-0922', 'ท-0001', 'บริษัท โทเทิล อินดัสเตรียล โซลูชั่น จำกัด', '\"Inline\" motor (IE2) 5.5kW, 2P, IM B3', 'SI', 'SS', 'LOCAL', '', 'IO-1356/22 ', '', '0', '2022-09-02 15:21:48', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4225, '2022', '2022-09-01 09:59:25', 691, '691-1356-0922', 'ฮ-0020', 'บริษัท ฮ.พัฒนารุ่งเรือง จำกัด', 'ค่าประกอบแท่น \"KOP\" Pump KDIN 13 50x32-200 CC4 A1D with Inline motor 5.5kW IE2 IM B3', 'SI', 'SS', 'LOCAL', '', 'IO-1356/22 ', '', '0', '2022-09-01 14:10:48', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4226, '2022', '2022-09-02 11:53:39', 692, '692-000-0922', 'K-0021', 'บริษัท กิ๊ฟท์ไวซ์เอเชีย จำกัด ', 'ขวดน้ำแสตนเลส', 'OJ', 'SJ', 'LOCAL', '', 'IO-000/22 ', 'IO-000', '0', '0000-00-00 00:00:00', '', '', NULL, NULL, '0.00', '0.00', '', '0.0000', '', '', 'มัดจำ 50%  ก่อนเริ่มงาน  50%   ก่อนส่งสินค้า', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4227, '2022', '2022-09-02 11:53:39', 693, '693-000-0922', 'K-0021', 'บริษัท กิ๊ฟท์ไวซ์เอเชีย จำกัด ', 'เลขว่างค่ะ ใช้งานเลขนี้ก่อน ', 'OJ', 'SJ', 'LOCAL', '', 'IO-000/22 ', 'IO-000', '0', '2022-09-02 11:53:56', 'CANCEL', '', '', '', '0.00', '0.00', '', '0.0000', '', '', 'มัดจำ 50%  ก่อนเริ่มงาน  50%   ก่อนส่งสินค้า', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4228, '2022', '2022-09-03 10:59:51', 694, '694-1352-0922', 'R-0010', 'บริษัท Richter EP ( Nanjing ) Co . , Ltd.', 'Richter Magnetic Drive Pump model : RMA/F 3x2x6', 'UL', 'PD', 'OVERSEAS', '', 'IO-1352/22 ', '', '0', '2022-09-03 11:01:00', '', '', 'RI', 'RI', '6929.05', '6929.05', 'USD', '1.0000', 'Air Freight', 'Asia', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4229, '2022', '2022-09-03 11:07:15', 695, '695-1352-0922', 'อ-0065', 'บริษัท ไอดี โซลูชั่น จำกัด', 'ABB Motor 11 kW, 2 Pole, Foot mounted, IE1, 380V,3Ph/50Hz, IP55, Class F', 'UL', 'PD', 'LOCAL', '', 'IO-1352/22 ', '', '0', '2022-09-03 11:08:16', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4230, '2022', '2022-09-03 11:22:20', 696, '696-1352-0922', 'ท-0066', 'บริษัท ทีอีพี คอร์ปอเรชั่น จำกัด', 'Rathi Spacer Coupling type RNS(H)95/100 Q\'ty 1 pc', 'UL', 'PD', 'LOCAL', '', 'IO-1352/22 ', '', '0', '2022-09-03 11:22:46', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4231, '2022', '2022-09-03 11:23:22', 697, '697-1352-0922', 'ฮ-0020', 'บริษัท ฮ.พัฒนารุ่งเรือง จำกัด', 'ค่าประกอบ Richter Pump RMA/F 3x2x6 with ABB motor 11 kw, 2 Pole, Rathi spacer coupling, Baseplate ต๊าปเกลียว and coupling guard', 'UL', 'PD', 'LOCAL', '', 'IO-1352/22 ', '', '0', '2022-09-03 11:25:29', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4232, '2022', '2022-09-03 13:34:16', 698, '698-1354-0922', 'N-0004', 'National Oilwell Varco Petroleum Equipment (Shanghai) Co.,Ltd.', 'Spare Parts for \"Robbins & Myers\" Pump model : A4E SSQ SAA 1. Stator P/N RQ A4E 6500 Q\'ty 1 pc  2. Rotor P/N SS A4E 5000 Q\'ty 1 pc', 'UL', 'WR', 'OVERSEAS', '', 'IO-1354/22 ', '', '0', '2022-09-03 13:45:13', '', '', 'RM', 'RM', '4999.13', '4999.13', 'USD', '1.0000', 'Sea Freight', 'Asia', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4233, '2022', '2022-09-03 14:01:10', 699, '699-1353-0922', 'I-0005', 'Inpro/seal company', 'Inpro/Seal P/N 2100-A-55170-6 Shaft 2.932” bore 4.390”', 'UL', 'WR', 'OVERSEAS', '', 'IO-1353/22 ', '', '0', '2022-09-03 14:01:38', '', '', 'IP', 'IP', '0.00', '0.00', 'USD', '1.0000', 'Air Freight', 'America', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4234, '2022', '2022-09-03 14:13:09', 700, '700-1348-0922', 'D-0007', 'DALIAN EXCHANFLOW FLUID EQUIPMENT CO., LTD.', 'IMPELLER OPEN, DIA.450 mm. , FOR PUMP Sulzer APP51-250 Material : A890 3A', 'UL', 'SK', 'OVERSEAS', '', 'IO-1348/22 ', '', '0', '2022-09-03 14:14:18', '', '', 'DL', 'KS', '1065.00', '1065.00', 'USD', '1.0000', 'Sea Freight', 'Asia', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4235, '2022', '2022-09-03 14:36:30', 701, '701-1345-0922', 'D-0007', 'DALIAN EXCHANFLOW FLUID EQUIPMENT CO., LTD.', 'IMPELLER OPEN, DIA.599 mm., FOR PUMP Sulzer APP54-400 Serial no. 94360801', 'UL', 'SK', 'OVERSEAS', '', 'IO-1345/22 ', '', '0', '2022-09-03 14:37:41', '', '', 'DL', 'KS', '6099.00', '6099.00', 'USD', '1.0000', 'Sea Freight', 'Asia', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4236, '2022', '2022-09-03 15:48:25', 702, '702-1347-0922', 'D-0007', 'DALIAN EXCHANFLOW FLUID EQUIPMENT CO., LTD.', 'Sulzer Pump model : EXA 32-80 and spare parts', 'UL', 'SK', 'OVERSEAS', '', 'IO-1347/22 ', '', '0', '2022-09-03 16:27:40', '', '', 'DL', 'KP', '6746.00', '6746.00', 'USD', '1.0000', 'Sea Freight', 'Asia', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4237, '2022', '2022-09-03 17:19:10', 703, '703-1346-0922', 'D-0007', 'DALIAN EXCHANFLOW FLUID EQUIPMENT CO., LTD.', 'Interchangeable spare part with Sulzer Pump ', 'UL', 'SK', 'OVERSEAS', '', 'IO-1346/22 ', '', '0', '2022-09-03 17:19:44', '', '', 'DL', 'KS', '0.00', '0.00', '', '0.0000', 'Sea Freight', 'Asia', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4238, '2022', '2022-09-05 13:17:28', 704, '704-578-0922', 'N-0008', 'NINGBO TIANGONG MECHANICAL SEALS CO.,LTD', '', 'NP', 'NR', 'OVERSEAS', '', 'IO-578/21 ', '', '0', '2022-10-24 15:41:01', '', '', NULL, 'KM', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4239, '2022', '2022-09-06 09:12:14', 705, '705-1356-0922', 'อ-0207', 'บริษัท เอส.เค. ฟิตติ้งวาล์ว จำกัด', 'หน้าแปลน ประเก็น น็อต สกรู', 'OJ', 'SS', 'LOCAL', '', 'IO-1356/22 ', '', '0', '0000-00-00 00:00:00', '', '', NULL, NULL, '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4240, '2022', '2022-09-06 09:12:14', 706, '706-000-0922', 'ต-0014', 'บริษัท โตสมบูรณ์ กรุ๊ป จำกัด', 'สี RAL 7032 ', 'OJ', 'NA', 'LOCAL', '', 'IO-000/22 ', 'IO-000', '0', '2022-09-06 13:56:18', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4241, '2022', '2022-09-06 09:30:41', 707, '707-1359-0922', 'R-0009', 'RICHTER CHEMIE TECHNIK GMBH', '\"Richter\" Lined Standard ASME/ANSI Ball Valve Series KNA/F Size 2\" Bare shaft valve', 'NP', 'CK', 'OVERSEAS', '', 'IO-1359/22 ', '', '0', '2022-09-06 10:48:54', '', '', 'RV', 'RV', '878.85', '720.37', 'EUR', '1.2200', 'Air Freight', 'Asia', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4242, '2022', '2022-09-06 10:03:50', 708, '708-1216-0922', 'ร-0009', 'ห้างหุ้นส่วนจำกัด รุ้งจรัสแสง', 'Bearing ', 'OJ', 'MS', 'LOCAL', '', 'IO-1216/22 ', '', '0', '2022-09-06 10:04:35', '', '', '', '', '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4243, '2022', '2022-09-07 12:56:02', 709, '709-1360-0922', 'N-0004', 'National Oilwell Varco Petroleum Equipment (Shanghai) Co.,Ltd.', 'Spare Parts for \"Robbins & Myers\" Pump 1. Stator P/N RB A4D 6510 Q\'ty 1 pc', 'UL', 'WR', 'OVERSEAS', '', 'IO-1360/22 ', '', '0', '2022-09-07 12:57:12', '', '', 'RM', 'RM', '831.14', '831.14', 'USD', '1.0000', 'Sea Freight', 'Asia', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4244, '2022', '2022-09-07 15:38:45', 710, '710-1222-0922', 'ร-0009', 'ห้างหุ้นส่วนจำกัด รุ้งจรัสแสง', 'Bearing  SKF 22210 ', 'OJ', 'WB', 'LOCAL', '', 'IO-1222/22 ', '', '0', '0000-00-00 00:00:00', '', '', NULL, NULL, '0.00', '0.00', '', '0.0000', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `product_year` varchar(5) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_type` varchar(50) NOT NULL,
  `product_code` varchar(10) NOT NULL,
  `team` varchar(20) NOT NULL,
  `leader` varchar(20) NOT NULL,
  `app` varchar(20) NOT NULL,
  `product_grade` varchar(5) DEFAULT NULL,
  `product_polar` varchar(5) DEFAULT NULL,
  `buy_usd` int(11) DEFAULT NULL,
  `sell_baht` int(11) DEFAULT NULL,
  `sell_PW` int(11) NOT NULL,
  `sell_ES` int(11) NOT NULL,
  `sell_CG` int(11) NOT NULL,
  `sell_FI` int(11) NOT NULL,
  `sell_AP` int(11) NOT NULL,
  `sell_SR` int(11) NOT NULL,
  `sell_MS` int(11) NOT NULL,
  `sell_TS` int(11) NOT NULL,
  `sell_VP` int(11) NOT NULL,
  `update_by` varchar(10) NOT NULL,
  `update_date` datetime NOT NULL,
  `source_code` int(11) DEFAULT NULL,
  `source_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `item`, `product_year`, `product_name`, `product_type`, `product_code`, `team`, `leader`, `app`, `product_grade`, `product_polar`, `buy_usd`, `sell_baht`, `sell_PW`, `sell_ES`, `sell_CG`, `sell_FI`, `sell_AP`, `sell_SR`, `sell_MS`, `sell_TS`, `sell_VP`, `update_by`, `update_date`, `source_code`, `source_name`) VALUES
(13, 0, '2022', 'Other', '', 'OT', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(19, 0, '2022', 'RAM Pump', '', 'RAM', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(20, 0, '2022', 'PACO', '', 'PC', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(26, 0, '2022', 'Haberg', '', 'HB', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 11:01:00', 20, 'Haberg'),
(30, 0, '2022', 'Argal', '', 'AG', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(48, 0, '2022', 'Service (PW)', '', 'SP', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(49, 0, '2022', 'Service Contract', '', 'SX', '', '', '', 'C', '+', 20000, 1200000, 0, 0, 0, 0, 0, 0, 0, 1200000, 0, 'TS', '2022-02-22 07:52:08', 0, ''),
(50, 0, '2022', 'Grundfos', '', 'GF', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(51, 0, '2022', 'Varisco', '', 'VC', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(52, 0, '2022', 'Ningbo Tian Gong', '', 'NB', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(54, 0, '2022', 'Suoto', '', 'SU', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 11:28:23', 4, 'Suoto'),
(55, 0, '2022', 'EXCFlow (Dalian)', '', 'EXC', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(56, 0, '2022', 'Allis Chalmers', '', 'AC', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(58, 0, '2022', 'Burgmann', '', 'BM', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(59, 0, '2022', 'Chinco', '', 'CC', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(60, 0, '2022', 'CHN', '', 'CHN', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(61, 0, '2022', 'Danai', '', 'DN', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 11:10:58', 12, 'Danai'),
(62, 0, '2022', 'Siemens', '', 'SM', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(63, 0, '2022', 'Inline', '', 'IL', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(64, 0, '2022', 'ABB', '', 'AB', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-12-28 12:19:02', 0, ''),
(65, 0, '2022', 'Excellence', '', 'EC', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 11:25:06', 7, 'Excellence'),
(66, 0, '2022', 'FBU', '', 'FBU', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(67, 0, '2022', 'Tiengfeng', '', 'TF', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(68, 0, '2022', 'Gardnerdenver', '', 'GD', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(69, 0, '2022', 'HYPV', '', 'HV', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(70, 0, '2022', 'K-FINS', '', 'KF', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 28, 'K-FINS PUMPS PVT. LTD.'),
(71, 0, '2022', 'Preeminence', '', 'PN', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 11:28:50', 3, 'Preeminence'),
(72, 0, '2022', 'Premier', '', 'PM', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 11:00:07', 21, 'Premier Pumps'),
(74, 0, '2022', 'Rathi', '', 'RA', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(75, 0, '2022', 'Sammi', '', 'SI', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(77, 0, '2022', 'SYPT', '', 'SY', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(78, 0, '2022', 'Technoshield', '', 'TS', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(79, 0, '2022', 'Service (East)', '', 'SE', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(80, 0, '2022', 'Service (FI)', '', 'SF', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(81, 0, '2022', 'Trisun', '', 'TR', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(82, 0, '2022', 'UET', '', 'UE', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(83, 0, '2022', 'Zhongtong', '', 'ZT', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 11:29:21', 2, 'Zhongtong'),
(84, 0, '2022', 'Young Poong', '', 'YP', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(85, 0, '2022', 'MarelliMotori', '', 'MR', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(88, 0, '2022', 'KIMA', '', 'K0', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:19:01', 14, 'KIMA'),
(91, 0, '2022', 'Verder', '', 'VD', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(93, 0, '2022', 'SIHI', '', 'SH', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(94, 0, '2022', 'Eifel', '', 'EF', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-18 16:09:23', 40, 'Eifel'),
(95, 0, '2022', 'Chemineer', '', 'CN', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(96, 0, '2022', 'Peerless', '', 'PL', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(98, 0, '2022', 'Dalian Exchanflow', '', 'DL', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 11:05:35', 16, 'Dalian Exchanflow'),
(100, 0, '2022', 'EVP', '', 'EV', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 11:29:50', 1, 'EVP'),
(101, 0, '2022', 'FLENDER', '', 'FD', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(102, 0, '2022', 'H.PATTANA', '', 'HP', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(103, 0, '2022', 'Contec', '', 'CT', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(104, 0, '2022', 'SKF', '', 'SK', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(105, 0, '2022', 'Amos Fluid Technology', '', 'AM', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 11:06:56', 15, 'Amos Fluid Technology'),
(106, 0, '2022', 'Shandong Shuanglun', '', 'SD', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 26, 'Shandong Shuanglun'),
(107, 0, '2022', 'URACA', '', 'UR', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(108, 0, '2022', 'EL-O-Matic', '', 'EL', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(110, 0, '2022', 'NEP', '', 'NP', '', '', '', NULL, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', NULL, NULL),
(116, 0, '2022', 'EBARA', '', 'EA', '', 'TEAM', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SJ', '2021-12-29 11:49:39', 27, 'EBARA'),
(117, 0, '2022', 'Shanghai Haoyang', '', 'SA', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 10:55:45', 24, 'Shanghai Haoyang'),
(118, 0, '2022', 'Thaidean', '', 'TD', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 10:57:49', 23, 'Thaidean'),
(119, 0, '2022', 'Carver Pump ( Krogh )', '', 'CV', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 10:59:16', 22, 'Carver Pump ( Krogh )'),
(120, 0, '2022', 'Shanghai Nuosai Pump', '', 'SN', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 11:03:03', 19, 'Shanghai Nuosai Pump'),
(121, 0, '2022', 'KJ Pump (Shanghai)', '', 'JK', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:20:20', 17, 'KJ Pump (Shanghai)'),
(122, 0, '2022', 'Shandong Precision Pumps', '', 'SG', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 11:10:23', 13, 'Shandong Precision Pumps'),
(123, 0, '2022', 'Sulzer', '', 'SZ', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 11:18:36', 11, 'Sulzer'),
(124, 0, '2022', 'Shanghai Liancheng', '', 'SL', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 11:19:42', 10, 'Shanghai Liancheng'),
(125, 0, '2022', 'Smoothflo', '', 'ST', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 11:22:57', 9, 'Smoothflo'),
(126, 0, '2022', 'Ligao', '', 'LG', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 11:24:40', 8, 'Ligao'),
(127, 0, '2022', 'East Pump', '', 'EP', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 11:26:01', 6, 'East Pump'),
(128, 0, '2022', 'STAC', '', 'SS', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2021-07-25 11:27:35', 5, 'STAC'),
(129, 0, '2022', 'Service (CG)', '', 'SC', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-02-03 08:21:46', 29, 'Service (CG)'),
(130, 0, '2022', 'Nanjing lanshen Pump Corp.LTD.', '', 'NL', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-01-05 10:41:02', 30, 'Nanjing lanshen Pump Corp.LTD.'),
(131, 0, '2022', 'Tobee', '', 'TB', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'UL', '2021-12-10 16:37:04', 31, 'Hebei Tobee Pump'),
(135, 0, '2022', 'Blackmer', '', 'BL', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'MO', '2022-02-02 09:14:02', 34, 'Blackmer'),
(140, 0, '2022', 'Roper', '', 'RP', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SI', '2022-05-17 12:02:19', 37, 'Roper'),
(283, 1, '2023', 'CRP', 'International Product', 'CR', 'Application', 'NP', 'NP', NULL, NULL, 10000, 500000, 0, 0, 0, 0, 0, 0, 0, 0, 500000, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(284, 2, '2023', 'KOP PC Pump Spare Parts', 'KOP', 'K3', 'Application', 'NP', 'NP', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(285, 3, '2023', 'All Primes', 'International Product', 'AP', 'Application', 'SI', 'SI', NULL, NULL, 25000, 1000000, 400000, 200000, 200000, 200000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(286, 4, '2023', 'M Pump', 'International Product', 'MP', 'Application', 'SI', 'SI', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(287, 5, '2023', 'KOP Coupling ', 'KOP', 'KC', 'Application', 'SI', 'SI', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(288, 6, '2023', 'EBAB', 'International Product', 'EB', 'Application', 'TW', 'TW', NULL, NULL, 5000, 300000, 120000, 0, 60000, 120000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(289, 7, '2023', 'Inno', 'International Product', 'IN', 'Application', 'TW', 'TW', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(290, 8, '2023', 'Vanton Pump', 'International Product', 'VT', 'Application', 'TW', 'TW', NULL, NULL, 20000, 1200000, 240000, 480000, 240000, 240000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(291, 9, '2023', 'Engineering Service (Boiler)', 'Engineering & Service', 'ES', 'Application', 'UL', 'UL', NULL, NULL, 0, 7200000, 0, 0, 0, 0, 7200000, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(292, 10, '2023', 'Bungartz Pump', 'International Product', 'BG', 'Application', 'UL', 'UL', NULL, NULL, 20000, 1200000, 0, 840000, 360000, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(293, 11, '2023', 'Engeplas', 'International Product', 'JE', 'Application', 'UL', 'UL', NULL, NULL, 5000, 300000, 0, 0, 0, 0, 0, 0, 0, 0, 300000, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(294, 12, '2023', 'PPI (Copied Nash)', 'International Product', 'PP', 'Application', 'UL', 'UL', NULL, NULL, 30000, 1800000, 720000, 0, 360000, 720000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(295, 13, '2023', 'Waukesha bearing ', 'International Product', 'WB', 'Application', 'UL', 'UL', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(296, 14, '2023', 'KOP Spare Parts', 'KOP', 'KS', 'Application', 'UL', 'ALL', NULL, NULL, 250000, 25000000, 13750000, 1250000, 3750000, 6250000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(297, 15, '2023', 'Griswold', 'International Product', 'GW', 'CG', 'PD', 'SI', NULL, NULL, 30000, 1800000, 180000, 540000, 540000, 540000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(298, 16, '2023', 'Richter Pump', 'International Product', 'RI', 'CG', 'PD', 'SI', NULL, NULL, 275000, 17000000, 1700000, 6800000, 5950000, 2550000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(299, 17, '2023', 'KOP LRVP', 'KOP', 'KV', 'CG', 'PD', 'NP', NULL, NULL, 70000, 5100000, 840000, 1500000, 1260000, 1500000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(300, 18, '2023', 'PTC Pump', 'International Product', 'PT', 'CG', 'TB', 'SI', NULL, NULL, 50000, 3000000, 450000, 600000, 1500000, 450000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(301, 19, '2023', 'KOP Sealless Pump', 'KOP', 'KZ', 'CG', 'TB', 'SI', NULL, NULL, 20000, 1200000, 240000, 0, 720000, 240000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(302, 20, '2023', 'Boyser', '', 'BS', 'CG', 'TY', 'SI', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:05:31', NULL, NULL),
(303, 21, '2023', 'KOP PD Pump (Rotary)', 'KOP', 'KD', 'CG', 'TY', 'SI', NULL, NULL, 100000, 6000000, 1200000, 0, 3600000, 1200000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(304, 22, '2023', 'KOP WARMAN', 'KOP', 'KG', 'CG', 'TY', 'NP', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(305, 23, '2023', 'Aquflo Pump', 'International Product', 'AF', 'ES', 'AT', 'UL', NULL, NULL, 10000, 600000, 0, 300000, 300000, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(306, 24, '2023', 'Backmer Gear Pump', 'International Product', 'ER', 'ES', 'AT', 'SI', NULL, NULL, 50000, 3000000, 600000, 900000, 900000, 600000, 0, 0, 0, 0, 0, 'TS', '2022-10-25 10:09:06', NULL, NULL),
(307, 25, '2023', 'NOV Mono/Moyno', 'International Product', 'RM', 'ES', 'AT', 'UL', NULL, NULL, 60000, 3600000, 1080000, 1440000, 540000, 540000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(308, 26, '2023', 'Witzenmann', 'International Product', 'WM', 'ES', 'AT', 'UL', NULL, NULL, 10000, 600000, 0, 600000, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(309, 27, '2023', 'KOP Metering Pump', 'KOP', 'K1', 'ES', 'AT', 'SI', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(310, 28, '2023', 'KOP API 610 ', 'KOP', 'KA', 'ES', 'AT', 'UL', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(311, 29, '2023', 'KOP PD (Recipocating)', 'KOP', 'KQ', 'ES', 'AT', 'SI', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(312, 30, '2023', 'GAB', 'International Product', 'GA', 'ES', 'PS', 'UL', NULL, NULL, 50000, 3000000, 0, 3000000, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(313, 31, '2023', 'GMM Pfaudler', 'International Product', 'GP', 'ES', 'PS', 'UL', NULL, NULL, 10000, 600000, 0, 600000, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(314, 32, '2023', 'Graphite Technology', 'International Product', 'GT', 'ES', 'PS', 'UL', NULL, NULL, 100000, 6000000, 0, 4200000, 0, 1800000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(315, 33, '2023', 'Klaus Union Pump', 'International Product', 'KU', 'ES', 'PS', 'UL', NULL, NULL, 80000, 4800000, 0, 2880000, 1440000, 480000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(316, 34, '2023', 'KOP Corosion Resistant Pump, Teflon Lined, Plastic', 'KOP', 'KT', 'ES', 'PS', 'NP', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(317, 35, '2023', 'Garbarino', 'International Product', 'GB', 'ES', 'WR', 'SI', NULL, NULL, 45000, 2000000, 0, 2000000, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(318, 36, '2023', 'Inpro seal', 'International Product', 'IP', 'ES', 'WR', 'UL', NULL, NULL, 90000, 7200000, 0, 7200000, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(319, 37, '2023', 'Interseal', 'International Product', 'IS', 'ES', 'WR', 'UL', NULL, NULL, 20000, 1200000, 0, 1200000, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(320, 38, '2023', 'Liestritz', 'International Product', 'LT', 'ES', 'WR', 'UL', NULL, NULL, 240000, 14400000, 1440000, 5760000, 5760000, 1440000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(321, 39, '2023', 'KOP Plate Heat Exchanger', 'KOP', 'KE', 'FI', 'CM', 'NP', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(322, 40, '2023', 'KOP Vacuum (,Rotaty Vane,Regenerative)', 'KOP', 'KO', 'FI', 'CM', 'NP', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(323, 41, '2023', 'KOP Food Grade Pump', 'KOP', 'KH', 'FI', 'KC', 'SI', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-25 10:39:37', NULL, NULL),
(324, 42, '2023', 'ROTO', 'International Product', 'RO', 'FI', 'TSS', 'TW', NULL, NULL, 100000, 6000000, 1200000, 600000, 1800000, 2400000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(325, 43, '2023', 'KOP Dry Vacuum Pump', 'KOP', 'KY', 'FI', 'TSS', 'NP', NULL, NULL, 40000, 2400000, 480000, 240000, 720000, 960000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(326, 44, '2023', 'KOP Mechanical Seal (Component)', 'KOP', 'KM', 'MS', 'NPT', 'TW', NULL, NULL, 100000, 10000000, 4000000, 2000000, 2000000, 2000000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(327, 45, '2023', 'KOP Seal (Cartridge) ', 'KOP', 'KM', 'MS', 'NR', 'TW', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(328, 46, '2023', 'Roten', 'International Product', 'RT', 'MS', 'NR/NPT', 'TW', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(329, 47, '2023', 'Sero Pump', 'International Product', 'SO', 'PW', 'JN', 'UL', NULL, NULL, 35000, 2100000, 840000, 420000, 420000, 420000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(330, 48, '2023', 'KOP Roto Jet', 'KOP', 'KK', 'PW', 'JN', 'NP', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(331, 49, '2023', 'KOP Multistage Pump', 'KOP', 'KX', 'PW', 'JN', 'NP', NULL, NULL, 50000, 4000000, 2400000, 500000, 500000, 600000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(332, 50, '2023', 'KOP HOT Oil ', 'KOP', 'KH', 'PW', 'SD', 'TW', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(333, 51, '2023', 'KSB Pump', 'International Product', 'KB', 'PW', 'SK', 'TW', NULL, NULL, 20000, 2000000, 1400000, 0, 0, 600000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(334, 52, '2023', 'KOP Kirloskar', 'KOP', 'KL', 'PW', 'SK', 'UL', NULL, NULL, 0, 1000000, 400000, 0, 200000, 400000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(335, 53, '2023', 'KOP PPE (Pulp & Paper Equip.)', 'KOP', 'KN', 'PW', 'SK', 'SI', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(336, 54, '2023', 'KOP Pump', 'KOP', 'KP', 'PW', 'SK', 'TW / SI', NULL, NULL, 300000, 35000000, 19250000, 1750000, 5250000, 8750000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(337, 55, '2023', 'Caprari', 'International Product', 'CP', 'PW', 'SS', 'NP', NULL, NULL, 30000, 1800000, 720000, 360000, 360000, 360000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(338, 56, '2023', 'KOP Self-Priming', 'KOP', 'K2', 'PW', 'SS', 'SI', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(339, 57, '2023', 'KOP Water (CR, Submers, Self-Priming, Split Case)', 'KOP', 'KW', 'PW', 'SS', 'TW / SI / NP', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(340, 58, '2023', 'Service Contact', 'Engineering & Service', 'CS', 'SS', 'RS', 'UL', NULL, NULL, 20000, 1200000, 0, 0, 0, 0, 0, 1200000, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(341, 59, '2023', 'Service Repair', '', 'SR', 'SR', 'RS', 'UL', NULL, NULL, 120000, 9600000, 0, 0, 0, 0, 0, 9600000, 0, 0, 0, 'TS', '2022-10-24 12:39:44', NULL, NULL),
(342, 60, '2023', 'Vacuum Package', 'Engineering & Service', 'VP', 'TS', 'TJ', 'NP', NULL, NULL, 40000, 2400000, 480000, 240000, 720000, 960000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(343, 61, '2023', 'Re-Engineering Parts', 'KOP', 'KR', 'TS', 'TJ', 'UL', NULL, NULL, 50000, 3600000, 900000, 900000, 900000, 900000, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(344, 62, '2023', 'Allied Supreme', 'International Product', 'AS', 'VP', 'CK', 'NP', NULL, NULL, 180000, 9600000, 0, 0, 0, 0, 0, 0, 0, 0, 9600000, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(345, 63, '2023', 'Hunt & Mitton', 'International Product', 'HM', 'VP', 'CK', 'UL', NULL, NULL, 60000, 3000000, 0, 0, 0, 0, 0, 0, 0, 0, 3000000, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(346, 64, '2023', 'Richter Valve', 'International Product', 'RV', 'VP', 'CK', 'NP', NULL, NULL, 50000, 2500000, 0, 0, 0, 0, 0, 0, 0, 0, 2500000, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(347, 65, '2023', 'UNP Polyvalve', 'International Product', 'UP', 'VP', 'CK', 'NP', NULL, NULL, 30000, 1500000, 0, 0, 0, 0, 0, 0, 0, 0, 1500000, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(348, 66, '2023', 'KOP PTFE Lied Pipe ', 'KOP', 'KJ', 'VP', 'CK', 'NP', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(349, 67, '2023', 'API (Heat Exchanger)', 'International Product', 'AI', 'VP', 'JS', 'NP', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(350, 68, '2023', 'Hunt & Mitton Control Valve', 'International Product', 'HC', 'VP', 'JS', 'UL', NULL, NULL, 20000, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 1000000, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(351, 69, '2023', 'Richter Control Valve', 'International Product', 'RC', 'VP', 'JS', 'NP', NULL, NULL, 30000, 1500000, 0, 0, 0, 0, 0, 0, 0, 0, 1500000, 'TS', '2022-10-24 12:02:47', NULL, NULL),
(352, 70, '2023', 'KOP Control Valve', 'KOP', 'KI', 'VP', 'JS', 'NP', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'TS', '2022-10-24 12:02:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_kpi`
--

CREATE TABLE `product_kpi` (
  `product_id` int(11) NOT NULL,
  `item` varchar(5) NOT NULL,
  `product_year` varchar(5) NOT NULL,
  `product_group` varchar(50) NOT NULL,
  `product_code` varchar(10) NOT NULL,
  `team` varchar(20) NOT NULL,
  `leader` varchar(20) NOT NULL,
  `app` varchar(20) NOT NULL,
  `staff` varchar(20) NOT NULL,
  `product_detail` varchar(100) NOT NULL,
  `product_detail_code` varchar(10) NOT NULL,
  `product_model` varchar(100) NOT NULL,
  `sales_target` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `po` int(11) NOT NULL,
  `tools` int(11) NOT NULL,
  `visit` int(11) NOT NULL,
  `quote` int(11) NOT NULL,
  `develop` varchar(20) NOT NULL,
  `update_by` varchar(10) NOT NULL,
  `update_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_kpi`
--

INSERT INTO `product_kpi` (`product_id`, `item`, `product_year`, `product_group`, `product_code`, `team`, `leader`, `app`, `staff`, `product_detail`, `product_detail_code`, `product_model`, `sales_target`, `customer`, `po`, `tools`, `visit`, `quote`, `develop`, `update_by`, `update_date`) VALUES
(1, '', '', 'KOP Metering Pump', 'K1', '', 'AT', 'SI', 'AT', 'API 675 Metering Pump', '', '', 200000, 2, 2, 5, 8, 2, 'KOP', 'TS', '2022-10-24 17:18:55'),
(2, '', '', 'KOP Metering Pump', 'K1', '', 'AT', 'SI', 'TY', 'Piston, Plunger', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(3, '', '', 'KOP Metering Pump', 'K1', '', 'AT', 'SI', 'SK', 'Hydruaclic Diaphargm', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(4, '', '', 'KOP Metering Pump', 'K1', '', 'AT', 'SI', 'KC', 'Solinoid, Mechanical Diaphargm', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(5, '', '', 'KOP Self-Priming', 'K2', '', 'SS', 'SI', 'SS', 'Hankia Design', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(6, '', '', 'KOP Self-Priming', 'K2', '', 'SS', 'SI', 'WR', 'Mark 3 Design', '', '', 800000, 2, 2, 3, 5, 1, 'KOP', 'TS', '2022-10-24 17:18:55'),
(7, '', '', 'KOP Self-Priming', 'K2', '', 'SS', 'SI', 'TB', 'GR Design', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(8, '', '', 'KOP Self-Priming', 'K2', '', 'SS', 'SI', 'KC', 'Varisco Design', '', '', 400000, 7, 7, 5, 20, 3, 'KOP', 'TS', '2022-10-24 17:18:55'),
(9, '', '', 'KOP PC Pump Spare Parts', 'K3', '', 'NP', 'NP', 'NP', 'KOP PC Pump Spare Parts', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(10, '', '', 'KOP PC Pump Spare Parts', 'K3', '', 'NP', 'NP', 'SI', 'KOP PC Pump Spare Parts', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(11, '', '', 'KOP Coupling ', 'KC', '', 'SI', 'SI', 'SI', 'Flender, Fenner', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(12, '', '', 'KOP Coupling ', 'KC', '', 'SI', 'SI', 'NP', 'TB-Woods', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(13, '', '', 'KOP PD (Rotary)', 'KD', '', 'TY', 'SI', 'TY', 'External Gear, Multi-Screw', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(14, '', '', 'KOP PD (Rotary)', 'KD', '', 'TY', 'SI', 'AT', 'Internal Gear, PC', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(15, '', '', 'KOP PD (Rotary)', 'KD', '', 'TY', 'SI', 'SD', 'Vane, Metal Lobe', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(16, '', '', 'KOP PD (Rotary)', 'KD', '', 'TY', 'SI', 'CM', 'Peristaltic, Rubber Lobe', '', '', 500000, 2, 2, 3, 8, 1, 'KOP', 'TS', '2022-10-24 17:18:55'),
(17, '', '', 'KOP Food Grade Pump', 'KF', '', 'KC', 'SI', 'KC', 'Centifulgal 1', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(18, '', '', 'KOP Food Grade Pump', 'KF', '', 'KC', 'SI', 'CM', 'Centifulgal 2', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(19, '', '', 'KOP Food Grade Pump', 'KF', '', 'KC', 'SI', 'TSS', 'Lobe, Screw', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(20, '', '', 'KOP WARMAN', 'KG', '', 'TY', 'NP', 'TY', 'Warmann pump of AH Model', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(21, '', '', 'KOP HOT Oil ', 'KH', '', 'SD', 'TW', 'SD', 'Nearly the same as KSB', '', '', 1200000, 8, 12, 5, 8, 3, 'KOP', 'TS', '2022-10-24 17:18:55'),
(22, '', '', 'KOP Roto Jet', 'KK', '', 'JN', 'NP', 'JN', 'High speed roto jet pump', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(23, '', '', 'KOP Seal (Component)', 'KM', '', 'NPT', 'TW', 'NPT', '', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(24, '', '', 'KOP Seal (Cartridge) ', 'KM', '', 'NR', 'TW', 'NR', 'ANSI, ISO, Sulzer, Andritz', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(25, '', '', 'KOP PPE (Pulp & Paper Equip.)', 'KN', '', 'SK', 'SI', 'SK', '', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(26, '', '', 'KOP PPE (Pulp & Paper Equip.)', 'KN', '', 'SK', 'SI', 'JN', '', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(27, '', '', 'KOP PPE (Pulp & Paper Equip.)', 'KN', '', 'SK', 'SI', 'SD', '', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(28, '', '', 'KOP Vacuum (RV,Ring)', 'KO', '', 'CM', 'NP', 'CM', 'Side Channel Blower', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(29, '', '', 'KOP Vacuum (RV,Ring)', 'KO', '', 'CM', 'NP', 'TSS', 'Two Stage RV', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(30, '', '', 'KOP Vacuum (Rotary V,Ring Blower)', 'KO', '', 'CM', 'NP', 'JN', 'Single Stage RV', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(31, '', '', 'KOP Vacuum (RV,Ring)', 'KO', '', 'CM', 'NP', 'TB', '', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(32, '', '', 'KOP PD (Recipocating)', 'KQ', '', 'AT', 'SI', 'AT', 'Plunger high pressure, API 675', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(33, '', '', 'KOP PD (Recipocating)', 'KQ', '', 'AT', 'SI', 'TY', 'Diaphargm Pump', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(34, '', '', 'KOP PD (Recipocating)', 'KQ', '', 'AT', 'SI', 'KC', 'Piston Pump, Low-medium pressure', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(35, '', '', 'KOP PD (Recipocating)', 'KQ', '', 'AT', 'SI', 'SD', 'Plunger medium pressure', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(36, '', '', 'KOP Revese Engineering Part', 'KR', '', 'TJ', 'UL', 'TJ', 'Pump Spare Part', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(37, '', '', 'KOP CRP, Lining, Plastic and FRP', 'KT', '', 'PS', 'NP', 'PS', 'Solid Plastic, FRP', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(38, '', '', 'KOP CRP, Lining, Plastic and FRP', 'KT', '', 'PS', 'NP', 'PD', 'FEP Lining (Light Duty, Process Duty) ', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(39, '', '', 'KOP Vauum (Liquid Ring)', 'KV', '', 'PD', 'NP', 'PD', 'LEM, LPH', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(40, '', '', 'KOP Vauum (Liquid Ring)', 'KV', '', 'PD', 'NP', 'TSS', 'Nash Cone type design, CL, 904', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(41, '', '', 'KOP Vauum (Liquid Ring)', 'KV', '', 'PD', 'NP', 'PS', '2BV, 2BE', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(42, '', '', 'KOP Vauum (Liquid Ring)', 'KV', '', 'PD', 'NP', 'JN', 'Nash Cone type design, AT, TC', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(43, '', '', 'KOP Water  (CR, Submers, Split Case)', 'KW', '', 'SS', 'TW/SI/NP', 'SS', '', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(44, '', '', 'KOP Water  (CR, Submers, Split Case)', 'KW', '', 'SS', 'TW/SI/NP', 'RS', '', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(45, '', '', 'KOP Multistage Pump', 'KX', '', 'JN', 'NP', 'JN', 'Blancing hole, disc, drum and self balance', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(46, '', '', 'KOP Vacuum (dry)', 'KY', '', 'TSS', 'NP', 'TSS', 'Screw, Roots', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(47, '', '', 'KOP Vacuum (dry)', 'KY', '', 'TSS', 'NP', 'PD', 'Claw, Scrol', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(48, '', '', 'KOP Vacuum (dry)', 'KY', '', 'TSS', 'NP', 'CM', 'Rotary Oil Free', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(49, '', '', 'KOP Vacuum (dry)', 'KY', '', 'TSS', 'NP', 'SD', 'Piston', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(50, '', '', 'KOP Sealess ', 'KZ', '', 'TB', 'SI', 'TB', 'Canned', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(51, '', '', 'KOP Sealess ', 'KZ', '', 'TB', 'SI', 'PD', 'Magnetic Drive', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(52, '', '', 'KOP Sealess ', 'KZ', '', 'TB', 'SI', 'PS', 'Other', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(53, '', '', 'Service Contact', 'CS', '', 'RS', 'UL', 'RS', 'Service Repair', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(54, '', '', 'Service Contact', 'CS', '', 'RS', 'UL', 'TJ', 'K-Monitoring', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(55, '', '', 'Vacuum Package', 'VP', '', 'TJ', 'NP', 'TJ', 'Liquid Ring Vacuum Pump Package', '', '', 0, 0, 0, 0, 0, 0, 'KOP', 'TS', '2022-10-24 17:18:55'),
(56, '', '', 'Aquflo Pump', 'AF', '', 'AT', 'UL', '', '', '', '', 0, 0, 0, 0, 0, 0, 'INTERNATIONAL', 'TS', '2022-10-24 17:18:55'),
(57, '', '', 'Boyser', 'BY', '', 'TY', 'SI', '', '', '', '', 0, 0, 0, 0, 0, 0, 'INTERNATIONAL', 'TS', '2022-10-24 17:18:55'),
(58, '', '', 'Service Contact', 'CS', '', 'RS', 'UL', '', '', '', '', 0, 0, 0, 0, 0, 0, 'INTERNATIONAL', 'TS', '2022-10-24 17:18:55'),
(59, '', '', 'Backmer Gear Pump', 'ER', '', 'AT', 'SI', '', '', '', '', 0, 0, 0, 0, 0, 0, 'INTERNATIONAL', 'TS', '2022-10-24 17:18:55'),
(60, '', '', 'Griswold', 'GW', '', 'PD', 'SI', '', '', '', '', 0, 0, 0, 0, 0, 0, 'INTERNATIONAL', 'TS', '2022-10-24 17:18:55'),
(61, '', '', 'Hunt & Mitton Control Valve', 'HC', '', 'JS', 'UL', '', '', '', '', 0, 0, 0, 0, 0, 0, 'INTERNATIONAL', 'TS', '2022-10-24 17:18:55'),
(62, '', '', 'Hunt & Mitton', 'HM', '', 'CK', 'UL', '', '', '', '', 0, 0, 0, 0, 0, 0, 'INTERNATIONAL', 'TS', '2022-10-24 17:18:55'),
(63, '', '', 'Interseal', 'IS', '', 'WR', 'UL', '', '', '', '', 0, 0, 0, 0, 0, 0, 'INTERNATIONAL', 'TS', '2022-10-24 17:18:55'),
(64, '', '', 'Klaus Union Pump', 'KU', '', 'PS', 'UL', '', '', '', '', 0, 0, 0, 0, 0, 0, 'INTERNATIONAL', 'TS', '2022-10-24 17:18:55'),
(65, '', '', 'PTC Pump', 'PT', '', 'TB', 'SI', '', '', '', '', 0, 0, 0, 0, 0, 0, 'INTERNATIONAL', 'TS', '2022-10-24 17:18:55'),
(66, '', '', 'Richter Control Valve', 'RC', '', 'JS', 'NP', '', '', '', '', 0, 0, 0, 0, 0, 0, 'INTERNATIONAL', 'TS', '2022-10-24 17:18:55'),
(67, '', '', 'Roten', 'RT', '', 'NR/NPT', 'TW', '', '', '', '', 0, 0, 0, 0, 0, 0, 'INTERNATIONAL', 'TS', '2022-10-24 17:18:55'),
(68, '', '', 'Richter Valve', 'RV', '', 'CK', 'NP', '', '', '', '', 0, 0, 0, 0, 0, 0, 'INTERNATIONAL', 'TS', '2022-10-24 17:18:55'),
(69, '', '', 'Sero Pump', 'SO', '', 'JN', 'UL', '', '', '', '', 0, 0, 0, 0, 0, 0, 'INTERNATIONAL', 'TS', '2022-10-24 17:18:55'),
(70, '', '', 'Witzenmann', 'WM', '', 'AT', 'UL', '', '', '', '', 0, 0, 0, 0, 0, 0, 'INTERNATIONAL', 'TS', '2022-10-24 17:18:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category1`
--
ALTER TABLE `category1`
  ADD PRIMARY KEY (`category1_id`);

--
-- Indexes for table `category2`
--
ALTER TABLE `category2`
  ADD PRIMARY KEY (`category2_id`);

--
-- Indexes for table `dailymonitor`
--
ALTER TABLE `dailymonitor`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `io_report`
--
ALTER TABLE `io_report`
  ADD PRIMARY KEY (`io_id`);

--
-- Indexes for table `io_report_id`
--
ALTER TABLE `io_report_id`
  ADD PRIMARY KEY (`io_id`);

--
-- Indexes for table `io_report_sv`
--
ALTER TABLE `io_report_sv`
  ADD PRIMARY KEY (`io_id`);

--
-- Indexes for table `io_report_wr`
--
ALTER TABLE `io_report_wr`
  ADD PRIMARY KEY (`io_id`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pec_person`
--
ALTER TABLE `pec_person`
  ADD PRIMARY KEY (`pec_person_id`);

--
-- Indexes for table `po_report`
--
ALTER TABLE `po_report`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_kpi`
--
ALTER TABLE `product_kpi`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category1`
--
ALTER TABLE `category1`
  MODIFY `category1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category2`
--
ALTER TABLE `category2`
  MODIFY `category2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `dailymonitor`
--
ALTER TABLE `dailymonitor`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;

--
-- AUTO_INCREMENT for table `io_report`
--
ALTER TABLE `io_report`
  MODIFY `io_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1948;

--
-- AUTO_INCREMENT for table `io_report_id`
--
ALTER TABLE `io_report_id`
  MODIFY `io_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `io_report_sv`
--
ALTER TABLE `io_report_sv`
  MODIFY `io_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `io_report_wr`
--
ALTER TABLE `io_report_wr`
  MODIFY `io_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pec_person`
--
ALTER TABLE `pec_person`
  MODIFY `pec_person_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `po_report`
--
ALTER TABLE `po_report`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4245;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT for table `product_kpi`
--
ALTER TABLE `product_kpi`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

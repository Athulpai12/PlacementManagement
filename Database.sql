SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- Table structure for table placement_drive
  
  CREATE TABLE IF NOT EXISTS `placement_drive` (
  `CompanyName` varchar(255) NOT NULL,
  `Sector` varchar(50) NOT NULL,
  `Date` date NOT NULL,
  `Tier` int(2) NOT NULL,
  `Venue` varchar(255) NOT NULL,
  `10th_Marks` float NOT NULL,
  `12th_Marks` float NOT NULL,
  `CGPA` float NOT NULL,
  `Backlogs` int(11) NOT NULL,
  `CBacklogs` int(2) NOT NULL,
  `DetainYears` int(11) NOT NULL,
  `Month` int(4) NOT NULL,
  `Day` int(5) NOT NULL,
  `Year` int NOT NULL,
  `CTC` decimal(4,2) NOT NULL,
  `Other_Details` text,
  PRIMARY KEY (`CompanyName`,`Date`) 
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# -- Dumping data for table `addpdrive`

INSERT INTO `placement_drive` (`CompanyName`, `Sector`,`Date`, `Tier`,`Venue`, `10th_Marks`, `12th_Marks`, `CGPA`, `Backlogs`, `CBacklogs`,  `DetainYears`,`Month`,`Day`, `Year`, `CTC`, `Other_Details`) VALUES
('Microsoft', 'IT', '2018-07-23', '1', 'PESU', 70, 70, 6.5, 0, 0, 0,month(date), day(date), year(date), 39, 'Welcome to Apple'),
('Goldman Sachs','Finance', '2018-07-24', '1', 'PESU',  60, 65, 8.5,0, 0, 0,month(date), day(date), year(date), 24, 'Investement Banking'),
('Deloitte','Business/Consulting', '2018-07-25', '2', 'PESU', 60, 65, 7.0, 0, 0,0 ,month(date), day(date), year(date), 6.6, 'Consulting'),
('Mahindra', 'IT','2018-07-26', '2', 'Mahindra Campus, Yellahanka', 70, 75, 6.5, 1, 1,0,month(date), day(date), year(date), 6.5, 'Delhi Posting'),
('Akamai', 'Networks','2018-07-27', '1', 'PESU',  60, 65, 6.5, 0, 0,0,month(date), day(date), year(date), 13, '0'),
('HPE', 'R & D','2018-07-28', '1', 'Marathahalli',  60, 65, 6.5, 0, 0,0,month(date), day(date), year(date), 8.5, '0'),
('Cisco','Networks', '2018-07-29', '1', 'PESU',  70, 70, 7, 0, 0,0,month(date), day(date), year(date), 13, '0'),
('Nasdaq','Finance', '2018-07-30', '1', 'PESU',  60, 65, 7.5, 0, 0,0,month(date), day(date), year(date), 12, '0'),
('Infosys Ltd','IT', '2018-08-29', '1', 'PESU',  75, 75, 7, 0, 0,0,month(date), day(date), year(date), 8, '0'),
('Amazon(AWS)','R & D', '2018-08-02', '1', 'PESU', 60, 65, 7, 0, 0,0,month(date), day(date), year(date), 18, '0'),
('Walmart','IT', '2018-08-03', '1', 'PESU',  60, 65, 7, 0, 0,0,month(date), day(date), year(date), 18.5, '0'),
('Sprinklr','DevOps', '2018-09-29', '1', 'PESU',  60, 65, 7.5, 0, 0,0,month(date), day(date), year(date), 8.5, '0'),
('Intuit','IT', '2018-08-03', '1', 'PESU',  80, 80, 8.5, 0, 0,0,month(date), day(date), year(date), 25, '0'),
('Samsung', 'R & D','2018-08-04', '1', 'Marathahalli',  60, 65, 7.5,0, 0, 0,month(date), day(date), year(date), 16, '0'),
('Soroco','R & D', '2018-08-05', '1', 'PESU',  80, 80, 8.5, 0, 0,0,month(date), day(date), year(date), 13, '0'),
('CouchBase','IT', '2018-08-06', '1', 'PESU',  65, 65, 7.5, 0, 0,0,month(date), day(date), year(date), 20, '0'),
('CA Technologies','IT', '2018-08-07', '1', 'PESU',  60, 65, 7.5, 0,0, 0,month(date), day(date), year(date), 10, '0'),
('Zscaler','R & D', '2018-08-08', '1', 'PESU',  60, 65, 8, 0, 0,0,month(date), day(date), year(date), 13, '0'),
('Sabre','Travel Technologies', '2018-07-29', '1', 'ITPL',  60, 65, 7.5, 0, 0,0,month(date), day(date), year(date), 5.8, '0'),
('VMWare', 'R & D','2018-08-09', '1', 'PESU', 60, 65, 7, 0, 0,0,month(date), day(date), year(date), 18, '0'),
('Wissen Technologies','IT', '2018-08-10', '1', 'Marathahalli', 60, 65, 7, 0, 0,0,month(date), day(date), year(date), 8, '0'),
('Aruba Networks', 'Networks','2018-08-11', '1', 'PESU',  60, 65, 7, 0, 0,0,month(date), day(date), year(date), 9.5, '0'),
('Philips','Healthcare', '2018-08-12', '1', 'PESU', 60, 65, 7, 0, 0,0,month(date), day(date), year(date), 8.5, '0'),
('L&T Infotech','IT', '2018-08-15', '2', 'PESU',  60, 60, 6.5, 0, 0,0,month(date), day(date), year(date), 4, '0'),
('Wipro Turbo','IT', '2018-08-18', '2', 'PESU',  60, 60, 6.5, 0,0, 0,month(date), day(date), year(date), 6.6, '0'),
('Temenos','Business/Consulting', '2018-08-20', '2', 'PESU',  60, 65, 7, 0, 0,0,month(date), day(date), year(date), 4.5, '0'),
('Robert Bosch', 'IT','2018-08-22', '2', 'PESU',  60, 65, 6.5, 0,0, 0,month(date), day(date), year(date), 5.5, '0'),
('Musigma','Business/Consulting', '2018-08-23', '3', 'PESU', 60, 65, 7, 0, 0,0,month(date), day(date), year(date), 5.5, '0'),
('Atos','IT', '2018-08-25', '3', 'PESU', 60, 60, 6, 0, 0,0,month(date), day(date), year(date), 3.5, '0'),
('Aricent','Business/Consulting', '2018-09-03', '3', 'PESU', 60, 65, 6, 0, 0,0,month(date), day(date), year(date), 3.1, '0'),
('Tata Elxsi','Automobile', '2018-09-05', '3', 'PESU', 60, 65, 6, 0, 0,0,month(date), day(date), year(date), 2.8, '0'),
('Weir Ensci','Business/Consulting', '2018-09-07', '3', 'PESU',  60, 65, 6, 0, 0,0,month(date), day(date), year(date), 3.8, '0'),
('Capgemini','IT', '2018-09-11', '3', 'PESU',  60, 65, 6.5, 0, 0,0,month(date), day(date), year(date), 3, '0'),
('KPMG','Finance', '2018-10-23', '3', 'PESU',  60, 65, 6, 0, 0,0,month(date), day(date), year(date), 3.5, '0'),
('Toyota Kirloskar Ltd','Automobile', '2018-10-15', '3', 'PESU',  60, 65, 6, 0,0, 0,month(date), day(date), year(date), 3.4, '0'),
('Otis Elevator Ltd','Production/Manufacturing', '2018-09-19', '3', 'PESU',  60, 65, 6, 0, 0,0,month(date), day(date), year(date), 3.2, '0'),
('Harman Connected Services Ltd','Business/Consulting', '2018-09-25', '3', 'PESU',  60, 65, 6, 0,0, 0,month(date), day(date), year(date), 3.1, '0'),
('Quest Global Engineering','Business/Consulting', '2018-09-13', '3', 'PESU', 60, 65, 6.5, 0, 0,0,month(date), day(date), year(date), 3.8, '0'),
('NividApps','IT', '2018-10-02', '2', 'PESU',  60, 60, 7, 0, 0,0,month(date), day(date), year(date), 6.6, '0'),
('Cognizant','IT', '2018-10-04', '2', 'PESU',  60, 60, 6, 0, 0,0,month(date), day(date), year(date), 6, '0'),
('Nokia', 'IT','2018-10-05', '2', 'PESU', 60, 60, 7, 0, 0,0,month(date), day(date), year(date), 6.6, '0'),
('Atkins','IT', '2019-04-05', '2', 'PESU', 60, 60, 7, 0, 0,0,month(date), day(date), year(date), 4.5, '0'),
('Hashedin Technologies','IT', '2018-10-18', '2', 'PESU', 60, 65, 6, 0,0, 0,month(date), day(date), year(date), 4.5, '0'),
('Microchip', 'Semiconductor', '2019-04-18', '2', 'PESU', 60, 60, 6.5, 0, 0,0,month(date), day(date), year(date), 5.5, '0'),
('Perfios','IT', '2018-10-20', '2', 'PESU', 60, 70, 8, 0, 0,0,month(date), day(date), year(date), 4, '0'),
('Talend', 'IT','2019-03-08', '2', 'PESU', 60, 65, 7, 0, 0,0,month(date), day(date), year(date), 6.5, '0'),
('Alstom', 'IT','2019-03-10', '2', 'PESU', 60, 65, 7, 0, 0,0,month(date), day(date), year(date), 7, '0'),
('GE Appliances','IT', '2019-03-13', '2', 'PESU', 60, 65, 7, 0,0, 0,month(date), day(date), year(date), 5.5, '0'),
('Hundai', 'Automobile','2019-03-19', '2', 'PESU', 60, 65, 6.5, 0, 0,0,month(date), day(date), year(date), 4.5, '0'),
('Quintiles','IT', '2019-04-17', '2', 'PESU', 60, 65, 6.5, 0, 0,0,month(date), day(date), year(date), 5.6, '0'),
('Youplus','IT', '2019-04-15', '2', 'PESU', 60, 65, 7.5, 0, 0,0,month(date), day(date), year(date), 5.4, '0'),
('Tejas Networks','Networks', '2019-04-19', '2', 'PESU', 60, 67, 7.5, 0,0, 0,month(date), day(date), year(date), 7, '0'),
('Accenture','IT', '2018-07-30', '3', 'PESU', 60, 65, 7.5, 0, 0,0,month(date), day(date), year(date), 4.8, '0'),
('Cerner','IT', '2018-10-30', '2', 'PESU', 60, 65, 7.5, 0, 0,0,month(date), day(date), year(date), 6.5, '0'),
('Mcfee','IT', '2018-09-25', '1', 'PESU', 60, 65, 7.5, 0, 0,0,month(date), day(date), year(date), 10, '0'),
('IBM','Business/Consulting', '2018-10-10', '1', 'PESU', 65, 65, 7.5, 0, 0,0,month(date), day(date), year(date), 12, '0'),
('Accolite','IT', '2018-09-29', '1', 'PESU', 60, 70, 7.5, 0, 0,0,month(date), day(date), year(date), 10, '0'),
('AutoNinja','IT', '2018-10-11', '2', 'PESU', 60, 60, 7, 0, 0,0,month(date), day(date), year(date), 5.5, '0'),
('Ivanti','IT', '2018-10-12', '1', 'PESU', 60, 60, 7.5, 0, 0,0,month(date), day(date), year(date), 10, '0'),
('Zynga','IT','2018-10-30', '1', 'PESU', 70, 75, 7.5, 0, 0,0,month(date), day(date), year(date), 14, '0');




-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE IF NOT EXISTS `student_details` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `USN` varchar(15) NOT NULL,
  `Mobile` bigint(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `DOB` date NOT NULL,
  `Sem` int(11) NOT NULL,
  `Branch` varchar(15) NOT NULL,
  `10th_Marks` float NOT NULL,
  `12th_Marks` float NOT NULL,
  `CGPA` float NOT NULL,
  `Backlogs` int(11) NOT NULL,
  `CBacklogs` tinyint(1) NOT NULL,
  `Approve` tinyint(1) NOT NULL DEFAULT '0',
  `ApprovalDate` date NOT NULL,
  PRIMARY KEY (`Id`,`USN`),
  UNIQUE KEY `USN` (`USN`,`Mobile`,`Email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`Id`, `FirstName`, `LastName`, `USN`, `Mobile`, `Email`, `DOB`, `Sem`, `Branch`, `10th_Marks`, `12th_Marks`, `CGPA`, `Backlogs`, `CBacklogs`, `Approve`, `ApprovalDate`) VALUES
(1, 'Akhil', 'Kumar', '01FB15ECS026', 7149645026, 'boss26@gmil.comk', '1997-07-23', 7, 'CSE', 95, 95, 9.2, 0, 0, 1, '2018-07-02'),
(2, 'Akshay', 'Reddy', '01FB15ECS029', 7149645029, 'boss29@gmil.comk', '1997-06-23', 7, 'CSE', 90, 90, 8.7, 0, 0, 1, '2018-07-03'),
(3, 'AjayKumar', 'Bhat', '01FB15ECS022', 7149645022, 'boss22@gmil.comk', '1997-07-25', 7, 'CSE', 92, 92, 8.8, 0, 0, 1, '2018-07-03'),
(4, 'Aditya', 'Cholin', '01FB15ECS016', 7149645016, 'boss16@gmil.comk', '1997-08-26', 7, 'CSE', 95, 95, 9.0, 0, 0, 1, '2018-07-02'),
(5, 'Achal', 'Shet', '01FB15ECS701', 7149645701, 'boss701@gmil.comk', '1997-10-27', 7, 'CSE', 85, 85, 8.2, 0, 0, 1, '2018-07-03'),
(6, 'Ajay', 'Police Patil', '01FB15ECS021', 7149645021, 'boss21@gmil.comk', '1997-06-28', 7, 'CSE', 79, 79, 8.0, 0, 0, 1, '2018-07-02'),
(7, 'Akhil', 'Sunderman', '01FB15ECS027', 7149645027, 'boss27@gmil.comk', '1997-03-29', 7, 'CSE', 95, 98, 9.5, 0, 0, 1, '2018-07-03'),
(8, 'Adithya', 'Kashyap', '01FB15ECS007', 7149645007, 'boss07@gmil.comk', '1997-09-30', 7, 'CSE', 85, 85, 8.4, 0, 0, 1, '2018-07-03'),
(9, 'Lokesh', 'A', '01FB15ECS001', 7149645001, 'boss1@gmil.comk', '1997-01-02', 7, 'CSE', 75, 85, 8.1, 0, 0, 1, '2018-07-03'),
(10, 'Sanjith', 'Atlur', '01FB15ECS002', 7149645002, 'boss2@gmil.comk', '1997-05-01', 7, 'CSE', 90, 95, 9.5, 0, 0, 1, '2018-07-03'),
(11, 'Abdul', 'Rehman', '01FB15ECS003', 7149645503, 'boss3@gmail.comk', '1997-04-29', 7, 'CSE', 80, 89, 8.36, 0, 0, 1, '2018-07-03'),
(12, 'Abdullah', 'Anwar', '01FB15ECS004', 7149645504, 'boss4@gmil.comk', '1997-02-03', 7, 'CSE', 75, 79, 8.5, 0, 0, 1, '2018-07-03'),
(13, 'Abhijay', 'Gupta', '01FB15ECS005', 7149645505, 'boss5@gmil.comk', '1997-02-04', 7, 'CSE', 95, 88, 8.8, 0, 0, 1, '2018-07-03'),
(14, 'Abhilash', 'Kashyap', '01FB15ECS006', 7149645506, 'boss6@gmil.comk', '1997-12-05', 7, 'CSE', 92, 84, 7.5, 0, 0, 1, '2018-07-03'),
(15, 'Abhishek', 'Diwedi', '01FB15ECS008', 7149645508, 'boss8@gmil.comk', '1997-12-06', 7, 'CSE', 91, 87, 7.8, 0, 0, 1, '2018-07-03'),
(16, 'Abhishek', 'VD', '01FB15ECS010', 71496455610, 'boss10@gmil.comk', '1997-11-08', 7, 'CSE', 70, 90, 8.6, 0, 0, 1, '2018-07-03'),
(17, 'Abudhay', 'V', '01FB15ECS011', 71496455611, 'boss11@gmil.comk', '1997-08-11', 7, 'CSE', 85, 90, 9.5, 0, 0, 1, '2018-07-03'),
(18, 'Adarsha', 'Kharvi', '01FB15ECS012', 7149645512, 'boss12@gmil.comk', '1997-08-12', 7, 'CSE', 95, 90, 9.9, 0, 0, 1, '2018-07-03'),
(19, 'Aditya', 'Mallar', '01FB15ECS014', 7149645514, 'boss14@gmil.comk', '1997-09-13', 7, 'CSE', 85, 80, 8.3, 0, 0, 1, '2018-07-03'),
(20, 'Aditi', 'Srinivas', '01FB15ECS015', 7149645515, 'boss15@gmil.comk', '1997-08-14', 7, 'CSE', 95, 90, 8.9, 0, 0, 1, '2018-07-03'),
(21, 'Aditya', 'Ramani', '01FB15ECS017', 7149645517, 'boss17@gmil.comk', '1997-05-17', 7, 'CSE', 70, 75, 8.23, 0, 0, 1, '2018-07-03'),
(22, 'Aditya', 'Jain', '01FB15ECS018', 7149645518, 'boss18@gmil.comk', '1997-03-18', 7, 'CSE', 80, 89, 7.6, 0, 0, 1, '2018-07-03'),
(23, 'Aishwarya', 'Manjunath', '01FB15ECS019', 7149645519, 'boss19@gmil.comk', '1997-03-19', 7, 'CSE', 95, 85, 9.3, 0, 0, 1, '2018-07-03'),
(24, 'Aishwarya', 'PR', '01FB15ECS020', 7149645520, 'boss20@gmil.comk', '1997-09-20', 7, 'CSE', 85, 90, 9.1, 0, 0, 1, '2018-07-03'),
(25, 'Akanksha', 'G', '01FB15ECS023', 7149645023, 'boss23@gmil.comk', '1997-08-22', 7, 'CSE', 85, 80, 7.9, 0, 0, 1, '2018-07-03'),
(26, 'Akanksha', 'V', '01FB15ECS024', 7149645024, 'boss24@gmil.comk', '1997-04-23', 7, 'CSE', 90, 80, 7.6, 0, 0, 1, '2018-07-03'),
(27, 'Akash', 'N', '01FB15ECS025', 7149645025, 'boss25@gmil.comk', '1997-03-25', 7, 'CSE', 75, 80, 7.4, 0, 0, 1, '2018-07-03'),
(28, 'AkshayKanth', 'DL', '01FB15ECS031', 7149645031, 'boss31@gmil.comk', '1997-02-05', 7, 'CSE', 80, 86, 8.4, 0, 0, 1, '2018-07-03'),
(29, 'Akshay', 'Podilla', '01FB15ECS030', 7149645030, 'boss30@gmil.comk', '1997-01-09', 7, 'CSE', 80, 82, 8.9, 0, 0, 1, '2018-07-03'),
(30, 'Nitin', 'G', '01FB15ECS220', 7149645220, 'boss220@gmil.comk', '1997-02-03', 7, 'CSE', 80, 85, 8.4, 0, 0, 1, '2018-07-03'),
(31, 'Rahul', 'Thakur', '01FB15ECS225', 7149645225, 'boss225@gmil.comk', '1997-09-25', 7, 'CSE', 60, 75, 8.8, 0, 0, 1, '2018-07-03'),
(32, 'Sanjay', 'Awate', '01FB15ECS260', 7149645260, 'boss260@gmil.comk', '1997-06-28', 7, 'CSE', 85, 88, 8.1, 0, 0, 1, '2018-07-03'),
(33, 'Suresh', 'S Y', '01FB15ECS290', 7149645290, 'boss290@gmil.comk', '1997-11-26', 7, 'CSE', 85, 82, 8.7, 0, 0, 1, '2018-07-03'),
(34, 'Avinash', 'K', '01FB15ECS058', 7149645058, 'boss58@gmil.comk', '1997-11-17', 7, 'CSE', 85, 89, 9.7, 0, 0, 1, '2018-07-03'),
(35, 'Athul', 'Pai', '01FB15ECS057', 7149645057, 'boss57@gmil.comk', '1997-11-29', 7, 'CSE', 85, 95, 9.5, 0, 0, 1, '2018-07-03'),
(36, 'Diwakar', 'GK', '01FB15ECS700', 7149645700, 'boss700@gmil.comk', '1997-12-27', 7, 'CSE', 85, 90, 9.4, 0, 0, 1, '2018-07-03'),
(37, 'Deva', 'G', '01FB15ECS706', 7149645706, 'boss706@gmil.comk', '1997-01-01', 7, 'CSE', 85, 80, 6.8, 0, 0, 1, '2018-07-03'),
(38, 'Aniket', 'Bharati', '01FB15ECS036', 7149645036, 'boss36@gmil.comk', '1997-01-07', 7, 'CSE', 85, 89, 8.4, 0, 0, 1, '2018-07-03'),
(39, 'Ravi', 'Khot', '01FB15ECS245', 7149645245, 'boss245@gmil.comk', '1997-05-30', 7, 'CSE', 85, 89, 8.1, 0, 0, 1, '2018-07-03'),
(40, 'Iranna', 'P', '01FB15ECS120', 7149645120, 'boss120@gmil.comk', '1997-07-17', 7, 'CSE', 85, 93, 8.5, 0, 0, 1, '2018-07-03'),
(41, 'Alekya', 'E', '01FB15ECS032', 7149645032, 'boss32@gmil.comk', '1996-06-17', 7, 'CSE', 85, 93, 9.5, 0, 0, 1, '2018-07-02'),
(42, 'Anirudh', 'S', '01FB15ECS034', 7149645034, 'boss34@gmil.comk', '1998-06-17', 7, 'CSE', 90, 95, 9.1, 0, 0, 1, '2018-07-02'),
(43, 'Aviral', 'J', '01FB15ECS062', 7149645062, 'boss62@gmil.comk', '1997-08-04', 7, 'CSE', 89, 90, 8.8, 0, 0, 1, '2018-07-02'),
(44, 'Anuj', 'Bhushan', '01FB15ECS046', 7149645046, 'boss46@gmil.comk', '1997-08-05', 7, 'CSE', 89, 90, 9, 0, 0, 1, '2018-07-02'),
(45, 'Anuj', 'Hegde', '01FB15ECS047', 7149645047, 'boss47@gmil.comk', '1997-09-05', 7, 'CSE', 87, 90, 9.6, 0, 0, 1, '2018-07-02'),
(46, 'Arnav', 'Deshpande', '01FB15ECS052', 7149645052, 'boss52@gmil.comk', '1997-02-29', 7, 'CSE', 95, 95, 9.2, 0, 0, 1, '2018-07-02'),
(47, 'Ankur', 'K', '01FB15ECS045', 7149645045, 'boss45@gmil.comk', '1997-03-29', 7, 'CSE', 80, 85, 8.8, 0, 0, 1, '2018-07-02'),
(48, 'Rahul', 'M', '01FB15ECS250', 7149645250, 'boss250@gmil.comk', '1997-04-29', 7, 'CSE', 90, 85, 8.8, 0, 0, 1, '2018-07-02'),
(49, 'Rahul', 'Pujari', '01FB15ECS252', 7149645252, 'boss252@gmil.comk', '1997-05-23', 7, 'CSE', 85, 93, 8.6, 0, 0, 1, '2018-07-02'),
(50, 'Gururaj', 'K', '01FB15ECS113', 7149645113, 'boss113@gmil.comk', '1998-08-04', 7, 'CSE', 90, 95, 8.4, 0, 0, 1, '2018-07-02');



-- --------------------------------------------------------

--
-- Table structure for table `updatedrive`
--

CREATE TABLE IF NOT EXISTS `updatedrive` (
  `USN` varchar(15) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `CompanyName` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Attendence` tinyint(1) NOT NULL DEFAULT '0',
  `WT` tinyint(2) NOT NULL DEFAULT '0',
  `GD` tinyint(2) NOT NULL DEFAULT '0',
  `Techical` tinyint(3) NOT NULL DEFAULT '0',
  `Placed` tinyint(1) NOT NULL DEFAULT '0',
  `CTC` decimal(4,2) NOT NULL DEFAULT '0.0',
  `Month` int(4) NOT NULL,
  `Day` int(5) NOT NULL,
  `Year` int NOT NULL,
  KEY `USN` (`USN`),
  KEY `CompanyName` (`CompanyName`,`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updatedrive`
--

INSERT INTO `updatedrive` (`USN`, `Name`, `CompanyName`, `Date`, `Attendence`, `WT`, `GD`, `Techical`, `Placed`,`CTC`,`Month`,`Day`, `Year`) VALUES
('01FB15ECS026', 'Akhil', 'Goldman Sachs', '2018-07-24', 1, 1, 1, 3, 1,24, month(date), day(date), year(date)),
('01FB15ECS029', 'Akshay', 'Deloitte', '2018-07-25', 1, 1, 1, 2, 1,6.5,month(date), day(date), year(date)),
('01FB15ECS021', 'Ajay', 'Philips', '2018-08-12', 1, 1, 0, 3, 1,8.5,month(date), day(date), year(date)),
('01FB15ECS016', 'Aditya', 'HPE', '2018-07-28', 1, 1, 1, 4, 1,8.5,month(date), day(date), year(date)),
('01FB15ECS022', 'AjayKumar', 'Sabre', '2018-07-29', 1, 1, 0, 4, 1,12,month(date), day(date), year(date)),
('01FB15ECS010', 'Abhishek', 'Wipro Turbo', '2018-08-18', 1, 1, 1, 2, 1,6.6,month(date), day(date), year(date)),
('01FB15ECS012', 'Adarsha', 'AutoNinja', '2018-10-11', 1, 1, 1, 3, 1,5.5,month(date), day(date), year(date)),
('01FB15ECS015', 'Aditi', 'Microsoft', '2018-07-23', 1, 1, 0, 4, 1,39,month(date), day(date), year(date)),
('01FB15ECS017', 'Aditya', 'Akamai', '2018-07-27', 1, 1, 0, 4, 1,13,month(date), day(date), year(date)),
('01FB15ECS019', 'Aishwarya', 'Walmart', '2018-08-03', 1, 1, 0, 3, 1,18,month(date), day(date), year(date)),
('01FB15ECS020', 'Aishwarya', 'IBM', '2018-10-10', 1, 2, 0, 1, 1,12,month(date), day(date), year(date)),
('01FB15ECS001', 'Lokesh', 'AutoNinja', '2018-10-11', 1, 1, 0, 3, 1,5.5,month(date), day(date), year(date)),
('01FB15ECS031', 'AkshayKanth', 'IBM', '2018-10-10', 1, 2, 1, 1, 1,12,month(date), day(date), year(date)),
('01FB15ECS032', 'Alekya', 'Ivanti', '2018-10-12', 1, 1, 0, 3, 1,10,month(date), day(date), year(date)),
('01FB15ECS036', 'Aniket', 'Cerner', '2018-10-30', 1, 1, 0, 3, 1,6.5,month(date), day(date), year(date)),
('01FB15ECS058', 'Avinash', 'HPE', '2018-07-28', 1, 1, 1, 4, 1,8.5,month(date), day(date), year(date)),
('01FB15ECS057', 'Athul', 'Akamai', '2018-07-27', 1, 1, 0, 4, 1,13,month(date), day(date), year(date)),
('01FB15ECS260', 'Sanjay', 'Mcfee', '2018-09-25', 1, 1, 0, 4, 1,10,month(date), day(date), year(date)),
('01FB15ECS220', 'Nitin', 'Cerner', '2018-10-30', 1, 1, 0, 4, 1,6.5,month(date), day(date), year(date)),
('01FB15ECS225', 'Rahul', 'Goldman Sachs', '2018-07-24', 1, 1, 0, 3, 1,24,month(date), day(date), year(date)),
('01FB15ECS034', 'Anirudh', 'Philips', '2018-08-12', 1, 1, 0, 3, 1,8.5,month(date), day(date), year(date)),
('01FB15ECS113', 'Gururaj', 'Zynga', '2018-10-30', 1, 1, 0, 3, 1,14,month(date), day(date), year(date)),
('01FB15ECS062', 'Aviral', 'VMware', '2018-08-09', 1, 1, 0, 3, 1,18,month(date), day(date), year(date)),
('01FB15ECS004', 'Abdullah', 'Deloitte', '2018-07-25', 1, 1, 1, 1, 1,6.5,month(date), day(date), year(date)),
('01FB15ECS006', 'Abhilash', 'Mahindra', '2018-07-26', 1, 1, 0, 2, 1,6.6,month(date), day(date), year(date)),
('01FB15ECS046', 'Anuj', 'Nasdaq', '2018-07-30', 1, 1, 0, 3, 1,12,month(date), day(date), year(date)),
('01FB15ECS047', 'Anuj', 'Amazon(AWS)', '2018-08-02', 1, 1, 0, 3, 1,18,month(date), day(date), year(date)),
('01FB15ECS052', 'Arnav', 'Zscaler', '2018-08-08', 1, 1, 0, 3, 1,13,month(date), day(date), year(date)),
('01FB15ECS045', 'Ankur', 'Wissen Technologies', '2018-08-10', 1, 1, 0, 3, 1,8,month(date), day(date), year(date)),
('01FB15ECS250', 'Rahul', 'Aruba Networks', '2018-08-11', 1, 1, 0, 2, 1,9.5,month(date), day(date), year(date)),
('01FB15ECS252', 'Rahul', 'VMware', '2018-08-09', 1, 1, 0, 3, 1,18,month(date), day(date), year(date)),
('01FB15ECS290', 'Suresh', 'Accolite', '2018-09-29', 1, 1, 0, 3, 1,10,month(date), day(date), year(date));

--
-- Constraints for dumped tables
--

--
-- Constraints for table `updatedrive`
#SET FOREIGN_KEY_CHECKS=0;
ALTER TABLE `updatedrive` ADD CONSTRAINT `updatedrive_ibfk_1` FOREIGN KEY (`USN`) REFERENCES `student_details` (`USN`) ON DELETE CASCADE;
ALTER TABLE `updatedrive` ADD CONSTRAINT `updatedrive_ibfk_2` FOREIGN KEY (`CompanyName`, `Date`) REFERENCES `placement_drive` (`CompanyName`, `Date`) ON DELETE CASCADE;
#SET FOREIGN_KEY_CHECKS=1;

-- Table structure for table `login`

CREATE TABLE IF NOT EXISTS `login` (
  `First_Name` varchar(25) NOT NULL,
  `Last_Name` varchar(25) NOT NULL,
  `Unique_ID` varchar(25) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Verified` varchar(25) NOT NULL,
  `Last_login_time` datetime NOT NULL
  #PRIMARY KEY (`Unique_ID`)
  )ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2;
  
 INSERT INTO `login` (`First_Name`, `Last_Name`, `Unique_ID`, `Email`, `Password`,`Verified`,`Last_login_time`) VALUES
('Akhil', 'Kumar', '01FB15ECS026', 'boss26@gmil.comk', 'Legend_wait4it_dary','Yes', '2018-07-30 16:59:12'),
('Akshay', 'Reddy', '01FB15ECS029', 'boss29@gmil.comk', 'Packers24','Yes','2018-07-31 18:57:14'),
('Ajay', 'Police Patil', '01FB15ECS021', 'boss21@gmil.comk', 'Awesome08','Yes','2018-07-31 19:12:18'),
('Aditya', 'Cholin', '01FB15ECS016', 'boss16@gmil.comk', 'Kohli12','Yes','2018-07-31 21:05:08'),
('Sanjay', 'Awate', '01FB15ECS260', 'boss260@gmil.comk', 'sanjay123','Yes','2018-08-25 18:57:15'),
('Nitin', 'G', '01FB15ECS220', 'boss220@gmil.comk', 'nitin123','Yes','2018-07-31 18:57:16'),
('Rahul', 'Thakur', '01FB15ECS225', 'boss225@gmil.comk', 'rahul123','Yes','2018-07-31 18:57:17'),
('Suresh', 'Y S', '01FB15ECS290', 'boss290@gmil.comk', 'suresh123','Yes','2018-07-31 18:57:18'),
('Lokesh', 'A', '01FB15ECS001', 'boss1@gmil.comk', 'lokesh123','Yes','2018-07-31 18:57:19'),
('Abdullah', 'Anwar', '01FB15ECS004', 'boss4@gmil.comk', 'abdullah123','Yes','2018-07-31 18:57:20'),
('Adarsha', '', '01FB15ECS012', 'boss12@gmil.comk', 'adarsha123','Yes','2018-07-31 18:57:21'),
('Akanksha', 'G', '01FB15ECS023', 'boss23@gmil.comk', 'akanksha123','Yes','2018-07-31 18:57:22'),
('Aditya', 'Cholin', '01FB15ECS016', 'boss16@gmil.comk', 'aditya123','Yes','2018-07-31 18:57:23'),
('AjayKumar', 'Bhat', '01FB15ECS022', 'boss22@gmil.comk', 'AjayKumar123','Yes','2018-07-31 18:57:24'),
('Avinash', 'K', '01FB15ECS058', 'boss58@gmil.comk', 'Avinash123','Yes','2018-07-31 18:57:25'),
('Athul', 'Pai', '01FB15ECS057', 'boss57@gmil.comk', 'Athul123','Yes','2018-07-31 18:56:14'),
('Diwakar', 'GK', '01FB15ECS700', 'boss700@gmil.comk', 'Diwakar123','Yes','2018-07-31 18:54:14'),
('Achal', 'Shet', '01FB15ECS701', 'boss701@gmil.comk', 'Achal123','Yes','2018-07-31 18:53:14'),
('Deva', 'G', '01FB15ECS706', 'boss706@gmil.comk', 'decimal123','Yes','2018-07-31 18:52:14'),
('Aniket', 'Bharati', '01FB15ECS036', 'boss36@gmil.comk', 'Aniket123','Yes','2018-07-31 18:51:14'),
('Aditya', 'Mallar', '01FB15ECS014', 'boss14@gmil.comk', 'Mallar123','Yes','2018-07-31 18:59:14'),
('Aishwarya', 'Manjunath', '01FB15ECS019', 'boss19@gmil.comk', 'Manjunath123','Yes','2018-07-31 18:58:15'),
('Aishwarya', 'PR', '01FB15ECS020', 'boss20@gmil.comk', 'Aishwarya123','Yes','2018-07-31 18:56:15'),
('Anirudh', 'S', '01FB15ECS034', 'boss34@gmil.comk', 'Anirudh123','Yes','2018-07-31 18:54:13'),
('Ravi', 'Khot', '01FB15ECS245', 'boss245@gmil.comk', 'Ravi123','Yes','2018-07-31 18:53:16'),
('Gururaj', 'K', '01FB15ECS113', 'boss113@gmil.comk', 'gururaj123','Yes','2018-07-30 18:53:16'),
('Iranna', 'P', '01FB15ECS120', 'boss120@gmil.comk', 'Iranna123','Yes','2018-07-31 18:52:15');




-- Table structure for table `admin`

CREATE TABLE IF NOT EXISTS `admin`	(
	`Admin_ID` varchar(25) NOT NULL,
	`Name` varchar(25) NOT NULL,
	`Password` varchar(25) NOT NULL,
	`privilege` int NOT NULL,
	PRIMARY KEY	(`Admin_ID`)
);

-- Dumping data for table `admin`

INSERT INTO `admin` (`Admin_ID`, `Name`, `Password`, `privilege`) VALUES 
('A1','admin','admin123',3);


-- Table structure for table `notification`

CREATE TABLE IF NOT EXISTS `notification` (
	`n_id` varchar(20) NOT NULL,
	`sender_id` varchar(20) NOT NULL,
	`subject` varchar(75) NOT NULL,
	`message` varchar(256) NOT NULL,
	`date_time` datetime NOT NULL,
	PRIMARY KEY(`n_id`)
);

-- Dumping data for table `notification`

INSERT INTO `notification` (`n_id`, `sender_id`, `subject`, `message`, `date_time`) VALUES
('1','12','Recruitment FTE ','Microsoft is recruiting tomorrow','2018-07-23 18:59:12'),
('2','12','Recruitment FTE+ Internship','Goldman Sachs is recruiting tomorrow','2018-07-24 18:49:12'),
('3','12','Recruitment FTE ','Deolitte is recruiting tomorrow','2018-07-25 18:39:12'),
('4','12','Recruitment FTE ','Mahindra is recruiting tomorrow','2018-07-26 18:29:12'),
('5','12','Recruitment FTE+ Internship','Akamai is recruiting tomorrow','2018-07-27 18:51:12'),
('6','12','Recruitment FTE+ Internship','HPE is recruiting tomorrow','2018-07-28 18:52:12'),
('7','12','Recruitment FTE+ Internship','Cisco is recruiting tomorrow','2018-07-29 18:53:12'),
('8','12','Recruitment FTE+ Internship','Nasdaq is recruiting tomorrow','2018-07-30 18:54:12'),
('9','12','Recruitment FTE ','Amazon(AWS) is recruiting tomorrow','2018-08-02 18:55:12'),
('10','12','Recruitment FTE+ Internship','Walmart is recruiting tomorrow','2018-08-03 18:56:12'),
('11','12','Recruitment FTE+ Internship','Samsung is recruiting tomorrow','2018-08-04 18:57:12'),
('12','12','Recruitment FTE+ Internship','Intuit is recruiting tomorrow','2018-08-03 18:58:12'),
('13','12','Recruitment FTE+ Internship','Soroco is recruiting tomorrow','2018-08-05 17:59:12'),
('14','12','Recruitment FTE+ Internship','CouchBase is recruiting tomorrow','2018-08-06 16:59:12'),
('15','12','Recruitment FTE','CA Technologies is recruiting tomorrow','2018-08-07 15:59:12'),
('16','12','Recruitment FTE+ Internship','Zscaler is recruiting tomorrow','2018-08-08 14:59:12'),
('17','12','Recruitment FTE+ Internship','VMWare is recruiting tomorrow','2018-08-09 13:59:12'),
('18','12','Recruitment FTE ','Wissen Technologies is recruiting tomorrow','2018-08-10 12:59:12'),
('19','12','Recruitment FTE+ Internship','Aruba Networks is recruiting tomorrow','2018-08-11 9:59:12'),
('20','12','Recruitment FTE+ Internship','Philips is recruiting tomorrow','2018-08-12 10:59:12'),
('21','12','Recruitment FTE ','L&T Infotech is recruiting tomorrow','2018-08-15 11:59:12'),
('22','12','Recruitment FTE ','Wipro Turbo is recruiting tomorrow','2018-08-18 8:59:12'),
('23','12','Recruitment FTE+ Internship','Temenos is recruiting tomorrow','2018-08-20 19:59:12'),
('24','12','Recruitment FTE ','Robert Bosch is recruiting tomorrow','2018-08-22 20:59:12'),
('25','12','Recruitment FTE ','Musigma is recruiting tomorrow','2018-08-23 21:59:12'),
('26','12','Recruitment FTE ','Atos is recruiting tomorrow','2018-08-25 18:11:12'),
('27','12','Recruitment FTE ','Aricent is recruiting tomorrow','2018-09-03 18:45:12'),
('28','12','Recruitment FTE ','Tata Elxsi is recruiting tomorrow','2018-09-05 18:46:12'),
('29','12','Recruitment FTE ','Weir Ensci is recruiting tomorrow','2018-09-07 18:47:12'),
('30','12','Recruitment FTE ','Capgemini is recruiting tomorrow','2018-09-11 18:48:12');
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE IF NOT EXISTS `form_admin` (
  `job_id` varchar(20) NOT NULL,
  `CompanyName` varchar(20) NOT NULL,
  `html` varchar(500) NOT NULL,
  PRIMARY KEY(`job_id`)
);

CREATE TABLE IF NOT EXISTS `feedback` (
  `Feedback_ID` int NOT NULL AUTO_INCREMENT,
  `Unique_ID` varchar(25) NOT NULL,
  `Feedback` varchar(500) NOT NULL,
  PRIMARY KEY(`Feedback_ID`)
);
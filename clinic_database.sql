-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 15, 2020 at 12:46 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinic_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `academicphysician`
--

CREATE TABLE `academicphysician` (
  `EmployeeID` varchar(30) NOT NULL,
  `AcademicRankID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `academicphysician`
--

INSERT INTO `academicphysician` (`EmployeeID`, `AcademicRankID`) VALUES
('PEMP002', 'A002'),
('PEMP003', 'A002'),
('PEMP004', 'A002'),
('PEMP005', 'A002'),
('PEMP001', 'A008'),
('PEMP002', 'A008'),
('PEMP003', 'A008'),
('PEMP004', 'A008'),
('PEMP005', 'A008'),
('PEMP003', 'A009'),
('PEMP005', 'A009');

-- --------------------------------------------------------

--
-- Table structure for table `academicrank`
--

CREATE TABLE `academicrank` (
  `AcademicRankID` varchar(25) NOT NULL,
  `AcademicRankName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `academicrank`
--

INSERT INTO `academicrank` (`AcademicRankID`, `AcademicRankName`) VALUES
('A001', 'Medical School Education'),
('A002', 'Physician'),
('A003', 'Doctor'),
('A004', 'Medical Students'),
('A005', 'Residents'),
('A006', 'Fellows'),
('A007', 'Attendings'),
('A008', 'MD'),
('A009', 'PHD'),
('A010', 'DO');

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

CREATE TABLE `clinic` (
  `ClinicID` varchar(25) NOT NULL,
  `Total_Physician` int(11) NOT NULL,
  `ClinicName` varchar(25) NOT NULL,
  `ClinicAddress` varchar(255) NOT NULL,
  `ClinicCity` varchar(25) NOT NULL,
  `ClinicState` char(2) NOT NULL,
  `ClinicZipCode` varchar(25) NOT NULL,
  `ClinicPhoneNumber` varchar(25) NOT NULL,
  `ClinicEmail` varchar(30) NOT NULL,
  `ClinicInformation` text,
  `ClinicTotalReview` int(11) NOT NULL,
  `ClinicAverageRating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clinic`
--

INSERT INTO `clinic` (`ClinicID`, `Total_Physician`, `ClinicName`, `ClinicAddress`, `ClinicCity`, `ClinicState`, `ClinicZipCode`, `ClinicPhoneNumber`, `ClinicEmail`, `ClinicInformation`, `ClinicTotalReview`, `ClinicAverageRating`) VALUES
('CID01', 5, 'Fairfax Clinic', '6408 Seven Corners Place Suite C', 'Falls Church', 'va', '22044', '5712255152', 'clinic@gmail.com', 'good clinic', 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `degree`
--

CREATE TABLE `degree` (
  `DegreeID` varchar(25) NOT NULL,
  `DegreeName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `degree`
--

INSERT INTO `degree` (`DegreeID`, `DegreeName`) VALUES
('D001', 'Medical Assistant Bachelor degree'),
('D002', 'Medical Assistant Associate degree'),
('D003', 'Medical Administrative Secretary Bachelor Degree'),
('D004', 'Bachelor of Medical Office Assistant degree'),
('D005', 'Certified American Association of Nurse Practitioners'),
('D006', 'Allied Health Clinical Medical Assistant'),
('D007', 'CMAA Certified Medical Administrative Assistant'),
('D008', 'Graduate of Medical Administrative Assistant'),
('D009', 'Graduate of Medical Office Assistant: Admin Procedures'),
('D010', 'Graduate of Nurse Aide (CNA)');

-- --------------------------------------------------------

--
-- Table structure for table `employeeclinic`
--

CREATE TABLE `employeeclinic` (
  `EmployeeID` varchar(25) NOT NULL,
  `ClinicID` varchar(30) NOT NULL,
  `HiredDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employeeclinic`
--

INSERT INTO `employeeclinic` (`EmployeeID`, `ClinicID`, `HiredDate`) VALUES
('MAEMP006', 'CID01', '1991-04-01'),
('MAEMP007', 'CID01', '1992-05-01'),
('MAEMP008', 'CID01', '1989-04-05'),
('MAEMP009', 'CID01', '1995-04-01'),
('MAEMP010', 'CID01', '1991-05-01'),
('PEMP001', 'CID01', '1991-01-12'),
('PEMP002', 'CID01', '1991-04-13'),
('PEMP003', 'CID01', '1991-05-01'),
('PEMP004', 'CID01', '1991-12-01'),
('PEMP005', 'CID01', '1989-04-01');

-- --------------------------------------------------------

--
-- Table structure for table `employeedegree`
--

CREATE TABLE `employeedegree` (
  `EmployeeID` varchar(30) NOT NULL,
  `DegreeID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employeedegree`
--

INSERT INTO `employeedegree` (`EmployeeID`, `DegreeID`) VALUES
('MAEMP010', 'D003'),
('MAEMP006', 'D004'),
('MAEMP006', 'D005'),
('MAEMP007', 'D005'),
('MAEMP008', 'D005'),
('MAEMP009', 'D005'),
('MAEMP010', 'D005'),
('MAEMP007', 'D006'),
('MAEMP006', 'D007'),
('MAEMP007', 'D007'),
('MAEMP008', 'D007'),
('MAEMP009', 'D007'),
('MAEMP010', 'D007'),
('MAEMP008', 'D008'),
('MAEMP009', 'D009'),
('MAEMP006', 'D010'),
('MAEMP007', 'D010');

-- --------------------------------------------------------

--
-- Table structure for table `employeelanguage`
--

CREATE TABLE `employeelanguage` (
  `EmployeeID` varchar(25) NOT NULL,
  `LanguageID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employeelanguage`
--

INSERT INTO `employeelanguage` (`EmployeeID`, `LanguageID`) VALUES
('MAEMP006', 'L001'),
('MAEMP007', 'L001'),
('MAEMP008', 'L001'),
('MAEMP009', 'L001'),
('MAEMP010', 'L001'),
('PEMP002', 'L001'),
('PEMP003', 'L001'),
('PEMP004', 'L001'),
('PEMP005', 'L001'),
('MAEMP007', 'L002'),
('MAEMP009', 'L002'),
('PEMP001', 'L002'),
('PEMP002', 'L002'),
('PEMP004', 'L002'),
('PEMP005', 'L002'),
('PEMP002', 'L004'),
('PEMP004', 'L004'),
('MAEMP006', 'L007'),
('MAEMP008', 'L008'),
('PEMP005', 'L008'),
('MAEMP007', 'L009'),
('MAEMP009', 'L009'),
('PEMP003', 'L009');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `LanguageID` varchar(25) NOT NULL,
  `LanguageName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`LanguageID`, `LanguageName`) VALUES
('L001', 'English'),
('L002', 'Spanish'),
('L003', 'Madarin Chinese'),
('L004', 'Hindi'),
('L005', 'Russian'),
('L006', 'Japanese'),
('L007', 'Korean'),
('L008', 'Vietnamese'),
('L009', 'French'),
('L010', 'German');

-- --------------------------------------------------------

--
-- Table structure for table `medicalemployee`
--

CREATE TABLE `medicalemployee` (
  `EmployeeID` varchar(25) NOT NULL,
  `EmFirstName` varchar(25) NOT NULL,
  `EmLastName` varchar(25) NOT NULL,
  `EmStreetAddress` varchar(25) NOT NULL,
  `EmCity` varchar(25) NOT NULL,
  `EmState` char(2) NOT NULL,
  `EmZipCode` varchar(25) NOT NULL,
  `EmPhoneNumber` varchar(25) NOT NULL,
  `EmEmail` varchar(30) NOT NULL,
  `EmDOB` date NOT NULL,
  `PositionID` varchar(25) NOT NULL,
  `Experience` text,
  `Awards` text,
  `EmProfilePicture` longblob,
  `Certificates` text,
  `TrainingProcess` text,
  `Gender` enum('male','female') NOT NULL,
  `RoleType` enum('Physician','MedicalAssistant','AministrativeAssistant') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `medicalemployee`
--

INSERT INTO `medicalemployee` (`EmployeeID`, `EmFirstName`, `EmLastName`, `EmStreetAddress`, `EmCity`, `EmState`, `EmZipCode`, `EmPhoneNumber`, `EmEmail`, `EmDOB`, `PositionID`, `Experience`, `Awards`, `EmProfilePicture`, `Certificates`, `TrainingProcess`, `Gender`, `RoleType`) VALUES
('MAEMP006', 'Jung', 'Kim', '6108 Thornwood Drive', 'Alexandria', 'VA', '22310', '703-998-5687', 'jungkim@gmail.com', '1988-07-01', 'P007', 'While working as a system consultant, Jung became inspired to become a nurse and enrolled at the University of Maryland where she obtained a bachelor degree in nursing. After working in the United Hospital Center Cardiac unit in West Virginia, she moved to the INOVA Hospital Group where she gained broad experience as a float nurse in all 5 of their hospitals', NULL, NULL, 'American Association of Nurse Practitioners - CMAA Certified Medical Administrative Assistant', 'Graduate School Chamberlain College of Nursing Family Nurse Practitioner Downers Grove, IL - Undergraduate School University of Maryland Bachelor of Science in Nursing Baltimore, MD', 'female', 'MedicalAssistant'),
('MAEMP007', 'John', 'Fleming', '6222 Woodbridge CT', 'Woodbridge', 'VA', '22193', '703-565-7487', 'johnfleming@gmail.com', '1980-05-05', 'P003', NULL, NULL, NULL, 'American Association of Nurse Practitioners - CMAA Certified Medical Administrative Assistant', 'Graduate GWU of Nurse Aide, DC - Undergraduate School University of Maryland Bachelor of Allied Health Clinical Medical Assistant, MD', 'male', 'MedicalAssistant'),
('MAEMP008', 'Sarah', 'Truong', '6216 Briarview Ct', 'Alexandria', 'VA', '22310', '571-544-5956', 'sarahtruong@gmail.com', '1990-02-10', 'P002', NULL, NULL, NULL, 'American Association of Nurse Practitioners - CMAA Certified Medical Administrative Assistant', 'Graduate at Medical Administrative Assistant USMD', 'female', 'MedicalAssistant'),
('MAEMP009', 'Briana', 'Quinn', '3213 Quate Lane', 'Woodbridge', 'VA', '22193', '571-554-8733', 'brianaquinn@gmail.com', '1985-05-01', 'P001', NULL, NULL, NULL, 'American Association of Nurse Practitioners - CMAA Certified Medical Administrative Assistant', 'Graduate Medical Office Assistant: Admin Procedures at Howard University', 'female', 'MedicalAssistant'),
('MAEMP010', 'Joan', 'Ash', '5109 Heming Avenue', 'Springfield', 'VA', '22151', '571-665-2116', 'joanash@gmail.coml', '1980-10-09', 'P001', NULL, NULL, NULL, 'American Association of Nurse Practitioners - CMAA Certified Medical Administrative Assistant', 'Medical Administrative Secretary Bachelor Degree at GWU', 'female', 'MedicalAssistant'),
('PEMP001', 'Donald', 'Watren', '200 Somerset Street', 'Fairfax', 'VA', '22031', '561-655-5511', 'donaldwatren@gmail.com', '1950-09-10', 'P009', 'Miami Valley Hospital 1979-1992 - Good Samaritan Hospital 1992-present - Voluntary Assistant Professor of Family Medicine, University of Miami', 'American Board of Family Practice 1979-Present - Florida Academy of Family Practice 1992-Present', NULL, 'American Academy of Family Practice - American Academy of HIV Medicine', 'Residency: Miami Valley Hospital Dayton, OH 1977-1979 - Internship: Miami Valley Hospital Dayton, OH 1976-1977 - Medical School: Ohio State University Columbus, OH - Doctorate of Medicine 1976 Undergraduate: University of Cincinnati Cincinnati, OH Bachelor of Science 1973', 'male', 'Physician'),
('PEMP002', 'Kimvir', 'Dhillon', '23961 Clle D La Mgdln', 'Fairfax', 'VA', '22031', '949-588-8700', 'kimvirdhilon@gmail.com', '1965-11-10', 'P008', 'Dr. Kimvir Dhillon completed his training in internal medicine at UCLA Medical Center, and went on to specialize in endocrinology at UCLA Medical Center. During his endocrinology fellowship, Dr. Dhillon had extensive clinical training by leaders in the field of endocrinology with a particular interest in the treatment of thyroid diseases, pituitary diseases, adrenal tumors, and diabetes. He was active in the research of diabetes management, thyroid disorders, parathyroid disorders, and pituitary tumors. He also had extensive training in performing ultrasounds and ultrasound guided thyroid biopsies', NULL, NULL, 'Diplomate, American Board of Internal Medicine, 2001 - American Board of Endocrinology, 2003', 'Internship and Residency at the University of California, Los Angeles, 1998 - 2001 - Fellowship in Endocrinology at the University of California, Los Angeles, 2001 - 2003', 'male', 'Physician'),
('PEMP003', 'Barry', 'George', '3650 River Rd #300', 'Fairfax', 'VA', '22031', '614-538-0527', 'barrygeorge@gmail.com', '1955-09-15', 'P004', 'Barry George, MD, FACC, FSCAI, FACP, an interventional cardiologist, is the director of advanced interventional cardiovascular medicine and structural heart disease, an associate professor of clinical internal medicine, and director of advanced cardiovascular catheter-based therapies at The Ohio State University Wexner Medical Center in Columbus, Ohio. Dr. George earned his medical degree from The Ohio State University Wexner Medical Center and completed his residency and a fellowship at Riverside Methodist Hospital in Columbus, Ohio. He is board certified in internal medicine, cardiovascular disease and interventional cardiology', 'Nominated one of 4,800 Top Doctors in America - Nominated one of the Top Doctors of Central Ohio WTVN and the Columbus Dispatch, 2004 - Cardiologist Best Doctors in America', NULL, 'American Board of Internal Medicine 1982 - American Board of Internal Medicine (Subspecialty: Cardiovascular) 1985 -  American Board of Internal Medicine (Subspecialty: Interventional Cardiology)2003', NULL, 'male', 'Physician'),
('PEMP004', 'Anand', 'Gundakaram', '1074 S State St', 'Alexandria', 'VA', '22310', '302-678-8100', 'anandgundakaram@gmail.com', '1966-02-12', 'P004', 'Dr. Anand Gundakaram is a pediatric neurologist in Dover, Delaware and is affiliated with one hospital. He has been in practice for more than 20 years', NULL, NULL, 'American Board of Psychiatry and Neurology Certified in Neurology with Special Qualification in Child Neurology - MI State Medical License Active through 2018 - DE State Medical License Active through 2021 - NJ State Medical License Active through 2021', 'University of Michigan Hospitals and Health Centers Residency , Child Neurology - University of Michigan Hospitals and Health Centers Fellowship , Child Neurology -Texas Tech University at Lubbock Residency , Pediatrics - Sri Venkatesvara Medical College NTR Medical School', 'male', 'Physician'),
('PEMP005', 'Viet', 'Nguyen', '6259 Annandale Blvd', 'Annandale', 'VA', '22150', '703-556-8595', 'vietnguyen@gmail.com', '1985-05-06', 'P010', 'University of Maryland School of Medicine - Internal Medicine/Primary Care - Clinical Instructor 2014 – Present', NULL, NULL, 'Member of Medical Society of Northern Virginia 2015 – Present', 'Residency Cleveland Clinic Florida Internal Medicine Weston, FL 2011 - Internship University of Miami School of Medicine Internal Medicine Miami, FL 2009 - Medical School Nova Southeastern University College of Osteopathic Medicine Doctor of Osteopathic Medicine Ft. Lauderdale, FL 2008 - Undergraduate School University of Virginia Bachelor of Arts in Chemistry Charlottesville, VA 2002', 'male', 'Physician');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PatientID` int(11) NOT NULL,
  `UserName` varchar(25) NOT NULL,
  `UserPassword` varchar(25) NOT NULL,
  `PatientFirstName` varchar(25) NOT NULL,
  `PatientLastName` varchar(25) NOT NULL,
  `PatientStreetAddress` varchar(25) NOT NULL,
  `PatientCity` varchar(25) NOT NULL,
  `PatientState` char(2) NOT NULL,
  `PatientZipCode` varchar(25) NOT NULL,
  `PatientPhoneNumber` varchar(25) NOT NULL,
  `PatientEmail` varchar(30) NOT NULL,
  `PatientDOB` date NOT NULL,
  `AccountCreatedDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PatientID`, `UserName`, `UserPassword`, `PatientFirstName`, `PatientLastName`, `PatientStreetAddress`, `PatientCity`, `PatientState`, `PatientZipCode`, `PatientPhoneNumber`, `PatientEmail`, `PatientDOB`, `AccountCreatedDate`) VALUES
(1, 'user01', 'password', 'vincent', 'nguyen', '9433 farifax ', 'fairfax', 'va', '22031', '5712251111', 'vnguyen84@gwmail.gwu.edu', '1990-04-07', '2020-04-14 20:45:36'),
(2, 'user02', 'password', 'lee', 'nguyen', '9423 farifax ', 'fairfax', 'va', '22031', '5712252222', 'vnguyen84@gwmail.gwu.edu', '1991-04-07', '2020-04-14 20:45:36'),
(3, 'user03', 'password', 'park', 'tran', '9227 farifax ', 'fairfax', 'va', '22031', '5712253333', 'vnguyen84@gwmail.gwu.edu', '1992-04-07', '2020-04-14 20:45:36'),
(4, 'user04', 'password', 'dana', 'nguyen', '1147 farifax ', 'fairfax', 'va', '22031', '571225444', 'vnguyen84@gwmail.gwu.edu', '1993-04-07', '2020-04-14 20:45:36'),
(5, 'user05', 'password', 'michelle', 'dana', '4447 arlington ', 'fairfax', 'va', '22031', '5712255555', 'vnguyen84@gwmail.gwu.edu', '1994-04-07', '2020-04-14 20:45:36'),
(6, 'user06', 'password', 'michale', 'snider', '9247 farifax ', 'fairfax', 'va', '22031', '5712256666', 'vnguyen84@gwmail.gwu.edu', '1995-04-07', '2020-04-14 20:45:36'),
(7, 'user07', 'password', 'van', 'nguyen', '9447 farifax ', 'fairfax', 'va', '22031', '5712257777', 'vnguyen84@gwmail.gwu.edu', '1997-04-07', '2020-04-14 20:45:36'),
(8, 'user08', 'password', 'rich', 'nguyen', '9447 lee ', 'fairfax', 'va', '22031', '5712258888', 'vnguyen84@gwmail.gwu.edu', '1998-04-07', '2020-04-14 20:45:36'),
(9, 'user09', 'password', 'victor', 'nguyen', '9447 nutley ', 'fairfax', 'va', '22031', '5712259999', 'vnguyen84@gwmail.gwu.edu', '1999-04-07', '2020-04-14 20:45:36'),
(10, 'user10', 'password', 'turkin', 'vang', '1237 n quarker lane ', 'alexandria', 'va', '22310', '5718743311', 'turkinvang@gmail.com', '1990-06-09', '2020-04-14 20:45:36');

-- --------------------------------------------------------

--
-- Table structure for table `physician`
--

CREATE TABLE `physician` (
  `EmployeeID` varchar(25) NOT NULL,
  `PhysicianTotalScore` varchar(20) DEFAULT NULL,
  `PhysicianTotalReview` varchar(20) DEFAULT NULL,
  `PhysicianAverageRating` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `physician`
--

INSERT INTO `physician` (`EmployeeID`, `PhysicianTotalScore`, `PhysicianTotalReview`, `PhysicianAverageRating`) VALUES
('PEMP001', '4', '1', '4'),
('PEMP002', '10', '2', '5'),
('PEMP003', '12', '3', '4'),
('PEMP004', '8', '2', '4'),
('PEMP005', '6', '2', '3');

-- --------------------------------------------------------

--
-- Table structure for table `position_t`
--

CREATE TABLE `position_t` (
  `PositionID` varchar(25) NOT NULL,
  `PositionName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `position_t`
--

INSERT INTO `position_t` (`PositionID`, `PositionName`) VALUES
('P001', 'Medical Receptionist '),
('P002', 'Medical Billers'),
('P003', 'Physician Assistant'),
('P004', 'Clinic Manager'),
('P005', 'Pharmacist Assistant'),
('P006', 'Digital Vision'),
('P007', 'Health Care Assistant'),
('P008', 'Vice-President'),
('P009', 'President'),
('P010', 'Medical Office Manager');

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `RateID` varchar(20) NOT NULL,
  `ClinicID` varchar(20) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `EmployeeID` varchar(20) NOT NULL,
  `ScaledScore` enum('1','2','3','4','5') NOT NULL,
  `ContentRating` text,
  `EvaluationDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`RateID`, `ClinicID`, `PatientID`, `EmployeeID`, `ScaledScore`, `ContentRating`, `EvaluationDateTime`) VALUES
('r01', 'CID01', 1, 'PEMP001', '4', 'the physician is a good physician ', '2020-04-14 20:45:37'),
('r02', 'CID01', 2, 'PEMP002', '5', 'the physician is a good physician ', '2020-04-14 20:45:37'),
('r03', 'CID01', 3, 'PEMP002', '5', 'the physician is a good physician ', '2020-04-14 20:45:37'),
('r04', 'CID01', 4, 'PEMP003', '4', 'the physician is a good physician ', '2020-04-14 20:45:37'),
('r05', 'CID01', 5, 'PEMP003', '4', 'the physician is a good physician ', '2020-04-14 20:45:37'),
('r06', 'CID01', 6, 'PEMP003', '4', 'the physician is a good physician ', '2020-04-14 20:45:37'),
('r07', 'CID01', 7, 'PEMP004', '4', 'the physician is a good physician ', '2020-04-14 20:45:37'),
('r08', 'CID01', 8, 'PEMP004', '4', 'the physician is a good physician ', '2020-04-14 20:45:37'),
('r09', 'CID01', 9, 'PEMP005', '4', 'the physician is a good physician ', '2020-04-14 20:45:37'),
('r10', 'CID01', 10, 'PEMP005', '2', 'the physician is a bad physician ', '2020-04-14 20:45:37');

-- --------------------------------------------------------

--
-- Table structure for table `speciality`
--

CREATE TABLE `speciality` (
  `SpecialityID` varchar(25) NOT NULL,
  `SpecialityName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `speciality`
--

INSERT INTO `speciality` (`SpecialityID`, `SpecialityName`) VALUES
('S001', 'Anesthesiology'),
('S002', 'Allergy & Immunology'),
('S003', 'Cardiology'),
('S004', 'Family Practice'),
('S005', 'General Surgery'),
('S006', 'Internal medicine'),
('S007', 'Medical Clinics'),
('S008', 'Pediatrics'),
('S009', 'Plastic Surgery'),
('S010', 'PT/OT');

-- --------------------------------------------------------

--
-- Table structure for table `specialityphysician`
--

CREATE TABLE `specialityphysician` (
  `EmployeeID` varchar(30) NOT NULL,
  `SpecialityID` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `specialityphysician`
--

INSERT INTO `specialityphysician` (`EmployeeID`, `SpecialityID`) VALUES
('PEMP001', 'S001'),
('PEMP001', 'S002'),
('PEMP002', 'S004'),
('PEMP002', 'S006'),
('PEMP003', 'S003'),
('PEMP003', 'S007'),
('PEMP004', 'S004'),
('PEMP004', 'S006'),
('PEMP004', 'S007'),
('PEMP005', 'S004'),
('PEMP005', 'S005'),
('PEMP005', 'S008');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academicphysician`
--
ALTER TABLE `academicphysician`
  ADD PRIMARY KEY (`EmployeeID`,`AcademicRankID`),
  ADD KEY `AcademicPhysician_FK2` (`AcademicRankID`);

--
-- Indexes for table `academicrank`
--
ALTER TABLE `academicrank`
  ADD PRIMARY KEY (`AcademicRankID`);

--
-- Indexes for table `clinic`
--
ALTER TABLE `clinic`
  ADD PRIMARY KEY (`ClinicID`);

--
-- Indexes for table `degree`
--
ALTER TABLE `degree`
  ADD PRIMARY KEY (`DegreeID`);

--
-- Indexes for table `employeeclinic`
--
ALTER TABLE `employeeclinic`
  ADD PRIMARY KEY (`EmployeeID`,`ClinicID`),
  ADD KEY `EmployeeClinic_FK2` (`ClinicID`);

--
-- Indexes for table `employeedegree`
--
ALTER TABLE `employeedegree`
  ADD PRIMARY KEY (`EmployeeID`,`DegreeID`),
  ADD KEY `EmployeeDegree_FK2` (`DegreeID`);

--
-- Indexes for table `employeelanguage`
--
ALTER TABLE `employeelanguage`
  ADD PRIMARY KEY (`EmployeeID`,`LanguageID`),
  ADD KEY `EmployeeLanguage_FK2` (`LanguageID`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`LanguageID`);

--
-- Indexes for table `medicalemployee`
--
ALTER TABLE `medicalemployee`
  ADD PRIMARY KEY (`EmployeeID`),
  ADD KEY `MedicalEmployee_FK1` (`PositionID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PatientID`),
  ADD UNIQUE KEY `UserName` (`UserName`);

--
-- Indexes for table `physician`
--
ALTER TABLE `physician`
  ADD KEY `Physician_FK1` (`EmployeeID`);

--
-- Indexes for table `position_t`
--
ALTER TABLE `position_t`
  ADD PRIMARY KEY (`PositionID`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`RateID`),
  ADD KEY `Rate_FK1` (`ClinicID`),
  ADD KEY `Rate_FK2` (`PatientID`),
  ADD KEY `Rate_FK3` (`EmployeeID`);

--
-- Indexes for table `speciality`
--
ALTER TABLE `speciality`
  ADD PRIMARY KEY (`SpecialityID`);

--
-- Indexes for table `specialityphysician`
--
ALTER TABLE `specialityphysician`
  ADD PRIMARY KEY (`SpecialityID`,`EmployeeID`),
  ADD KEY `SpecialityPhysician_FK1` (`EmployeeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `PatientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academicphysician`
--
ALTER TABLE `academicphysician`
  ADD CONSTRAINT `AcademicPhysician_FK1` FOREIGN KEY (`EmployeeID`) REFERENCES `physician` (`EmployeeID`),
  ADD CONSTRAINT `AcademicPhysician_FK2` FOREIGN KEY (`AcademicRankID`) REFERENCES `academicrank` (`AcademicRankID`);

--
-- Constraints for table `employeeclinic`
--
ALTER TABLE `employeeclinic`
  ADD CONSTRAINT `EmployeeClinic_FK1` FOREIGN KEY (`EmployeeID`) REFERENCES `medicalemployee` (`EmployeeID`),
  ADD CONSTRAINT `EmployeeClinic_FK2` FOREIGN KEY (`ClinicID`) REFERENCES `clinic` (`ClinicID`);

--
-- Constraints for table `employeedegree`
--
ALTER TABLE `employeedegree`
  ADD CONSTRAINT `EmployeeDegree_FK1` FOREIGN KEY (`EmployeeID`) REFERENCES `medicalemployee` (`EmployeeID`),
  ADD CONSTRAINT `EmployeeDegree_FK2` FOREIGN KEY (`DegreeID`) REFERENCES `degree` (`DegreeID`);

--
-- Constraints for table `employeelanguage`
--
ALTER TABLE `employeelanguage`
  ADD CONSTRAINT `EmployeeLanguage_FK1` FOREIGN KEY (`EmployeeID`) REFERENCES `medicalemployee` (`EmployeeID`),
  ADD CONSTRAINT `EmployeeLanguage_FK2` FOREIGN KEY (`LanguageID`) REFERENCES `language` (`LanguageID`);

--
-- Constraints for table `medicalemployee`
--
ALTER TABLE `medicalemployee`
  ADD CONSTRAINT `MedicalEmployee_FK1` FOREIGN KEY (`PositionID`) REFERENCES `position_t` (`PositionID`);

--
-- Constraints for table `physician`
--
ALTER TABLE `physician`
  ADD CONSTRAINT `Physician_FK1` FOREIGN KEY (`EmployeeID`) REFERENCES `medicalemployee` (`EmployeeID`);

--
-- Constraints for table `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `Rate_FK1` FOREIGN KEY (`ClinicID`) REFERENCES `clinic` (`ClinicID`),
  ADD CONSTRAINT `Rate_FK2` FOREIGN KEY (`PatientID`) REFERENCES `patient` (`PatientID`),
  ADD CONSTRAINT `Rate_FK3` FOREIGN KEY (`EmployeeID`) REFERENCES `physician` (`EmployeeID`);

--
-- Constraints for table `specialityphysician`
--
ALTER TABLE `specialityphysician`
  ADD CONSTRAINT `SpecialityPhysician_FK1` FOREIGN KEY (`EmployeeID`) REFERENCES `physician` (`EmployeeID`),
  ADD CONSTRAINT `SpecialityPhysician_FK2` FOREIGN KEY (`SpecialityID`) REFERENCES `speciality` (`SpecialityID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

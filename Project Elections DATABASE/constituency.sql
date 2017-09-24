-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2017 at 04:19 PM
-- Server version: 5.05.01
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `elections`
--

-- --------------------------------------------------------

--
-- Table structure for table `constituency`
--

CREATE TABLE `constituency` (
  `State` varchar(30) DEFAULT NULL,
  `Constituency` varchar(30) DEFAULT NULL,
  `Cno` int(11) DEFAULT NULL,
  `date_Of_Election` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `constituency`
--

INSERT INTO `constituency` (`State`, `Constituency`, `Cno`, `date_Of_Election`) VALUES
('Andhra Pradesh', 'Araku', 10101, '2016-11-19'),
('Andhra Pradesh', 'Srikakulam', 10102, '2016-11-19'),
('Andhra Pradesh', 'Vizianagaram', 10103, '2016-11-19'),
('Andhra Pradesh', 'Visakhapatnam', 10104, '2016-11-19'),
('Andhra Pradesh', 'Anakapalli', 10105, '2016-11-19'),
('Andhra Pradesh', 'Kakinada', 10106, '2016-11-19'),
('Andhra Pradesh', 'Amalapuram', 10107, '2016-11-19'),
('Andhra Pradesh', 'Rajahmundry', 10108, '2016-11-19'),
('Andhra Pradesh', 'Narasapuram', 10109, '2016-11-19'),
('Andhra Pradesh', 'Eluru', 10110, '2016-11-19'),
('Andhra Pradesh', 'Machilipatnam', 10111, '2016-11-19'),
('Andhra Pradesh', 'Vijayawada', 10112, '2016-11-19'),
('Andhra Pradesh', 'Guntur', 10113, '2016-11-19'),
('Andhra Pradesh', 'Narasaraopet', 10114, '2016-11-19'),
('Andhra Pradesh', 'Bapatla', 10115, '2016-11-19'),
('Andhra Pradesh', 'Ongole', 10116, '2016-11-19'),
('Andhra Pradesh', 'Nandyal', 10117, '2016-11-19'),
('Andhra Pradesh', 'Kurnool', 10118, '2016-11-19'),
('Andhra Pradesh', 'Anantapur', 10119, '2016-11-19'),
('Andhra Pradesh', 'Hindupur', 10120, '2016-11-19'),
('Andhra Pradesh', 'Kadapa', 10121, '2016-11-19'),
('Andhra Pradesh', 'Nellore', 10122, '2016-11-19'),
('Andhra Pradesh', 'Tirupati', 10123, '2016-11-19'),
('Andhra Pradesh', 'Rajampet', 10124, '2016-11-19'),
('Andhra Pradesh', 'Chittoor', 10125, '2016-11-19'),
('Arunachal Pradesh', 'Arunachal West', 10201, '2016-10-03'),
('Arunachal Pradesh', 'Arunachal East', 10202, '2016-10-03'),
('Assam', 'Karimganj', 10301, '2016-10-03'),
('Assam', 'Silchar', 10302, '2016-10-03'),
('Assam', 'Autonomous District', 10303, '2016-10-03'),
('Assam', 'Dhubri', 10304, '2016-10-03'),
('Assam', 'Kokrajhar', 10305, '2016-10-03'),
('Assam', 'Barpeta', 10306, '2016-10-03'),
('Assam', 'Gauhati', 10307, '2016-10-03'),
('Assam', 'Mangaldoi', 10308, '2016-10-03'),
('Assam', 'Tezpur', 10309, '2016-10-03'),
('Assam', 'Nowgong', 10310, '2016-10-03'),
('Assam', 'Kaliabor', 10311, '2016-10-03'),
('Assam', 'Jorhat', 10312, '2016-10-03'),
('Assam', 'Dibrugarh', 10313, '2016-10-03'),
('Assam', 'Lakhimpur', 10314, '2016-10-03'),
('Bihar', 'Valmiki Nagar', 10401, '2016-10-03'),
('Bihar', 'Paschim Champaran', 10402, '2016-10-03'),
('Bihar', 'Purvi Champaran', 10403, '2016-10-03'),
('Bihar', 'Sheohar', 10404, '2016-10-03'),
('Bihar', 'Sitamarhi', 10405, '2016-10-03'),
('Bihar', 'Madhubani', 10406, '2016-10-03'),
('Bihar', 'Jhanjharpur', 10407, '2016-10-03'),
('Bihar', 'Supaul', 10408, '2016-10-03'),
('Bihar', 'Araria', 10409, '2016-10-03'),
('Bihar', 'Kishanganj', 10410, '2016-10-03'),
('Bihar', 'Katihar', 10411, '2016-10-03'),
('Bihar', 'Purnia', 10412, '2016-10-03'),
('Bihar', 'Madhepura', 10413, '2016-10-03'),
('Bihar', 'Darbhanga', 10414, '2016-10-03'),
('Bihar', 'Muzaffarpur', 10415, '2016-10-03'),
('Bihar', 'Vaishali', 10416, '2016-10-03'),
('Bihar', 'Gopalganj', 10417, '2016-10-03'),
('Bihar', 'Siwan', 10418, '2016-10-03'),
('Bihar', 'Maharajganj', 10419, '2016-10-03'),
('Bihar', 'Saran', 10420, '2016-10-03'),
('Bihar', 'Hajipur', 10421, '2016-10-03'),
('Bihar', 'Ujiarpur', 10422, '2016-10-03'),
('Bihar', 'Samastipur', 10423, '2016-10-03'),
('Bihar', 'Begusarai', 10424, '2016-10-03'),
('Bihar', 'Khagaria', 10425, '2016-10-03'),
('Bihar', 'Bhagalpur', 10426, '2016-10-03'),
('Bihar', 'Banka', 10427, '2016-10-03'),
('Bihar', 'Munger', 10428, '2016-10-03'),
('Bihar', 'Nalanda', 10429, '2016-10-03'),
('Bihar', 'Patna Sahib', 10430, '2016-10-03'),
('Bihar', 'Pataliputra', 10431, '2016-10-03'),
('Bihar', 'Arrah', 10432, '2016-10-03'),
('Bihar', 'Buxar', 10433, '2016-10-03'),
('Bihar', 'Sasaram', 10434, '2016-10-03'),
('Bihar', 'Karakat', 10435, '2016-10-03'),
('Bihar', 'Jahanabad', 10436, '2016-10-03'),
('Bihar', 'Aurangabad', 10437, '2016-10-03'),
('Bihar', 'Gaya', 10438, '2016-10-03'),
('Bihar', 'Nawada', 10439, '2016-10-03'),
('Bihar', 'Jamui', 10440, '2016-10-03'),
('Chhattisgarh', 'Surguja', 10501, '2016-10-03'),
('Chhattisgarh', 'Rajnandgaon', 10502, '2016-10-03'),
('Chhattisgarh', 'Raipur', 10503, '2016-10-03'),
('Chhattisgarh', 'Mahasamund', 10504, '2016-10-03'),
('Chhattisgarh', 'Bastar', 10505, '2016-10-03'),
('Chhattisgarh', 'Raigarh', 10506, '2016-10-03'),
('Chhattisgarh', 'Janjgir-Champa', 10507, '2016-10-03'),
('Chhattisgarh', 'Korba', 10508, '2016-10-03'),
('Chhattisgarh', 'Bilaspur', 10509, '2016-10-03'),
('Chhattisgarh', 'Durg', 10510, '2016-10-03'),
('Chhattisgarh', 'Kanker', 10511, '2016-10-03'),
('Goa', 'North Goa', 10601, '2016-10-01'),
('Goa', 'South Goa', 10602, '2016-10-01'),
('Gujarat', 'Kachchh', 10701, '2016-10-03'),
('Gujarat', 'Banaskantha', 10702, '2016-10-03'),
('Gujarat', 'Patan', 10703, '2016-10-03'),
('Gujarat', 'Mahesana', 10704, '2016-10-03'),
('Gujarat', 'Sabarkantha', 10705, '2016-10-03'),
('Gujarat', 'Gandhinagar', 10706, '2016-10-03'),
('Gujarat', 'Ahmedabad East', 10707, '2016-10-03'),
('Gujarat', 'Ahmedabad West', 10708, '2016-10-03'),
('Gujarat', 'Surendranagar', 10709, '2016-10-03'),
('Gujarat', 'Rajkot', 10710, '2016-10-03'),
('Gujarat', 'Porbandar', 10711, '2016-10-03'),
('Gujarat', 'Jamnagar', 10712, '2016-10-03'),
('Gujarat', 'Junagadh', 10713, '2016-10-03'),
('Gujarat', 'Amreli', 10714, '2016-10-03'),
('Gujarat', 'Bhavnagar', 10715, '2016-10-03'),
('Gujarat', 'Anand', 10716, '2016-10-03'),
('Gujarat', 'Kheda', 10717, '2016-10-03'),
('Gujarat', 'Panchmahal', 10718, '2016-10-03'),
('Gujarat', 'Dahod', 10719, '2016-10-03'),
('Gujarat', 'Vadodara', 10720, '2016-10-03'),
('Gujarat', 'Chhota Udaipur', 10721, '2016-10-03'),
('Gujarat', 'Bharuch', 10722, '2016-10-03'),
('Gujarat', 'Bardoli', 10723, '2016-10-03'),
('Gujarat', 'Surat', 10724, '2016-10-03'),
('Gujarat', 'Navsari', 10725, '2016-10-03'),
('Gujarat', 'Valsad', 10726, '2016-10-03'),
('Haryana', 'Ambala', 10801, '2016-10-01'),
('Haryana', 'Kurukshetra', 10802, '2016-10-01'),
('Haryana', 'Sirsa', 10803, '2016-10-01'),
('Haryana', 'Hissar', 10804, '2016-10-01'),
('Haryana', 'Karnal', 10805, '2016-10-01'),
('Haryana', 'Sonepat', 10806, '2016-10-01'),
('Haryana', 'Rohtak', 10807, '2016-10-01'),
('Haryana', 'Bhiwani-Mahendragarh', 10808, '2016-10-01'),
('Haryana', 'Gurgaon', 10809, '2016-10-01'),
('Haryana', 'Faridabad', 10810, '2016-10-01'),
('Himachal Pradesh', 'Kangra', 10901, '2016-10-03'),
('Himachal Pradesh', 'Mandi', 10902, '2016-10-03'),
('Himachal Pradesh', 'Hamirpur', 10903, '2016-10-03'),
('Himachal Pradesh', 'Shimla', 10904, '2016-10-03'),
('Jammu and Kashmir', 'Baramulla', 11001, '2016-10-01'),
('Jammu and Kashmir', 'Srinagar', 11002, '2016-10-01'),
('Jammu and Kashmir', 'Anantnag', 11003, '2016-10-01'),
('Jammu and Kashmir', 'Ladakh', 11004, '2016-10-01'),
('Jammu and Kashmir', 'Udhampur', 11005, '2016-10-01'),
('Jammu and Kashmir', 'Jammu', 11006, '2016-10-01'),
('Jharkhand', 'Rajmahal', 11101, '2016-10-03'),
('Jharkhand', 'Dumka', 11102, '2016-10-03'),
('Jharkhand', 'Godda', 11103, '2016-10-03'),
('Jharkhand', 'Chatra', 11104, '2016-10-03'),
('Jharkhand', 'Kodarma', 11105, '2016-10-03'),
('Jharkhand', 'Giridih', 11106, '2016-10-03'),
('Jharkhand', 'Dhanbad', 11107, '2016-10-03'),
('Jharkhand', 'Ranchi', 11108, '2016-10-03'),
('Jharkhand', 'Jamshedpur', 11109, '2016-10-03'),
('Jharkhand', 'Singhbhum', 11110, '2016-10-03'),
('Jharkhand', 'Khunti', 11111, '2016-10-03'),
('Jharkhand', 'Lohardaga', 11112, '2016-10-03'),
('Jharkhand', 'Palamau', 11113, '2016-10-03'),
('Jharkhand', 'Hazaribagh', 11114, '2016-10-03'),
('Karnataka', 'Chikkodi', 11201, '2016-10-01'),
('Karnataka', 'Belgaum', 11202, '2016-10-01'),
('Karnataka', 'Bagalkot', 11203, '2016-10-01'),
('Karnataka', 'Bijapur', 11204, '2016-10-01'),
('Karnataka', 'Raichur', 11205, '2016-10-01'),
('Karnataka', 'Bidar', 11206, '2016-10-01'),
('Karnataka', 'Koppal', 11207, '2016-10-01'),
('Karnataka', 'Bellary', 11208, '2016-10-01'),
('Karnataka', 'Haveri', 11209, '2016-10-01'),
('Karnataka', 'Dharwad', 11210, '2016-10-01'),
('Karnataka', 'Uttara Kannada', 11211, '2016-10-01'),
('Karnataka', 'Davangere', 11212, '2016-10-01'),
('Karnataka', 'Shimoga', 11213, '2016-10-01'),
('Karnataka', 'Udupi Chikmagalur', 11214, '2016-10-01'),
('Karnataka', 'Hassan', 11215, '2016-10-01'),
('Karnataka', 'Dakshina Kannada', 11216, '2016-10-01'),
('Karnataka', 'Chitradurga', 11217, '2016-10-01'),
('Karnataka', 'Tumkur', 11218, '2016-10-01'),
('Karnataka', 'Mandya', 11219, '2016-10-01'),
('Karnataka', 'Mysore', 11220, '2016-10-01'),
('Karnataka', 'Chamarajanagar', 11221, '2016-10-01'),
('Karnataka', 'Bangalore Rural', 11222, '2016-10-01'),
('Karnataka', 'Bangalore North', 11223, '2016-10-01'),
('Karnataka', 'Bangalore Central', 11224, '2016-10-01'),
('Karnataka', 'Bangalore South', 11225, '2016-10-01'),
('Karnataka', 'Chikballapur', 11226, '2016-10-01'),
('Karnataka', 'Kolar', 11227, '2016-10-01'),
('Karnataka', 'Kalaburagi', 11228, '2016-10-01'),
('Kerela', 'Kasaragod', 11301, '2016-10-01'),
('Kerela', 'Kannur', 11302, '2016-10-01'),
('Kerela', 'Vadakara', 11303, '2016-10-01'),
('Kerela', 'Wayanad', 11304, '2016-10-01'),
('Kerela', 'Kozhikode', 11305, '2016-10-01'),
('Kerela', 'Malappuram', 11306, '2016-10-01'),
('Kerela', 'Ponnani', 11307, '2016-10-01'),
('Kerela', 'Palakkad', 11308, '2016-10-01'),
('Kerela', 'Alathur', 11309, '2016-10-01'),
('Kerela', 'Thrissur', 11310, '2016-10-01'),
('Kerela', 'Chalakudy', 11311, '2016-10-01'),
('Kerela', 'Ernakulam', 11312, '2016-10-01'),
('Kerela', 'Idukki', 11313, '2016-10-01'),
('Kerela', 'Kottayam', 11314, '2016-10-01'),
('Kerela', 'Alappuzha', 11315, '2016-10-01'),
('Kerela', 'Mavelikara', 11316, '2016-10-01'),
('Kerela', 'Pathanamthitta', 11317, '2016-10-01'),
('Kerela', 'Kollam', 11318, '2016-10-01'),
('Kerela', 'Attingal', 11319, '2016-10-01'),
('Kerela', 'Thiruvananthapuram', 11320, '2016-10-01'),
('Madhya Pradesh', 'Morena', 11401, '2016-10-03'),
('Madhya Pradesh', 'Bhind', 11402, '2016-10-03'),
('Madhya Pradesh', 'Gwalior', 11403, '2016-10-03'),
('Madhya Pradesh', 'Guna', 11404, '2016-10-03'),
('Madhya Pradesh', 'Sagar', 11405, '2016-10-03'),
('Madhya Pradesh', 'Tikamgarh', 11406, '2016-10-03'),
('Madhya Pradesh', 'Damoh', 11407, '2016-10-03'),
('Madhya Pradesh', 'Khajuraho', 11408, '2016-10-03'),
('Madhya Pradesh', 'Satna', 11409, '2016-10-03'),
('Madhya Pradesh', 'Rewa', 11410, '2016-10-03'),
('Madhya Pradesh', 'Sidhi', 11411, '2016-10-03'),
('Madhya Pradesh', 'Shahdol', 11412, '2016-10-03'),
('Madhya Pradesh', 'Jabalpur', 11413, '2016-10-03'),
('Madhya Pradesh', 'Mandla', 11414, '2016-10-03'),
('Madhya Pradesh', 'Balaghat', 11415, '2016-10-03'),
('Madhya Pradesh', 'Chhindwara', 11416, '2016-10-03'),
('Madhya Pradesh', 'Hoshangabad', 11417, '2016-10-03'),
('Madhya Pradesh', 'Vidisha', 11418, '2016-10-03'),
('Madhya Pradesh', 'Bhopal', 11419, '2016-10-03'),
('Madhya Pradesh', 'Rajgarh', 11420, '2016-10-03'),
('Madhya Pradesh', 'Dewas', 11421, '2016-10-03'),
('Madhya Pradesh', 'Ujjain', 11422, '2016-10-03'),
('Madhya Pradesh', 'Mandsaur', 11423, '2016-10-03'),
('Madhya Pradesh', 'Ratlam', 11424, '2016-10-03'),
('Madhya Pradesh', 'Dhar', 11425, '2016-10-03'),
('Madhya Pradesh', 'Indore', 11426, '2016-10-03'),
('Madhya Pradesh', 'Khargone', 11427, '2016-10-03'),
('Madhya Pradesh', 'Khandwa', 11428, '2016-10-03'),
('Madhya Pradesh', 'Betul', 11429, '2016-10-03'),
('Maharashtra', 'Nandurbar', 11501, '2016-10-03'),
('Maharashtra', 'Dhule', 11502, '2016-10-03'),
('Maharashtra', 'Jalgaon', 11503, '2016-10-03'),
('Maharashtra', 'Raver', 11504, '2016-10-03'),
('Maharashtra', 'Buldhana', 11505, '2016-10-03'),
('Maharashtra', 'Akola', 11506, '2016-10-03'),
('Maharashtra', 'Amravati', 11507, '2016-10-03'),
('Maharashtra', 'Wardha', 11508, '2016-10-03'),
('Maharashtra', 'Ramtek', 11509, '2016-10-03'),
('Maharashtra', 'Nagpur', 11510, '2016-10-03'),
('Maharashtra', 'Bhandara Gondiya', 11511, '2016-10-03'),
('Maharashtra', 'Gadchiroli Chimur', 11512, '2016-10-03'),
('Maharashtra', 'Chandrapur', 11513, '2016-10-03'),
('Maharashtra', 'Yavatmal Washim', 11514, '2016-10-03'),
('Maharashtra', 'Hingoli', 11515, '2016-10-03'),
('Maharashtra', 'Nanded', 11516, '2016-10-03'),
('Maharashtra', 'Parbhani', 11517, '2016-10-03'),
('Maharashtra', 'Jalna', 11518, '2016-10-03'),
('Maharashtra', 'Aurangabad', 11519, '2016-10-03'),
('Maharashtra', 'Dindori', 11520, '2016-10-03'),
('Maharashtra', 'Nashik', 11521, '2016-10-03'),
('Maharashtra', 'Palghar', 11522, '2016-10-03'),
('Maharashtra', 'Bhiwandi', 11523, '2016-10-03'),
('Maharashtra', 'Kalyan', 11524, '2016-10-03'),
('Maharashtra', 'Thane', 11525, '2016-10-03'),
('Maharashtra', 'Mumbai North', 11526, '2016-10-03'),
('Maharashtra', 'Mumbai North West', 11527, '2016-10-03'),
('Maharashtra', 'Mumbai North East', 11528, '2016-10-03'),
('Maharashtra', 'Mumbai North Central', 11529, '2016-10-03'),
('Maharashtra', 'Mumbai South Central', 11530, '2016-10-03'),
('Maharashtra', 'Mumbai South', 11531, '2016-10-03'),
('Maharashtra', 'Raigad', 11532, '2016-10-03'),
('Maharashtra', 'Maval', 11533, '2016-10-03'),
('Maharashtra', 'Pune', 11534, '2016-10-03'),
('Maharashtra', 'Baramati', 11535, '2016-10-03'),
('Maharashtra', 'Shirur', 11536, '2016-10-03'),
('Maharashtra', 'Ahmednagar', 11537, '2016-10-03'),
('Maharashtra', 'Shirdi', 11538, '2016-10-03'),
('Maharashtra', 'Beed', 11539, '2016-10-03'),
('Maharashtra', 'Osmanabad', 11540, '2016-10-03'),
('Maharashtra', 'Latur', 11541, '2016-10-03'),
('Maharashtra', 'Solapur', 11542, '2016-10-03'),
('Maharashtra', 'Madha', 11543, '2016-10-03'),
('Maharashtra', 'Sangli', 11544, '2016-10-03'),
('Maharashtra', 'Satara', 11545, '2016-10-03'),
('Maharashtra', 'Ratnagiri Sindhudurg', 11546, '2016-10-03'),
('Maharashtra', 'Kolhapur', 11547, '2016-10-03'),
('Maharashtra', 'Hatkanangle', 11548, '2016-10-03'),
('Manipur', 'Inner Manipur', 11601, '2016-10-01'),
('Manipur', 'Outer Manipur', 11602, '2016-10-01'),
('Meghalaya', 'Shillong', 11701, '2016-10-01'),
('Meghalaya', 'Tura', 11702, '2016-10-01'),
('Mizoram', 'Mizoram', 11801, '2016-10-01'),
('Nagaland', 'Nagaland', 11901, '2016-10-01'),
('Odisha', 'Bargarh', 12001, '2016-10-03'),
('Odisha', 'Sundargarh', 12002, '2016-10-03'),
('Odisha', 'Sambalpur', 12003, '2016-10-03'),
('Odisha', 'Keonjhar', 12004, '2016-10-03'),
('Odisha', 'Mayurbhanj', 12005, '2016-10-03'),
('Odisha', 'Balasore', 12006, '2016-10-03'),
('Odisha', 'Bhadrak', 12007, '2016-10-03'),
('Odisha', 'Jajpur', 12008, '2016-10-03'),
('Odisha', 'Dhenkanal', 12009, '2016-10-03'),
('Odisha', 'Bolangir', 12010, '2016-10-03'),
('Odisha', 'Kalahandi', 12011, '2016-10-03'),
('Odisha', 'Nabarangpur', 12012, '2016-10-03'),
('Odisha', 'Kandhamal', 12013, '2016-10-03'),
('Odisha', 'Cuttack', 12014, '2016-10-03'),
('Odisha', 'Kendrapara', 12015, '2016-10-03'),
('Odisha', 'Jagatsinghpur', 12016, '2016-10-03'),
('Odisha', 'Puri', 12017, '2016-10-03'),
('Odisha', 'Bhubaneswar', 12018, '2016-10-03'),
('Odisha', 'Aska', 12019, '2016-10-03'),
('Odisha', 'Berhampur', 12020, '2016-10-03'),
('Odisha', 'Koraput', 12021, '2016-10-03'),
('Punjab', 'Gurdaspur', 12101, '2016-10-01'),
('Punjab', 'Amritsar', 12102, '2016-10-01'),
('Punjab', 'Khadoor Sahib', 12103, '2016-10-01'),
('Punjab', 'Jalandhar', 12104, '2016-10-01'),
('Punjab', 'Hoshiarpur', 12105, '2016-10-01'),
('Punjab', 'Anandpur Sahib', 12106, '2016-10-01'),
('Punjab', 'Ludhiana', 12107, '2016-10-01'),
('Punjab', 'Fatehgarh Sahib', 12108, '2016-10-01'),
('Punjab', 'Faridkot', 12109, '2016-10-01'),
('Punjab', 'Firozpur', 12110, '2016-10-01'),
('Punjab', 'Bathinda', 12111, '2016-10-01'),
('Punjab', 'Sangrur', 12112, '2016-10-01'),
('Punjab', 'Patiala', 12113, '2016-10-01'),
('Rajasthan', 'Ganganagar', 12201, '2016-10-03'),
('Rajasthan', 'Bikaner', 12202, '2016-10-03'),
('Rajasthan', 'Churu', 12203, '2016-10-03'),
('Rajasthan', 'Jhunjhunu', 12204, '2016-10-03'),
('Rajasthan', 'Sikar', 12205, '2016-10-03'),
('Rajasthan', 'Jaipur Rural', 12206, '2016-10-03'),
('Rajasthan', 'Jaipur', 12207, '2016-10-03'),
('Rajasthan', 'Alwar', 12208, '2016-10-03'),
('Rajasthan', 'Bharatpur', 12209, '2016-10-03'),
('Rajasthan', 'Karauli-Dholpur', 12210, '2016-10-03'),
('Rajasthan', 'Dausa', 12211, '2016-10-03'),
('Rajasthan', 'Tonk-Sawai Madhopur', 12212, '2016-10-03'),
('Rajasthan', 'Ajmer', 12213, '2016-10-03'),
('Rajasthan', 'Nagaur', 12214, '2016-10-03'),
('Rajasthan', 'Pali', 12215, '2016-10-03'),
('Rajasthan', 'Jodhpur', 12216, '2016-10-03'),
('Rajasthan', 'Barmer', 12217, '2016-10-03'),
('Rajasthan', 'Jalore', 12218, '2016-10-03'),
('Rajasthan', 'Udaipur', 12219, '2016-10-03'),
('Rajasthan', 'Banswara', 12220, '2016-10-03'),
('Rajasthan', 'Chittorgarh', 12221, '2016-10-03'),
('Rajasthan', 'Rajsamand', 12222, '2016-10-03'),
('Rajasthan', 'Bhilwara', 12223, '2016-10-03'),
('Rajasthan', 'Kota', 12224, '2016-10-03'),
('Rajasthan', 'Jhalawar-Baran', 12225, '2016-10-03'),
('Sikkim', 'Sikkim', 12301, '2016-10-01'),
('Tamil Nadu', 'Thiruvallur', 12401, '2016-10-01'),
('Tamil Nadu', 'Chennai North', 12402, '2016-10-01'),
('Tamil Nadu', 'Chennai South', 12403, '2016-10-01'),
('Tamil Nadu', 'Chennai Central', 12404, '2016-10-01'),
('Tamil Nadu', 'Sriperumbudur', 12405, '2016-10-01'),
('Tamil Nadu', 'Kancheepuram', 12406, '2016-10-01'),
('Tamil Nadu', 'Arakkonam', 12407, '2016-10-01'),
('Tamil Nadu', 'Vellore', 12408, '2016-10-01'),
('Tamil Nadu', 'Krishnagiri', 12409, '2016-10-01'),
('Tamil Nadu', 'Dharmapuri', 12410, '2016-10-01'),
('Tamil Nadu', 'Tiruvannamalai', 12411, '2016-10-01'),
('Tamil Nadu', 'Arani', 12412, '2016-10-01'),
('Tamil Nadu', 'Villupuram', 12413, '2016-10-01'),
('Tamil Nadu', 'Kallakurichi', 12414, '2016-10-01'),
('Tamil Nadu', 'Salem', 12415, '2016-10-01'),
('Tamil Nadu', 'Namakkal', 12416, '2016-10-01'),
('Tamil Nadu', 'Erode', 12417, '2016-10-01'),
('Tamil Nadu', 'Tiruppur', 12418, '2016-10-01'),
('Tamil Nadu', 'Nilgiris', 12419, '2016-10-01'),
('Tamil Nadu', 'Coimbatore', 12420, '2016-10-01'),
('Tamil Nadu', 'Pollachi', 12421, '2016-10-01'),
('Tamil Nadu', 'Dindigul', 12422, '2016-10-01'),
('Tamil Nadu', 'Karur', 12423, '2016-10-01'),
('Tamil Nadu', 'Tiruchirappalli', 12424, '2016-10-01'),
('Tamil Nadu', 'Perambalur', 12425, '2016-10-01'),
('Tamil Nadu', 'Cuddalore', 12426, '2016-10-01'),
('Tamil Nadu', 'Chidambaram', 12427, '2016-10-01'),
('Tamil Nadu', 'Mayiladuturai', 12428, '2016-10-01'),
('Tamil Nadu', 'Nagapattinam', 12429, '2016-10-01'),
('Tamil Nadu', 'Thanjavur', 12430, '2016-10-01'),
('Tamil Nadu', 'Sivaganga', 12431, '2016-10-01'),
('Tamil Nadu', 'Madurai', 12432, '2016-10-01'),
('Tamil Nadu', 'Theni', 12433, '2016-10-01'),
('Tamil Nadu', 'Virudhunagar', 12434, '2016-10-01'),
('Tamil Nadu', 'Ramanathapuram', 12435, '2016-10-01'),
('Tamil Nadu', 'Thoothukudi', 12436, '2016-10-01'),
('Tamil Nadu', 'Tenkasi', 12437, '2016-10-01'),
('Tamil Nadu', 'Tirunelveli', 12438, '2016-10-01'),
('Tamil Nadu', 'Kanyakumari', 12439, '2016-10-01'),
('Telangana', 'Adilabad', 12501, '2016-10-01'),
('Telangana', 'Peddapalli', 12502, '2016-10-01'),
('Telangana', 'Karimnagar', 12503, '2016-10-01'),
('Telangana', 'Nizamabad', 12504, '2016-10-01'),
('Telangana', 'Zahirabad', 12505, '2016-10-01'),
('Telangana', 'Medak', 12506, '2016-10-01'),
('Telangana', 'Malkajgiri', 12507, '2016-10-01'),
('Telangana', 'Secunderabad', 12508, '2016-10-01'),
('Telangana', 'Hyderabad', 12509, '2016-10-01'),
('Telangana', 'Chevella', 12510, '2016-10-01'),
('Telangana', 'Mahbubnagar', 12511, '2016-10-01'),
('Telangana', 'Nagarkurnool', 12512, '2016-10-01'),
('Telangana', 'Nalgonda', 12513, '2016-10-01'),
('Telangana', 'Bhongir', 12514, '2016-10-01'),
('Telangana', 'Warangal', 12515, '2016-10-01'),
('Telangana', 'Mahabubabad', 12516, '2016-10-01'),
('Telangana', 'Khammam', 12517, '2016-10-01'),
('Tripura', 'Tripura West', 12601, '2016-10-03'),
('Tripura', 'Tripura East', 12602, '2016-10-03'),
('Uttar Pradesh', 'Saharanpur', 12701, '2016-10-01'),
('Uttar Pradesh', 'Kairana', 12702, '2016-10-01'),
('Uttar Pradesh', 'Muzaffarnagar', 12703, '2016-10-01'),
('Uttar Pradesh', 'Bijnor', 12704, '2016-10-01'),
('Uttar Pradesh', 'Nagina', 12705, '2016-10-01'),
('Uttar Pradesh', 'Moradabad', 12706, '2016-10-01'),
('Uttar Pradesh', 'Rampur', 12707, '2016-10-01'),
('Uttar Pradesh', 'Sambhal', 12708, '2016-10-01'),
('Uttar Pradesh', 'Amroha', 12709, '2016-10-01'),
('Uttar Pradesh', 'Meerut', 12710, '2016-10-01'),
('Uttar Pradesh', 'Baghpat', 12711, '2016-10-01'),
('Uttar Pradesh', 'Ghaziabad', 12712, '2016-10-01'),
('Uttar Pradesh', 'Gautam Buddha Nagar', 12713, '2016-10-01'),
('Uttar Pradesh', 'Bulandshahr', 12714, '2016-10-01'),
('Uttar Pradesh', 'Aligarh', 12715, '2016-10-01'),
('Uttar Pradesh', 'Hathras', 12716, '2016-10-01'),
('Uttar Pradesh', 'Mathura', 12717, '2016-10-01'),
('Uttar Pradesh', 'Agra', 12718, '2016-10-01'),
('Uttar Pradesh', 'Fatehpur Sikri', 12719, '2016-10-01'),
('Uttar Pradesh', 'Firozabad', 12720, '2016-10-01'),
('Uttar Pradesh', 'Mainpuri', 12721, '2016-10-01'),
('Uttar Pradesh', 'Etah', 12722, '2016-10-01'),
('Uttar Pradesh', 'Badaun', 12723, '2016-10-01'),
('Uttar Pradesh', 'Aonla', 12724, '2016-10-01'),
('Uttar Pradesh', 'Bareilly', 12725, '2016-10-01'),
('Uttar Pradesh', 'Pilibhit', 12726, '2016-10-01'),
('Uttar Pradesh', 'Shahjahanpur', 12727, '2016-10-01'),
('Uttar Pradesh', 'Kheri', 12728, '2016-10-01'),
('Uttar Pradesh', 'Dhaurahra', 12729, '2016-10-01'),
('Uttar Pradesh', 'Sitapur', 12730, '2016-10-01'),
('Uttar Pradesh', 'Hardoi', 12731, '2016-10-01'),
('Uttar Pradesh', 'Misrikh', 12732, '2016-10-01'),
('Uttar Pradesh', 'Unnao', 12733, '2016-10-01'),
('Uttar Pradesh', 'Mohanlalganj', 12734, '2016-10-01'),
('Uttar Pradesh', 'Lucknow', 12735, '2016-10-01'),
('Uttar Pradesh', 'Rae Bareli', 12736, '2016-10-01'),
('Uttar Pradesh', 'Amethi', 12737, '2016-10-01'),
('Uttar Pradesh', 'Sultanpur', 12738, '2016-10-01'),
('Uttar Pradesh', 'Pratapgarh', 12739, '2016-10-01'),
('Uttar Pradesh', 'Farrukhabad', 12740, '2016-10-01'),
('Uttar Pradesh', 'Etawah', 12741, '2016-10-01'),
('Uttar Pradesh', 'Kannauj', 12742, '2016-10-01'),
('Uttar Pradesh', 'Kanpur Urban', 12743, '2016-10-01'),
('Uttar Pradesh', 'Akbarpur', 12744, '2016-10-01'),
('Uttar Pradesh', 'Jalaun', 12745, '2016-10-01'),
('Uttar Pradesh', 'Jhansi', 12746, '2016-10-01'),
('Uttar Pradesh', 'Hamirpur', 12747, '2016-10-01'),
('Uttar Pradesh', 'Banda', 12748, '2016-10-01'),
('Uttar Pradesh', 'Fatehpur', 12749, '2016-10-01'),
('Uttar Pradesh', 'Kaushambi', 12750, '2016-10-01'),
('Uttar Pradesh', 'Phulpur', 12751, '2016-10-01'),
('Uttar Pradesh', 'Allahabad', 12752, '2016-10-01'),
('Uttar Pradesh', 'Barabanki', 12753, '2016-10-01'),
('Uttar Pradesh', 'Faizabad', 12754, '2016-10-01'),
('Uttar Pradesh', 'Ambedkar Nagar', 12755, '2016-10-01'),
('Uttar Pradesh', 'Bahraich', 12756, '2016-10-01'),
('Uttar Pradesh', 'Kaiserganj', 12757, '2016-10-01'),
('Uttar Pradesh', 'Shrawasti', 12758, '2016-10-01'),
('Uttar Pradesh', 'Gonda', 12759, '2016-10-01'),
('Uttar Pradesh', 'Domariyaganj', 12760, '2016-10-01'),
('Uttar Pradesh', 'Basti', 12761, '2016-10-01'),
('Uttar Pradesh', 'Sant Kabir Nagar', 12762, '2016-10-01'),
('Uttar Pradesh', 'Maharajganj', 12763, '2016-10-01'),
('Uttar Pradesh', 'Gorakhpur', 12764, '2016-10-01'),
('Uttar Pradesh', 'Kushi Nagar', 12765, '2016-10-01'),
('Uttar Pradesh', 'Deoria', 12766, '2016-10-01'),
('Uttar Pradesh', 'Bansgaon', 12767, '2016-10-01'),
('Uttar Pradesh', 'Lalganj', 12768, '2016-10-01'),
('Uttar Pradesh', 'Azamgarh', 12769, '2016-10-01'),
('Uttar Pradesh', 'Ghosi', 12770, '2016-10-01'),
('Uttar Pradesh', 'Salempur', 12771, '2016-10-01'),
('Uttar Pradesh', 'Ballia', 12772, '2016-10-01'),
('Uttar Pradesh', 'Jaunpur', 12773, '2016-10-01'),
('Uttar Pradesh', 'Machhlishahr', 12774, '2016-10-01'),
('Uttar Pradesh', 'Ghazipur', 12775, '2016-10-01'),
('Uttar Pradesh', 'Chandauli', 12776, '2016-10-01'),
('Uttar Pradesh', 'Varanasi', 12777, '2016-10-01'),
('Uttar Pradesh', 'Bhadohi', 12778, '2016-10-01'),
('Uttar Pradesh', 'Mirzapur', 12779, '2016-10-01'),
('Uttar Pradesh', 'Robertsganj', 12780, '2016-10-01'),
('Uttarakhand', 'Tehri Garhwal', 12801, '2016-10-01'),
('Uttarakhand', 'Garhwal', 12802, '2016-10-01'),
('Uttarakhand', 'Almora', 12803, '2016-10-01'),
('Uttarakhand', 'Nainital-Udhamsingh Nagar', 12804, '2016-10-01'),
('Uttarakhand', 'Haridwar', 12805, '2016-10-01'),
('West Bengal', 'Cooch Behar', 12901, '2016-10-03'),
('West Bengal', 'Alipurduars', 12902, '2016-10-03'),
('West Bengal', 'Jalpaiguri', 12903, '2016-10-03'),
('West Bengal', 'Darjeeling', 12904, '2016-10-03'),
('West Bengal', 'Raiganj', 12905, '2016-10-03'),
('West Bengal', 'Balurghat', 12906, '2016-10-03'),
('West Bengal', 'Maldaha Uttar', 12907, '2016-10-03'),
('West Bengal', 'Maldaha Dakshin', 12908, '2016-10-03'),
('West Bengal', 'Jangipur', 12909, '2016-10-03'),
('West Bengal', 'Baharampur', 12910, '2016-10-03'),
('West Bengal', 'Murshidabad', 12911, '2016-10-03'),
('West Bengal', 'Krishnanagar', 12912, '2016-10-03'),
('West Bengal', 'Ranaghat', 12913, '2016-10-03'),
('West Bengal', 'Bangaon', 12914, '2016-10-03'),
('West Bengal', 'Barrackpur', 12915, '2016-10-03'),
('West Bengal', 'Dum Dum', 12916, '2016-10-03'),
('West Bengal', 'Barasat', 12917, '2016-10-03'),
('West Bengal', 'Basirhat', 12918, '2016-10-03'),
('West Bengal', 'Jaynagar', 12919, '2016-10-03'),
('West Bengal', 'Mathurapur', 12920, '2016-10-03'),
('West Bengal', 'Diamond Harbour', 12921, '2016-10-03'),
('West Bengal', 'Jadavpur', 12922, '2016-10-03'),
('West Bengal', 'Kolkata Dakshin', 12923, '2016-10-03'),
('West Bengal', 'Kolkata Uttar', 12924, '2016-10-03'),
('West Bengal', 'Howrah', 12925, '2016-10-03'),
('West Bengal', 'Uluberia', 12926, '2016-10-03'),
('West Bengal', 'Sreerampur', 12927, '2016-10-03'),
('West Bengal', 'Hooghly', 12928, '2016-10-03'),
('West Bengal', 'Arambag', 12929, '2016-10-03'),
('West Bengal', 'Tamluk', 12930, '2016-10-03'),
('West Bengal', 'Kanthi', 12931, '2016-10-03'),
('West Bengal', 'Ghatal', 12932, '2016-10-03'),
('West Bengal', 'Jhargram', 12933, '2016-10-03'),
('West Bengal', 'Medinipur', 12934, '2016-10-03'),
('West Bengal', 'Purulia', 12935, '2016-10-03'),
('West Bengal', 'Bankura', 12936, '2016-10-03'),
('West Bengal', 'Bishnupur', 12937, '2016-10-03'),
('West Bengal', 'Bardhaman Purba', 12938, '2016-10-03'),
('West Bengal', 'Bardhaman-Durgapur', 12939, '2016-10-03'),
('West Bengal', 'Asansol', 12940, '2016-10-03'),
('West Bengal', 'Bolpur', 12941, '2016-10-03'),
('West Bengal', 'Birbhum', 12942, '2016-10-03'),
('Andaman and Nicobar Islands', 'Andaman and Nicobar Islands', 20101, '2016-10-01'),
('Chandigarh', 'Chandigarh', 20201, '2016-10-01'),
('Dadra and Nagar Haveli', 'Dadra and Nagar Haveli', 20301, '2016-10-01'),
('Daman and Diu', 'Daman and Diu', 20401, '2016-10-01'),
('Lakshadweep', 'Lakshadweep', 20501, '2016-10-01'),
('NCT of Delhi', 'Chandni Chowk', 20601, '2016-10-08'),
('NCT of Delhi', 'North East Delhi', 20602, '2016-10-08'),
('NCT of Delhi', 'East Delhi', 20603, '2016-10-08'),
('NCT of Delhi', 'New Delhi', 20604, '2016-10-08'),
('NCT of Delhi', 'North West Delhi', 20605, '2016-10-08'),
('NCT of Delhi', 'West Delhi', 20606, '2016-10-08'),
('NCT of Delhi', 'South Delhi', 20607, '2016-10-08'),
('Puducherry', 'Puducherry', 20701, '2016-10-01');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
CREATE Database `online_railway_db` ;
use `online_railway_db` ;

CREATE TABLE `passengers` (
  `Pass ID` INT NOT NULL,
  `Pass Name` VARCHAR(25) NOT NULL,
  `Pass Age` INT NOT NULL,
  `Pass Gender` VARCHAR(25) NOT NULL,
  `Pass Address` VARCHAR(30) NOT NULL,
  `Pass Contacts` Decimal(10,0) unique NOT NULL,
  PRIMARY KEY (`Pass ID`));
  

  
INSERT INTO `online_railway_db`.`passengers` (`Pass ID`, `Pass Name`, `Pass Age`, `Pass Gender`, `Pass Address`, `Pass Contacts`) VALUES (1, 'Titas Chatterjee', '22', 'Male', 'Kasba', 9824424987);
INSERT INTO `online_railway_db`.`passengers` (`Pass ID`, `Pass Name`, `Pass Age`, `Pass Gender`, `Pass Address`, `Pass Contacts`) VALUES (2, 'Srija Ghosh', '21', 'Female', 'Kaikhali', 9524424987);
INSERT INTO `online_railway_db`.`passengers` (`Pass ID`, `Pass Name`, `Pass Age`, `Pass Gender`, `Pass Address`, `Pass Contacts`) VALUES (3, 'Ashish Sarkar', '23', 'Male', 'Jadavpur', 9424761892);
INSERT INTO `online_railway_db`.`passengers` (`Pass ID`, `Pass Name`, `Pass Age`, `Pass Gender`, `Pass Address`, `Pass Contacts`) VALUES (4, 'Anita Datta', '22', 'Female', 'Barasat', 9636719695);
INSERT INTO `online_railway_db`.`passengers` (`Pass ID`, `Pass Name`, `Pass Age`, `Pass Gender`, `Pass Address`, `Pass Contacts`) VALUES (5, 'Animesh Biswas', '24', 'Male', 'Hooghly', 7936719695);
INSERT INTO `online_railway_db`.`passengers` (`Pass ID`, `Pass Name`, `Pass Age`, `Pass Gender`, `Pass Address`, `Pass Contacts`) VALUES (6, 'Ipsita Mukherjee', '25', 'Female', 'Garia', 7736718695);
INSERT INTO `online_railway_db`.`passengers` (`Pass ID`, `Pass Name`, `Pass Age`, `Pass Gender`, `Pass Address`, `Pass Contacts`) VALUES (7, 'Anurag Pal', '23', 'Male', 'DumDum', 8036719695);
INSERT INTO `online_railway_db`.`passengers` (`Pass ID`, `Pass Name`, `Pass Age`, `Pass Gender`, `Pass Address`, `Pass Contacts`) VALUES (8, 'Asmita Chakraborty', '21', 'Female', 'Behala', 9036876969);
INSERT INTO `online_railway_db`.`passengers` (`Pass ID`, `Pass Name`, `Pass Age`, `Pass Gender`, `Pass Address`, `Pass Contacts`) VALUES (9, 'Ajit Datta', '20', 'Male', 'Newtown', 7748929650);
INSERT INTO `online_railway_db`.`passengers` (`Pass ID`, `Pass Name`, `Pass Age`, `Pass Gender`, `Pass Address`, `Pass Contacts`) VALUES (10, 'Ankit Devnath', '26', 'Male', 'Howrah', 8244422697);

SELECT * FROM  passengers;

CREATE TABLE `login` (
  `Pass ID` INT NOT NULL,
  `UserName` VARCHAR(25) NOT NULL,
  `Password` VARCHAR(28) NOT NULL,
  PRIMARY KEY (`UserName`),
  UNIQUE INDEX `Pass ID_UNIQUE` (`Pass ID` ASC) VISIBLE,
  Foreign key (`Pass ID`) references `passengers`(`Pass ID`));

SELECT * FROM login;

INSERT INTO `online_railway_db`.`login` (`Pass ID`, `UserName`, `Password`) VALUES (1, 'Titas534', '@Ti8790');
INSERT INTO `online_railway_db`.`login` (`Pass ID`, `UserName`, `Password`) VALUES (2, 'Srija786', '@Sr572');
INSERT INTO `online_railway_db`.`login` (`Pass ID`, `UserName`, `Password`) VALUES (3, 'Ashish023', 'As@890');
INSERT INTO `online_railway_db`.`login` (`Pass ID`, `UserName`, `Password`) VALUES (4, 'Anita890', '@An908');
INSERT INTO `online_railway_db`.`login` (`Pass ID`, `UserName`, `Password`) VALUES (5, 'Animesh023', 'Ai@567');
INSERT INTO `online_railway_db`.`login` (`Pass ID`, `UserName`, `Password`) VALUES (6, 'Ipsita250', 'Ip@000');
INSERT INTO `online_railway_db`.`login` (`Pass ID`, `UserName`, `Password`) VALUES (7, 'Anurag260', '@anu99');
INSERT INTO `online_railway_db`.`login` (`Pass ID`, `UserName`, `Password`) VALUES (8, 'Asmita008', '@An777');
INSERT INTO `online_railway_db`.`login` (`Pass ID`, `UserName`, `Password`) VALUES (9, 'Ajit654', 'Ari@999');
INSERT INTO `online_railway_db`.`login` (`Pass ID`, `UserName`, `Password`) VALUES (10, 'Ankit270', '@An122');

CREATE TABLE `train` (
  `Tr Number` INT NOT NULL,
  `Tr Name` VARCHAR(25) NOT NULL,
  `Tr From` VARCHAR(20) NOT NULL,
  `Tr To` VARCHAR(25) NOT NULL,
  `Tr Dept Time` VARCHAR(35) NOT NULL,
  `Tr Arr Time` VARCHAR(35) NOT NULL,
  `Tr Total Seats` INT NOT NULL,
  `Tr Avl Seats` INT NOT NULL,
  `Tr Price` INT NOT NULL,
  PRIMARY KEY (`Tr Number`));


INSERT INTO `online_railway_db`.`train` (`Tr Number`, `Tr Name`, `Tr From`, `Tr To`, `Tr Dept Time`, `Tr Arr Time`, `Tr Total Seats`, `Tr Avl Seats`,`Tr Price`) VALUES (12301, 'Rajdhani Express', 'Howrah', 'New Delhi', '04.50 PM', '10.50 AM', 1780, 300,500);
INSERT INTO `online_railway_db`.`train` (`Tr Number`, `Tr Name`, `Tr From`, `Tr To`, `Tr Dept Time`, `Tr Arr Time`, `Tr Total Seats`, `Tr Avl Seats`,`Tr Price`) VALUES (12262, 'Duronto Express', 'Howrah', 'Mumbai csmt', '05.45 AM', ' 08.15 AM', 1800, 481,450);
INSERT INTO `online_railway_db`.`train` (`Tr Number`, `Tr Name`, `Tr From`, `Tr To`, `Tr Dept Time`, `Tr Arr Time`, `Tr Total Seats`, `Tr Avl Seats`,`Tr Price`) VALUES (12839, 'Coromondol Sf Express', 'Howrah', ' Chennai Central', '03.30 PM', '04.50 PM', 1790, 281,240);
INSERT INTO `online_railway_db`.`train` (`Tr Number`, `Tr Name`, `Tr From`, `Tr To`, `Tr Dept Time`, `Tr Arr Time`, `Tr Total Seats`, `Tr Avl Seats`,`Tr Price`) VALUES (12345, 'Saraighat Sf Express', 'Sealdah', 'Guwahati', '03.55 PM', '10.05 AM', 1900, 289,180);
INSERT INTO `online_railway_db`.`train` (`Tr Number`, `Tr Name`, `Tr From`, `Tr To`, `Tr Dept Time`, `Tr Arr Time`, `Tr Total Seats`, `Tr Avl Seats`,`Tr Price`) VALUES (12343, 'Darjeeling Sf Mail', 'Sealdah', 'New Jalpaiguri', '10.05 PM', '08.15 AM', 1870, 250,175);
INSERT INTO `online_railway_db`.`train` (`Tr Number`, `Tr Name`, `Tr From`, `Tr To`, `Tr Dept Time`, `Tr Arr Time`, `Tr Total Seats`, `Tr Avl Seats`,`Tr Price`) VALUES (22691, 'Rajdhani Express', 'Bangalore City', 'Delhi Hazarat Nizamuddin', '08.00 PM', '05.30 AM',1900, 94,475);
INSERT INTO `online_railway_db`.`train` (`Tr Number`, `Tr Name`, `Tr From`, `Tr To`, `Tr Dept Time`, `Tr Arr Time`, `Tr Total Seats`, `Tr Avl Seats`,`Tr Price`) VALUES (12720, 'Deccan Sf Express', 'Hyderabad Deccan', 'Jaipur', '08.25 PM', '05.25 AM', 1700, 343,430);
INSERT INTO `online_railway_db`.`train` (`Tr Number`, `Tr Name`, `Tr From`, `Tr To`, `Tr Dept Time`, `Tr Arr Time`, `Tr Total Seats`, `Tr Avl Seats`,`Tr Price`) VALUES (12017, 'Shatabdi Express', 'New Delhi', 'Dehradun', '06.45 AM', '11.36 AM', 1000, 77,480);
INSERT INTO `online_railway_db`.`train` (`Tr Number`, `Tr Name`, `Tr From`, `Tr To`, `Tr Dept Time`, `Tr Arr Time`, `Tr Total Seats`, `Tr Avl Seats`,`Tr Price`) VALUES (18463, 'Prashanti Express', 'Bhubaneswar', 'Bangalore City Jn', '01.05 PM', '11.45 AM', 1095, 94,220);
INSERT INTO `online_railway_db`.`train` (`Tr Number`, `Tr Name`, `Tr From`, `Tr To`, `Tr Dept Time`, `Tr Arr Time`, `Tr Total Seats`, `Tr Avl Seats`,`Tr Price`) VALUES (20973, 'Humsafar Express', 'Ajmer Jn', 'Rameswaram', '08.10 AM', '09.00 PM', 1070, 465,460);

  
SELECT * FROM  train;

CREATE TABLE `ticket` (
  `Ticket Number` INT NOT NULL,
  `Pass ID` INT NOT NULL,
  `Tr Number` INT NOT NULL,
  `Date` DATE NOT NULL,
  `Number of Pass` VARCHAR(45) NOT NULL,
  `Seats Numbers` VARCHAR(40) NOT NULL,
  `Total Prices` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Ticket Number`),
  Foreign key (`Pass ID`) references `passengers`(`Pass ID`),
  Foreign key (`Tr Number`) references `train`(`Tr Number`));
  

  
INSERT INTO `online_railway_db`.`ticket` (`Ticket Number`, `Pass ID`, `Tr Number`, `Date`, `Number of Pass`, `Seats Numbers`, `Total Prices`) VALUES ('123456', '1', '12301',  '2021-8-17', '2', '12,13', '4,600');
INSERT INTO `online_railway_db`.`ticket` (`Ticket Number`, `Pass ID`, `Tr Number`, `Date`,  `Number of Pass`, `Seats Numbers`, `Total Prices`) VALUES ('213456', '2', '12262', '2021-5-7',  '3', '5,7,8', '7,500');
INSERT INTO `online_railway_db`.`ticket` (`Ticket Number`, `Pass ID`, `Tr Number`, `Date`,  `Number of Pass`, `Seats Numbers`, `Total Prices`) VALUES ('223457', '3', '12839',  '2022-1-9', '2', '4', '3,650');
INSERT INTO `online_railway_db`.`ticket` (`Ticket Number`, `Pass ID`, `Tr Number`, `Date`,  `Number of Pass`, `Seats Numbers`, `Total Prices`) VALUES ('773451', '7', '12720',  '2022-3-12', '1', '40', '790');
INSERT INTO `online_railway_db`.`ticket` (`Ticket Number`, `Pass ID`, `Tr Number`, `Date`,  `Number of Pass`, `Seats Numbers`, `Total Prices`) VALUES ('343452', '8', '12017',  '2022-1-22', '2', '10,11', '2,810');
INSERT INTO `online_railway_db`.`ticket` (`Ticket Number`, `Pass ID`, `Tr Number`, `Date`,  `Number of Pass`, `Seats Numbers`, `Total Prices`) VALUES ('443410', '9', '18463', '2019-9-11', '7', '33,34,35,36,40,55,57', '4200');
INSERT INTO `online_railway_db`.`ticket` (`Ticket Number`, `Pass ID`, `Tr Number`, `Date`,  `Number of Pass`, `Seats Numbers`, `Total Prices`) VALUES ('220999', '10', '20973',  '2020-11-14',  '3', '2,3,4', '6,330');
INSERT INTO `online_railway_db`.`ticket` (`Ticket Number`, `Pass ID`, `Tr Number`, `Date`,  `Number of Pass`, `Seats Numbers`, `Total Prices`) VALUES ('333450', '4', '12345',  '2020-12-20',  '1', '22', '580');
INSERT INTO `online_railway_db`.`ticket` (`Ticket Number`, `Pass ID`, `Tr Number`, `Date`,  `Number of Pass`, `Seats Numbers`, `Total Prices`) VALUES ('453458', '5', '12343', '2021-7-3',  '4', '3,4,5,8', '7,300');
INSERT INTO `online_railway_db`.`ticket` (`Ticket Number`, `Pass ID`, `Tr Number`, `Date`, `Number of Pass`, `Seats Numbers`, `Total Prices`) VALUES ('653459', '6', '22691',  '2022-2-17',  '3', '55,56,57', '6,900');

  
  SELECT * FROM ticket;
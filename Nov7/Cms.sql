drop database if exists cms;
create database cms;
use cms;
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
`CUS_ID` int NOT NULL AUTO_INCREMENT,
`CUS_NAME` varchar(50) NOT NULL,
`CUS_PHN_NO` varchar(50) NOT NULL,
`CUS_USERNAME` varchar(50) NOT NULL,
`CUS_PASSWORD` varchar(50) NOT NULL,
`CUS_EMAIL` varchar(50) NOT NULL,
PRIMARY KEY (`CUS_ID`),
UNIQUE KEY `CUS_PHN_NO` (`CUS_PHN_NO`),
UNIQUE KEY `CUS_USERNAME` (`CUS_USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=9122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `customer` VALUES (1,'Prasanna Pappu','9381413089','prassucp','hexaware@','prassucp@gmail.com'),(2,'Krishna Kumar','8939391144','krishnak','chennai@123','krishnak@gmail.com'),(3,'Renu Srivastav','8755144556','Renu','ghazi@117','renusan@gmmail.com'),(9,'Sunil','888235','sunilvizag','rushikonda','sunil@gmail.com'),(91,'Naresh','8488444882','nareshp','infinite','naresh@gmail.com'),(99,'asdfkjla','848233','asdkjf','kkkkasdjfkl','a@b.com'),(993,'akljsdf','84884845','akjfd','faffafsd','848423'),(9022,'kjsdlfak','88848483','sdfkjj','kkaskf','a@b.com'),(9121,'Naresh','422555555','nareshps','infinite','naresh@gmail.com');
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
`MEN_ID` int NOT NULL AUTO_INCREMENT,
`MEN_ITEM` varchar(50) DEFAULT NULL,
`MEN_PRICE` decimal(9,2) DEFAULT NULL,
`MEN_CALORIES` double NOT NULL,
`MEN_SPECIALITY` varchar(50) NOT NULL,
PRIMARY KEY (`MEN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `menu` VALUES (1,'CHICKEN BIRIYANI',856.00,750,'NON-VEG'),(2,'CHICKEN 65',674.00,500,'NON-VEG'),(3,'GOBI MANCHURIAN',684.00,650,'VEG'),(4,'CHICKEN MANCHURIAN',999.00,750,'NON-VEG'),(5,'FISH',901.00,850,'NON-VEG'),(6,'DAHI BHALLE',111.00,150,'VEG'),(7,'MIX PRANTHA',911.00,360,'VEG'),(8,'GOL GAPPE',901.00,170,'VEG'),(9,'PRAWN BIRYANI',901.00,580,'NON-VEG'),(10,'THAI NOODLES',744.00,660,'VEG');
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
`ORD_ID` int NOT NULL AUTO_INCREMENT,
`CUS_ID` int unsigned NOT NULL,
`VEN_ID` int unsigned NOT NULL,
`WAL_SOURCE` varchar(30) DEFAULT NULL,
`MEN_ID` int NOT NULL,
`ORD_DATE` date DEFAULT NULL,
`ORD_QUANTITY` int DEFAULT NULL,
`ORD_BILLAMOUNT` double DEFAULT NULL,
`ORD_STATUS` enum('ACCEPTED','DENIED','PENDING') DEFAULT 'PENDING',
`ORD_COMMENTS` varchar(50) DEFAULT NULL,
PRIMARY KEY (`ORD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `orders` VALUES (1,1,1,'PAYTM',1,NULL,1,856,'ACCEPTED','slkjf'),(12,1,2,'PAYTM',1,NULL,1,856,'DENIED','salfkasf'),(13,2,1,'PAYTM',1,NULL,1,856,'PENDING','aslkfdjasdf'),(14,1,1,'PAYTM',1,NULL,1,856,'PENDING','asfasf'),(15,2,2,'PAYTM',1,NULL,1,856,'PENDING','asfasf'),(16,1,1,'PAYTM',1,NULL,1,856,'PENDING','lkasfd'),(17,2,1,'PAYTM',1,NULL,1,856,'PENDING','lkasfd'),(18,1,1,'PAYTM',1,NULL,1,856,'PENDING','Make it Faster'),(19,2,2,'PAYTM',6,NULL,1,111,'PENDING','aklsdfkljasf'),(20,1,2,'PAYTM',2,NULL,1,674,'PENDING','make it faster'),(21,1,1,'PAYTM',1,NULL,2,1712,'PENDING','Make is Spicy...Prasanna'),(22,1,1,'PAYTM',1,'2021-11-08',2,1712,'DENIED','Make is Spicy...Prasanna'),(23,1,1,'PAYTM',1,'2021-11-08',12,10272,'PENDING','Make is Spicy...Prasanna'),(24,1,1,'PAYTM',1,'2021-11-08',1,856,'ACCEPTED','New Order');
DROP TABLE IF EXISTS `ordersnew`;
CREATE TABLE `ordersnew` (
`order_id` int NOT NULL AUTO_INCREMENT,
`custId` int DEFAULT NULL,
`venId` int DEFAULT NULL,
`MenuId` int DEFAULT NULL,
`WalSource` varchar(30) DEFAULT NULL,
`qtyord` int DEFAULT NULL,
`billAmount` double DEFAULT NULL,
`ordstatus` enum('ACCEPTED','DENIED','PENDING') DEFAULT 'PENDING',
`comments` varchar(30) DEFAULT NULL,
PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `ordersnew` VALUES (1,1,1,1,'PAYTM',1,48585,'PENDING','abc');
DROP TABLE IF EXISTS `vendor`;
CREATE TABLE `vendor` (
`VEN_ID` int unsigned NOT NULL AUTO_INCREMENT,
`VEN_NAME` varchar(50) NOT NULL,
`VEN_PHN_NO` varchar(40) NOT NULL,
`VEN_USERNAME` varchar(40) NOT NULL,
`VEN_PASSWORD` varchar(30) NOT NULL,
`VEN_EMAIL` varchar(50) NOT NULL,
PRIMARY KEY (`VEN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `vendor` VALUES (1,'Balan','8554535400','balan89','chennai@123','balan@gmail.com'),(2,'Anukriti','9184532455','anu56','bordia@123','anu.delhi@gmail.com'),(3,'Aarifa','9115879011','aarifk','saleem@123','aarifkhan@gmail.com'),(4,'Ksheerabdi','9874499011','ksheera','kolkata@123','ramki9@gmail.com'),(5,'Sai Kumar','88234555','saikumarm','infinite','sai@gmail.com'),(55,'Swiggy','84823855','swizzy999','AlwaysDeliver','swizzy99@gmail.com');
DROP TABLE IF EXISTS `wallet`;
CREATE TABLE `wallet` (
`CUS_ID` int unsigned DEFAULT NULL,
`WAL_ID` int unsigned NOT NULL AUTO_INCREMENT,
`WAL_AMOUNT` double unsigned NOT NULL,
`WAL_SOURCE` enum('PAYTM','CREDIT_CARD','DEBIT_CARD') DEFAULT 'DEBIT_CARD',
PRIMARY KEY (`WAL_ID`),
UNIQUE KEY `CUS_ID` (`CUS_ID`,`WAL_SOURCE`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `wallet` VALUES (1,1,4215,'PAYTM'),(1,2,3000,'DEBIT_CARD'),(1,3,5602.36,'CREDIT_CARD'),(2,4,4500.36,'DEBIT_CARD'),(3,5,485.23,'CREDIT_CARD'),(2,6,3000,'CREDIT_CARD'),(2,7,4560,'PAYTM'),(3,8,56.36,'PAYTM'),(3,9,4566,'DEBIT_CARD');
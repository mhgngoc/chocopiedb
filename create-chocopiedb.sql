DROP DATABASE IF EXISTS `chocopiedb`;
CREATE DATABASE `chocopiedb`;
USE `chocopiedb`;

CREATE TABLE `chocopie` (
`Item` varchar(50) NOT NULL,
`Quantity per box` tinyint NOT NULL,
PRIMARY KEY (`Item`)
);
INSERT INTO `chocopie` VALUES ('lotte_chocopie',6);
INSERT INTO `chocopie` VALUES ('orion_chocopie_small',6);
INSERT INTO `chocopie` VALUES ('orion_chocopie_big',12);
INSERT INTO `chocopie` VALUES ('phaner_chocopie',6);


CREATE TABLE `nutritional_info` (
`Item` varchar(50) NOT NULL,
`calories` decimal(5,2) NOT NULL,
`carbs` decimal(5,2) NOT NULL,
`fat` decimal(5,2) NOT NULL,
`protein` decimal(5,2) NOT NULL,
PRIMARY KEY(`Item`)
);
INSERT INTO `nutritional_info` VALUES ('lotte_chocopie',125.00,19.00,5.00,1.00);
INSERT INTO `nutritional_info` VALUES ('phaner_chocopie',122.00,18.00,5.00,1.00);
INSERT INTO `nutritional_info` VALUES ('orion_chocopie_big',130.00,21.00,4.00,1.00);
INSERT INTO `nutritional_info` VALUES ('orion_chocopie_small',130.00,21.00,4.00,1.00);

CREATE TABLE `purchases` (
`POReference` date NOT NULL,
`Item` varchar(50) NOT NULL,
`Quantity` tinyint NOT NULL,
`Total Amount` decimal(5,2) NOT NULL,
PRIMARY KEY (`POReference`,`Item`)
);
INSERT INTO `purchases` VALUES ('2020-08-14','orion_chocopie_small',2,4.8);
INSERT INTO `purchases` VALUES ('2020-08-10','lotte_chocopie',1,2.35);
INSERT INTO `purchases` VALUES ('2020-07-27','lotte_chocopie',1,2.35);
INSERT INTO `purchases` VALUES ('2020-06-09','lotte_chocopie',1,2.35);
INSERT INTO `purchases` VALUES ('2020-05-27','lotte_chocopie',1,2.35);
INSERT INTO `purchases` VALUES ('2020-05-21','lotte_chocopie',4,8.3);
INSERT INTO `purchases` VALUES ('2020-05-16','phaner_chocopie',1,1.7);
INSERT INTO `purchases` VALUES ('2020-05-13','lotte_chocopie',1,2.35);
INSERT INTO `purchases` VALUES ('2020-04-07','lotte_chocopie',1,2.35);
INSERT INTO `purchases` VALUES ('2020-04-21','lotte_chocopie',1,2.2);
INSERT INTO `purchases` VALUES ('2020-08-15','orion_chocopie_big',3,16.8);
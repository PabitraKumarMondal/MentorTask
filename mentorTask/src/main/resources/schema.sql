DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`(
	`user_id` int PRIMARY KEY AUTO_INCREMENT,
	`user_name` varchar(20) NOT NULL,
	`password` varchar(8) NOT NULL
);

DROP TABLE IF EXISTS `country`;
CREATE TABLE `country`(
	`co_id` int PRIMARY KEY AUTO_INCREMENT,
	`co_name` VARCHAR(20) NOT NULL
);

DROP TABLE IF EXISTS `state`;
CREATE TABLE `state`(
	`st_id` int PRIMARY KEY AUTO_INCREMENT,
	`st_name` VARCHAR(20) NOT NULL,
	`st_co_id` int NOT NULL,
	FOREIGN KEY (`st_co_id`) REFERENCES country(`country_id`)
);
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`(
	`ct_id` int PRIMARY KEY AUTO_INCREMENT,
	`ct_name` VARCHAR(20) NOT NULL,
	`ct_st_id` int NOT NULL,
	FOREIGN KEY (`ct_st_id`) REFERENCES `state`(`st_id`)
);

DROP TABLE IF EXISTS `intern`;
CREATE TABLE `intern`(
	`in_id` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`in_name` VARCHAR(20) NOT NULL,
	`in_company_name` VARCHAR(20) NOT NULL,
	`in_contact_number` VARCHAR(20) NOT NULL,
	`in_gender` VARCHAR(6) NOT NULL,
	`in_country` VARCHAR(20) NOT NULL,
	`in_state` VARCHAR(20) NOT NULL,
	`in_city` VARCHAR(20) NOT NULL
);
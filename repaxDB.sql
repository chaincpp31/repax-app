CREATE DATABASE IF NOT EXISTS `repaxDB`;

use `repaxDB`;

DROP TABLE IF EXISTS `Teachers_In_Subject`;
DROP TABLE IF EXISTS `Teachers`;
DROP TABLE IF EXISTS `Groups`;

CREATE TABLE `Clients`(
    `user-id` BIGINT AUTO_INCREMENT,
    `user-name` VARCHAR(50) NOT NULL ,
    `password` VARCHAR(20) NOT NULL,
    `first-name` VARCHAR(50) NOT NULL,
    `last-name` VARCHAR(50) NOT NULL,
    `gender` VARCHAR(10) NOT NULL,
    `address` VARCHAR(50) NOT NULL

    PRIMARY KEY (`user-id`)
)ENGINE=InnoDB DEFAULT CHASET utf8mb4;

CREATE TABLE `Type job`(
    `type-id` BIGINT(5),
    `user-id` INT(5) NOT NULL,
    `electric` VARCHAR(50) NOT NULL,
    `plumbing` VARCHAR(50) NOT NULL,
    `car` VARCHAR(50) NOT NUll,
    `air-condition` VARCHAR(50) NOT NULL,
    `home` VARCHAR(50) NOT NUll,
    `furniture` VARCHAR(50)  NOT NULL,
    `electronic` VARCHAR(50) NOT NULL

    PRIMARY KEY (`type-id`)
    FOREIGN KEY (`user-id`)
)ENGINE=InnoDB DEFAULT CHASET utf8mb4;

CREATE TABLE `Clients-technician`(
    `user-technician-id` INT(5),
    `user-name` VARCHAR(50) NOT NULL ,
    `password` VARCHAR(20) NOT NULL,
    `first-name` VARCHAR(50) NOT NULL,
    `last-name` VARCHAR(50) NOT NULL,
    `gender` VARCHAR(10) NOT NULL,
    `nuumber` INT(20) NOT NULL,
    `address` VARCHAR(50) NOT NULL,
    `type-job` VARCHAR(50)

    PRIMARY KEY (`user-technician-id`),
    CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `Teachers`,`id`,
     CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `Groups`,`id`
)
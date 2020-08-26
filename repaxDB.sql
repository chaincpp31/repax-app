CREATE DATABASE IF NOT EXISTS `repaxDB`;

use `repaxDB`;

DROP TABLE IF EXISTS `Admin-manage`;
DROP TABLE IF EXISTS `Type-job-Clients technician`;
DROP TABLE IF EXISTS `Clients-Admin`;
DROP TABLE IF EXISTS `Clients`;
DROP TABLE IF EXISTS `Type-job`;
DROP TABLE IF EXISTS `Clients-technician`;

CREATE TABLE `Admin-manage`(
    `admin-id` BIGINT AUTO_INCREMENT,
    `user-tecnician-id` INT(5),
    `type-id` INT(5),
    `user-id` INT(5)

    PRIMARY KEY (`admin-id`)
    FOREIGN KEY (`admin-id`),(`user-id`),(`type-id`),(`user-tecnician-id`)
        CONSTRAINT `Clients-Admin_ibfk_1` FOREIGN KEY (`admin-id`) REFERENCES `Clients-Admin`,`admin-id`,
            CONSTRAINT `Type-job_ibfk_2` FOREIGN KEY (`type-id`) REFERENCES `Type-job`,`type-id`,
                CONSTRAINT `Clients_ibfk_3` FOREIGN KEY (`user-id`) REFERENCES `Clients`,`user-id`,
                    CONSTRAINT `Clients-tecnincian_ibfk_4` FOREIGN KEY (`user-tecnician-id`) REFERENCES `Clients-technician`,`user-technician-id`




)ENGINE=InnoDB DEFAULT CHASET utf8mb4;

CREATE TABLE `Clients-Admin`(
    `admin-id` INT(5),
    `user-name` VARCHAR(50),
    `password` VARCHAR(50),
    `first-name` VARCHAR(50),
    `last-name` VARCHAR(50),
    `gender` VARCHAR(10),
    `age` INT(10),
    `address` VARCHAR(50)

    PRIMARY KEY (`admin-id`)
)ENGINE=InnoDB DEFAULT CHASET utf8mb4;

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

CREATE TABLE `Type-job`(
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

    PRIMARY KEY (`user-technician-id`)
)

CREATE TABLE `Type job-Clients-technician`(
    `type-id` INT(5),
    `user-tecnician` INT(5)

    PRIMARY KEY (`type-id`),
    FOREIGN KEY (`type-id`),(`user-tecnician`)
    CONSTRAINT `Type-job_ibfk_5` FOREIGN KEY (`type-id`) REFERENCES `Type-job`,`type-id`
)
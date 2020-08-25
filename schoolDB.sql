CREATE DATABASE IF NOT EXISTS `schoolDB`;

use `schoolDB`;

DROP TABLE IF EXISTS `Teachers_In_Subject`;
DROP TABLE IF EXISTS `Teachers`;
DROP TABLE IF EXISTS `Groups`;

CREATE TABLE `Teachers`(
    `id` BIGINT,
    `firstname` VARCHAR(120) NOT NULL UNIQUE,
    `lastname` VARCHAR(120) NOT NULL,

    PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHASET utf8mb4;

CREATE TABLE `Subjects`(
    `id` BIGINT,
    `name` VARCHAR(120),

    PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHASET utf8mb4;

CREATE TABLE `Teacher_In_Subject`(
    `id` BIGINT,
    `teacher_id` BIGINT,
    `group_id` BIGINT,

    PRIMARY KEY (`id`),
    CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `Teachers`,`id`,
     CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `Groups`,`id`
)
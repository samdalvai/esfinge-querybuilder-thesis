CREATE DATABASE IF NOT EXISTS Bookstore;

USE Bookstore;

CREATE TABLE IF NOT EXISTS `book`
(
    `id`     int(11) NOT NULL,
    `title`  varchar(128) NOT NULL,
    `author` varchar(45)  NOT NULL,
    `price`  float        NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `book_id_UNIQUE` (`id`),
    UNIQUE KEY `title_UNIQUE` (`title`)
)
CREATE KEYSPACE Bookstore WITH replication = {'class':'SimpleStrategy','replication_factor':1}

USE Bookstore;

CREATE TABLE book
(
    id     int PRIMARY KEY,
    title  text,
    author text,
    price  float
)
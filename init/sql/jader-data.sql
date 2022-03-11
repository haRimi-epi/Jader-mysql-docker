SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

USE jader;

--
-- Jader
--

set character_set_database=sjis;
load data infile "/docker-entrypoint-initdb.d/jader/demo2022XX.csv" into table demo fields terminated by ','optionally enclosed by '"';
load data infile "/docker-entrypoint-initdb.d/jader/drug2022XX.csv" into table drug fields terminated by ',' optionally enclosed by '"';
load data infile "/docker-entrypoint-initdb.d/jader/reac2022XX.csv" into table reac fields terminated by ',' optionally enclosed by '"';
load data infile "/docker-entrypoint-initdb.d/jader/hist2022XX.csv" into table hist fields terminated by ',' optionally enclosed by '"';

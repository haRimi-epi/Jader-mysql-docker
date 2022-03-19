SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

USE jader;

--
-- Jader
--

set character_set_database=sjis;
load data infile "/docker-entrypoint-initdb.d/jader/demo.csv" into table demo fields terminated by ',' optionally enclosed by '"' ignore 1 rows;
load data infile "/docker-entrypoint-initdb.d/jader/drug.csv" into table drug fields terminated by ',' optionally enclosed by '"' ignore 1 rows;
load data infile "/docker-entrypoint-initdb.d/jader/reac.csv" into table reac fields terminated by ',' optionally enclosed by '"' ignore 1 rows;
load data infile "/docker-entrypoint-initdb.d/jader/hist.csv" into table hist fields terminated by ',' optionally enclosed by '"' ignore 1 rows;

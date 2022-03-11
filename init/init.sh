#!/bin/bash

mysql -u root -proot jader < "/docker-entrypoint-initdb.d/sql/jader-schema.sql"
mysql -u root -proot jader < "/docker-entrypoint-initdb.d/sql/jader-data.sql"

#!/bin/bash

source .env

export MYSQL_HOST
export MYSQL_USER
export MYSQL_ROOT_PASSWORD
export MYSQL_DATABASE

mysql -u "${MYSQL_USER}" -p${MYSQL_ROOT_PASSWORD} -P 23306 "${MYSQL_DATABASE}" -e "TRUNCATE TABLE time_test;"
mysql -u "${MYSQL_USER}" -p${MYSQL_ROOT_PASSWORD} -P 23306 "${MYSQL_DATABASE}" -e "INSERT INTO time_test (id, dt, ts) VALUES (1, now(), now()), (2, '2017-01-01 00:00:00', '2017-01-01 00:00:00');"
mysql -u "${MYSQL_USER}" -p${MYSQL_ROOT_PASSWORD} -P 23306 "${MYSQL_DATABASE}" -e "SET time_zone = '+09:00'; INSERT INTO time_test (id, dt, ts) VALUES (3, now(), now()), (4, '2017-01-01 00:00:00', '2017-01-01 00:00:00');"

echo "## on master ##"
mysql -u "${MYSQL_USER}" -p${MYSQL_ROOT_PASSWORD} -P 23306 "${MYSQL_DATABASE}" -e "SELECT * FROM time_test;"
echo "## on slave ##"
mysql -u "${MYSQL_USER}" -p${MYSQL_ROOT_PASSWORD} -P 23316 "${MYSQL_DATABASE}" -e "SELECT * FROM time_test;"

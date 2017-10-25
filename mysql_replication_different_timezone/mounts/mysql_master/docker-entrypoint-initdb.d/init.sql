CREATE TABLE repltest.users (id INT, name VARCHAR(255));

CREATE USER 'repl'@'%' IDENTIFIED BY 'slavepass';
GRANT REPLICATION SLAVE ON *.* TO 'repl'@'%';

CREATE TABLE time_test ( id INT, dt DATETIME, ts TIMESTAMP );

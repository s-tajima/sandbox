CREATE TABLE repltest.users (id INT, name VARCHAR(255));

CREATE USER 'repl'@'%' IDENTIFIED BY 'slavepass';
GRANT REPLICATION SLAVE ON *.* TO 'repl'@'%';

CREATE TABLE time_test ( id INT, dt DATETIME, ts TIMESTAMP );
INSERT INTO time_test (id, dt, ts) VALUES (1, now(), now()), (2, '2017-10-25 19:05:42', '2017-10-25 19:05:42');

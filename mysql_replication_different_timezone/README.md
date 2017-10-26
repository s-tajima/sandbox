# mysql_replication

## Description

* PoC of the deviation of the time occurred in MySQL replication.
* This will especially, likely to happen in the situation replicate master/on-premiss to slave/RDS.

## Run anyway

```
$ make run
```

## Explanation

### Situation

* master

```
MySQL [(none)]> show variables like '%time_zone%';
+------------------+--------+
| Variable_name    | Value  |
+------------------+--------+
| system_time_zone | JST    |
| time_zone        | SYSTEM |
+------------------+--------+
2 rows in set (0.05 sec)

MySQL [(none)]> show global variables like '%time_zone%';
+------------------+--------+
| Variable_name    | Value  |
+------------------+--------+
| system_time_zone | JST    |
| time_zone        | SYSTEM |
+------------------+--------+
2 rows in set (0.01 sec)
```

* slave

```
MySQL [(none)]> show variables like '%time_zone%';
+------------------+--------+
| Variable_name    | Value  |
+------------------+--------+
| system_time_zone | UTC    |
| time_zone        | +09:00 |
+------------------+--------+
2 rows in set (0.03 sec)

MySQL [(none)]> show global variables like '%time_zone%';
+------------------+--------+
| Variable_name    | Value  |
+------------------+--------+
| system_time_zone | UTC    |
| time_zone        | +09:00 |
+------------------+--------+
2 rows in set (0.00 sec)
```

### Verification

* create table

```
MySQL [(repltest)]> CREATE TABLE time_test ( id INT, dt DATETIME, ts TIMESTAMP );
```

* insert

```
MySQL [(repltest)]> INSERT INTO time_test (id, dt, ts) VALUES (1, now(), now()), (2, '2017-01-01 00:00:00', '2017-01-01 00:00:00');
```

* results

```
## on the master ##
MySQL [(repltest)]> SELCT * FROM time_test;
+------+---------------------+---------------------+
| id   | dt                  | ts                  |
+------+---------------------+---------------------+
|    1 | 2017-10-26 09:47:25 | 2017-10-26 09:47:25 |
|    2 | 2017-01-01 00:00:00 | 2017-01-01 00:00:00 |
+------+---------------------+---------------------+

## on the slave ##
MySQL [(repltest)]> SELCT * FROM time_test;
+------+---------------------+---------------------+
| id   | dt                  | ts                  |
+------+---------------------+---------------------+
|    1 | 2017-10-26 00:47:25 | 2017-10-26 09:47:25 | ← dt deviated.
|    2 | 2017-01-01 00:00:00 | 2017-01-01 09:00:00 | ← ts deviated.
+------+---------------------+---------------------+
```

### How to fix this.

* set time_zone explicitly on master.
```
set global time_zone='+09:00'
```

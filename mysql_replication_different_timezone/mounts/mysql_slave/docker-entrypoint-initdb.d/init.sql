CHANGE MASTER TO MASTER_HOST='mysql_master', MASTER_USER='repl', MASTER_PASSWORD='slavepass', MASTER_LOG_FILE='mysql-bin.000003', MASTER_LOG_POS=2;
START SLAVE;

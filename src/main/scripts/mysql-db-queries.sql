## Use to run mysql db docker image, optional if you're not using a local mysqldb
# docker run --name mysqldb -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -d mysql

# connect to mysql and run as root user
#Create Databases
CREATE DATABASE seth_dev;
CREATE DATABASE seth_prod;

#Create database service accounts
CREATE USER 'seth_dev_user'@'localhost' IDENTIFIED BY 'sunny';
CREATE USER 'seth_prod_user'@'localhost' IDENTIFIED BY 'sunny';
CREATE USER 'seth_dev_user'@'%' IDENTIFIED BY 'sunny';
CREATE USER 'seth_prod_user'@'%' IDENTIFIED BY 'sunny';

#Database grants
GRANT SELECT ON seth_dev.* to 'seth_dev_user'@'localhost';
GRANT INSERT ON seth_dev.* to 'seth_dev_user'@'localhost';
GRANT DELETE ON seth_dev.* to 'seth_dev_user'@'localhost';
GRANT UPDATE ON seth_dev.* to 'seth_dev_user'@'localhost';
GRANT SELECT ON seth_prod.* to 'seth_prod_user'@'localhost';
GRANT INSERT ON seth_prod.* to 'seth_prod_user'@'localhost';
GRANT DELETE ON seth_prod.* to 'seth_prod_user'@'localhost';
GRANT UPDATE ON seth_prod.* to 'seth_prod_user'@'localhost';
GRANT SELECT ON seth_dev.* to 'seth_dev_user'@'%';
GRANT INSERT ON seth_dev.* to 'seth_dev_user'@'%';
GRANT DELETE ON seth_dev.* to 'seth_dev_user'@'%';
GRANT UPDATE ON seth_dev.* to 'seth_dev_user'@'%';
GRANT SELECT ON seth_prod.* to 'seth_prod_user'@'%';
GRANT INSERT ON seth_prod.* to 'seth_prod_user'@'%';
GRANT DELETE ON seth_prod.* to 'seth_prod_user'@'%';
GRANT UPDATE ON seth_prod.* to 'seth_prod_user'@'%';
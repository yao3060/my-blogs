CREATE DATABASE IF NOT EXISTS db_yaoyingying;
CREATE DATABASE IF NOT EXISTS db_hugoworld;

CREATE USER IF NOT EXISTS 'wp_yaoyingying'@'%' IDENTIFIED BY 'wp_pass1';
CREATE USER IF NOT EXISTS 'wp_hugoworld'@'%' IDENTIFIED BY 'wp_pass2';

GRANT ALL PRIVILEGES ON db_yaoyingying.* TO 'wp_yaoyingying'@'%';
GRANT ALL PRIVILEGES ON db_hugoworld.* TO 'wp_hugoworld'@'%';

FLUSH PRIVILEGES;

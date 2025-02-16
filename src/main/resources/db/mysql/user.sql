CREATE DATABASE IF NOT EXISTS petclinic;

ALTER DATABASE petclinic
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;

-- 1) Create or alter the user with a password
CREATE USER IF NOT EXISTS 'petclinic'@'%' IDENTIFIED BY 'petclinic';

-- 2) Grant privileges on the petclinic DB
GRANT ALL PRIVILEGES ON petclinic.* TO 'petclinic'@'%';

FLUSH PRIVILEGES;

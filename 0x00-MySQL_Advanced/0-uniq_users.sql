-- Table structure for table 'Users';

DROP TABLE IF EXISTS `Users`;

-- Create a users table in mysql

CREATE TABLE `Users` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(255) NOT NULL UNIQUE,
  `name` VARCHAR(255)
  PRIMARY KEY (`id`)
)

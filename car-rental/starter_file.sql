create database carrental;
SELECT * FROM carrental.car_rental_project;


CREATE TABLE IF NOT EXISTS `carrental`.`car` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `plate` VARCHAR(255) DEFAULT NULL,
  `capacity` INT,
  `ENGINE` VARCHAR(255) DEFAULT NULL,
  `FUEL` VARCHAR(255) DEFAULT NULL,
  `price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `STATUS` boolean DEFAULT false,
  `MAKE` VARCHAR(255) DEFAULT NULL,
  `MODEL` VARCHAR(255) DEFAULT NULL,
  `YEAR` YEAR DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `car_category` (`id`) 
) ;

CREATE TABLE IF NOT EXISTS `carrental`.`car_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;


INSERT INTO car_category(category_name) VALUES ('SEDAN');
INSERT INTO car_category(category_name) VALUES ('COUPE');
INSERT INTO car_category(category_name) VALUES ('SUV');
INSERT INTO car_category(category_name) VALUES ('MINIVAN');
INSERT INTO car_category(category_name) VALUES ('TRUCK');
INSERT INTO car_category(category_name) VALUES ('HATCHBACK');

select * from car_category;

INSERT INTO `carrental`.`car`
(`plate`,`capacity`,`ENGINE`,`FUEL`,`price`,`image_url`,`STATUS`,`MAKE`,`MODEL`,`YEAR`,`category_id`)
VALUES
('AA461LT',5,
'1.9 LT TDI',
'Diesel',
25,
'assets/images/cars/hatchback/golf_mk4.png',
true,
'VolksWagen',
'Golf MK.4',
'2001',
6);

INSERT INTO `carrental`.`car`
(`plate`,`capacity`,`ENGINE`,`FUEL`,`price`,`image_url`,`STATUS`,`MAKE`,`MODEL`,`YEAR`,`category_id`)
VALUES
('AA332LT',5,
'2.0 LT ',
'Diesel',
25,
'assets/images/cars/hatchback/audi_a3.png',
true,
'Audi',
'A3',
'2015',
6);

INSERT INTO `carrental`.`car`
(`plate`,`capacity`,`ENGINE`,`FUEL`,`price`,`image_url`,`STATUS`,`MAKE`,`MODEL`,`YEAR`,`category_id`)
VALUES
('AA500TX',5,
'3.0 LT ',
'Diesel',
35,
'assets/images/cars/sedan/benz.png',
true,
'Mercedes-Benz',
'C300',
'2015',
1);
INSERT INTO `carrental`.`car`
(`plate`,`capacity`,`ENGINE`,`FUEL`,`price`,`image_url`,`STATUS`,`MAKE`,`MODEL`,`YEAR`,`category_id`)
VALUES
('AA461LT',5,
'1.9 LT TDI',
'Diesel',
25,
'assets/images/cars/hatchback/golf_mk4.png',
true,
'VolksWagen',
'Golf MK.4',
'2001',
2);

INSERT INTO `carrental`.`car`
(`plate`,`capacity`,`ENGINE`,`FUEL`,`price`,`image_url`,`STATUS`,`MAKE`,`MODEL`,`YEAR`,`category_id`)
VALUES
('DD789GH', 5,
 '2.4L Petrol',
 'Petrol',
 25,
 'assets/images/cars/sedan/toyota_camry.png',
 true,
 'Toyota',
 'Camry',
 '2019',
 1);
 
 INSERT INTO `carrental`.`car`
(`plate`,`capacity`,`ENGINE`,`FUEL`,`price`,`image_url`,`STATUS`,`MAKE`,`MODEL`,`YEAR`,`category_id`)
VALUES
('EE012IJ', 7,
 '3.5L Diesel',
 'Diesel',
 35,
 'assets/images/cars/suv/jeep_wrangler.jpg',
 true,
 'Jeep',
 'Wrangler',
 '2021',
 3);
 INSERT INTO `carrental`.`car`
(`plate`,`capacity`,`ENGINE`,`FUEL`,`price`,`image_url`,`STATUS`,`MAKE`,`MODEL`,`YEAR`,`category_id`)
VALUES
('AA111BB', 7,
 '2.5L Diesel',
 'Diesel',
 40,
 'assets/images/cars/minivan/toyota_sienna.jpg',
 true,
 'Toyota',
 'Sienna',
 '2020',
 4);
 INSERT INTO `carrental`.`car`
(`plate`,`capacity`,`ENGINE`,`FUEL`,`price`,`image_url`,`STATUS`,`MAKE`,`MODEL`,`YEAR`,`category_id`)
VALUES
('CC222DD', 7,
 '3.6L Petrol',
 'Petrol',
 45,
 'assets/images/cars/minivan/chrysler_pacifica.jpg',
 true,
 'Chrysler',
 'Pacifica',
 '2018',
 4);
 INSERT INTO `carrental`.`car`
(`plate`,`capacity`,`ENGINE`,`FUEL`,`price`,`image_url`,`STATUS`,`MAKE`,`MODEL`,`YEAR`,`category_id`)
VALUES
('EE333FF', 2,
 '3.0L Petrol',
 'Petrol',
 60,
 'assets/images/cars/coupe/audi_tt.png',
 true,
 'Audi',
 'TT',
 '2022',
 2);
 INSERT INTO `carrental`.`car`
(`plate`,`capacity`,`ENGINE`,`FUEL`,`price`,`image_url`,`STATUS`,`MAKE`,`MODEL`,`YEAR`,`category_id`)
VALUES
('II555JJ', 3,
 '6.7L Diesel',
 'Diesel',
 80,
 'assets/images/cars/truck/ford_f150.jpg',
 true,
 'Ford',
 'F-150',
 '2019',
 5);
select*from car;

select * from reservations;
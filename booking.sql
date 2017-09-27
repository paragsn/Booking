create schema booking;
use booking;

CREATE TABLE driver (
    id MEDIUMINT NOT NULL AUTO_INCREMENT,
    name CHAR(30) NOT NULL,
    status INT NOT NULL REFERENCES status (id),
    PRIMARY KEY (id)
); 

CREATE TABLE status (
    id INT NOT NULL,
    code CHAR(10) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE driver_location (
    driver MEDIUMINT NOT NULL REFERENCES driver (id),
    lattitude DECIMAL(10 , 8 ) NOT NULL,
    longitude DECIMAL(11 , 8 ) NOT NULL
);

CREATE TABLE customer (
    id MEDIUMINT NOT NULL AUTO_INCREMENT,
    name CHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE current_details (
     driver_id MEDIUMINT NOT NULL REFERENCES driver(id),
     customer_id MEDIUMINT NOT NULL REFERENCES customer(id),
     PRIMARY KEY (driver_id)
);


INSERT INTO driver ( name, status ) VALUES ("D1",1),("D2",1),("D3",1),("D4",1),("D5",1);
INSERT INTO customer ( name ) VALUES ("C1"),("C2"),("C3");
INSERT INTO status (id, code) VALUES (1, "AVAILABLE"),(2, "BUSY");
INSERT INTO driver_location (driver,lattitude,longitude) VALUES (1,18.530272,73.844013),(2,18.523992,73.845423),(3,18.537265,73.850533),(4,18.528469, 73.860504),(5,18.532920,73.858949);

DROP DATABASE IF EXISTS bamazon_db;

CREATE DATABASE bamazon_db;

USE bamazon_db;

CREATE TABLE products(

item_id INT NOT NULL AUTO_INCREMENT,
product_name VARCHAR(30) NOT NULL,
department_name VARCHAR(30) NOT NULL ,
price DECIMAL(10,2) NULL,
stock_quantity INT NULL,
 PRIMARY KEY (item_id)
);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Bagel Slicer", "Kitchen Supplies", 12.50, 100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Bottle Opener", "Kitchen Supplies", 2.50, 75);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Cheese Grater", "Kitchen Supplies", 7.50, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("French Press", "Kitchen Supplies", 25.00, 25);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Monkey Wrench", "Tool Corral", 15.00, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Measuring Tape", "Tool Corral", 26.50, 72);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Screwdriver", "Tool Corral", 2.50, 10);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Hammer", "Tool Corral", 10.00, 2);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("Guitar Strings", "Music Supplies", 9.50, 5);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("4x12 Speaker Cabinet", "Music Supplies", 825.50, 1);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("60 Watt Head", "Music Supplies", 1825.50, 2);
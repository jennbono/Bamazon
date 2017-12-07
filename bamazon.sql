DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products(
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(255) NOT NULL,
  department_name VARCHAR(255) NOT NULL,
  price INT,
  stock_quantity INT,
  PRIMARY KEY (item_id)
);

USE bamazon;

INSERT INTO
products (product_name, department_name, price, stock_quantity)
VALUES ("Kate Spade wallet", "Accessories", 65.00, 15);

INSERT INTO
products (product_name, department_name, price, stock_quantity)
VALUES ("Calendar", "Office Supplies", 20.00, 10);

INSERT INTO
products (product_name, department_name, price, stock_quantity)
VALUES ("Rib Rack", "BBQ Accessories", 28.00, 20);

INSERT INTO
products (product_name, department_name, price, stock_quantity)
VALUES ("Pajamas", "Clothing", 26.00, 35);

INSERT INTO
products (product_name, department_name, price, stock_quantity)
VALUES ("Kansas State Polo", "Clothing", 55.00, 50);

INSERT INTO
products (product_name, department_name, price, stock_quantity)
VALUES ("Chiefs Shirt", "Clothing", 25.00, 10);

INSERT INTO
products (product_name, department_name, price, stock_quantity)
VALUES ("Boots", "Shoes", 50.00, 6);

INSERT INTO
products (product_name, department_name, price, stock_quantity)
VALUES ("Balet Flats", "Shoes", 25.00, 5);

INSERT INTO
products (product_name, department_name, price, stock_quantity)
VALUES ("Black Gekks", "Socks", 18.00, 100);

INSERT INTO
products (product_name, department_name, price, stock_quantity)
VALUES ("Kendra Scott Ring", "Jewelry", 50.00, 5);
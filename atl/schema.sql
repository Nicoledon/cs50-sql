create table Ingredients(
       name VARCHAR(8),
       price FLOAT,
       PRIMARY KEY(name)
);
create table docunt2Ingredients(
       docunt_name VARCHAR(8),
       Ingredient_name VARCHAR(8),
       PRIMARY KEY(docunt_name),
       FOREIGN KEY (docunt_name) REFERENCES docunt(docunt_name)
       FOREIGN KEY (ingredient_name) REFERENCES Ingredients(name)
);
create table Ingredients2docunt(
       docunt_name VARCHAR(8),
       Ingredient_name VARCHAR(8),
       PRIMARY KEY(Ingredient_name),
       FOREIGN KEY (docunt_name) REFERENCES docunt(docunt_name)
       FOREIGN KEY (ingredient_name) REFERENCES Ingredients(name)
);
CREATE table docunt(
       docunt_name VARCHAR(8),
       price int,
       gluten_free boolean,
       PRIMARY KEY(docunt_name)
);

CREATE table orders(
       order_number int ,
       docunt_name varchar(8),
       docunts  vachar(8),
       customer varchar(8),
       PRIMARY KEY (order_number),
       FOREIGN KEY (docunt_name) REFERENCES docunt(docunt_name),
       FOREIGN KEY (customer) REFERENCES customers(customer_name)
);

CREATE TABLE customers(
      first_name VARCHAR(8),
      last_name VARCHAR(8),
      customer_name varchar(8),
      history   VARCHAR(8),
      PRIMARY KEY(customer_name)
);
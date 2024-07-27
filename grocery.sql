CREATE TABLE grocery (id INT PRIMARY KEY,name VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) CHECK (price > 0),quantity INT CHECK (quantity > 0),
  category VARCHAR(255) UNIQUE);

alter table grocery add column deliveyboy_id int;

alter table grocery add constraint deliveyboy_id_chk check (deliveyboy_id>5);

alter table grocery drop constraint deliveyboy_id_chk;

INSERT INTO grocery (id, name, price, quantity, category)
VALUES
(1, 'Apple', 1.99, 10, 'Fruits'),
(2, 'chocalate', 0.99, 15, 'falvour'),
(3, 'Carrot', 1.49, 20, 'Vegetables'),
(4, 'Bread', 2.99, 10, 'Bakery'),
(5, 'Milk', 3.99, 5, 'Dairy');

select * from grocery;

alter table grocery add constraint id_check check(id>0);

alter table grocery drop constraint id_check;
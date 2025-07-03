create database joins;
use joins;
CREATE TABLE customers (
    customer_id INT ,
    name VARCHAR(100),
    city VARCHAR(50)
);
CREATE TABLE orders (
    order_id INT ,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
);
INSERT INTO customers (customer_id, name, city) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago'),
(4, 'Diana', 'Houston'),
(5, 'Evan', 'Phoenix');
INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
(101, 1, '2025-06-01', 250.00),
(102, 2, '2025-06-02', 300.00),
(103, 1, '2025-06-03', 150.00),
(104, 4, '2025-06-04', 400.00),
(105, 5, '2025-06-05', 500.00);


create view order_view as select order_id,customer_id,order_date from orders;
select * from order_view;
select order_date from order_view where customer_id<4;
drop view order_view;
















# inner join
select A.customer_id,a.name,a.city,b.amount from customers as a inner join orders as b on a.customer_id=b.customer_id;
# left join
select a.* , b.* from customers as a left join orders as b on a.customer_id=b.customer_id;
# right join
select a.* , b.* from customers as a right join orders as b on a.customer_id=b.customer_id;
# full join
select a.* , b.* from customers as a left join orders as b on a.customer_id=b.customer_id
union
select a.* , b.* from customers as a right join orders as b on a.customer_id=b.customer_id;


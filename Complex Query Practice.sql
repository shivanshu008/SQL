create table products (
product_id int primary key,
product_name varchar(20),
category varchar(20),
price decimal(10,2),
stock_quality int);

create table orders (
order_id int primary key,
customer_id int,
order_date date,
total_amount decimal(10,2));

create table order_items (
order_id int,
product_id int,
quantity int,
unit_price decimal(10,2),
foreign key (order_id) references orders(order_id),
foreign key (product_id) references products(product_id));

create table customers (
customer_id int primary key,
customer_name varchar(20),
email varchar(20),
city varchar(20),
country varchar(20));

INSERT INTO products VALUES
(1, 'Laptop', 'Electronics', 999.99, 50),
(2, 'Smartphone', 'Electronics', 499.99, 100),
(3, 'Headphones', 'Electronics', 79.99, 200),
(4, 'T-shirt', 'Clothing', 19.99, 500),
(5, 'Jeans', 'Clothing', 49.99, 300);

INSERT INTO customers VALUES
(1, 'John Doe', 'john@example.com', 'New York', 'USA'),
(2, 'Jane Smith', 'jane@example.com', 'London', 'UK'),
(3, 'Alice Johnson', 'alice@example.com', 'Paris', 'France');

INSERT INTO orders VALUES
(1, 1, '2023-01-15', 1079.98),
(2, 2, '2023-02-20', 599.97),
(3, 3, '2023-03-10', 149.97);

INSERT INTO order_items VALUES
(1, 1, 1, 999.99),
(1, 3, 1, 79.99),
(2, 2, 1, 499.99),
(2, 4, 5, 19.99),
(3, 3, 1, 79.99),
(3, 5, 1, 49.99),
(3, 4, 1, 19.99);

/*
Question 1 : List the top 2 customers who have spent the most along with thier total spend and the 
			number of orders
*/
select c.customer_id, c.customer_name,
count(o.order_id) as order_count, 
sum(o.total_amount) as total_spent 
from customers c 
join orders o 
on c.customer_id = o.customer_id 
group by c.customer_id, c.customer_name 
order by total_spent desc limit 2;

/* Question 2 : Find products that have been ordered more than once sorted by
				the total quantity ordered
 */
select p.product_id, p.product_name, 
count(distinct oi.order_id) as order_count, 
sum(oi.quantity) as total_quantity
from products p
join order_items oi
on p.product_id = oi.product_id 
group by p.product_id, p.product_name
having order_count > 1
order by total_quantity desc;

-- Question 3 : List Customers who have never ordered the most expensive Product 
select c.customer_id, c.customer_name 
from customers c 
where c.customer_id 
not in (select distinct o.customer_id 
from orders o 
join order_items oi 
on o.order_id = oi.order_id
join products p
on oi.product_id = p.product_id 
where p.price = 
( select max(price) from products));

/* Question 4 : List Customers who have ordered products from all
				available categories. 
    */
select c.customer_id, c.customer_name 
from customers c
join orders o on c.customer_id = o.customer_id 
join order_items oi 
on o.order_id = oi.order_id 
join products p 
on oi.product_id = p.product_id 
group by c.customer_id, c.customer_name 
having count(distinct p.category) = 
(select count(distinct category) from products);
create database pizzahut;
use pizzahut
select*from pizzahut.orders;

-- retrieve the total number of order placed.
select count(order_id) from orders;


-- calculate the total revenue ganerated from pizza sales.
SELECT 
    (order_details.quantity * pizzas.price) AS total_salse
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id
    

-- identify the highest priced pizza.
SELECT 
    pizza_types.name, pizzas.price
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;


-- Identify the most common pizza size ordered.
select*from pizzahut.order_details

SELECT 
    pizzas.size,
    COUNT(order_details.order_details_id) AS order_count
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC;


-- List the top 5 most ordered pizza types
-- along with their quantities.
SELECT 
    pizza_types.name, SUM(order_details.quantity)
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name
LIMIT 5;

-- join the necessary table to find the total quantity of each pizza category ordered.
SELECT 
    pizza_types.category, SUM(order_details.quantity) as quantity
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category order by quantity desc;

-- Determine the distributation of orders by hour of the day.
select hour(time) ,count(order_id)from orders group by (time);

-- join relevent tables to find the category wise disrtibution of pizzas.
select category,count(name) from pizza_types
group by category

-- group the orders by date and calculate the average number of pizzas ordered per day.
select orders.date,sum(order_details.quantity) from quantity
from orders join order_details
on orders.order_id=order_details.order_id
group by orders.order_id 

-- Determine the top 3 most ordered pizza types based on revenue.
SELECT 
    pizza_types.name,
    SUM(order_details.quantity * pizzas.price) AS revenue
FROM
    pizza_types
        JOIN
    pizzas ON pizzas.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    order_details ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name

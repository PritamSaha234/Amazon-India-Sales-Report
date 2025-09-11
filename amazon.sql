CREATE DATABASE amazon;
USE amazon;


# 1. What is the total sales amount and quantity sold across all orders?
CREATE VIEW total_sales_and_quantity AS
SELECT SUM(amount) AS total_sales_amount, SUM(qty) AS total_quantity
FROM amazon_sales;

SELECT * FROM total_sales_and_quantity;

#2. What are the top 5 categories by total successful sales amount?
CREATE VIEW top_five_categories_by_total_sales AS
SELECT category, SUM(amount) AS total_sale_amount
FROM amazon_sales
WHERE courier_status = "Shipped" AND status = "Shipped" OR "Shipped - Delivered to Buyer"
GROUP BY category
ORDER BY total_sale_amount DESC
LIMIT 5;

SELECT * FROM top_five_categories_by_total_sales;

#3. How many orders are there for each status (e.g., Shipped, Cancelled)?
CREATE VIEW order_numbers_for_each_status AS
SELECT status, count(order_id) as total_order
FROM amazon_sales
GROUP BY status;

SELECT * FROM order_numbers_for_each_status;

#4. What is the average order amount per fulfillment method (Amazon vs Merchant)?
CREATE VIEW avg_order_amt_per_fulfillment AS
SELECT fulfilment, AVG(amount) AS avg_amount
FROM amazon_sales
GROUP BY fulfilment;

SELECT * FROM avg_order_amt_per_fulfillment;

#5. Which states have the highest total sales, showing the top 10?
CREATE VIEW states_have_highest_total_sales AS 
SELECT ship_state, SUM(amount) AS total_sale
FROM amazon_sales
GROUP BY ship_state
ORDER BY total_sale DESC
LIMIT 10;

SELECT * FROM states_have_highest_total_sales;

#6. What is the distribution of sizes sold for the 'T-shirt' category?
CREATE VIEW t_shirt_sizes_distribution AS
SELECT size, SUM(qty) AS total_quantity
FROM amazon_sales
WHERE category = "T-shirt"
GROUP BY size;

SELECT * FROM t_shirt_sizes_distribution;

#7. How many B2B orders are there compared to non-B2B, and their total sales?
CREATE VIEW compare_between_b2b_non_b2b AS
SELECT b2b, COUNT(*) AS total_order, SUM(amount) AS total_sales
FROM amazon_sales
GROUP BY b2b;

SELECT * FROM compare_between_b2b_non_b2b;

#8. What is the total sales amount per date, ordered chronologically? (Assuming Date is converted to a proper date format)
CREATE VIEW total_sales_amount_per_date AS
SELECT date, SUM(amount) AS total_sales
FROM amazon_sales
GROUP BY date
ORDER BY date;

SELECT * FROM total_sales_amount_per_date;

#9. Which courier fulfilled the most orders, and what is their average amount?
CREATE VIEW fulfilled_most_order AS
SELECT fulfilled_by, COUNT(order_id) AS total_order, AVG(amount) AS avg_amount
FROM amazon_sales
GROUP BY fulfilled_by
ORDER BY total_order DESC;

SELECT * FROM fulfilled_most_order;

#10. What are the top 10 ship cities by number of shipped orders?
CREATE VIEW top_ten_ship_city AS
SELECT ship_city, COUNT(*) AS order_number
FROM amazon_sales
WHERE status = "Shipped"
GROUP BY ship_city
ORDER BY order_number DESC
LIMIT 10;

SELECT * FROM top_ten_ship_city;
# intership_day4_task4
Created E-Commerce Database Analysis

L query example set based on an E-commerce database that you can use to demonstrate your ability to extract and analyze data using SQL.

Tables:
customers(customer_id, first_name, last_name, email, country)

orders(order_id, customer_id, order_date, total_amount)

order_items(order_item_id, order_id, product_id, quantity, price)

products(product_id, product_name, category, price)

payments(payment_id, order_id, payment_date, payment_amount, payment_method)

SELECT customer_id, first_name, last_name, email
FROM customers
WHERE country = 'USA'
ORDER BY last_name ASC;

SELECT c.country, SUM(o.total_amount) AS total_revenue
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.country
ORDER BY total_revenue DESC;

SELECT o.order_id, o.order_date, c.first_name || ' ' || c.last_name AS customer_name, o.total_amount
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id
ORDER BY o.order_date DESC;


![image](https://github.com/user-attachments/assets/b24fdc32-a7e1-4a56-bfcd-7008188f65ca)
![image](https://github.com/user-attachments/assets/fb36dd5c-3d5e-4c35-ab08-654b1216c9ef)
![image](https://github.com/user-attachments/assets/f4b8c2f9-e1aa-429b-9020-d5eaf0a94307)
![image](https://github.com/user-attachments/assets/8ee0e66a-1da0-4a67-bccf-98cf09d8cfd7)
![image](https://github.com/user-attachments/assets/66936c1f-5550-42c7-990d-c2d6b461bec9)
![image](https://github.com/user-attachments/assets/ef966454-18de-4f91-9b81-1b8ecea59bee)








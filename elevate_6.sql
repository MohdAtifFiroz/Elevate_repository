create database Online;

use Online;

SELECT 
    EXTRACT(YEAR FROM invoice_date) AS year,
    EXTRACT(MONTH FROM invoice_date) AS month,
    SUM(payment) AS total_revenue
FROM online_sales_dataset
GROUP BY year, month
ORDER BY year, month;


SELECT 
    EXTRACT(YEAR FROM invoice_date) AS year,
    EXTRACT(MONTH FROM invoice_date) AS month,
    COUNT(DISTINCT invoice_number) AS total_orders
FROM online_sales_dataset
GROUP BY year, month
ORDER BY year, month;



SELECT 
    EXTRACT(YEAR FROM invoice_date) AS year,
    EXTRACT(MONTH FROM invoice_date) AS month,
    SUM(payment) AS total_revenue,
    COUNT(DISTINCT invoice_number) AS total_orders
FROM online_sales_dataset
GROUP BY year, month
ORDER BY year, month;



SELECT 
    EXTRACT(YEAR FROM invoice_date) AS year,
    EXTRACT(MONTH FROM invoice_date) AS month,
    SUM(payment) AS total_revenue
FROM online_sales_dataset
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 5;



SELECT 
    EXTRACT(YEAR FROM invoice_date) AS year,
    EXTRACT(MONTH FROM invoice_date) AS month,
    SUM(payment) AS total_revenue
FROM online_sales_dataset
WHERE invoice_date BETWEEN '2023-01-01' AND '2023-03-31'
GROUP BY year, month
ORDER BY year, month;




SELECT 
    category,
    EXTRACT(YEAR FROM invoice_date) AS year,
    EXTRACT(MONTH FROM invoice_date) AS month,
    SUM(payment) AS total_revenue
FROM online_sales_dataset
GROUP BY category, year, month
ORDER BY total_revenue DESC;


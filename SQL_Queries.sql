
-- ✅ Total Revenue Generated
SELECT SUM(purchase_amount) AS total_revenue FROM sales_data;

-- ✅ Best-Selling Category
SELECT category, COUNT(*) AS total_sales 
FROM sales_data 
GROUP BY category 
ORDER BY total_sales DESC 
LIMIT 1;

-- ✅ Most Preferred Payment Method
SELECT payment_method, COUNT(*) AS total_transactions 
FROM sales_data 
GROUP BY payment_method 
ORDER BY total_transactions DESC 
LIMIT 1;

-- ✅ Peak Sales Season
SELECT season, SUM(purchase_amount) AS total_revenue 
FROM sales_data 
GROUP BY season 
ORDER BY total_revenue DESC 
LIMIT 1;

-- ✅ Customer Purchase Frequency
SELECT frequency_of_purchases, COUNT(customer_id) AS customer_count 
FROM sales_data 
GROUP BY frequency_of_purchases 
ORDER BY customer_count DESC;

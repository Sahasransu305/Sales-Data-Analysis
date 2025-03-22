# 📊 Sales Data Analysis (SQL)

## 🚀 Overview  
This project analyzes a sales dataset using **MySQL** to uncover key business insights. The dataset contains customer demographics, purchase behavior, product categories, and payment methods. The goal is to help businesses optimize their sales strategies by identifying trends in revenue, customer preferences, and seasonal performance.  

---

## 📂 Dataset Overview  
The dataset consists of **3,900 rows** and **19 columns**, covering customer details, product categories, payment methods, and purchase frequency.  

### **Key Columns in the Dataset:**
- **Customer ID** → Unique identifier for customers  
- **Age, Gender, Location** → Demographic details  
- **Item Purchased, Category** → Product details  
- **Purchase Amount (USD)** → Transaction amount  
- **Payment Method, Preferred Payment Method** → Payment behavior  
- **Season** → Time of purchase  
- **Review Rating** → Customer feedback  
- **Frequency of Purchases, Previous Purchases** → Customer engagement  

---

## 📊 Steps Involved in Analysis  

### **1️⃣ Data Cleaning & Preparation**  
- Removed duplicate records (if any).  
- Handled missing values.  
- Checked and corrected data types (e.g., numbers for purchase amounts, categorical values for gender, etc.).  

### **2️⃣ Data Exploration & Analysis (Using SQL)**  
The following SQL queries were used to derive business insights:  

#### ✅ **Total Revenue Generated**
```sql
SELECT SUM(purchase_amount) AS total_revenue FROM sales_data;
```
📌 Insight: The total revenue generated from all sales was $233,081.
#### ✅ **Top 5 Best-Selling Categories**
```sql
SELECT category, COUNT(*) AS total_sales 
FROM sales_data 
GROUP BY category 
ORDER BY total_sales DESC 
LIMIT 5;
```
📌 Insight: The best-selling categories were:

1️⃣ Clothing → 1,737 sales 

2️⃣ Accessories → 1,240 sales 

3️⃣ Footwear → 599 sales 

4️⃣ Outerwear → 324 sales 

#### ✅ **Most Preferred Payment Methods**
```sql
SELECT payment_method, COUNT(*) AS usage_count 
FROM sales_data 
GROUP BY payment_method 
ORDER BY usage_count DESC;
```
📌 Insight: The most used payment methods were:

1️⃣ Credit Card → 696 transactions

2️⃣ Venmo → 653 transactions

3️⃣ Cash → 648 transactions

#### ✅ **Seasonal Sales Performance**
```sql
SELECT season, SUM(purchase_amount) AS total_sales 
FROM sales_data 
GROUP BY season 
ORDER BY total_sales DESC;
```
📌 Insight: The highest sales occurred in:

1️⃣ Fall → $60,018 revenue

2️⃣ Spring → $58,679 revenue

3️⃣ Winter → $58,607 revenue

#### ✅ **Customer Purchase Frequency**
```sql
SELECT frequency_of_purchases, COUNT(*) AS customer_count 
FROM sales_data 
GROUP BY frequency_of_purchases 
ORDER BY customer_count DESC;
```
📌 Insight:
Most customers shop every 3 months or annually.


## 📈 Key Insights & Business Impact  
📌 **Total Revenue:** **$233,081**  
📌 **Best-Selling Category:** **Clothing** (1,737 sales)  
📌 **Most Preferred Payment Method:** **Credit Card** (696 transactions)  
📌 **Peak Sales Season:** **Fall ($60,018 revenue)**  
📌 **Customer Behavior:** Most customers buy **every 3 months or annually**  

These insights can help businesses:  
✅ Optimize inventory based on best-selling products  
✅ Offer targeted promotions during high-sales seasons  
✅ Improve payment options based on customer preference  
✅ Implement loyalty programs for frequent buyers  



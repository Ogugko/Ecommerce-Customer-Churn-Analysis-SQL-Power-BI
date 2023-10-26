/**************
DATA CLEANING
**************/

/*************
Churn Dataset
**************/

-- 1. Find the total number of customers
SELECT DISTINCT COUNT(customer_id) AS Total_Customers
FROM churn;
-- Answer = There are 7,043 customers 

-- 2. Check for duplicate rows
SELECT customer_id, COUNT(customer_id) AS Total_Customers
FROM churn
GROUP BY customer_id
HAVING COUNT(customer_id) > 1;
-- Answer = There are no duplicate rows

-- 3. Check for null values 
SELECT * FROM churn;
-- Answer = There are several missing values, as each customer has unique preferences

/*************
Zip Code Dataset
**************/
ALTER TABLE zip_code RENAME TO zip;

-- 1. Check for duplicate rows
SELECT zip_code, COUNT(zip_code) AS Total_Zip_Codes
FROM zip
GROUP BY zip_code
HAVING COUNT(zip_code) > 1;
-- Answer = There are no duplicate rows

-- 2. Check for null values 
SELECT * FROM zip_code
WHERE zip IS NULL OR population IS NULL;
-- Answer = There are no missing values

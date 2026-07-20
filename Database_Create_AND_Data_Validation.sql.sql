----Phase 1 : Database Setup and Data Validation

CREATE DATABASE subscription_project;
USE subscription_project;
ALTER TABLE clean_data_sql
RENAME COLUMN `ï»¿Customer_ID` TO Customer_ID;

DESCRIBE clean_data_sql;

RENAME TABLE clean_data_sql TO customer_churn;

---  Total Customers and Total Rows Available
SELECT COUNT(*) AS Total_Customers FROM customer_churn;

--- Checking Duplicate Customer IDs
SELECT Customer_ID, COUNT(*) AS Duplicate_Count 
FROM customer_churn
GROUP BY Customer_ID
HAVING COUNT(*) > 1;

---- Checking Missing Customer IDs 
SELECT *
FROM customer_churn
WHERE Customer_ID IS NULL;

---- Checking Missing Monthly Charges
SELECT *
FROM customer_churn
WHERE Monthly_Charges IS NULL;

--- Checking Missing Total Charges
SELECT *
FROM customer_churn
WHERE Total_Charges IS NULL;

----  Validate Churn Values
SELECT DISTINCT Churn
FROM customer_churn;

--- Validate Contract Values
SELECT DISTINCT Contract
FROM customer_churn;

----  Validate Internet Services
SELECT DISTINCT Internet_Service
FROM customer_churn;


















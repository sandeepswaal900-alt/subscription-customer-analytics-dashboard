---- Phase 2 : most important numbers about our customers


--- How many customers do we have / Total Customers
SELECT COUNT(*) AS Total_Customers
FROM customer_churn;

-- Customers who did not churn / Active Customers
SELECT COUNT(*) AS Active_Customers
FROM customer_churn
WHERE Churn = 'No';

---- Churned Customers / Inactive Customers or Canceled Subcription
SELECT COUNT(*) AS Churned_Customers
FROM customer_churn
WHERE Churn = 'Yes';

---- Churn Rate / Out of all our customers, what percentage have canceled their subscription?
SELECT
ROUND(
COUNT(CASE WHEN Churn='Yes' THEN 1 END) * 100.0 /
COUNT(*),2
) AS Churn_Rate
FROM customer_churn;

--- Total Revenue
SELECT 
ROUND(SUM(Total_Charges),2) AS Total_Revenue
FROM customer_churn;

---- Average Monthly Charges
SELECT
ROUND(AVG(Monthly_Charges),2) AS Avg_Monthly_Charges
FROM customer_churn;

--- Average Customer Lifetime
SELECT
ROUND(AVG(Tenure),2) AS Avg_Tenure
FROM customer_churn;

---- Highest Monthly Charge
SELECT
MAX(Monthly_Charges) AS Highest_Monthly_Charge
FROM customer_churn;

--- Lowest Monthly Charge
SELECT
MIN(Monthly_Charges) AS Lowest_Monthly_Charge
FROM customer_churn;

--- Highest Total Revenue from One Customer
SELECT
MAX(Total_Charges) AS Highest_Total_Charges
FROM customer_churn;













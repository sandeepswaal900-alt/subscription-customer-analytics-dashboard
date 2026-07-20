---   Business Insights

--  Churn Rate (%)
SELECT
ROUND(
SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) * 100.0
/
COUNT(*),
2
) AS Churn_Rate
FROM customer_churn;

--- Active Customer Rate
SELECT
ROUND(
SUM(CASE WHEN Churn='No' THEN 1 ELSE 0 END) * 100.0
/
COUNT(*),
2
) AS Active_Rate
FROM customer_churn;

----   Revenue Retained
SELECT
ROUND(SUM(Total_Charges),2) AS Revenue_Retained
FROM customer_churn
WHERE Churn='No';

--- Revenue Lost
SELECT
ROUND(SUM(Total_Charges),2) AS Revenue_Lost
FROM customer_churn
WHERE Churn='Yes';

--- Revenue by Gender
SELECT
Gender,
ROUND(SUM(Total_Charges),2) AS Revenue
FROM customer_churn
GROUP BY Gender
ORDER BY Revenue DESC;

---  Revenue by Contract
SELECT
Contract,
ROUND(SUM(Total_Charges),2) AS Revenue
FROM customer_churn
GROUP BY Contract
ORDER BY Revenue DESC;

---  Revenue by Internet Service
SELECT
Internet_Service,
ROUND(SUM(Total_Charges),2) AS Revenue
FROM customer_churn
GROUP BY Internet_Service
ORDER BY Revenue DESC;

---  Revenue by Payment Method
SELECT
Payment_Method,
ROUND(SUM(Total_Charges),2) AS Revenue
FROM customer_churn
GROUP BY Payment_Method
ORDER BY Revenue DESC;

---  Average Revenue per Customer
SELECT
ROUND(AVG(Total_Charges),2) AS Avg_Revenue
FROM customer_churn;

---  Top 10 Customers by Revenue
SELECT
Customer_ID,
Total_Charges
FROM customer_churn
ORDER BY Total_Charges DESC
LIMIT 10;































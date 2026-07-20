----- Phase 4  :  Revenue Analysis

--- Revenue by Contract / Which contract type generates the most revenue?
SELECT
    Contract,
    ROUND(SUM(Total_Charges),2) AS Total_Revenue
FROM customer_churn
GROUP BY Contract
ORDER BY Total_Revenue DESC;

--- Revenue by Internet Service
SELECT
    Internet_Service,
    ROUND(SUM(Total_Charges),2) AS Total_Revenue
FROM customer_churn
GROUP BY Internet_Service
ORDER BY Total_Revenue DESC;

--- Revenue by Payment Method
SELECT
    Payment_Method,
    ROUND(SUM(Total_Charges),2) AS Total_Revenue
FROM customer_churn
GROUP BY Payment_Method
ORDER BY Total_Revenue DESC;

--- Revenue by Gender
SELECT
    Gender,
    ROUND(SUM(Total_Charges),2) AS Total_Revenue
FROM customer_churn
GROUP BY Gender;

--- Revenue by Customer Type
SELECT
    Customer_Type,
    ROUND(SUM(Total_Charges),2) AS Total_Revenue
FROM customer_churn
GROUP BY Customer_Type
ORDER BY Total_Revenue DESC;

---- Revenue by Tenure Group
SELECT
    Tenure_Group,
    ROUND(SUM(Total_Charges),2) AS Total_Revenue
FROM customer_churn
GROUP BY Tenure_Group
ORDER BY Total_Revenue DESC;

---  Average Revenue by Contract
SELECT
    Contract,
    ROUND(AVG(Total_Charges),2) AS Avg_Revenue
FROM customer_churn
GROUP BY Contract
ORDER BY Avg_Revenue DESC;

--- Top 10 Highest Revenue Customers
SELECT
    Customer_ID,
    Total_Charges
FROM customer_churn
ORDER BY Total_Charges DESC
LIMIT 10;

---- Top 10 Highest Monthly Charges
SELECT
    Customer_ID,
    Monthly_Charges
FROM customer_churn
ORDER BY Monthly_Charges DESC
LIMIT 10;

--- Revenue by Churn Status / How much revenue have we retained versus lost?  
SELECT
    Churn,
    ROUND(SUM(Total_Charges),2) AS Total_Revenue
FROM customer_churn
GROUP BY Churn;

















 



















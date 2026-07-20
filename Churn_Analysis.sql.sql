----- Churn Analysis

--- Customers Churned by Gender / Among the customers who left our company, how many were male and how many were female?
SELECT
Gender,
COUNT(*) AS Churned_Customers
FROM customer_churn
WHERE Churn='Yes'
GROUP BY Gender
ORDER BY Churned_Customers DESC;

---  Customers Churned by Contract
SELECT
Contract,
COUNT(*) AS Churned_Customers
FROM customer_churn
WHERE Churn='Yes'
GROUP BY Contract
ORDER BY Churned_Customers DESC;

---  Customers Churned by Internet Service
SELECT
Internet_Service,
COUNT(*) AS Churned_Customers
FROM customer_churn
WHERE Churn='Yes'
GROUP BY Internet_Service
ORDER BY Churned_Customers DESC;

---- Customers Churned by Payment Method
SELECT
Payment_Method,
COUNT(*) AS Churned_Customers
FROM customer_churn
WHERE Churn='Yes'
GROUP BY Payment_Method
ORDER BY Churned_Customers DESC;

--- Customers Churned by Tenure Group
SELECT
Tenure_Group,
COUNT(*) AS Churned_Customers
FROM customer_churn
WHERE Churn='Yes'
GROUP BY Tenure_Group
ORDER BY Churned_Customers DESC;

---  Revenue Lost because of Churn
SELECT
ROUND(SUM(Total_Charges),2) AS Revenue_Lost
FROM customer_churn
WHERE Churn='Yes';

---  Average Monthly Charge of Churned Customers
SELECT
ROUND(AVG(Monthly_Charges),2) AS Avg_Monthly_Charge
FROM customer_churn
WHERE Churn='Yes';

----  Average Tenure before Churn
SELECT
ROUND(AVG(Tenure),2) AS Avg_Tenure
FROM customer_churn
WHERE Churn='Yes';






























  
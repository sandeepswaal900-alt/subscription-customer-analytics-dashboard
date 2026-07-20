---- PHASE 3 – CUSTOMER ANALYSIS

--- How many male and female customers do we have?
SELECT
    Gender,
    COUNT(*) AS Total_Customers
FROM customer_churn
GROUP BY Gender;

---- Customers by Senior Citizen
SELECT
    Senior_Citizen,
    COUNT(*) AS Total_Customers
FROM customer_churn
GROUP BY Senior_Citizen;

--- Customers by Partner Status
SELECT
    Partner,
    COUNT(*) AS Total_Customers
FROM customer_churn
GROUP BY Partner;

----- Customers by Dependents
SELECT
    Dependents,
    COUNT(*) AS Total_Customers
FROM customer_churn
GROUP BY Dependents;

--- Customers by Customer Type
SELECT
    Customer_Type,
    COUNT(*) AS Total_Customers
FROM customer_churn
GROUP BY Customer_Type;

--- Customers by Tenure Group
SELECT
    Tenure_Group,
    COUNT(*) AS Total_Customers
FROM customer_churn
GROUP BY Tenure_Group;

--- Average Monthly Charges by Gender
SELECT
    Gender,
    ROUND(AVG(Monthly_Charges),2) AS Avg_Monthly_Charge
FROM customer_churn
GROUP BY Gender;

---- Average Total Charges by Gender
SELECT
    Gender,
    ROUND(AVG(Total_Charges),2) AS Avg_Total_Charges
FROM customer_churn
GROUP BY Gender;

--- Average Tenure by Gender
SELECT
    Gender,
    ROUND(AVG(Tenure),2) AS Avg_Tenure
FROM customer_churn
GROUP BY Gender;

--- Customers by Gender (Highest First)
SELECT
    Gender,
    COUNT(*) AS Total_Customers
FROM customer_churn
GROUP BY Gender
ORDER BY Total_Customers DESC;















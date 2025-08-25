-- ============================
-- Question 1
-- Show total payment amount for each payment date.
-- Display payment date and total amount, sorted by latest date (DESC).
-- Limit to the 5 most recent dates.
-- ============================

SELECT 
    paymentDate, 
    SUM(amount) AS total_amount
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;


-- ============================
-- Question 2
-- Find average credit limit of each customer.
-- Display customer name, country, and avg credit limit.
-- Group by customer name and country.
-- ============================

SELECT 
    customerName, 
    country, 
    AVG(creditLimit) AS avg_credit_limit
FROM customers
GROUP BY customerName, country;


-- ============================
-- Question 3
-- Find total price of products ordered.
-- total price = quantityOrdered * priceEach
-- Display product code, quantity ordered, and total price.
-- Group by product code and quantity ordered.
-- ============================

SELECT 
    productCode, 
    quantityOrdered, 
    (quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered, priceEach;


-- ============================
-- Question 4
-- Find highest payment amount for each check number.
-- Display check number and max payment amount.
-- ============================

SELECT 
    checkNumber, 
    MAX(amount) AS highest_amount
FROM payments
GROUP BY checkNumber;

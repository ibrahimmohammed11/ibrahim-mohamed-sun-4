-- 1- from orderdetails table. write a query to get all order numbers (without repitition) that contains any product starting with code S18 and price more than 100.
SELECT DISTINCT orderNumber  FROM `orderdetails`
WHERE productCode LIKE 'S18%'
AND priceEach > 100
ORDER BY orderNumber

-- 2- from payments table. write a query to get all payments that made in 5 / 6 (whatever month or year).
SELECT * FROM `payments`
WHERE paymentDate LIKE '%-05-%'
OR paymentDate LIKE '%-06-%'
OR paymentDate LIKE '__05%'
OR paymentDate LIKE '__06%'

-- another solution
SELECT * FROM `payments`
WHERE MONTH(paymentDate) IN ('05','06')
OR YEAR(paymentDate) IN ('2005','2006')

-- 3- from customers table. write a query to get the fifth highest credit limit of the customers who (lives in USA and their phone number contains 5555).
SELECT * FROM `customers`
WHERE country = 'USA'
AND phone LIKE "%5555%"
ORDER BY creditLimit DESC
LIMIT 1 OFFSET 4
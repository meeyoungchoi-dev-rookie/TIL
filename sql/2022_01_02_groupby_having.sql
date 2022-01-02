SELECT supplierID , AVG(price)
FROM products
GROUP BY supplierID;


SELECT supplierID , categoryid , AVG(price)
FROM products
GROUP BY supplierID , categoryid;


SELECT supplierID , categoryid , AVG(price)
FROM products
GROUP BY supplierID , categoryid;


SELECT supplierID , categoryid , AVG(price)
FROM products
GROUP BY supplierID , categoryid
ORDER BY AVG(price);


SELECT supplierID , categoryid , AVG(price)
FROM products
GROUP BY supplierID , categoryid
HAVING AVG(price) >= 100
ORDER BY AVG(price);
-- Vadym Kharchenko
-- CMSC 320
-- Prof. Adams
-- September 9, 2024

-- ### Part 3 - SQL Queries
SELECT Name, CustomerID, Address
FROM Customer
ORDER BY CustomerID;

SELECT CopyID, RentalDate
FROM Rental
WHERE RentalDate >= SYSDATE - 30
ORDER BY RentalDate;

SELECT SellerID, CompanyName, Country
FROM Seller
ORDER BY CompanyName;

UPDATE Customer
SET Name = 'Jane Doe'
WHERE CustomerID = 2;

DELETE FROM Customer
WHERE CustomerID = 3;
-- ### End of Part 3
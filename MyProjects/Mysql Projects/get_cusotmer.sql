SELECT 
    c.Name, COUNT(r.RentalID) AS TotalRentals
FROM 
    Customers c
JOIN 
    Rentals r ON c.CustomerID = r.CustomerID
GROUP BY 
    c.Name
HAVING 
    TotalRentals > 1
ORDER BY 
    TotalRentals DESC;

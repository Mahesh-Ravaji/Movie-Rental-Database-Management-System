SELECT 
    m.Title, COUNT(r.RentalID) AS TotalRentals
FROM 
    Movies m
JOIN 
    Rentals r ON m.MovieID = r.MovieID
GROUP BY 
    m.Title
ORDER BY 
    TotalRentals DESC
LIMIT 5;

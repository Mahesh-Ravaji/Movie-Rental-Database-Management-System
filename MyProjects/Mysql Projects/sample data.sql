-- Insert Sample Data into Customers
INSERT INTO Customers (Name, Contact, Email, DateJoined)
VALUES 
('John Doe', '123-456-7890', 'john@example.com', '2024-01-15'),
('Jane Smith', '234-567-8901', 'jane@example.com', '2024-02-10'),
('Alice Johnson', '345-678-9012', 'alice@example.com', '2024-03-05');

-- Insert Sample Data into Movies
INSERT INTO Movies (Title, Genre, ReleaseYear, Rating)
VALUES 
('The Matrix', 'Sci-Fi', 1999, 8.7),
('Inception', 'Sci-Fi', 2010, 8.8),
('The Godfather', 'Crime', 1972, 9.2),
('Toy Story', 'Animation', 1995, 8.3);

-- Insert Sample Data into Rentals
INSERT INTO Rentals (CustomerID, MovieID, RentalDate, ReturnDate)
VALUES 
(1, 1, '2024-08-01', '2024-08-05'),
(2, 2, '2024-08-03', '2024-08-07'),
(1, 3, '2024-08-10', '2024-08-15');

-- Insert Sample Data into Payments
INSERT INTO Payments (RentalID, Amount, PaymentDate)
VALUES 
(1, 5.99, '2024-08-01'),
(2, 4.99, '2024-08-03'),
(3, 7.99, '2024-08-10');

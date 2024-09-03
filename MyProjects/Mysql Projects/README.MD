
# Movie Rental Database Management System

## Project Overview

The Movie Rental Database Management System is an intermediate-level SQL project that showcases the creation, management, and querying of a relational database for a movie rental service. The project includes database design, complex queries, and data manipulation techniques, making it an excellent demonstration of SQL skills.

## Table of Contents

- [Project Overview](#project-overview)
- [Database Schema](#database-schema)
- [Sample Data](#sample-data)
- [Complex Queries](#complex-queries)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- [License](#license)

## Database Schema

The database consists of the following tables:

1. **Customers**: Stores customer information.
   - `CustomerID`: Primary Key
   - `Name`
   - `Contact`
   - `Email`
   - `DateJoined`
   
2. **Movies**: Stores movie details.
   - `MovieID`: Primary Key
   - `Title`
   - `Genre`
   - `ReleaseYear`
   - `Rating`
   
3. **Rentals**: Records rental transactions.
   - `RentalID`: Primary Key
   - `CustomerID`: Foreign Key (References `Customers`)
   - `MovieID`: Foreign Key (References `Movies`)
   - `RentalDate`
   - `ReturnDate`
   
4. **Payments**: Tracks payment details for rentals.
   - `PaymentID`: Primary Key
   - `RentalID`: Foreign Key (References `Rentals`)
   - `Amount`
   - `PaymentDate`

## Sample Data

The project includes sample data for each table to simulate a functioning movie rental system. The data represents customers, movies, rental transactions, and payments.

## Complex Queries

The project includes a set of complex SQL queries that perform the following tasks:

1. **Top-Rented Movies**: Retrieves the top 5 movies with the highest rental counts.
   ```sql
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
   ```

2. **Active Customers**: Lists customers with more than one rental.
   ```sql
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
   ```

3. **Total Revenue**: Calculates the total revenue generated from rentals.
   ```sql
   SELECT 
       SUM(Amount) AS TotalRevenue
   FROM 
       Payments;
   ```

## Getting Started

To get started with the project, follow these steps:

1. **Clone the Repository**: 
   ```bash
   git clone https://github.com/yourusername/movie-rental-db.git
   ```
2. **Set Up the Database**:
   - Run the `create_tables.sql` script to create the database schema.
   - Run the `insert_data.sql` script to populate the database with sample data.
3. **Execute Queries**:
   - Run the `queries.sql` script to execute the complex queries.

## Project Structure

```
movie-rental-db/
│
├── create_tables.sql    # Script to create database tables
├── insert_data.sql      # Script to insert sample data
├── queries.sql          # Script with complex SQL queries
└── README.md            # Project documentation
```

## Contributing

Contributions are welcome! If you have suggestions or improvements, feel free to create a pull request or open an issue.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---


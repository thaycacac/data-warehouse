/*
Author: Thaycacac
*/

SELECT move_id, SUM(quantity) AS 'Total_Quantity', SUM(price) as 'Total_Price' FROM RentalMovies
GROUP BY move_id
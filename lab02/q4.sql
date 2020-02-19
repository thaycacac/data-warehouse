/*
Create a stored procedure with rental number as an input parameter allowing 
to display the details of a rental including rented movie title, rental date,
return date, quantity, unit price and the amount. Note that a customer 
could borrow some movies at a time.
*/

CREATE PROCEDURE Q4 @rentalId int
AS
SELECT Movies.title as 'rented_movie_title', Rental.rental_date,
	Receipt.return_date, RentalMovies.quantity, RentalMovies.price,
	ReceiptDetail.amount
FROM Rental
INNER JOIN RentalMovies
ON Rental.id = RentalMovies.rental_id
INNER JOIN Movies
ON RentalMovies.move_id = Movies.id
INNER JOIN ReceiptDetail
ON ReceiptDetail.rental_id = Rental.id
INNER JOIN Receipt
ON ReceiptDetail.receipt_id = Receipt.id
WHERE Rental.id = @rentalId 
GO

EXEC Q4 @rentalId = 2
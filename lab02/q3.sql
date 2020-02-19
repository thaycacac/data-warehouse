/*
Create a stored procedure with corresponding input parameters allowing to display the details of
a receipt including: the rental number, the rental date, the return date, the rented movie title,
the quantity, the unit price and the amount. Note that each time a customer returns some movies at
the same time, he will receive only one receipt for all movies that he returned.
*/

CREATE PROCEDURE Q3 @receiptId int, @rentalId int, @movieId int
AS
SELECT Rental.id as 'rental_number', Rental.rental_date, Receipt.return_date,
	Movies.title as 'rentaled_movie_title', (ReceiptDetail.amount / Movies.bill) as 'quantity',
	Movies.bill as 'unit_price', ReceiptDetail.amount FROM ReceiptDetail
INNER JOIN Receipt
ON ReceiptDetail.receipt_id = Receipt.id
INNER JOIN Movies
ON ReceiptDetail.move_id = Movies.id
INNER JOIN Rental
ON ReceiptDetail.rental_id = Rental.id
WHERE ReceiptDetail.receipt_id = @receiptId
AND ReceiptDetail.rental_id = @rentalId
AND ReceiptDetail.move_id = @movieId
GO

EXEC Q3 @receiptId = 1, @rentalId = 1, @movieId = 1
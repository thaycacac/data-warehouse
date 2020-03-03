/*
Author: Thaycacac
*/

CREATE TRIGGER Q5 ON RentalMovies AFTER INSERT AS
BEGIN
	UPDATE MachineMove
	SET quantity = MachineMove.quantity - (
		SELECT quantity
		FROM inserted
	)
	WHERE MachineMove.move_id = (
		SELECT inserted.move_id
		FROM inserted
	) AND
	MachineMove.machine_id = (
		SELECT Machines.id
		FROM Machines
		INNER JOIN Rental
		ON Machines.id = Rental.machine_id
		INNER JOIN RentalMovies
		ON Rental.id = RentalMovies.rental_id
	)
END
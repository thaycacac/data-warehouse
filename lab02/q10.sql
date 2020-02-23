/*
Author: Thaycacac
*/

WITH temp AS
(SELECT Rental.machine_id, SUM(RentalMovies.move_id) AS 'Total_Film' FROM Rental
INNER JOIN RentalMovies
ON Rental.id = RentalMovies.rental_id
INNER JOIN Movies
ON RentalMovies.move_id = Movies.id
GROUP BY Rental.machine_id
)
SELECT Machines.id, Machines.[address] + ', ' + Machines.city + ', '+ Machines.[state], temp.Total_Film FROM temp
INNER JOIN Machines
ON temp.machine_id = Machines.id
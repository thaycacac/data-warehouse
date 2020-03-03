### Question:

1.	Create a database named OP_Movie and tables corresponding to the schema of the operational database that you’ve given in Lab 1 by using CREATE DATABASE and CREATE TABLE commands in SQL Server so that:
- All ID has data type INT and are auto incremented.
- Using NVARCHAR for string attributes, Date for date attributes.
Note that you should add the Amount attribute into the corresponding table for storing the amount of each returned movie.
2.	Insert by using INSERT INTO at least 5 rows in each table.
3.	Create a stored procedure with corresponding input parameters allowing to display the details of a receipt including: the rental number, the rental date, the return date, the rented movie title, the quantity, the unit price and the amount. Note that each time a customer returns some movies at the same time, he will receive only one receipt for all movies that he returned.
4.	Create a stored procedure with rental number as an input parameter allowing to display the details of a rental including rented movie title, rental date, return date, quantity, unit price and the amount. Note that a customer could borrow some movies at a time.
5.	Create a trigger for automatically update the remaining quantity of a movie in a machine when inserting this movie into a rental, prevent the update if the remaining quantity is not enough for rent.
6.	Create a trigger for automatically calculate the Amount when returning a movie to a machine. The trigger update also the remaining quantity of the corresponding movie in the corresponding machine.
7.	Create a function for calculating the total amount of a movie rented in a period where MovieID, fromTime and toTime are three input parameters of the function.
8.	Assume that the manager wants to analyze the total quantity of each category by customer gender. Write a query which allows to analyze this information.
9.	Assume that the manager wants to analyze the total amount of each movie by rental year. Write a query which allows to analyze this information.
10.	Assume that the manager wants to analyze the total quantity of rented movies in each machine. Write a query which allows to analyze this information.
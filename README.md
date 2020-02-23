# Operational Database

## Context

A movie rental company has stores in USA and abroad. To obtain a card allowing to rent movies, customers must fill out a form mentioning their first name, last name, date of birth, phone number and gender (male/ female). 
When a customer wants to rent a film, he can go to an automatic machine, select the film(s) he wants to rent (each film has a title, a category, a price per day and the number of films available in the machine). In the case that he has rented several films, the customer can bring back his films at different dates. However, all movies rented at the same time will have the same rental number in the system. Note that a movie could be available in different automatic machines. A customer rents a film from a machine could bring it back to another machine. For simplifying, if a customer rent n copies of a same movie at a time, he/she could return all n copies of this movie at the same time.
The rental price of a film is given per day, it means that if for example a customer rents a film on November 27, 2012 and brings it back on the same day, he must pay the amount of the rental for a day. If he brings back on 28 November (whatever the time), he must pay twice the amount of the rental per day, etc. This is not very realistic, but it saves us from having to consider the hours of rental and return, which would complicate the task of this first lab.
The customer pays for his rentals when he brings back the films. For example, A customer borrows two movies “Gone with the wind” and “The imitation game” on January 10. If he brings back the movie “Gone with the wind” on January 11 and the film “The imitation game” on January 12, he must pay twice the unit price of the movie “Gone with the wind” on January 11 and three times the unit price of the movie “The imitation game” on January 12. Note that the unit price of the product could be changed by time, but the price that customer must pay when he/she returns the movie is the price on the rental date.
Now, let’s look at the operational database that is used to bill the customer. The purpose of the operational database is therefore to calculate, for each rented film, the amount that each customer should pay. As soon as a customer brings back a film and pays for its rental, the machine will print a receipt mentioning the rental number, the rental date, the return date, the rented movie, the quantity, the unit price and the amount.
Question :

### Lab1: give the entity relationship diagram of the operational database of the system.

### Lab2: 

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


Operational database for Assignments: [https://drive.google.com/drive/folders/1AirAFMRx-8odj8zcUmprr6Pp-7bmP3mz?usp=sharing](https://drive.google.com/drive/folders/1AirAFMRx-8odj8zcUmprr6Pp-7bmP3mz?usp=sharing)
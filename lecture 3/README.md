# Context

A movie rental company has stores in USA and abroad. To obtain a card allowing to rent movies, customers must fill out a form mentioning their first name, last name, date of birth, phone number and gender (male/ female). 
When a customer wants to rent a film, he can go to an automatic machine, select the film(s) he wants to rent (each film has a title, a category, a price per day and the number of films available in the machine). In the case that he has rented several films, the customer can bring back his films at different dates. However, all movies rented at the same time will have the same rental number in the system. Note that a movie could be available in different automatic machines. A customer rents a film from a machine could bring it back to another machine. For simplifying, if a customer rent n copies of a same movie at a time, he/she could return all n copies of this movie at the same time.
The rental price of a film is given per day, it means that if for example a customer rents a film on November 27, 2012 and brings it back on the same day, he must pay the amount of the rental for a day. If he brings back on 28 November (whatever the time), he must pay twice the amount of the rental per day, etc. This is not very realistic, but it saves us from having to consider the hours of rental and return, which would complicate the task of this first lab.
The customer pays for his rentals when he brings back the films. For example, A customer borrows two movies “Gone with the wind” and “The imitation game” on January 10. If he brings back the movie “Gone with the wind” on January 11 and the film “The imitation game” on January 12, he must pay twice the unit price of the movie “Gone with the wind” on January 11 and three times the unit price of the movie “The imitation game” on January 12. Note that the unit price of the product could be changed by time, but the price that customer must pay when he/she returns the movie is the price on the rental date.
Now, let’s look at the operational database that is used to bill the customer. The purpose of the operational database is therefore to calculate, for each rented film, the amount that each customer should pay. As soon as a customer brings back a film and pays for its rental, the machine will print a receipt mentioning the rental number, the rental date, the return date, the rented movie, the quantity, the unit price and the amount.

Operational database for Assignments: [https://drive.google.com/drive/folders/1AirAFMRx-8odj8zcUmprr6Pp-7bmP3mz?usp=sharing](https://drive.google.com/drive/folders/1AirAFMRx-8odj8zcUmprr6Pp-7bmP3mz?usp=sharing)

### Business requirements:

Decision makers of the company ask you to build a decision support systems allowing them to:
-	Analyze the most frequently rented movies, according to their title and category.
-	Analyze customer tastes according to gender and age (in order to send corresponding mail with personalized offers).
-	Analyze rentals corresponding to time criteria (in order to answer questions such as : do customers rent more movies at weekend or during weekdays, what is the average duration of rents, etc.)
-	Analyze movies that are often rented together, to make suggestion of corresponding movies, as does the Amazon site for example.
-	Analyze the effectiveness of automatic machines based on their localization (district, city, state, country)

### Questions

1.	Give the information package for the system based on the user requirements.
2.	What are the hierarchies / categories in this information package ?
3.	What is the level of details representing in this information package ?

use enterprisejavadevelopment302;

create table customer(
	id_customer int auto_increment,
	customer_name varchar(255),
	customer_status varchar(255),
	total_customer_mileage int,
	PRIMARY KEY (id_customer)
);

create table aircraft(
id_aircraft int auto_increment,
aircraft_name varchar(255),
aircraft_seats int,
PRIMARY KEY (id_aircraft)
);

create table flight(
flight_number varchar(255),
flight_mileage int,
id_aircraft int,
PRIMARY KEY (flight_number),
FOREIGN KEY (id_aircraft) references aircraft(id_aircraft)
);

-- 3. In the Airline database write the SQL script to get the total number of flights in the database.
select count(*) from flight;

-- 4. In the Airline database write the SQL script to get the average flight distance.
select avg(flight_mileage) from flight;

-- 5. In the Airline database write the SQL script to get the average number of seats.
select avg(aircraft_seats) from aircraft;

-- 6. In the Airline database write the SQL script to get the average number of miles flown by customers grouped by status.
select avg(total_customer_mileage) from customer group by customer_status;

-- 7.  In the Airline database write the SQL script to get the maximum number of miles flown by customers grouped by status.
select max(total_customer_mileage) from customer group by customer_status;

-- 8. In the Airline database write the SQL script to get the total number of aircraft with a name containing Boeing.
select count(*) from aircraft where aircraft_name like '%Boeing%';

-- 9. In the Airline database write the SQL script to find all flights with a distance between 300 and 2000 miles.
select * from flight where flight_mileage > 300 AND flight_mileage < 2000;

-- 10. In the Airline database write the SQL script to find the average flight distance booked grouped by customer status (this should require a join).

-- 11. In the Airline database write the SQL script to find the most often booked aircraft by gold status members (this should require a join).

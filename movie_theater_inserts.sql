

insert into customers (
	first_name,
	last_name,
	phone_number,
	address,
	email_address,
	payment_info
) values (
	'Justin',
	'Arshravan',
	'516-555-1234',
	'123 Holla Back Avenue',
	'Jarshravan@ilovetocode.com',
	'1234 5561 8091 2351 08/24 510'
);


select *
from customers;


insert into movies (
	screen_duration,
	genre,
	acters,
	director,
	movie_studio,
	movie_name
) values (
	'2 hours',
	'Action',
	'Tom Cruise',
	'Steven Spielberg',
	'Paramount Pictures',
	'Top Gun 3'
);


select *
from movies;


insert into receipt (
	number_of_tickets,
	total_price,
	method_of_payment,
	customer_id
) values (
	5,
	50.00,
	'Card',
	1
);


select *
from receipt 


insert into concessions (
	concession_name,
	category,
	consession_quantity,
	price,
	order_id
) values (
	'Popcorn',
	'Snack',
	3,
	6.00,
	1
);


select *
from concessions 


insert into tickets (
	time,
	ticket_price,
	theater_number,
	order_id,
	movie_id
) values (
	'2024-01-20 11:30:25',
	10.00,
	7,
	1,
	1
);


select *
from tickets 


insert into showtimes (
	day_and_time,
	theater_number,
	theater_location,
	theater_name,
	movie_id
) values (
	'2024-01-20 11:45:00',
	7,
	'123 Movie Plaza Ave',
	'AMC Cinema',
	1
);


select *
from showtimes 




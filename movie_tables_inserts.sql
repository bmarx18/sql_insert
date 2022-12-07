INSERT INTO Concessions(
	order_id,
	item_name, 
	item_quantity,
	item_cost,
	discount_code
)VALUES(
	1,
	'popcorn value meal',
	2,
	15.99,
	'happy'
);

INSERT INTO Customers(
	customer_id,
	first_name,
	last_name,
	email,
	address_,
	payment_info
)VALUES(
	101,
	'Teddie',
	'Marx',
	'tm@noreply.com',
	'123 happy lane',
	'amex'
);

INSERT INTO Invoice(
	invoice_id,
	invoice_date,
	total
)VALUES(
	2,
	'22 Feb 2022',
	'112'
);

INSERT INTO Movies(
	movie_id,
	movie_name,
	star_rating,
	parential_guidance,
	language_,
	sub_titles
)VALUES(
	12,
	'Euro Vision',
	'3',
	'PG-13',
	'English',
	'Spanish'
);

INSERT INTO tickets(
	ticket_id,
	show_time,
	theater_number,
	movie_name
)VALUES(
	342,
	2,
	5,
	'Euro Vision'
);


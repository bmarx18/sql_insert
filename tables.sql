CREATE TABLE "Customers" (
  "customer_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "email" VARCHAR(75),
  "address" VARCHAR(50),
  "payment_info" VARCHAR(30)
);

CREATE TABLE "Movies" (
  "movie_id" SERIAL PRIMARY KEY,
  "movie_name" VARCHAR(150),
  "star_rating" INTEGER,
  "parential_guidance" VARCHAR(5),
  "language" VARCHAR(30),
  "sub_titles" VARCHAR(30)
);

CREATE TABLE "Tickets" (
  "ticket_id" SERIAL PRIMARY KEY,
  "show_time" INTEGER,
  "theater_number" INTEGER,
  "movie_name" VARCHAR(150),
  "movie_id" INTEGER,
	FOREIGN KEY("movie_id") references "Movies"("movie_id")
);

CREATE TABLE "Concessions" (
  "order_id" SERIAL PRIMARY KEY,
  "item_name" VARCHAR(75),
  "item_quantity" INTEGER,
  "item_cost" NUMERIC(4,2),
  "discount_code" VARCHAR(75)
);

CREATE TABLE "Invoice" (
  "invoice_id" SERIAL PRIMARY KEY,
  "invoice_date" DATE,
  "order_id" INTEGER,
  "ticket_id" INTEGER,
  "customer_id" INTEGER,
  "total" NUMERIC(5,2),
  "payment_method" VARCHAR(25),
  FOREIGN KEY ("order_id") references "Concessions"("order_id"),
	FOREIGN KEY ("ticket_id") references "Tickets"("ticket_id"),
	FOREIGN KEY ("customer_id") references "Customers"("customer_id")
);

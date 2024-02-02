CREATE TABLE Customers (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(20),
  last_name VARCHAR(30),
  phone_number VARCHAR(20),
  address VARCHAR(50),
  email_address VARCHAR(30),
  payment_info VARCHAR(30)
  
);

CREATE TABLE Receipt (
  order_id SERIAL PRIMARY KEY,
  number_of_tickets INTEGER,
  total_price NUMERIC(6,2),
  method_of_payment VARCHAR(20),
  order_date DATE default current_date,
  customer_id INTEGER,
  FOREIGN KEY(customer_id) REFERENCES Customers(customer_id)
  
);

CREATE TABLE Concessions (
  concession_id SERIAL PRIMARY KEY,
  concession_name VARCHAR(30),
  category VARCHAR(20),
  consession_quantity INTEGER,
  price NUMERIC(6,2),
  order_id INTEGER,
  FOREIGN KEY(order_id) REFERENCES Receipt(order_id)
      
);

CREATE TABLE Movies (
  movie_id SERIAL PRIMARY KEY,
  screen_duration VARCHAR(10),
  genre VARCHAR(20),
  acters VARCHAR(50),
  director VARCHAR(50),
  movie_studio VARCHAR(30),
  movie_name VARCHAR(50)
  
);

CREATE TABLE Tickets (
  ticket_number SERIAL PRIMARY KEY,
  time TIMESTAMP,
  ticket_price NUMERIC(6,2),
  theater_number INTEGER,
  order_id INTEGER,
  movie_id INTEGER,
  FOREIGN KEY(order_id) REFERENCES Receipt(order_id),
  FOREIGN KEY(movie_id) REFERENCES Movies(movie_id)
      
);

CREATE TABLE Showtimes (
  showtime_id SERIAL PRIMARY KEY,
  day_and_time TIMESTAMP,
  theater_number INTEGER,
  theater_location VARCHAR(50),
  theater_name VARCHAR(30),
  movie_id INTEGER,
  FOREIGN KEY(movie_id) REFERENCES Movies(movie_id)
      
);


CREATE DATABASE countries_db;
\c countries_db

CREATE TABLE countries (
    id SERIAL PRIMARY KEY,
    name TEXT,
    image_url TEXT,
    capital TEXT,
    area INTEGER,
    population INTEGER
);

INSERT INTO countries(name, image_url, capital, area, population)
VALUES('Sri Lanka', 'https://images.unsplash.com/photo-1589373797397-d19670f47549?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80', 'Sri Jayawardenepura Kotte', 65610, 21834807);

INSERT INTO countries(name, image_url, capital, area, population)
VALUES('Australia', 'https://images.unsplash.com/photo-1529108190281-9a4f620bc2d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1139&q=80', 'Canberra', 7692024, 25766605);

-- Countries to Add
-- Name: South Korea, Image URL: https://images.unsplash.com/photo-1546672136-49179bf19b4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80, Capital: Seoul, Area: 100339, Population: 51815810
-- Name: Canada, Image URL: https://images.unsplash.com/photo-1503614472-8c93d56e92ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1111&q=80, Capital: Ottawa, Area: 9984670, Population: 38654738

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

ALTER TABLE users ADD COLUMN password_digest TEXT;

-- This is SQL code I am considering including. I wonder if it could clash with the previous SQL statement.  
ALTER TABLE users 
ADD CONSTRAINT unique_users
UNIQUE (email);

-- I won't create the likes table. If I decide to use it, I can look schema.sql from food truck. 
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
VALUES('Sri Lanka', 'https://images.unsplash.com/photo-1589373797397-d19670f47549?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80', 'Sri Jayawardenepura Kotte', 65 610, 21 834 807)

INSERT INTO countries(name, image_url, capital, area, population)
VALUES('Australia', 'https://images.unsplash.com/photo-1529108190281-9a4f620bc2d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1139&q=80', 'Canberra', 7 692 024, 25 766 605)

-- Add data for more countries to add in this comment

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

ALTER TABLE users ADD COLUMN password_digest TEXT;

-- I won't create the likes table. If I decide to use it, I can look schema.sql from food truck. 

CREATE DATABASE alpha_bustr;
\c alpha_bustr
CREATE TABLE account (id SERIAL PRIMARY KEY, name VARCHAR(255), email VARCHAR(255), password_hash VARCHAR(255), age INTEGER);
CREATE TABLE animal (id SERIAL PRIMARY KEY, animal_photo TEXT, safe_photo BOOLEAN);
CREATE TABLE bustr_strip (id SERIAL PRIMARY KEY, user_id INTEGER REFERENCES account (id), picture_id INTEGER REFERENCES animal (id), pic_content TEXT);

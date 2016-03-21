-- 1. Create Database
-- 2. Connect to database
-- 3. CREATE TABLES at least 3 tables with 2 -3 columns each
-- 4. There must be an id SERIAL PRIMARY KEY
-- 5. When done - take these, run in psql
-- 6. connect to each database wand list all the tables using \dt


CREATE DATABASE alpha_kreatr;
\c alpha_kreatr
CREATE TABLE account (id SERIAL PRIMARY KEY, name VARCHAR(255), email VARCHAR(255), password_hash VARCHAR(255), age INTEGER);
CREATE TABLE picture (id SERIAL PRIMARY KEY, picture TEXT, safe_photo BOOLEAN);
CREATE TABLE comic_strip (id SERIAL PRIMARY KEY, user_id INTEGER REFERENCES account (id), picture_id INTEGER REFERENCES picture (id), pic_content TEXT);

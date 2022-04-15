-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;
DROP TABLE IF EXISTS salesperson;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activities;
-- CREATE TABLES
CREATE TABLE salesperson(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

CREATE TABLE companies(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE contacts(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone_number INTEGER,
    company_id INTEGER,
    title TEXT
);

CREATE TABLE activities(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    salesperson_id INTEGER,
    contact_id INTEGER,
    type TEXT,
    date TEXT,
    description TEXT
);
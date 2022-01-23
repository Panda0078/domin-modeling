-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;
DROP TABLE IF EXISTS salespeople;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS industries;
DROP TABLE IF EXISTS industry_membership

-- CREATE TABLES
CREATE TABLE salespeople(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

CREATE TABLE contacts(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    title TEXT,
    phone_number, TEXT,
    company_id INTEGER
);
CREATE TABLE companies(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE activities(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created_at TEXT,
    notes TEXT,
    salesperson_id INTEGER,
    contacts_id INTEGER
);

CREATE TABLE industries(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name Text
);

CREATE TABLE industry_memberships(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company_id INTEGER,
    industy_id INTEGER
);
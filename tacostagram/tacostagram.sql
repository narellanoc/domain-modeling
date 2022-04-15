-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS follower;

-- CREATE TABLES
-- ENTITIES

CREATE TABLE users(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT,
    name TEXT,
    location TEXT
);
CREATE TABLE posts(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    description TEXT,
    created_at TEXT
);
--RELATIONS
CREATE TABLE likes(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    post_id INTEGER
);
CREATE TABLE comments(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    post_id INTEGER,
    body TEXT
);
CREATE TABLE follower(
     id INTEGER PRIMARY KEY AUTOINCREMENT,
     follower_user_id INTEGER,
     followed_user_id INTEGER 
);


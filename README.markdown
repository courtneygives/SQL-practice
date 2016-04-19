## Description
In this challenge, we’re going to practice performing SQL queries. This should help solidify some concepts that were covered during lecture.

## Assumptions
You are using Postico or pgAdmin
Postgres is currently running on your computer
Setup
Follow the instructions below before continuing with this challenge.

Create your database, table, and data
We are creating a database with a single table (syntax_practice) and 8 records. Please follow the instructions below to create a new database with this table and data.

## Postico instructions
--------------------
1. Open Postico.
2. Create a local connection to your Postgres server, if needed.
3. Click the button in the upper left with the elephant icon, to get back to the list of databases/
4. Create a new database using the button at the bottom.
5. Double click your new DB.
6. Double click SQL query.
7. Paste everything from [this file] (https://drive.google.com/file/d/0B10Wu-zrSBwMODZMbHZ1UUNPejQ/view?usp=sharing) into the upper textbox
8. Press cmd + option + enter or select Connection -> Execute All Queries.
9. Press cmr + R or select Connection -> Reload.

## GitHub repo
- Create a GitHub repo named “prime-solo-sql”.
- Create a file called “solution.sql”. You will store your responses to the exercise questions here. **NOTE: This is merely a text file with a .sql extension.**

## Exercise
- For each of the following questions, write a comment that specifies which question you are answering. (SQL comments are two dashes, followed by text.)
- Write the SQL query that answers the question, below that comment.

Example question and answer

``` SQL
-- 0. Get all the users
SELECT * FROM syntax_practice;
```

# Tasks
1. Get all users from Chicago.
2. Get all users with usernames that contain the letter a.
3. The bank is giving a new customer bonus! Update all records with an account balance of 0.00 and a transactions_attempted of 0. Give them a new account balance of 10.00.
4. Select all users that have attempted 9 or more transactions.
5. Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance. NOTE: Research LIMIT
6. Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.
7. Get all users with account balances that are more than $100.
8. Add a new record.
9. The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.

-- Get all users from Chicago.
SELECT username FROM syntax_practice
WHERE city='chicago';
=> shawn, anthony, davey

-- Get all users with usernames that contain the letter a.
SELECT * FROM syntax_practice
WHERE username LIKE '%a%';
=> shawn, larry, dallas, anthony, travis, davey, ora

-- The bank is giving a new customer bonus! Update all records with an account balance of 0.00 and a transactions_attempted of 0. Give them a new account balance of 10.00.
UPDATE syntax_practice
SET account_balance='10.00'
WHERE account_balance='0'
=> UPDATE 1

-- Select all users that have attempted 9 or more transactions.
SELECT username FROM syntax_practice
WHERE transactions_attempted>='9';
=> shawn, cherise, dallas, travis, davey, ora

-- Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance. NOTE: Research LIMIT
SELECT username, account_balance FROM syntax_practice
ORDER BY account_balance DESC
LIMIT 3
=> travis, cherise, shawn

-- Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.
SELECT username, account_balance FROM syntax_practice
ORDER BY account_balance ASC
LIMIT 3
=> dallas, ora, anthony


-- Get all users with account balances that are more than $100.
SELECT username FROM syntax_practice
WHERE account_balance>'100'
=> shawn, cherise, travis

-- Add a new record.
INSERT INTO syntax_practice (username, city, transactions_completed, transactions_attempted, account_balance, user_id)
VALUES ('newbie', 'minneapolis', '1', '1', '5500', '9');
=> INSERT 0 1

-- The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
DELETE FROM syntax_practice
WHERE city='miami' OR city='phoenix' AND transactions_completed<'5';
=> DELETE 1

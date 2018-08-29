# SQL LOGIC FOR:

## CREATING A TABLE AND DATABASES
First need to check for available databases by executing the following command or create one:
```
SHOW databases;
```
Thus, if none exists you can create one.
The CREATE DATABASE statement is used to create a new SQL database.
Syntax:
```
CREATE DATABASE databasename;
```

Then select a specific database or the one you created:
```
USE databasename;
```
Then you can start creating a table using the following format:
```
Create table table_name (column1 varchar(255), column2 varchar(255), column3 ...);
```
## READING VALUE

SELECT Syntax:
```
SELECT column1, column2, ...
FROM table_name;
```
Selecting all the fields available in the table:
```
SELECT * FROM table_name;
```
## INCREMENTING VALUE

MySQL uses the AUTO_INCREMENT keyword to perform an auto-increment feature.

## UPDATING A VALUE

The UPDATE statement is used to modify the existing records in a table.
```
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

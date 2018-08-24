# SQL Logic For:

## CREATING A TABLE
First need to display available databases by executing the following command:
```
SHOW databases;
```
Then select a specific database:
```
USE dataBase_name;
```
Then you can start creating a table using the following format:
Create table table_name (column1 varchar(255), column2 varchar(255), column3 ...);

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
## ncrement a value

MySQL uses the AUTO_INCREMENT keyword to perform an auto-increment feature.

## Updating a value/table

The UPDATE statement is used to modify the existing records in a table.
```
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

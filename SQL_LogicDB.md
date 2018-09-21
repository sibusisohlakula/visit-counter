# SQL LOGIC FOR:

## MANUALLY CREATING A TABLE AND DATABASES
First need to check for available databases by executing the following command or create one:
```
SHOW databases;
```
Thus, if none exists you can create one.
The CREATE DATABASE statement is used to create a new SQL database.
```
CREATE DATABASE SQLDB;
```

Then select a specific database or the one you created:
```
USE SQLDB;
```
Then you can start creating a table:
```
CREATE TABLE Persons (LastName varchar(255) NOT NULL, FirstName varchar(255) NOT NULL, Address varchar(255) NOT NULL, ID INT(15) NOT NULL, PRIMARY KEY (ID) );
```
I have also changed the value 'counts' to default
## READING VALUE
```
SELECT Lastname FROM Persons;
```
Reading all the fields available in the table:
```
SELECT * FROM Persons;
```
## INCREMENTING VALUE

MySQL uses the AUTO_INCREMENT keyword to perform an auto-increment feature.
```
ALTER TABLE Persons DROP ID;
ALTER TABLE Persons ADD ID INT(15) NOT NULL AUTO_INCREMENT PRIMARY KEY;
```
You may notice that I have previously created the ID column without specifying the 'auto_increment' feature, hence I dropped and recreated it again.

## UPDATING A VALUE

The UPDATE statement is used to modify the existing records in a table.
```
UPDATE SQLBD
SET counts=counts+1;
```
OR
```
UPDATE SQLBD
SET LastName = 'Hlaks', FirstName = 'Sbu'
WHERE ID = 5;
```
## COUNTER CODE FOR SQLDB.Persons Table
This code displays 'mysql version' and 'the counter number' for the Persons table. 
```
<?php
 $host = "some-mysql";
 $dbusername = "root";
 $dbpassword = "my-secret-pw";
 $db = "SQLDB";
 $conn = new mysqli("some-mysql", "root", "my-secret-pw", "SQLDB");
 //check for error in connection
 if (!$conn) {
  die ('Failed to connect to MySQL: ' . mysqli_connect_error());
 } 
 echo 'Successfully connected to the database'. PHP_EOL;
 $mysqli = new mysqli("some-mysql", "root", "my-secret-pw");
 echo "MYSQL version is: ". $mysqli->server_info . PHP_EOL;
$sql = "UPDATE Persons SET counts=counts+1";
   
   if (mysqli_query($conn, $sql)) {
      echo "Record updated successfully" . PHP_EOL;
   } else {
      echo "Error updating record: " . mysqli_error($conn);
   }
$query= mysqli_query ($conn, "SELECT * FROM Persons");
$new_count =$row['counts'];
 $result = mysqli_query($conn, "SELECT * FROM Persons");
    if ($result->num_rows > 0) {
        while($row = mysqli_fetch_assoc($result)) {
            //$counts = $row["count"];
        $new_count =$row['counts'];
        //$new_count ++;
       $update_count = mysqli_query ($conn, "UPDATE `SQLDB` . `Persons` SET `counts` = $new_count");
        }
         echo "this is counter number: ". $new_count . PHP_EOL;
    } else {
        echo "No initial value for counter set";
        $sql = "INSERT Persons SET counts=counts+1";
        if (mysqli_query($conn, $sql)) {
           echo "Initial value for count set";
        } else {
           echo "Error setting initial value for count: " . mysqli_error($conn);
        }
   }
?>
   ```
# So to test the above code, I have used the following commands:```docker run --rm   -v $(pwd)/mysqliConnection:/app   -w /app   --link some-mysql   tommylau/php php index.php ```
# And also keeping in mind that 'some-mysql' docker container name is also running: ie; ```docker run --name some-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:5```
   

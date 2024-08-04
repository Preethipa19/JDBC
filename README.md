### JDBC Connection Example
This repository contains a simple Java program that demonstrates how to establish a connection to a MySQL database using JDBC, execute a SQL query, and print the results.

## Prerequisites
JDK (Java Development Kit) installed
MySQL database installed
MySQL JDBC driver (mysql-connector-java) included in your project's classpath
Setup
MySQL Database Setup:

# Create a database named jdbc.
 Create a table named employee with the necessary columns. For example:
sql
Copy code
CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);
# Add MySQL JDBC Driver to Classpath:

Download the MySQL Connector/J from the official MySQL website.
Include the mysql-connector-java-x.x.xx-bin.jar in your project's classpath.
# Code Explanation
The jdbc.java file contains the following code:

## java
Copy code
package jdbcconnection;

import java.sql.*;

public class jdbc {

    public static void main(String args[]) throws Exception {
        // Load MySQL JDBC Driver
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        // Database connection details
        String url = "jdbc:mysql://localhost:3306/jdbc";
        String userName = "root";
        String password = "root";
        
        // SQL query to execute
        String query = "select * from employee";
        
        // Establish connection
        Connection con = DriverManager.getConnection(url, userName, password);
        
        // Create statement
        Statement st = con.createStatement();
        
        // Execute query and get result set
        ResultSet rs = st.executeQuery(query);
        
        // Print connection status
        System.out.println("Connected");
        
        // Iterate through result set and print details
        while (rs.next()) {
            System.out.println("ID is " + rs.getInt(1));
            System.out.println("Name is " + rs.getString(2));
            System.out.println("Age is " + rs.getInt(3));
        }
        
        // Close connection
        con.close();
    }
}

# Notes
Ensure that the MySQL server is running and accessible.
Update the database connection details (url, userName, password) as per your setup.
Make sure the employee table exists in the jdbc database and contains the necessary columns.

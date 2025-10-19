-- Creating Database
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- Using the Database
USE alx_book_store;

-- Creating Books Table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(50),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    price DOUBLE,
    publication_date DATE
)

-- Creating Authors Table
CREATE TABLE Authors (
    author_id PRIMARY KEY,
    author_name VARCHAR(215)
)

-- Creating Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
)

-- Creating Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE
)

-- Creating Order_Details Table
CREATE TABLE Order_Details (
    orderdetailid PRIMARY KEY,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    quantity DOUBLE
)
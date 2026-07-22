# Data-Digger

## Project Overview

The **Data Digger Database Management System** is a MySQL-based database project designed to manage customer, product, order, and sales information efficiently. The project demonstrates the implementation of relational databases using SQL and covers essential database operations such as creating databases and tables, inserting records, updating data, deleting records, retrieving information, and performing aggregate analysis.

The system consists of four related tables:

- Customers
- Orders
- Products
- OrderDetails

These tables are connected using **Primary Keys** and **Foreign Keys** to maintain data integrity and relationships.

---

# Features

## 1. Customer Management

Allows users to manage customer information.

Operations performed:

- Create Customers table
- Insert customer records
- Update customer address
- Delete customer records
- Search customers by name
- Display all customers

---

## 2. Order Management

Stores customer orders.

Operations performed:

- Create Orders table
- Insert order records
- Update total order amount
- Delete orders
- Retrieve orders of a specific customer
- Display recent orders
- Calculate highest, lowest, and average order amount

---

## 3. Product Management

Maintains product inventory.

Operations performed:

- Create Products table
- Insert product records
- Update product prices
- Delete out-of-stock products
- Display products within a price range
- Sort products by price
- Find highest and lowest product prices

---

## 4. Order Details Management

Stores products purchased in each order.

Operations performed:

- Create OrderDetails table
- Insert order detail records
- Retrieve products of a particular order
- Calculate total revenue
- Find top-selling products
- Count the number of times a product has been sold

---

# Database Tables

## Customers

Stores customer information.

Fields:

- CustomerID (Primary Key)
- Name
- Email
- Address

---

## Orders

Stores order information.

Fields:

- OrderID (Primary Key)
- CustomerID (Foreign Key)
- OrderDate
- TotalAmount

## Products

Stores product inventory.

Fields:

- ProductID (Primary Key)
- ProductName
- Price
- Stock

---

## OrderDetails

Stores products included in each order.

Fields:

- OrderDetailID (Primary Key)
- OrderID (Foreign Key)
- ProductID (Foreign Key)
- Quantity
- SubTotal

# SQL Concepts Demonstrated

## Database Operations

- CREATE DATABASE
- USE DATABASE

---

## Table Operations

- CREATE TABLE
- PRIMARY KEY
- FOREIGN KEY

---

## Data Manipulation Language (DML)

Used commands:

- INSERT
- UPDATE
- DELETE
- SELECT

---

## Data Query Operations

The project demonstrates:

- WHERE clause
- ORDER BY
- BETWEEN
- GROUP BY
- LIMIT
- Aggregate Functions

---

## Aggregate Functions Used

- SUM()
- MAX()
- MIN()
- AVG()
- COUNT()

---

## Constraints Used

- PRIMARY KEY
- FOREIGN KEY

---

# Author

**Sarthak Thaker**

# HerculesMotoCorp_in_SQL_Server
### Title: **SQL Server Database Design and Optimization**

### Description:  
- Designed and implemented a relational database for a retail and garage management system, ensuring data normalization and integrity with primary keys, foreign keys, and indexes.  
- Imported and managed large datasets, resolving foreign key conflicts and optimizing data consistency across multiple tables.  
- Developed complex SQL queries, stored procedures, triggers, and views for generating business-critical reports and automating tasks.  
- Created an ER diagram to visualize database relationships and migrated the workload to Azure SQL for scalability and cloud readiness.

##SQL Server Database Design and Implementation  

## Project Overview  
This project involves designing and implementing a relational database for **HerculesMotoCorp**, a retail and garage management system. The database is developed using **Microsoft SQL Server**, ensuring data integrity, normalization, and optimized performance for handling business operations such as orders, payments, and inventory management.  

## Features  
- **Database Design:** Created a fully normalized database schema with tables, relationships, and constraints.  
- **Data Import & Management:** Inserted large datasets using `INSERT` and `BULK INSERT`, resolving foreign key conflicts.  
- **Complex Queries & Reporting:** Developed SQL queries for customer payments, product sales, and pending orders.  
- **Stored Procedures & Triggers:** Automated tasks using stored procedures, triggers, and functions.  
- **ER Diagram Visualization:** Designed an ER diagram in SQL Server Management Studio (SSMS).  
- **Azure SQL Migration:** Migrated the database workload to Azure SQL for cloud scalability.  

## Database Schema  
The database consists of the following key tables:  
- `customers` – Stores customer details.  
- `orders` – Manages customer orders.  
- `orderdetails` – Contains details of each order.  
- `payments` – Tracks customer payments.  
- `products` – Maintains inventory and pricing information.  
- `employees` – Manages employee details and hierarchy.  
- `offices` – Stores office location details.  

## Setup Instructions  
### Prerequisites  
- Microsoft SQL Server  
- SQL Server Management Studio (SSMS)  

### Steps to Run  
1. Clone the repository:  
   ```sh
   git clone https://github.com/yourusername/sql-server-project.git
   cd sql-server-project
   ```  
2. Open SSMS and create the database:  
   ```sql
   CREATE DATABASE MotorsCertification;
   USE MotorsCertification;
   ```  
3. Execute the `schema.sql` file to create tables.  
4. Run `insert_data.sql` to populate the database.  
5. Execute `queries.sql` for reports and insights.

### Folder Structure
SQL_Project/
│
├─ schema.sql
├─ insert_data.sql
├─ queries.sql
├─ stored_procedures.sql
├─ triggers.sql
└─ README.md


## Project Files  
- `schema.sql` – SQL script to create tables and define relationships.  
- `insert_data.sql` – Contains SQL insert statements for populating tables.  
- `queries.sql` – Includes complex queries for reporting and analysis.  
- `stored_procedures.sql` – Contains stored procedures for automation.  
- `triggers.sql` – Implements database triggers for tracking changes.  
- `ER_Diagram.png` – Visual representation of database relationships.  
- `MotorsCertification.bak` – Database backup file for restoration.  



**Author:** Khushi Pawar  
**LinkedIn:** [Khushi Pawar](https://www.linkedin.com/in/khushipawar12)  
```

This README file provides a structured overview of your project, making it easy for others to understand, set up, and contribute. Let me know if you need modifications! 🚀

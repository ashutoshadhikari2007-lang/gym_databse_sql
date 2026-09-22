# 🏋️ Gym Management Database

A MySQL-based **Gym Management Database** project designed to strengthen SQL fundamentals and advanced querying skills through a practical database system.

The project manages gym members, trainers, membership plans, and payments while demonstrating SQL concepts from basic queries to advanced data analysis.

## 📌 Project Overview

This project simulates a real-world gym management system where different types of information are stored and connected through relational tables.

The database contains:

* 👤 Members
* 🧑‍🏫 Trainers
* 💳 Membership Plans
* 💰 Payments

The project focuses on database design, relationships between tables, data retrieval, analysis, and advanced SQL queries.

## 🗂️ Database Structure

### 1. `member`

Stores information about gym members.

Main fields:

* `member_id`
* `member_name`
* `gender`
* `age`
* `phone_no`
* `email_id`
* `join_date`
* `membership_status`
* `trainer_id`
* `plan_id`

### 2. `trainer`

Stores trainer information.

Main fields:

* `trainer_id`
* `trainer_name`
* `gender`
* `age`
* `specialization`
* `phone_no`
* `salary`

### 3. `membership_plans`

Stores available gym membership plans.

Main fields:

* `plan_id`
* `plan_name`
* `duration`
* `price`

### 4. `payments`

Stores payment records of members.

Main fields:

* `payment_id`
* `member_id`
* `payment_date`
* `amount`
* `payment_method`
* `payment_status`

## 🔗 Table Relationships

```text
trainer
   │
   │ trainer_id
   ↓
member
   │
   │ plan_id
   ↓
membership_plans

member
   │
   │ member_id
   ↓
payments
```

### Foreign Keys

* `member.trainer_id` → `trainer.trainer_id`
* `member.plan_id` → `membership_plans.plan_id`
* `payments.member_id` → `member.member_id`

## 🧠 SQL Concepts Practiced

### Phase 1 — SQL Fundamentals

* Database creation
* Table creation
* Primary Keys
* Foreign Keys
* INSERT
* UPDATE
* DELETE
* SELECT
* WHERE
* ORDER BY
* Filtering

### Phase 2 — Intermediate SQL

* INNER JOIN
* Multiple-table JOINs
* Aggregate Functions

  * `COUNT()`
  * `SUM()`
  * `AVG()`
  * `MAX()`
  * `MIN()`
* `GROUP BY`
* `HAVING`
* `CASE`
* Date Functions
* Combined Queries

### Phase 3 — Advanced SQL

* Subqueries
* Correlated Subqueries
* CTEs
* Window Functions
* `RANK()`
* `SUM() OVER()`
* `EXISTS`
* `UNION`
* Views
* Complex Queries

## 📊 Example Analysis

The project includes queries for tasks such as:

* Finding plans above the average membership price
* Finding trainers based on salary comparisons
* Finding members using specific membership plans
* Finding members older than the average age
* Comparing members with the average age of their gender
* Ranking trainers according to salary
* Calculating running payment totals
* Finding members who have payment records
* Creating reusable views for active members
* Combining multiple tables to generate meaningful reports

## 🛠️ Technologies Used

* **MySQL**
* **MySQL Workbench**
* **SQL**

## 🎯 Learning Objectives

The main objectives of this project were to:

* Strengthen SQL fundamentals
* Understand relational database design
* Practice primary and foreign key relationships
* Learn how multiple tables work together
* Improve query-writing skills
* Understand aggregate functions and grouping
* Practice subqueries and correlated subqueries
* Learn CTEs and window functions
* Build reusable SQL views
* Solve practical database analysis problems

## 🚀 Future Improvements

Possible future improvements include:

* Connecting the database with Python
* Building a Python-based gym management application
* Adding a GUI
* Performing data analysis using Pandas
* Creating visualizations using Matplotlib
* Adding authentication and user roles
* Generating automated reports

## 👨‍💻 Author

**Ashutosh Adhikari**

BCA Student | Learning Python, SQL & AI/ML

GitHub: `ashutoshadhikari2007-lang`

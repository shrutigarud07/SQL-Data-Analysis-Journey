# 🍽️ Food Waste Management System (SQL Project)

## 📌 Description

This project is a **Food Waste Management System** designed to reduce food wastage by connecting restaurants with NGOs. Restaurants can donate surplus food, and NGOs can request and receive food based on availability.

The system manages donations, requests, and deliveries efficiently using SQL concepts like tables, joins, triggers, and views.

---

## 🎯 Objectives

* Reduce food wastage
* Connect restaurants with NGOs
* Track food donations and requests
* Ensure food is delivered before expiry

---

## 🛠️ Technologies Used

* MySQL
* MySQL Workbench

---

## 🗄️ Database Schema

### Tables:

* **Restaurants** – Stores restaurant details
* **NGOs** – Stores NGO details
* **Donations** – Tracks food donated by restaurants
* **Requests** – Stores food requests from NGOs
* **Deliveries** – Tracks delivery of food

---

## ⚙️ Features

### ✅ 1. Donation Management

* Restaurants can donate food with quantity and expiry time
* Food status is tracked (available / expired)

### ✅ 2. NGO Requests

* NGOs can request specific food items
* Requests are matched with available donations

### ✅ 3. Delivery Tracking

* Tracks which NGO receives which donation

### ✅ 4. Automatic Expiry Handling (Trigger)

* A trigger automatically updates food status to **'expired'** if expiry time has passed

### ✅ 5. Data Summary (View)

* A view (`donation_summary`) shows total food available by type

---

## 🔍 Important SQL Concepts Used

* CREATE DATABASE & TABLE
* PRIMARY KEY & FOREIGN KEY
* INSERT Queries
* JOINS (INNER JOIN)
* GROUP BY & Aggregation
* TRIGGER
* VIEW

---

## 📊 Sample Queries

### 1. Available Donations

```sql
SELECT * FROM Donations
WHERE expiry_time > NOW() AND status = 'available';
```

### 2. Total Food Donated by Each Restaurant

```sql
SELECT r.name, SUM(d.quantity) AS total_food
FROM Restaurants r
JOIN Donations d ON r.restaurant_id = d.restaurant_id
GROUP BY r.name;
```

### 3. NGO Requests Matching Available Donations

```sql
SELECT n.name AS ngo, d.food_type, d.quantity
FROM NGOs n
JOIN Requests r ON n.ngo_id = r.ngo_id
JOIN Donations d ON r.food_type = d.food_type
WHERE d.status = 'available';
```

### 4. Expiring Soon Food (Within 2 Hours)

```sql
SELECT * FROM Donations
WHERE expiry_time < NOW() + INTERVAL 2 HOUR;
```

### 5. Total Food by Type

```sql
SELECT food_type, SUM(quantity) AS total
FROM Donations
GROUP BY food_type
ORDER BY total DESC;
```

---

## 🚀 How to Run This Project

1. Open MySQL Workbench
2. Copy the SQL script (`Food-Waste-Management.sql`)
3. Execute the script
4. Run the SELECT queries to view outputs

---

## 📁 Files Included

* `Food-Waste-Management.sql` → Complete database and queries
* `README.md` → Project documentation

---

## 💡 Future Improvements

* Add user authentication
* Build frontend (Web/App)
* Add real-time notifications
* Optimize matching algorithm

---

## 🙌 Conclusion

This project demonstrates how SQL can be used to solve real-world problems like food waste management by efficiently handling data and relationships.

---

CREATE DATABASE food_waste_db;
USE food_waste_db;

CREATE TABLE Restaurants (
    restaurant_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);

CREATE TABLE NGOs (
    ngo_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);

CREATE TABLE Donations (
    donation_id INT AUTO_INCREMENT PRIMARY KEY,
    restaurant_id INT,
    food_type VARCHAR(100),
    quantity INT,
    expiry_time DATETIME,
    status VARCHAR(50) DEFAULT 'available',
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id)
);

CREATE TABLE Requests (
    request_id INT AUTO_INCREMENT PRIMARY KEY,
    ngo_id INT,
    food_type VARCHAR(100),
    quantity INT,
    request_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ngo_id) REFERENCES NGOs(ngo_id)
);

CREATE TABLE Deliveries (
    delivery_id INT AUTO_INCREMENT PRIMARY KEY,
    donation_id INT,
    ngo_id INT,
    delivery_time DATETIME,
    status VARCHAR(50),
    FOREIGN KEY (donation_id) REFERENCES Donations(donation_id),
    FOREIGN KEY (ngo_id) REFERENCES NGOs(ngo_id)
);

INSERT INTO Restaurants (name, location) VALUES
('Dominos', 'Pune'),
('KFC', 'Mumbai'),
('Burger King', 'Delhi');

INSERT INTO NGOs (name, location) VALUES
('Helping Hands', 'Pune'),
('Food For All', 'Mumbai'),
('Care India', 'Delhi');

INSERT INTO Donations (restaurant_id, food_type, quantity, expiry_time) VALUES
(1, 'Pizza', 10, NOW() + INTERVAL 3 HOUR),
(2, 'Chicken', 15, NOW() + INTERVAL 1 HOUR),
(3, 'Burger', 20, NOW() + INTERVAL 5 HOUR);

INSERT INTO Requests (ngo_id, food_type, quantity) VALUES
(1, 'Pizza', 5),
(2, 'Chicken', 10),
(3, 'Burger', 15);

DELIMITER $$

CREATE TRIGGER update_status_before_update
BEFORE UPDATE ON Donations
FOR EACH ROW
BEGIN
    IF NEW.expiry_time < NOW() THEN
        SET NEW.status = 'expired';
    END IF;
END $$

DELIMITER ;

CREATE VIEW donation_summary AS
SELECT food_type, SUM(quantity) AS total_quantity
FROM Donations
GROUP BY food_type;

SELECT * FROM Donations
WHERE expiry_time > NOW() AND status = 'available';

SELECT r.name, SUM(d.quantity) AS total_food
FROM Restaurants r
JOIN Donations d ON r.restaurant_id = d.restaurant_id
GROUP BY r.name;

SELECT n.name AS ngo, d.food_type, d.quantity
FROM NGOs n
JOIN Requests r ON n.ngo_id = r.ngo_id
JOIN Donations d ON r.food_type = d.food_type
WHERE d.status = 'available';

SELECT * FROM Donations
WHERE expiry_time < NOW() + INTERVAL 2 HOUR;

SELECT food_type, SUM(quantity) AS total
FROM Donations
GROUP BY food_type
ORDER BY total DESC;
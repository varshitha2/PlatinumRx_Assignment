DROP DATABASE IF EXISTS platinumrx;
CREATE DATABASE platinumrx;
USE platinumrx;

CREATE TABLE users (
    user_id VARCHAR(50),
    name VARCHAR(100),
    phone_number VARCHAR(20),
    mail_id VARCHAR(100),
    billing_address VARCHAR(255)
);
CREATE TABLE bookings (
    booking_id VARCHAR(50),
    booking_date DATETIME,
    room_no VARCHAR(50),
    user_id VARCHAR(50)
);
CREATE TABLE items (
    item_id VARCHAR(50),
    item_name VARCHAR(100),
    item_rate DECIMAL(10,2)
);
CREATE TABLE booking_commercials (
    id VARCHAR(50),
    booking_id VARCHAR(50),
    bill_id VARCHAR(50),
    bill_date DATETIME,
    item_id VARCHAR(50),
    item_quantity DECIMAL(10,2)
);
INSERT INTO users VALUES
('u1', 'Ram', '9999999999', 'ram@mail.com', 'Hyderabad'),
('u2', 'Krishna', '8888888888', 'krishna@mail.com', 'Bangalore'),
('u3', 'Radha', '7777777777', 'radha@mail.com', 'Chennai');
INSERT INTO bookings VALUES
('b1', '2021-10-10 10:00:00', 'R101', 'u1'),
('b2', '2021-11-05 12:00:00', 'R102', 'u1'),
('b3', '2021-11-15 09:00:00', 'R103', 'u2'),
('b4', '2021-12-01 08:00:00', 'R104', 'u3');
INSERT INTO items VALUES
('i1', 'Paratha', 20),
('i2', 'Veg Curry', 80),
('i3', 'Rice', 50);
INSERT INTO booking_commercials VALUES
('c1','b1','bill1','2021-10-10 11:00:00','i1',5),
('c2','b1','bill1','2021-10-10 11:00:00','i2',2),
('c3','b2','bill2','2021-11-05 13:00:00','i2',10),
('c4','b3','bill3','2021-11-15 10:00:00','i3',20),
('c5','b3','bill3','2021-11-15 10:00:00','i1',10);


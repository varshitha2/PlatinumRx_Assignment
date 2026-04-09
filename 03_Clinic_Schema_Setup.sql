CREATE TABLE clinics (
    cid VARCHAR(50),
    clinic_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50)
);
CREATE TABLE customer (
    uid VARCHAR(50),
    name VARCHAR(100),
    mobile VARCHAR(20)
);
CREATE TABLE clinic_sales (
    oid VARCHAR(50),
    uid VARCHAR(50),
    cid VARCHAR(50),
    amount DECIMAL(10,2),
    datetime DATETIME,
    sales_channel VARCHAR(50)
);
CREATE TABLE expenses (
    eid VARCHAR(50),
    cid VARCHAR(50),
    description VARCHAR(255),
    amount DECIMAL(10,2),
    datetime DATETIME
);


INSERT INTO clinics VALUES
('c1','Clinic A','Hyderabad','Telangana','India'),
('c2','Clinic B','Bangalore','Karnataka','India');

INSERT INTO customer VALUES
('u1','Ram','9999999999'),
('u2','Krishna','8888888888');

INSERT INTO clinic_sales VALUES
('o1','u1','c1',10000,'2021-10-10','online'),
('o2','u2','c1',15000,'2021-10-15','offline'),
('o3','u1','c2',20000,'2021-11-01','online');

INSERT INTO expenses VALUES
('e1','c1','rent',5000,'2021-10-10'),
('e2','c1','salary',3000,'2021-10-15'),
('e3','c2','rent',7000,'2021-11-01');
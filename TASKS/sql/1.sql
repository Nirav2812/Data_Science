CREATE DATABASE shine_aatamaker;
USE shine_aatamaker;
CREATE TABLE purchase(
purchase_id INT,
product_name varchar(20),
price INT,
purchase_date INT
);

INSERT INTO purchase
(purchase_id,product_name,price,purchase_date)
VALUES 
(1,"jali",5000,03092026),
(2,"stopper",13500,08092026),
(3,"connector",7000,08092026),
(4,"magnet",17000,17092026);

SELECT * FROM purchase;

CREATE TABLE sale(
sale_id INT,
customer_name VARCHAR(40),
product_name VARCHAR(20),
price INT,
sale_date INT
);

INSERT INTO sale
VALUES
(01,"patel tanay lejashbhai","domestic flourmill",16500,15072026),
(02,"patel tirth idk","chaddi",50,15072026),
(03,"patel het dharmendrabhai","50 hp purlverizer",1600000,20082026),
(04,"patel archi harshadbhai","factory",0,19092026);

SELECT * FROM sale;

CREATE TABLE expensies(
su_lidhu VARCHAR(20),
ketla_nu_lidhu INT,
kai_tarikh INT,
kem_lidhu VARCHAR(50)
);

INSERT INTO expensies
VALUES
("kuchdo",50,19092026,"dhoda thava"),
("body wash",570,19092026,"bodywash vagar kuchdo ghasie to baido chholay"),
("ladies body wash",1050,19092026,"khali puruso j dhoda thay gharma?"),
("toilet cleaner",50,19092026,"gandh na mare etle");

SELECT * FROM expensies;
--> Oracle database 10g

CREATE TABLE supplier(
SUPP_ID int primary key,
SUPP_NAME varchar(50) NOT NULL,
SUPP_CITY varchar(50) NOT NULL,
SUPP_PHONE varchar(50) NOT NULL
);
CREATE TABLE customer(
CUS_ID INT NOT NULL,
CUS_NAME VARCHAR(20) NOT NULL,
CUS_PHONE VARCHAR(10) NOT NULL,
CUS_CITY varchar(30) NOT NULL,
CUS_GENDER CHAR,
PRIMARY KEY (CUS_ID));

CREATE TABLE category (
CAT_ID INT NOT NULL,
CAT_NAME VARCHAR(20) NOT NULL,
PRIMARY KEY (CAT_ID)
);

CREATE TABLE product (
  PRO_ID INT NOT NULL,
  PRO_NAME VARCHAR(20) DEFAULT 'Dummy' NOT NULL,
  PRO_DESC VARCHAR(60),
  CAT_ID INT NOT NULL,
  PRIMARY KEY (PRO_ID),
  FOREIGN KEY (CAT_ID) REFERENCES category (CAT_ID)
);

CREATE TABLE supplier_pricing (
PRICING_ID INT NOT NULL,
PRO_ID INT NOT NULL,
SUPP_ID INT NOT NULL,
SUPP_PRICE INT DEFAULT 0,
PRIMARY KEY (PRICING_ID),
FOREIGN KEY (PRO_ID) REFERENCES PRODUCT (PRO_ID),
FOREIGN KEY (SUPP_ID) REFERENCES SUPPLIER(SUPP_ID)
);

CREATE TABLE "order" (
ORD_ID INT NOT NULL,
ORD_AMOUNT INT NOT NULL,
ORD_DATE DATE,
CUS_ID INT NOT NULL,
PRICING_ID INT NOT NULL,
PRIMARY KEY (ORD_ID),
FOREIGN KEY (CUS_ID) REFERENCES CUSTOMER(CUS_ID),
FOREIGN KEY (PRICING_ID) REFERENCES SUPPLIER_PRICING(PRICING_ID)
);


 CREATE TABLE rating (
RAT_ID INT NOT NULL,
ORD_ID INT NOT NULL,
RAT_RATSTARS INT NOT NULL,
PRIMARY KEY (RAT_ID),
FOREIGN KEY (ORD_ID) REFERENCES "order"(ORD_ID)
);

INSERT INTO supplier (SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) VALUES (1, 'Rajesh Retails', 'Delhi', '1234567890');
INSERT INTO supplier (SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) VALUES (2, 'Appario Ltd.', 'Mumbai', '2589631470');
INSERT INTO supplier (SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) VALUES (3, 'Knome products', 'Bangalore', '9785462315');
INSERT INTO supplier (SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) VALUES (4, 'Bansal Retails', 'Kochi', '8975463285');
INSERT INTO supplier (SUPP_ID, SUPP_NAME, SUPP_CITY, SUPP_PHONE) VALUES (5, 'Mittal Ltd.', 'Lucknow', '7898456532');


INSERT INTO customer (CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) VALUES (1, 'AAKASH', '9999999999', 'DELHI', 'M');
INSERT INTO customer (CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) VALUES (2, 'AMAN', '9785463215', 'NOIDA', 'M');
INSERT INTO customer (CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) VALUES (3, 'NEHA', '9999999999', 'MUMBAI', 'F');
INSERT INTO customer (CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) VALUES (4, 'MEGHA', '9994562399', 'KOLKATA', 'F');
INSERT INTO customer (CUS_ID, CUS_NAME, CUS_PHONE, CUS_CITY, CUS_GENDER) VALUES (5, 'PULKIT', '7895999999', 'LUCKNOW', 'M');

INSERT INTO category (CAT_ID, CAT_NAME) VALUES (1, 'BOOKS');
INSERT INTO category (CAT_ID, CAT_NAME) VALUES (2, 'GAMES');
INSERT INTO category (CAT_ID, CAT_NAME) VALUES (3, 'GROCERIES');
INSERT INTO category (CAT_ID, CAT_NAME) VALUES (4, 'ELECTRONICS');
INSERT INTO category (CAT_ID, CAT_NAME) VALUES (5, 'CLOTHES');

INSERT INTO product VALUES(1, 'GTA V', 'Windows 7 and above with i5 processor and 8GB RAM', 2);
INSERT INTO product VALUES(2, 'TSHIRT', 'SIZE-L with Black, Blue and White variations', 5);
INSERT INTO product VALUES(3, 'ROG LAPTOP', 'Windows 10 with 15inch screen, i7 processor, 1TB SSD', 4);
INSERT INTO product VALUES(4, 'OATS', 'Highly Nutritious from Nestle', 3);
INSERT INTO product VALUES(5, 'HARRY POTTER', 'Best Collection of all time by J.K Rowling', 1);
INSERT INTO product VALUES(6, 'MILK', '1L Toned Milk', 3);
INSERT INTO product VALUES(7, 'Boat EarPhones', '1.5Meter long Dolby Atmos', 4);
INSERT INTO product VALUES(8, 'Jeans', 'Stretchable Denim Jeans with various sizes and color', 5);
INSERT INTO product VALUES(9, 'Project IGI', 'Compatible with Windows 7 and above', 2);
INSERT INTO product VALUES(10, 'Hoodie', 'Black GUCCI for 13 yrs and above', 5);
INSERT INTO product VALUES(11, 'Rich Dad Poor Dad', 'Written by Robert Kiyosaki', 1);
INSERT INTO product VALUES(12, 'Train Your Brain', 'By Shireen Stephen', 1);


INSERT INTO supplier_pricing VALUES(1, 1, 2, 1500);
INSERT INTO supplier_pricing VALUES(2, 3, 5, 30000);
INSERT INTO supplier_pricing VALUES(3, 5, 1, 3000);
INSERT INTO supplier_pricing VALUES(4, 2, 3, 2500);
INSERT INTO supplier_pricing VALUES(5, 4, 1, 1000);
INSERT INTO supplier_pricing VALUES(6, 12, 2, 780);
INSERT INTO supplier_pricing VALUES(7, 12, 4, 789);
INSERT INTO supplier_pricing VALUES(8, 3, 1, 31000);
INSERT INTO supplier_pricing VALUES(9, 1, 5, 1450);
INSERT INTO supplier_pricing VALUES(10, 4, 2, 999);
INSERT INTO supplier_pricing VALUES(11, 7, 3, 549);
INSERT INTO supplier_pricing VALUES(12, 7, 4, 529);
INSERT INTO supplier_pricing VALUES(13, 6, 2, 105);
INSERT INTO supplier_pricing VALUES(14, 6, 1, 99);
INSERT INTO supplier_pricing VALUES(15, 2, 5, 2999);
INSERT INTO supplier_pricing VALUES(16, 5, 2, 2999);





INSERT INTO "order" VALUES (101, 1500, TO_DATE('2021-10-06', 'YYYY-MM-DD'), 2, 1);
INSERT INTO "order" VALUES (102, 1000, TO_DATE('2021-10-12', 'YYYY-MM-DD'), 3, 5);
INSERT INTO "order" VALUES (103, 30000, TO_DATE('2021-09-16', 'YYYY-MM-DD'), 5, 2);
INSERT INTO "order" VALUES (104, 1500, TO_DATE('2021-10-05', 'YYYY-MM-DD'), 1, 1);
INSERT INTO "order" VALUES (105, 3000, TO_DATE('2021-08-16', 'YYYY-MM-DD'), 4, 3);
INSERT INTO "order" VALUES (106, 1450, TO_DATE('2021-08-18', 'YYYY-MM-DD'), 1, 9);
INSERT INTO "order" VALUES (107, 789, TO_DATE('2021-09-01', 'YYYY-MM-DD'), 3, 7);
INSERT INTO "order" VALUES (108, 780, TO_DATE('2021-09-07', 'YYYY-MM-DD'), 5, 6);
INSERT INTO "order" VALUES (109, 3000, TO_DATE('2021-09-10', 'YYYY-MM-DD'), 5, 3);
INSERT INTO "order" VALUES (110, 2500, TO_DATE('2021-09-10', 'YYYY-MM-DD'), 2, 4);
INSERT INTO "order" VALUES (111, 1000, TO_DATE('2021-09-15', 'YYYY-MM-DD'), 4, 5);
INSERT INTO "order" VALUES (112, 789, TO_DATE('2021-09-16', 'YYYY-MM-DD'), 4, 7);
INSERT INTO "order" VALUES (113, 31000, TO_DATE('2021-09-16', 'YYYY-MM-DD'), 1, 8);
INSERT INTO "order" VALUES (114, 1000, TO_DATE('2021-09-16', 'YYYY-MM-DD'), 3, 5);
INSERT INTO "order" VALUES (115, 3000, TO_DATE('2021-09-16', 'YYYY-MM-DD'), 5, 3);
INSERT INTO "order" VALUES (116, 99, TO_DATE('2021-09-17', 'YYYY-MM-DD'), 2, 14);


INSERT INTO rating VALUES(1, 101, 4);
INSERT INTO rating VALUES(2, 102, 3);
INSERT INTO rating VALUES(3, 103, 1);
INSERT INTO rating VALUES(4, 104, 2);
INSERT INTO rating VALUES(5, 105, 4);
INSERT INTO rating VALUES(6, 106, 3);
INSERT INTO rating VALUES(7, 107, 4);
INSERT INTO rating VALUES(8, 108, 4);
INSERT INTO rating VALUES(9, 109, 3);
INSERT INTO rating VALUES(10, 110, 5);
INSERT INTO rating VALUES(11, 111, 3);
INSERT INTO rating VALUES(12, 112, 4);
INSERT INTO rating VALUES(13, 113, 2);
INSERT INTO rating VALUES(14, 114, 1);
INSERT INTO rating VALUES(15, 115, 1);
INSERT INTO rating VALUES(16, 116, 0);

SELECT * FROM customer;
SELECT * FROM "order";

--> 4 Display the total number of customers based on gender who have placed individual orders of worth at least Rs.3000
SELECT C.CUS_GENDER,
       COUNT(DISTINCT O.CUS_ID) AS TOTAL_CUSTOMERS
FROM CUSTOMER C
JOIN "order" O ON C.CUS_ID = O.CUS_ID
WHERE O.ORD_AMOUNT >= 3000
GROUP BY C.CUS_GENDER;

--> 5 Display all the orders along with product name ordered by a customer having Customer_Id=2

SELECT * FROM product;

SELECT O.ORD_ID,
       O.ORD_AMOUNT,
       O.ORD_DATE,
       P.PRO_NAME
FROM "order" O
JOIN SUPPLIER_PRICING SP ON O.PRICING_ID = SP.PRICING_ID
JOIN PRODUCT P ON SP.PRO_ID = P.PRO_ID
WHERE O.CUS_ID = 2;

--> 6 Display the Supplier details who can supply more than one product

SELECT S.*
FROM supplier S
JOIN supplier_pricing SP ON S.SUPP_ID = SP.SUPP_ID
GROUP BY S.SUPP_ID, S.SUPP_NAME, S.SUPP_CITY, S.SUPP_PHONE
HAVING COUNT(DISTINCT SP.PRO_ID) > 1;

--> 7 Find the least expensive product from each category and print the table with category id, name, product name and price of the product
SELECT
    c.CAT_ID,
    c.CAT_NAME,
    p.PRO_NAME AS LEAST_EXPENSIVE_PRODUCT_NAME,
    sp.SUPP_PRICE AS LEAST_EXPENSIVE_PRODUCT_PRICE
FROM
    category c
    JOIN product p ON c.CAT_ID = p.CAT_ID
    JOIN supplier_pricing sp ON p.PRO_ID = sp.PRO_ID
WHERE
    sp.SUPP_PRICE = (
        SELECT
            MIN(SUPP_PRICE)
        FROM
            supplier_pricing
        WHERE
            PRO_ID = p.PRO_ID
    );

--> 8 Display the Id and Name of the Product ordered after “2021-10-05”

SELECT DISTINCT
    P.PRO_ID,
    P.PRO_NAME
FROM
    "order" O
    JOIN supplier_pricing SP ON O.PRICING_ID = SP.PRICING_ID
    JOIN product P ON SP.PRO_ID = P.PRO_ID
WHERE
    O.ORD_DATE > TO_DATE('2021-10-05', 'YYYY-MM-DD');


--> 9  Display customer name and gender whose names start or end with character 'A'

SELECT
    CUS_NAME,
    CUS_GENDER
FROM
    customer
WHERE
    UPPER(SUBSTR(CUS_NAME, 1, 1)) = 'A' OR
    UPPER(SUBSTR(CUS_NAME, -1, 1)) = 'A';


-->10 Create a stored procedure to display supplier id, name, Rating(Average rating of all the products sold by every customer) and
-->Type_of_Service. For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”, If rating >2 print “Average
-->Service” else print “Poor Service”. Note that there should be one rating per supplier

CREATE OR REPLACE PROCEDURE GetSupplierRatingAndService AS
    AVG_RATING NUMBER(3, 2);
BEGIN
    -- Using a cursor to fetch supplier details and calculate average rating
    FOR supplier_rec IN (
        SELECT
            S.SUPP_ID,
            S.SUPP_NAME,
            COALESCE(AVG(R.RAT_RATSTARS), 0) AS AVG_RATING
        FROM
            supplier S
            LEFT JOIN supplier_pricing SP ON S.SUPP_ID = SP.SUPP_ID
            LEFT JOIN "order" O ON SP.PRICING_ID = O.PRICING_ID
            LEFT JOIN rating R ON O.ORD_ID = R.ORD_ID
        GROUP BY
            S.SUPP_ID, S.SUPP_NAME
    ) LOOP
        AVG_RATING := COALESCE(supplier_rec.AVG_RATING, 0);

        -- Using a CASE statement to determine the Type_of_Service
        CASE
            WHEN AVG_RATING = 5 THEN
                DBMS_OUTPUT.PUT_LINE('Supplier ID: ' || supplier_rec.SUPP_ID || ', Name: ' || supplier_rec.SUPP_NAME || ', Rating: ' || AVG_RATING || ', Type_of_Service: Excellent Service');
            WHEN AVG_RATING > 4 THEN
                DBMS_OUTPUT.PUT_LINE('Supplier ID: ' || supplier_rec.SUPP_ID || ', Name: ' || supplier_rec.SUPP_NAME || ', Rating: ' || AVG_RATING || ', Type_of_Service: Good Service');
            WHEN AVG_RATING > 2 THEN
                DBMS_OUTPUT.PUT_LINE('Supplier ID: ' || supplier_rec.SUPP_ID || ', Name: ' || supplier_rec.SUPP_NAME || ', Rating: ' || AVG_RATING || ', Type_of_Service: Average Service');
            ELSE
                DBMS_OUTPUT.PUT_LINE('Supplier ID: ' || supplier_rec.SUPP_ID || ', Name: ' || supplier_rec.SUPP_NAME || ', Rating: ' || AVG_RATING || ', Type_of_Service: Poor Service');
        END CASE;
    END LOOP;
END GetSupplierRatingAndService;
/


BEGIN
    GetSupplierRatingAndService();
END;
/











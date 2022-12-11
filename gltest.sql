use gldb;
CREATE TABLE IF NOT EXISTS PRODUCT (PROD_ID INT NOT NULL ,PROD_NAME VARCHAR(20) NOT NULL DEFAULT "DUMMY",
PROD_DESC VARCHAR(60), CAT_ID INT NOT NULL,PRIMARY KEY (PROD_ID),FOREIGN KEY (CAT_ID) REFERENCES CATEGORY(CAT_ID));

CREATE TABLE IF NOT EXISTS CATEGORY (CAT_ID INT NOT NULL,CAT_NAME VARCHAR(60) NOT NULL,PRIMARY KEY(CAT_ID));

CREATE TABLE IF NOT EXISTS SUPPLIER_PRICING (PRICING_ID INT NOT NULL ,PROD_ID INT NOT NULL,SUPP_ID INT NOT NULL,SUPP_PRICE INT DEFAULT 0,PRIMARY KEY(PRICING_ID),
 foreign key (PROD_ID) REFERENCES PRODUCT(PROD_ID),FOREIGN KEY(SUPP_ID) REFERENCES SUPPLIER(SUPP_ID));

CREATE TABLE IF NOT EXISTS SUPPLIER (SUPP_ID INT NOT NULL,SUPP_NAME VARCHAR(50) NOT NULL,SUPP_CITY VARCHAR(50) NOT NULL,
SUPP_PHONE VARCHAR(50) NOT NULL,
PRIMARY KEY(SUPP_ID));

CREATE TABLE IF NOT EXISTS CUSTOMER (CUST_ID INT NOT NULL,CUST_NAME VARCHAR(20) NOT NULL,
CUST_PHONE VARCHAR(10) NOT NULL,

CUST_CITY VARCHAR(30) NOT NULL,CUST_GENDER CHAR,
PRIMARY KEY(CUST_ID));




CREATE TABLE IF NOT EXISTS ORDER_DETAILS (ORD_ID INT NOT NULL,
ORD_AMOUNT INT NOT NULL,
ORD_DATE DATE NOT NULL,
CUST_ID INT NOT NULL,
PRICING_ID INT NOT NULL,
PRIMARY KEY (ORD_ID) ,FOREIGN KEY (CUST_ID) REFERENCES CUSTOMER (CUST_ID),
FOREIGN KEY (PRICING_ID) REFERENCES SUPPLIER_PRICING (PRICING_ID));

CREATE TABLE IF NOT EXISTS RATING (
RAT_ID INT NOT NULL ,
ORD_ID INT NOT NULL,
RAT_RATSTARTS INT NOT NULL,
PRIMARY KEY (RAT_ID), FOREIGN KEY (ORD_ID) REFERENCES ORDER_DETAILS(ORD_ID));


SELECT * FROM SUPPLIER;

INSERT INTO SUPPLIER VALUES(1,'Rajesh Retails','Delhi',	1234567890);
INSERT INTO SUPPLIER VALUES(2,'Appario Ltd.','Mumbai',	2589631470);
INSERT INTO SUPPLIER VALUES(3,'Knome products','Banglore',	9785462315);
INSERT INTO SUPPLIER VALUES(4,'Bansal Retails','Kochi',	8975463285);
INSERT INTO SUPPLIER VALUES(5,'Mittal Ltd.','Lucknow',	7898456532);
COMMIT;


SELECT * FROM CUSTOMER;

INSERT INTO CUSTOMER VALUES(1,'AAKASH',9999999999,	'DELHI','M');
INSERT INTO CUSTOMER VALUES(2,'AMAN',9785463215,	'NOIDA','M');
INSERT INTO CUSTOMER VALUES(3,'NEHA',9999999999,	'MUMBAI','F');
INSERT INTO CUSTOMER VALUES(4,'MEGHA',9994562399,	'KOLKATA','F');
INSERT INTO CUSTOMER VALUES(5,'PULKIT',7895999999,	'LUCKNOW','M');

SELECT * FROM CATEGORY;

INSERT INTO CATEGORY VALUES(1,'BOOKS');
INSERT INTO CATEGORY VALUES(2,'GAMES');
INSERT INTO CATEGORY VALUES(3,'GROCERIES');
INSERT INTO CATEGORY VALUES(4,'ELECTRONICS');
INSERT INTO CATEGORY VALUES(5,'CLOTHES');


SELECT * FROM PRODUCT;



INSERT INTO PRODUCT VALUES(1,'GTA V','Windows 7 and above with i5 processor and 8GB RAM',	2);
INSERT INTO PRODUCT VALUES(2,		'TSHIRT',		'SIZE-L with Black, Blue and White variations',			5);
INSERT INTO PRODUCT VALUES(3,		'ROG LAPTOP', 	'Windows 10 with 15inch screen, i7 processor, 1TB SSD'		,4);
INSERT INTO PRODUCT VALUES(4,		'OATS', 'Highly Nutritious from Nestle'						,3);
INSERT INTO PRODUCT VALUES(5,		'HARRY POTTER',	'Best Collection of all time by J.K Rowling',1);
INSERT INTO PRODUCT VALUES(6,		'MILK',			'1L Toned MIlk'								,3);
INSERT INTO PRODUCT VALUES(7,		'Boat Earphones',	'1.5Meter long Dolby Atmos'					,	4);
INSERT INTO PRODUCT VALUES(8,		'Jeans',			'Stretchable Denim Jeans with various sizes and color'	,	5);
INSERT INTO PRODUCT VALUES(9,		'Project IGI',		'compatible with windows 7 and above	'			,2);
INSERT INTO PRODUCT VALUES(10,		'Hoodie'			'Black GUCCI for 13 yrs and above'					,5);
INSERT INTO PRODUCT VALUES(11,		'Rich Dad Poor Dad',	'Written by RObert Kiyosaki'						,1);
INSERT INTO PRODUCT VALUES(12,		'Train Your Brain',	'By Shireen Stephen'							,1);

SELECT * FROM SUPPLIER_PRICING;

INSERT INTO SUPPLIER_PRICING VALUES(1,1,2,1500);
INSERT INTO SUPPLIER_PRICING VALUES(2	,	3	,		5	,30000);
INSERT INTO SUPPLIER_PRICING VALUES(3	,	5			,1	,3000);
INSERT INTO SUPPLIER_PRICING VALUES(4	,	2	,		3	,2500);
INSERT INTO SUPPLIER_PRICING VALUES(5	,	4		,	1	,1000);
INSERT INTO SUPPLIER_PRICING VALUES(6	,	5		,	1	,2000);
INSERT INTO SUPPLIER_PRICING VALUES(7	,	12		,	4	,2000);
INSERT INTO SUPPLIER_PRICING VALUES(8,3,1,31000);
INSERT INTO SUPPLIER_PRICING VALUES(9	,	1	,		5	,1450);
INSERT INTO SUPPLIER_PRICING VALUES(10	,	4			,2	,999);
INSERT INTO SUPPLIER_PRICING VALUES(11	,	7	,		3	,549);
INSERT INTO SUPPLIER_PRICING VALUES(12	,	7		,	4	,549);
INSERT INTO SUPPLIER_PRICING VALUES(13	,	6		,	2	,105);
INSERT INTO SUPPLIER_PRICING VALUES(14	,	6		,	1	,999);
INSERT INTO SUPPLIER_PRICING VALUES(15	,	2		,	5	,29999);
INSERT INTO SUPPLIER_PRICING VALUES(16	,	5		,	2	,29999);



SELECT * FROM ORDER_DETAILS;

INSERT INTO ORDER_DETAILS VALUES(101	,		1500	,	'2021-10-06',	2,		1);
INSERT INTO ORDER_DETAILS VALUES(102	,		1000	,	'2021-10-12'	,3,		5);
INSERT INTO ORDER_DETAILS VALUES(103	,		30000	,	'2021-09-16'	,5	,	2);
INSERT INTO ORDER_DETAILS VALUES(104	,		1500	,	'2021-10-05'	,1	,	1);
INSERT INTO ORDER_DETAILS VALUES(105	,		3000	,	'2021-08-16',	4	,	3);
INSERT INTO ORDER_DETAILS VALUES(106	,		1450	,	'2021-08-18'	,1	,	9);
INSERT INTO ORDER_DETAILS VALUES(107	,		789		,'2021-09-01'	,3	,	7);
INSERT INTO ORDER_DETAILS VALUES(108	,		780		,'2021-09-07'	,5	,	6);
INSERT INTO ORDER_DETAILS VALUES(109	,		3000	,	'2021-00-10'	,5,		3);
INSERT INTO ORDER_DETAILS VALUES(110	,		2500	,	'2021-09-10'	,2	,	4);
INSERT INTO ORDER_DETAILS VALUES(111	,		1000	,	'2021-09-15'	,4	,	5);
INSERT INTO ORDER_DETAILS VALUES(112	,		789		,'2021-09-16'	,4	,	7);
INSERT INTO ORDER_DETAILS VALUES(113	,		31000	,	'2021-09-16'	,1	,	8);
INSERT INTO ORDER_DETAILS VALUES(114	,		1000	,	'2021-09-16'	,3	,	5);
INSERT INTO ORDER_DETAILS VALUES(115	,		3000	,	'2021-09-16'	,5	,	3);
INSERT INTO ORDER_DETAILS VALUES(116	,		99		,'2021-09-17'	,2	,	14);

select * from order_details;


select * from rating;

INSERT INTO RATING VALUES(1,		101,		4);
INSERT INTO RATING VALUES(2	,	102		,3);
INSERT INTO RATING VALUES(3	,	103		,1);
INSERT INTO RATING VALUES(4	,	104		,2);
INSERT INTO RATING VALUES(5	,	105		,4);
INSERT INTO RATING VALUES(6	,	106		,3);
INSERT INTO RATING VALUES(7	,	107		,4);
INSERT INTO RATING VALUES(8	,	108		,4);
INSERT INTO RATING VALUES(9	,	109		,3);
INSERT INTO RATING VALUES(10,		110	,	5);
INSERT INTO RATING VALUES(11,		111	,	3);
INSERT INTO RATING VALUES(12,		112	,	4);
INSERT INTO RATING VALUES(13,		113	,	2);
INSERT INTO RATING VALUES(14,		114	,	1);
INSERT INTO RATING VALUES(15,		115	,	1);
INSERT INTO RATING VALUES(16,		116	,	0);


--Display the total number of customers based on gender who have placed orders of worth at least Rs.3000.

select * from customer ;
select * from order_details where ord_amount>=3000;

select count(b.cust_gender),b.cust_gender from (select count(p.cust_id),p.cust_name,p.cust_gender,p.ord_amount from (select od.*,c.cust_gender,c.cust_name from order_details od inner join customer c

 on od.cust_id =c.cust_id and od.ord_amount>=3000) as p group by p.cust_id ) as b group by b.cust_gender; 
 
 
 --Display all the orders along with product name ordered by a customer having Customer_Id=2
 
 select * from product;
 select * from supplier_pricing;
 
 select od. *,p.prod_name from order_details od, product p ,supplier_pricing sp
 where p.prod_id = sp.prod_id
 and od.cust_id=2
 and od.pricing_id = sp.pricing_id
 ;
 
 
 
 --Display the Supplier details who can supply more than one product.
select * from supplier ;
select * from supplier_pricing;

select s.* from supplier s where s.supp_id  IN (select sp.supp_id from supplier_pricing sp group by sp.supp_id having count(sp.supp_id)>1);


--Find the least expensive product from each category and print the table with category id, name, product name and price of the product
select * from product ;
select * from supplier_pricing;
select * from category c;


select p.cat_id,c.cat_name ,p.prod_name,min(sp.supp_price) from supplier_pricing sp  ,product p,category c
where sp.prod_id = p.prod_id
and p.cat_id=c.cat_id
group by c.cat_name
;

--7)Display the Id and Name of the Product ordered after “2021-10-05”.


--Display customer name and gender whose names start or end with character 'A'.
Select c.cust_name,c.cust_gender from customer c where c.cust_name like 'A%';



--Create a stored procedure to display supplier id, name, rating and Type_of_Service. For Type_of_Service, If rating =5, print “Excellent Service”,If rating >4 print “Good Service”, If rating >2 print “Average Service” else print “Poor Service”.


select * from rating ;
select * from order_details;
select * from supplier_pricing sp;
select * from supplier s;

select s.supp_id,s.supp_name,r.rat_ratstarts 
,
case 
when r.rat_ratstarts =5
then 'Excellent'
when r.rat_ratstarts >=4
then 'Good Service'
when r.rat_ratstarts >2
then 'Average'
else
'Poor Service'
end
from rating r,order_details od,supplier_pricing sp,supplier s
where r.ord_id=od.ord_id 
and sp.supp_id =s.supp_id
;



--Display the Id and Name of the Product ordered after “2021-10-05”.
select * from product p where order_date >'2021-10-05';






















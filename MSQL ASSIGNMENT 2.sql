 CREATE DATABASE SALES;

 USE SALES;
 
 CREATE TABLE ORDERS(ORDER_ID CHAR(20) PRIMARY KEY NOT NULL, 
 C_NAME VARCHAR (20),
 P_CATA  VARCHAR(20) ,
 ORDER_ITEM VARCHAR(20),
 CON_NO CHAR  (20) 
 UNIQUE);
 
 SELECT * FROM ORDERS;
 
 #1.Add a new column named “order_quantity” to the orders table
 ALTER TABLE ORDERS ADD COLUMN Order_Quantity 	INT;
 
 #2. Rename the orders table to the sales_orders table.
 RENAME TABLE ORDERS TO SALES_ORDERS;
 
 #3. Insert 10 rows into the sales_orders table.
 
 INSERT INTO SALES_ORDERS(ORDER_ID, C_NAME, P_CATA, ORDER_ITEM, CON_NO,ORDER_QUANTITY) VALUES
 
  ('QW12', 'Hareesh', 'Electronics', 'Mobile', '9867453475','7'),
  ('QW13', 'Nirmal', 'Furnitures', 'Chair', 9657483654,'6'),
  ('QW14', 'Rajes', 'clothes', 'T-Shirts', 8856743874,'5'),
  ('QW15', 'James', 'Electronics', 'Watch', 7869456327,'16'),
  ('QW16', 'Gopinadh', 'Fruits', 'Mango', 9979865978,'12'),
  ('QW17', 'Jhon','Medcine', 'dolo' ,8879898756,'8'),
  ('QW18','Rames','cloths','T-Shirts','9870985687','4'),
  ('QW19','Sareesh','Vegitables','Cabbege','9498959676',9),
  ('QW20','Anesh','Furniture', 'Table', '9294957658',10),
  ('QW21','Varun','Fruits','Grapes','8987896087',12);
  
  SELECT * FROM SALES_ORDERS;
  
  #4.Retrieve customer_name and Ordered_Item from the sales_orders table. 
  SELECT C_NAME,ORDER_ITEM FROM SALES_ORDERS;
  
  #5.Use the update command to change the name of the product for any row.
  UPDATE SALES_ORDERS SET P_CATA='Sweets' WHERE ORDER_ID='QW21';
  
  #6.Delete the sales_orders table from the database.
  DROP TABLE SALES_ORDERS;
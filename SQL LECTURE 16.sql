--THE CASE OF IT CAND ITS SALES --
--CREATE A EXCEL DATA SHEET CONTAINING THE COULMN NAME , DISTRIBUTION ID , NAME , CITY , REGION PHONE-- 
--TABLE OF DISTRIBUTION 

CREATE TABLE distributors (
  distributors_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  city TEXT,
  region TEXT,
  phone TEXT
  );
    
  --Dropping the table----
  DROP TABLE distributors;
  
  --Create a Table with a Name products containings products id , products name , brand , category , price and stock--ALTER
  Create Table products (
  products_id INTEGER Primary key,
  product_name TEXT Not NULL UNIQUE ,
  brand TEXT ,
  category TEXT NOT NULL, 
  price REAL CHECK (price>0),
  stock INTEGER DEFAULT 0 
  );
  
 -- CREATE THE TABLE CONTAINING NAME SALES AND SHOULD HAVE SALES ID , PRODUCT ID , DISTRIBUTOR ID , SALES DATE , QUANTITY AND AMOUNT 
  CREATE TABLE sales (
    sale_id INTEGER PRIMARY KEY, 
    product_id INTEGER,
    distributor_id INTEGER,
    sales_date TEXT,
    quantity INTEGER CHECK (quantity>0),
    amount REAL,
    FOREIGN KEY(product_id) REFERENCES products (product_id), 
    FOREIGN KEY (distributor_id) REFERENCES distributors (distributor_id)
    );
    
    -- CHECKING THE COLUMN 
    PRAGMA table_info(sales);
    PRAGMA table_info(products);
    PRAGMA tablle_info(distributors);
    
    --TOPIC 1 : SELECT,DISTINCT and ALIASES --
  --QUESTION- SALES HEAD WANT TO SEE THE FOOLSTOP ITC DISTRUBUTORS --
  SELECT *FROM distributors;
  
  --The Marketing Team Needs Product Name , Brand and Price--
  SELECT product_name,brand,price FROM products ;
  
  --WHICH PRODUCT CATEGORY DOES THR ITC SALE --
  SELECT DISTINCT category FROM products;
  
  -- WHICH BRAND AND CATEGORY COMBINATION EXIST --
  SELECT DISTINCT brand,category FROM products ;
  
  --THE REPORT NEEDS TO CHANGE THE NAME FOR product_name AND price AS PRODUCT NAME AND MRP--
  SELECT product_name AS "PRODUCT NAME", PRICE AS "MRP" FROM products ;
  
  --TOPIC- 2 USING THE CLAUSE- WHERE AND FILTERING WITH AND WITHOUT OPERATORES-- 
  --LIST ALL THE BISCUIT PRODUCT FROM THE TABLE PRODUCT --
  select product_name from products where category = 'Biscuits';
  
  --WHICH PRODUCT ARE NOT IN THE STAPLES CATEGORY--
 select product_name from products where category != 'staple';
 
 -- WHICH PRODUCT COST 100 OR MORE --
 SELECT product_name, price FROM products WHERE price >= 100 ;
 
 --USING AND, OR,NOT,-
 --WHICH SNACKS PRODUCT COST LESS THEN RS 15--
 SELECT product_name,price FROM products WHERE category='Snacks' AND price<15;
 
 --SHOW PRODUCTS OF THE BINGO AND YIPPEE --
SELECT DISTINCT brand FROM products; 
SELECT product_name, brand FROM products WHERE brand = 'Yippee' or brand= 'Bingo';

--SHOW THE PRODUCTS THAT ARE NOT SNACKS AND COST LESS THEN RS 30--
SELECT product_name, price FROM products WHERE NOT category = 'Snacks' and price<30;

    
    
    
    
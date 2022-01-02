   -- SQL Introduction Exercise
  -- Using the bestbuy database:
 -- Copy the following and paste into MySql Workbench

-- find all products 
 Select * From bestbuy.products;
-- find all products that cost $1400
  Select * From bestbuy.products
  Where products.price = 1400.00;
-- find all products that cost $11.99 or $13.99
  Select * From bestbuy.products as p
  Where p.price = 11.99 or p.price = 13.99;
  
-- find all products that do NOT cost 11.99 - using NOT
  Select * From bestbuy.products as p
  Where Not p.price = 11.99;
-- find  all products and sort them by price from greatest to least
  Select * From bestbuy.products as p
 Order By p.price DESC;
-- find all employees who don't have a middle initial
  Select * From bestbuy.employees
  Where middleinitial is Null;
-- find distinct product prices
  Select  Distinct bestbuy.products.price
  From bestbuy.products;
-- find all employees whose first name starts with the letter ‘j’
  Select * From bestbuy.employees
  Where Firstname Like '%j';
-- find all Macbooks 
  Select * From bestbuy.products
  Where Name = 'Macbook';
-- find all products that are on sale
  Select * From bestbuy.products
  Where OnSale = 1;
-- find the average price of all products 
  Select AVG (products.price) From bestbuy.products;
  
-- find all Geek Squad employees who don't have a middle initial 
  Select * From bestbuy.employees as e
  Where e.MiddleInitial is Null and e.tittle = 'GeekSquad';
-- find all products from the products table whose stock level is in the range  -- of 500 to 1200. Order by Price from least to greatest. **Use the between keyword** 
 Select * From bestbuy.products
 Where price Between 500 and 1200
 Order by Price
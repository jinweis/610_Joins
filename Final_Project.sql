-- Interview SQL Relational Joins Round: 6 Questions 
    
-- Question 1: What is a SQL JOIN command, and when do you need it?
-- The SQL JOIN clause is used to combine records from two or more tables in a database. A JOIN is a means for combining fields from two tables by using values common to each.
-- The SQL UNION operator combines the result of two or more SELECT statements. Each SELECT statement within the UNION must have the same number of columns. The columns must also have similar data types. Also, the columns in each SELECT statement must be in the same order.
 
-- 1. JOIN combines data from multiple tables based on a matched condition between them while UNION combines the result-set of two or more SELECT statements.
-- 2. UNION requires the same number of columns in each table while JOINS doesn't need that.
-- 3. UNION return the distinct rows in result set while JOIN may return duplicate rows.


-- Question 2: How is JOIN different from UNION in SQL?
/* 1. JOIN combines data from multiple tables based on a matched condition between them while 
      UNION combines the result-set of two or more SELECT statements.
   2. UNION requires the same number of columns in each table while JOINS doesn't need that.
   3. UNION return the distinct rows in result set while JOIN may return duplicate rows. */


-- Please use the following tables to answer the remaining questions: customers, orders ords on cust., products


--## INNER JOIN QUES
-- Question 3:
-- Using the given tables, I need to do an analysis about active customers, 
-- can you give me a list of customers that have ever made an order (at least 1 order)?

select cust.customer_id, cust.name, ords.order_id, ords.order_date 
from customers cust 
INNER JOIN orders ords 
on cust.customer_id = ords.customer_id;


-- LEFT JOIN QUES
-- Question 4:
-- I want to analyse our last month sales. 
-- Can you give me the list of customers who have purchased from us in last month,
-- and the product that the customers purchased?

select cust.customer_id, cust.name, ords.order_id, ords.order_date, prod.product_name 
from customers cust 
LEFT JOIN orders ords on cust.customer_id = ords.customer_id
LEFT JOIN products prod on prod.product_id = ords.product_id
WHERE ords.order_date BETWEEN '2022-09-01' AND '2022-09-30';    --BETWEEN can be explained in one line


-- Question 5:
-- Could you need perform an outer join on customer and order tables? 

SELECT *
FROM customers c
FUll JOIN orders o
ON c.customer_id = o.customer_id;
    

-- Question 6:
-- Management is trying to analyse product sales. 
-- Can you give me the list of products which have not been 
-- purchased (not even once)?

SELECT * FROM orders ords 
RIGHT JOIN products prod 
ON ords.product_id = prod.product_id
WHERE order_id IS NULL;

-- Summary
  
  
  
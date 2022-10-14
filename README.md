# Communication-Assignment-5

## Overview
This project shows the demo of relational joins. It contains all required queries for the demo.

## Key Topics
Types of relational joins are explained in this project with the code demo.

1. **INNER JOIN:** returns only the rows where matches were found </br>
2. **LEFT JOIN:**	returns matches and all rows from the left listed table </br>
3. **RIGHT JOIN:**	returns matches and all rows from the right listed table </br>
4. **FULL OUTER JOIN:**	returns matches and all rows from both tables </br>

![alt text](https://github.com/vichitrak10/Communication-Assignment-5/blob/main/SQL_JOINS.png)

## DBMS and Table Description:
This queries have been created with the **postgreSQL.**

**customers** : data of customers who have signed up </br>
**orders** : data of orders made by the customers </br>
**products** : data of products listed </br>


```
customers
├── customer_id    # int
├── name           # varchar
├── phone          # varchar
├── email          # varchar
```

```
orders
├── order_id          # int
├── customer_id       # int
├── product_id        # int
├── order_date        # date
```

```
products
├── product_id         # int
├── product_name       # varchar
├── price              # int
```

## SQL DDL Description
DDL Used: </br>
`drop:` To drop the existing table </br>
`create:` To create a new table </br>

## How to run:
1. Download the `joins_demo` file.
2. Follow the comments and run queries using any suitable IDE on the postgreSQL.

--3. Perform OLAP operations
-- a) Drill Down-Analyze sales data at a more detailed level. Write a query to perform drill down from region to product level to understand sales performance.
SELECT
	region,
	product_id,
	SUM(sales_amount) AS total_sales
FROM
	sales_sample s
GROUP BY 
	region,
	product_id
ORDER BY
	region,
	product_id;


-- b) Rollup- To summarize sales data at different levels of granularity. Write a query to perform roll up from product to region level to view total sales by region.
SELECT
    region,
    product_id,
    SUM(sales_amount) AS total_sales
FROM
    sales_sample s
GROUP BY
    ROLLUP (region, product_id)
ORDER BY
    region,
    product_id;


-- c) Cube - To analyze sales data from multiple dimensions simultaneously. Write a query to Explore sales data from different perspectives, such as product, region, and date.
SELECT
    region,
    product_id,
    sale_date,
    SUM(sales_amount) AS total_sales
FROM
    sales_sample
GROUP BY
    CUBE (region, product_id, sale_date)
ORDER BY
    region,
    product_id,
    sale_date;


-- d) Slice- To extract a subset of data based on specific criteria. Write a query to slice the data to view sales for a particular region or date range.
SELECT
    region,
    product_id,
    sale_date,
    sales_amount
FROM
    sales_sample
WHERE
    region = 'East';


-- e) Dice - To extract data based on multiple criteria. Write a query to view sales for specific combinations of product, region, and date
SELECT
    region,
    product_id,
    sale_date,
    sales_amount
FROM
    sales_sample
WHERE
    region = 'West' AND product_id = 102 AND sale_date = '2025-02-10';






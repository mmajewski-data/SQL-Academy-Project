-- creating a sample table for sales data
CREATE TABLE sales_sample (
    product_id INTEGER,
    region VARCHAR(50),
    sale_date DATE,
    sales_amount NUMERIC(10, 2)
);

-- inserting sample data into the sales_sample table
INSERT INTO sales_sample (product_id, region, sale_date, sales_amount) VALUES
(101, 'East', '2025-01-15', 1200.00),
(102, 'East', '2025-01-16', 750.50),
(101, 'West', '2025-01-20', 1800.00),
(103, 'North', '2025-02-05', 500.00),
(102, 'West', '2025-02-10', 950.75),
(101, 'East', '2025-02-12', 1350.00),
(103, 'East', '2025-03-01', 650.00),
(101, 'North', '2025-03-05', 1100.00),
(102, 'North', '2025-03-10', 850.25),
(101, 'West', '2025-03-20', 1950.00);
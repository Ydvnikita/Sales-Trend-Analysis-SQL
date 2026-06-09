
# Sales Trend Analysis Using Aggregations

## Objective
Analyze monthly revenue and order volume using SQL aggregation functions.

## Dataset
Online Sales Data.csv

## Tools Used
- MySQL
- SQL

## SQL Concepts Used
- GROUP BY
- SUM()
- COUNT(DISTINCT)
- ORDER BY
- Aggregate Functions

## SQL Query

```sql
SELECT
    YEAR(Date) AS Year,
    MONTH(Date) AS Month,
    ROUND(SUM(`Total Revenue`), 2) AS Monthly_Revenue,
    COUNT(DISTINCT `Transaction ID`) AS Order_Volume
FROM online_sales
GROUP BY YEAR(Date), MONTH(Date)
ORDER BY Year, Month;

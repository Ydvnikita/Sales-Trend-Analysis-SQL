SELECT
    YEAR(Date) AS Year,
    MONTH(Date) AS Month,
    ROUND(SUM(`Total Revenue`), 2) AS Monthly_Revenue,
    COUNT(DISTINCT `Transaction ID`) AS Order_Volume
FROM online_sales
GROUP BY YEAR(Date), MONTH(Date)
ORDER BY Year, Month;

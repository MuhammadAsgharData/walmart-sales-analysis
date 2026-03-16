-- Q1: Repeat purchases
SELECT Dept, COUNT(DISTINCT Date) AS weeks_active, ROUND(AVG(Weekly_Sales),2) AS avg_weekly_sales
FROM train GROUP BY Dept HAVING weeks_active > 100 ORDER BY weeks_active DESC LIMIT 15;

-- Q2: Store efficiency
SELECT t.Store, s.Type, s.Size, ROUND(SUM(t.Weekly_Sales)/s.Size, 2) AS sales_per_sqft,
RANK() OVER (ORDER BY SUM(t.Weekly_Sales)/s.Size DESC) AS efficiency_rank
FROM train t JOIN stores s ON t.Store = s.Store GROUP BY t.Store;

-- Q3: Holiday impact by department
SELECT Dept,
ROUND(AVG(CASE WHEN IsHoliday=1 THEN Weekly_Sales END),2) AS avg_holiday_sales,
ROUND(AVG(CASE WHEN IsHoliday=0 THEN Weekly_Sales END),2) AS avg_normal_sales,
ROUND(AVG(CASE WHEN IsHoliday=1 THEN Weekly_Sales END) - AVG(CASE WHEN IsHoliday=0 THEN Weekly_Sales END),2) AS holiday_lift
FROM train GROUP BY Dept ORDER BY holiday_lift DESC LIMIT 15;

-- Q4: Most volatile departments
SELECT Dept, ROUND(MAX(Weekly_Sales)-MIN(Weekly_Sales),2) AS sales_range,
ROUND(AVG(Weekly_Sales),2) AS avg_sales
FROM train GROUP BY Dept ORDER BY sales_range DESC LIMIT 15;

-- Q5: Declining stores
SELECT Store,
ROUND(AVG(CASE WHEN SUBSTR(Date,1,4)='2010' THEN Weekly_Sales END),2) AS avg_2010,
ROUND(AVG(CASE WHEN SUBSTR(Date,1,4)='2012' THEN Weekly_Sales END),2) AS avg_2012,
ROUND(AVG(CASE WHEN SUBSTR(Date,1,4)='2012' THEN Weekly_Sales END)-AVG(CASE WHEN SUBSTR(Date,1,4)='2010' THEN Weekly_Sales END),2) AS sales_change
FROM train GROUP BY Store ORDER BY sales_change ASC LIMIT 10;

-- Q6: 10 stores to close
WITH store_metrics AS (
    SELECT t.Store, s.Type, s.Size,
    ROUND(SUM(t.Weekly_Sales),2) AS total_sales,
    ROUND(SUM(t.Weekly_Sales)/s.Size,2) AS sales_per_sqft,
    ROUND(AVG(CASE WHEN SUBSTR(t.Date,1,4)='2012' THEN t.Weekly_Sales END)-
    AVG(CASE WHEN SUBSTR(t.Date,1,4)='2010' THEN t.Weekly_Sales END),2) AS sales_trend
    FROM train t JOIN stores s ON t.Store = s.Store GROUP BY t.Store
),
ranked AS (
    SELECT *,
    RANK() OVER (ORDER BY total_sales ASC) AS low_sales_rank,
    RANK() OVER (ORDER BY sales_per_sqft ASC) AS low_efficiency_rank,
    RANK() OVER (ORDER BY sales_trend ASC) AS declining_rank
    FROM store_metrics
)
SELECT Store, Type, total_sales, sales_per_sqft, sales_trend,
(low_sales_rank + low_efficiency_rank + declining_rank) AS closure_score
FROM ranked ORDER BY closure_score ASC LIMIT 10;

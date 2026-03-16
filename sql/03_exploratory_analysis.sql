SELECT COUNT(*) AS train_rows FROM train;
SELECT COUNT(*) AS stores_rows FROM stores;
SELECT MIN(Date) AS start_date, MAX(Date) AS end_date FROM train;
SELECT ROUND(AVG(Weekly_Sales),2) AS avg_sales, ROUND(MAX(Weekly_Sales),2) AS max_sales FROM train;
SELECT Type, COUNT(*) AS num_stores FROM stores GROUP BY Type;
SELECT IsHoliday, COUNT(*) AS count FROM train GROUP BY IsHoliday;

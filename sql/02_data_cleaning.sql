-- =============================================
-- DATA CLEANING
-- Walmart Store Sales Analysis
-- =============================================

-- Remove negative sales (returns/corrections)
DELETE FROM train WHERE Weekly_Sales < 0;

-- Replace NA markdown values with 0
UPDATE features SET MarkDown1 = 0 WHERE MarkDown1 = 'NA';
UPDATE features SET MarkDown2 = 0 WHERE MarkDown2 = 'NA';
UPDATE features SET MarkDown3 = 0 WHERE MarkDown3 = 'NA';
UPDATE features SET MarkDown4 = 0 WHERE MarkDown4 = 'NA';
UPDATE features SET MarkDown5 = 0 WHERE MarkDown5 = 'NA';

-- Verify cleaning
SELECT COUNT(*) AS remaining_negative_sales FROM train WHERE Weekly_Sales < 0;
SELECT COUNT(*) AS remaining_NA_markdowns FROM features WHERE MarkDown1 = 'NA';

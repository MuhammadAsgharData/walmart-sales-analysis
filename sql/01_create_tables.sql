CREATE TABLE IF NOT EXISTS stores (Store INTEGER, Type TEXT, Size INTEGER);
CREATE TABLE IF NOT EXISTS train (Store INTEGER, Dept INTEGER, Date TEXT, Weekly_Sales REAL, IsHoliday TEXT);
CREATE TABLE IF NOT EXISTS features (Store INTEGER, Date TEXT, Temperature REAL, Fuel_Price REAL, MarkDown1 REAL, MarkDown2 REAL, MarkDown3 REAL, MarkDown4 REAL, MarkDown5 REAL, CPI REAL, Unemployment REAL, IsHoliday TEXT);

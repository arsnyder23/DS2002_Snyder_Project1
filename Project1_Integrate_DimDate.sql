ALTER TABLE fact_transactions ADD COLUMN TXN_DATE_KEY int NOT NULL AFTER TXN_DATE;

UPDATE fact_transactions AS ft
JOIN dim_date AS dd
ON DATE(ft.TXN_DATE) = dd.full_date
SET ft.TXN_DATE_KEY = dd.date_key;
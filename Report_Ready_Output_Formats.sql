SELECT * FROM Orders
INTO OUTFILE '/var/lib/mysql-files/orders_report.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

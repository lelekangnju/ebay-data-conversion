LOAD DATA LOCAL INFILE 'users.csv' INTO TABLE Users FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';

LOAD DATA LOCAL INFILE 'temp_items.csv' INTO TABLE Items FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';

LOAD DATA LOCAL INFILE 'categories.csv' INTO TABLE Categories FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';

LOAD DATA LOCAL INFILE 'bids.csv' INTO TABLE Bids FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';
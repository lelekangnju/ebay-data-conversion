CREATE TABLE IF NOT EXISTS `Users` (
`UserID` VARCHAR(100) PRIMARY KEY,
`Rating` INTEGER,
`Location` VARCHAR(100),
`Country` VARCHAR(100)
);


CREATE TABLE IF NOT EXISTS `Items` (
`ItemID` INTEGER PRIMARY KEY,
`Name` VARCHAR(100),
`Currently` DECIMAL(8,2),
`Buy_Price` DECIMAL(8,2) DEFAULT NULL,
`First_Bid` DECIMAL(8,2),
`Number_of_Bids` INTEGER,
`Started` TIMESTAMP,
`Ends` TIMESTAMP,
`Seller` VARCHAR(100),
`Description` VARCHAR(4000),
FOREIGN KEY (Seller) REFERENCES Users(UserID)
);

CREATE TABLE IF NOT EXISTS `Categories`(
`ItemID` INTEGER REFERENCES `Items`(`ItemID`),
`Category` VARCHAR(100),
PRIMARY KEY (`ItemID`, `Category`)
);

CREATE TABLE IF NOT EXISTS `Bids` (
`ItemID` INTEGER NOT NULL,
`UserID` VARCHAR(100) NOT NULL,
`BidTime` TIMESTAMP NOT NULL,
`Amount` DECIMAL(8,2) NOT NULL,
PRIMARY KEY (`ItemID`, `UserID`, `BidTime`),
FOREIGN KEY (`ItemID`) REFERENCES `Items`(`ItemID`),
FOREIGN KEY (`UserID`) REFERENCES `Users`(`UserID`)
);
-- Vadym Kharchenko
-- CMSC 320
-- Prof. Adams
-- September 9, 2024

--Step 1: Create SQL DDL
DROP TABLE Customer;
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(30) NOT NULL,
    Address VARCHAR(255)
);

DROP TABLE Movie;
CREATE TABLE Movie (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(30) NOT NULL,
    ReleaseYear INT,
    Director VARCHAR(30),
    Rating VARCHAR(5)
);

DROP TABLE VideoDVD;
CREATE TABLE VideoDVD (
    CopyID INT PRIMARY KEY,
    MovieID INT NOT NULL,
    Format VARCHAR(30) NOT NULL, --'DVD' or 'VHS'
    SellerID INT NOT NULL,
    FeeType VARCHAR(255),
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID),
    FOREIGN KEY (DistributorID) REFERENCES Seller(DistributorID)
);

DROP TABLE Rental;
CREATE TABLE Rental (
    RentalID INT PRIMARY KEY,
    CustomerID INT NOT NULL,
    CopyID INT NOT NULL,
    RentalDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (CopyID) REFERENCES VideoDVD(CopyID)
);

DROP TABLE Fees;
CREATE TABLE Fees (
    FeeID INT PRIMARY KEY,
    RentalID INT NOT NULL,
    FeeType VARCHAR(30) NOT NULL, -- 'Late', 'Damage', 'Rewind'
    Amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (RentalID) REFERENCES Rental(RentalID)
);

DROP TABLE Actor;
CREATE TABLE Actor (
    ActorID INT PRIMARY KEY,
    Name VARCHAR(30) NOT NULL
);

DROP TABLE Seller;
CREATE TABLE Seller (
    SellerID INT PRIMARY KEY,
    CompanyName VARCHAR(50) NOT NULL
);

DROP TABLE Award;
CREATE TABLE Award (
    AwardID INT PRIMARY KEY,
    MovieID INT NOT NULL,
    AwardType VARCHAR(50) NOT NULL, -- 'Oscar', 'Academy Award'
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID)
);

DROP TABLE Movie_Actor;
CREATE TABLE Movie_Actor (
    MovieID INT NOT NULL,
    ActorID INT NOT NULL,
    PRIMARY KEY (MovieID, ActorID),
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID),
    FOREIGN KEY (ActorID) REFERENCES Actor(ActorID)
);

-- Adding ALTER STATEMENTS

ALTER TABLE Customer
ADD Phone VARCHAR(20);

ALTER TABLE Award
ADD Year INT;

ALTER TABLE Seller
ADD Country VARCHAR(100);
-- ### End of Step 1


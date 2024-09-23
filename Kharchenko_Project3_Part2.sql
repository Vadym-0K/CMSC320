-- Vadym Kharchenko
-- CMSC 320
-- Prof. Adams
-- September 9, 2024

--### Step Two: Load Data

INSERT INTO Customer (CustomerID, Name, Address, Phone)
VALUES (1, 'Paul', '123 Main St', '555-1234');

INSERT INTO Customer (CustomerID, Name, Address, Phone)
VALUES (2, 'Jane Smith', '456 Oak St', '555-5678');

INSERT INTO Customer (CustomerID, Name, Address, Phone)
VALUES (3, 'Alice Johnson', '789 Pine St', '555-8765');

INSERT INTO Movie (MovieID, Title, ReleaseYear, Director, Rating)
VALUES (1, 'Inception', 2010, 'Christopher Nolan', 'PG-13');

INSERT INTO Movie (MovieID, Title, ReleaseYear, Director, Rating)
VALUES (2, 'The Dark Knight', 2008, 'Christopher Nolan', 'PG-13');

INSERT INTO Movie (MovieID, Title, ReleaseYear, Director, Rating)
VALUES (3, 'Titanic', 1997, 'James Cameron', 'PG-13');

INSERT INTO VideoDVD (CopyID, MovieID, Format, SellerID, FeeType)
VALUES (1, 1, 'DVD', 1, 'Standard');

INSERT INTO VideoDVD (CopyID, MovieID, Format, SellerID, FeeType)
VALUES (2, 2, 'DVD', 2, 'New Release');

INSERT INTO VideoDVD (CopyID, MovieID, Format, SellerID, FeeType)
VALUES (3, 3, 'VHS', 3, 'Standard');

INSERT INTO Rental (RentalID, CustomerID, CopyID, RentalDate, ReturnDate)
VALUES (1, 1, 1, TO_DATE('2024-09-01', 'YYYY-MM-DD'), TO_DATE('2024-09-05', 'YYYY-MM-DD'));

INSERT INTO Rental (RentalID, CustomerID, CopyID, RentalDate, ReturnDate)
VALUES (2, 2, 2, TO_DATE('2024-09-10', 'YYYY-MM-DD'), TO_DATE('2024-09-15', 'YYYY-MM-DD'));

INSERT INTO Fees (FeeID, RentalID, FeeType, Amount)
VALUES (1, 1, 'Late', 5.00);

INSERT INTO Fees (FeeID, RentalID, FeeType, Amount)
VALUES (2, 2, 'Damage', 10.00);


INSERT INTO Actor (ActorID, Name)
VALUES (1, 'Leonardo DiCaprio');

INSERT INTO Actor (ActorID, Name)
VALUES (2, 'Christian Bale');

INSERT INTO Seller (SellerID, CompanyName, Country)
VALUES (1, 'Amazon', 'USA');

INSERT INTO Seller (SellerID, CompanyName, Country)
VALUES (2, 'Best Buy', 'USA');

INSERT INTO Award (AwardID, MovieID, AwardType, Year)
VALUES (1, 1, 'Oscar', 2010);

INSERT INTO Award (AwardID, MovieID, AwardType, Year)
VALUES (2, 2, 'Academy Award', 2008);

INSERT INTO Movie_Actor (MovieID, ActorID)
VALUES (1, 1);

INSERT INTO Movie_Actor (MovieID, ActorID)
VALUES (2, 2);

-- ### End of Step 2
CREATE TABLE App_Reviews (
    Review_ID NUMBER PRIMARY KEY,
    App_Name VARCHAR2(100),
    Client_ID NUMBER,
    Review_Date DATE,
    Rating NUMBER(2)
);

INSERT INTO App_Reviews (Review_ID, App_Name, Client_ID, Review_Date, Rating)
VALUES (1, 'TaskMaster', 101, TO_DATE('2024-08-01', 'YYYY-MM-DD'), 5);

INSERT INTO App_Reviews (Review_ID, App_Name, Client_ID, Review_Date, Rating)
VALUES (2, 'QuickPay', 102, TO_DATE('2024-08-10', 'YYYY-MM-DD'), 4);

INSERT INTO App_Reviews (Review_ID, App_Name, Client_ID, Review_Date, Rating)
VALUES (3, 'HealthSync', 103, TO_DATE('2024-08-15', 'YYYY-MM-DD'), 3);

INSERT INTO App_Reviews (Review_ID, App_Name, Client_ID, Review_Date, Rating)
VALUES (4, 'FoodFindr', 104, TO_DATE('2024-08-20', 'YYYY-MM-DD'), 4);


SELECT * FROM App_Reviews;
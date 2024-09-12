ALTER TABLE App_Reviews ADD (
    Reviewer_Comments VARCHAR2(255)
);

UPDATE App_Reviews
SET Reviewer_Comments = 'Excellent task management app!'
WHERE Review_ID = 1;

UPDATE App_Reviews
SET Reviewer_Comments = 'Convenient payment solution.'
WHERE Review_ID = 2;

UPDATE App_Reviews
SET Reviewer_Comments = 'Useful but needs improvement in sync feature.'
WHERE Review_ID = 3;

UPDATE App_Reviews
SET Reviewer_Comments = 'Great app for food recommendations.'
WHERE Review_ID = 4;

SELECT * FROM App_Reviews;
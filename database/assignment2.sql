

INSERT INTO account (account_firstname, account_lastname, account_email, account_password)
VALUES ('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

UPDATE account
SET account_type = 'Admin'
WHERE account_firstname = 'Tony' AND account_lastname = 'Stark' AND account_email = 'tony@starkent.com';

DELETE FROM account
WHERE account_firstname = 'Tony' AND account_lastname = 'Stark' AND account_email = 'tony@starkent.com';

UPDATE inventory
SET inv_make = REPLACE(inv_description, 'small interiors', 'a huge interior')
WHERE inv_id = 10;

SELECT i.inv_make, i.inv_model, c.classification_name
FROM inventory i
JOIN classification c ON i.classification_id = c.classification_id
WHERE c.classification_name = 'Sport';

UPDATE inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/'),
    inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');
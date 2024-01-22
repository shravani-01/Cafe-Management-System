CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone_number VARCHAR(15) NOT NULL,
    loyalty_points INT DEFAULT 0
);


CREATE TABLE staff (
    staff_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(50) NOT NULL
);


CREATE TABLE ingredients (
    ingredient_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL
);


CREATE TABLE inventory (
    ingredient_id INT,
    quantity INT NOT NULL,
    PRIMARY KEY (ingredient_id),
    FOREIGN KEY (ingredient_id) REFERENCES ingredients(ingredient_id)
);


CREATE TABLE menu_items (
    item_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    description TEXT,
    ingredient_id INT, 
    FOREIGN KEY (ingredient_id) REFERENCES ingredients(ingredient_id)
);


CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10, 2) NOT NULL,
    status VARCHAR(20) DEFAULT 'Pending',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    item_id INT,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (item_id) REFERENCES menu_items(item_id)
);

CREATE TABLE promotions (
    promotion_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    discount_percentage INT NOT NULL
);

CREATE TABLE customer_reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    review_text TEXT NOT NULL,
    rating INT NOT NULL,
    review_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_promotions (
    order_id INT,
    promotion_id INT,
    PRIMARY KEY (order_id, promotion_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (promotion_id) REFERENCES promotions(promotion_id)
);



INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (111, 'Abraham John ', 'john.abraham@gmail.com', '229-456-7890', 100);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (223, 'Jane Smith', 'jane.smith@yahoo.com', '987-654-3210', 50);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (312, 'Bobby Johnson', 'bobby.johnson@gmail.com', '808-123-4560', 75);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (423, 'Anissa Williams', 'anissa.williams@gmail.com', '309-623-7192', 120);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (509, 'Charlie Brown', 'charlie.brown@yahoo.com', '719-828-6782', 25);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (600, 'Eva Davis', 'eva.davis@gmail.com', '470-622-9102', 80);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (637, 'Joseph White', 'joseph.white@gmail.com', '463-508-6570', 60);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (898, 'Grace Lee', 'grace.lee@gmail.com', '747-666-6529', 90);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (971, 'Henry Miller', 'henry.miller@yahoo.com', '337-710-8754', 110);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (110, 'Ivy Robinson', 'ivy.robinson@gmail.com', '978-049-6286', 30);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (171, 'Jack Anderson', 'jack.anderson@gmail.com', '651-222-5671', 75);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (812, 'Lily Chen', 'lily.chen@gmail.com', '769-616-5368', 40);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (139, 'Mike Evans', 'mike.evans@gmail.com', '857-888-5187', 95);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (714, 'Nina Foster', 'nina.foster@gmail.com', '980-933-6189', 80);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (105, 'Oliver Garcia', 'oliver.garcia@gmail.com', '701-838-5178', 20);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (165, 'Pamela Harris', 'pamela.harris@gmail.com', '972-456-7890', 60);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (417, 'Quincy Irwin', 'quincy.irwin@gmail.com', '802-589-3892', 110);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (188, 'Rachel Johnson', 'rachel.johnson@gmail.com', '801-669-6480', 30);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (119, 'Samuel Kim', 'samuel.kim@gmail.com', '307-943-6478', 85);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (320, 'Tina Lopez', 'tina.lopez@yahoo.com', '854-107-6172', 50);
    
    INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (800, 'Elsher Hansley', 'elsher.hansley@gmail.com', '747-829-8497', 98);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (666, 'Levine Bardot', 'levine.bardot@gmail.com', '307-478-7289', 55);

INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (728, 'Cassidy Raven', 'cassidy.raven@yahoo.com', '854-018-9209', 83);


INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (387, 'Keller Gonzales', 'Keller.gonzales@yahoo.com', '857-829-4892', 79);


INSERT INTO customers (customer_id, name, email, phone_number, loyalty_points) VALUES
    (829, 'Hope Ledger', 'hope.ledger@yahoo.com', '888-827-8472', 99);




INSERT INTO staff VALUES (1, 'Mark Thompson', 'Barista');
INSERT INTO staff VALUES (4, 'Olivia Foster', 'Cashier');
INSERT INTO staff VALUES (5, 'William Brooks', 'Manager');
INSERT INTO staff VALUES (7, 'Henry Davis', 'Barista');
INSERT INTO staff VALUES (10, 'Chloe Evans', 'Cashier');
INSERT INTO staff VALUES (11, 'Maxine Bennett', 'Barista');
INSERT INTO staff VALUES (15, 'Nathan Carter', 'Cashier');
INSERT INTO staff VALUES (16, 'Sophia Evans', 'Manager');
INSERT INTO staff VALUES (17, 'Ryan Johnson', 'Barista');
INSERT INTO staff VALUES (20, 'Ava Miller', 'Cashier');
INSERT INTO staff VALUES (21, 'Elijah Parker', 'Barista');
INSERT INTO staff VALUES (23, 'Mia Turner', 'Manager');
INSERT INTO staff VALUES (27, 'Lucas Smith', 'Cashier');
INSERT INTO staff VALUES (29, 'Emine Gunay', 'Barista');
INSERT INTO staff VALUES (30, 'Logan Turner', 'Manager');
INSERT INTO staff VALUES (34, 'Ella Davis', 'Cashier');
INSERT INTO staff VALUES (35, 'Noah Clark', 'Barista');
INSERT INTO staff VALUES (36, 'Lily Turner', 'Manager');
INSERT INTO staff VALUES (40, 'Katherine Miller', 'Cashier');




INSERT INTO ingredients VALUES (101, 'Espresso Beans', 'Coffee');
INSERT INTO ingredients VALUES (102, 'Brewed Coffee', 'Coffee');
INSERT INTO ingredients VALUES (103, 'Tazo Tea Leaves', 'Tea');
INSERT INTO ingredients VALUES (104, 'Matcha Green Tea Powder', 'Tea');
INSERT INTO ingredients VALUES (105, 'Milk', 'Dairy');
INSERT INTO ingredients VALUES (106, 'Nonfat Milk', 'Dairy');
INSERT INTO ingredients VALUES (107, 'Soy Milk', 'Dairy');
INSERT INTO ingredients VALUES (108, 'Almond Milk', 'Dairy');
INSERT INTO ingredients VALUES (109, 'Whipped Cream', 'Dairy');
INSERT INTO ingredients VALUES (110, 'Sugar', 'Sweetener');
INSERT INTO ingredients VALUES (111, 'Vanilla Syrup', 'Sweetener');
INSERT INTO ingredients VALUES (112, 'Caramel Syrup', 'Sweetener');
INSERT INTO ingredients VALUES (113, 'Mocha Sauce', 'Sweetener');
INSERT INTO ingredients VALUES (114, 'Hazelnut Syrup', 'Sweetener');
INSERT INTO ingredients VALUES (115, 'Classic Syrup', 'Sweetener');
INSERT INTO ingredients VALUES (116, 'All-Purpose Flour', 'Baking');
INSERT INTO ingredients VALUES (117, 'Chocolate Chips', 'Sweetener');
INSERT INTO ingredients VALUES (118, 'Cocoa Powder', 'Baking');
INSERT INTO ingredients VALUES (119, 'Honey', 'Sweetener');
INSERT INTO ingredients VALUES (120, 'Tazo Tea Leaves (Chai, Green, etc.)', 'Tea');
INSERT INTO ingredients VALUES (121, 'Iced Tea Concentrate', 'Tea');
INSERT INTO ingredients VALUES (122, 'Lemons (for lemonade)', 'Produce');
INSERT INTO ingredients VALUES (123, 'Fresh Basil', 'Produce');
INSERT INTO ingredients VALUES (124, 'Olive Oil', 'Condiment');
INSERT INTO ingredients VALUES (125, 'Ketchup', 'Condiment');
INSERT INTO ingredients VALUES (126, 'Mustard', 'Condiment');
INSERT INTO ingredients VALUES (127, 'Mayonnaise', 'Condiment');
INSERT INTO ingredients VALUES (128, 'Chicken Breast', 'Meat');
INSERT INTO ingredients VALUES (129, 'Salmon Fillet', 'Seafood');
INSERT INTO ingredients VALUES (130, 'Pasta', 'Grains');
INSERT INTO ingredients VALUES (131, 'Basil', 'Herb');
INSERT INTO ingredients VALUES (132, 'Cinnamon', 'Spice');
INSERT INTO ingredients VALUES (133, 'Cheese', 'Dairy');
INSERT INTO ingredients VALUES (134, 'Avocado', 'Produce');
INSERT INTO ingredients VALUES (135, 'Tomatoes', 'Produce');
INSERT INTO ingredients VALUES (136, 'Mixed Vegetables', 'Produce');




INSERT INTO inventory VALUES (101, 200);
INSERT INTO inventory VALUES (102, 500);
INSERT INTO inventory VALUES (103, 100);
INSERT INTO inventory VALUES (104, 50);
INSERT INTO inventory VALUES (105, 200);
INSERT INTO inventory VALUES (106, 150);
INSERT INTO inventory VALUES (107, 300);
INSERT INTO inventory VALUES (108, 50);
INSERT INTO inventory VALUES (109, 75);
INSERT INTO inventory VALUES (110, 120);
INSERT INTO inventory VALUES (111, 80);
INSERT INTO inventory VALUES (112, 150);
INSERT INTO inventory VALUES (113, 200);
INSERT INTO inventory VALUES (114, 100);
INSERT INTO inventory VALUES (115, 30);
INSERT INTO inventory VALUES (116, 80);
INSERT INTO inventory VALUES (117, 40);
INSERT INTO inventory VALUES (118, 60);
INSERT INTO inventory VALUES (119, 90);
INSERT INTO inventory VALUES (120, 25);
INSERT INTO inventory VALUES (121, 15);
INSERT INTO inventory VALUES (122, 25);
INSERT INTO inventory VALUES (123, 10);
INSERT INTO inventory VALUES (124, 40);
INSERT INTO inventory VALUES (125, 60);
INSERT INTO inventory VALUES (126, 30);
INSERT INTO inventory VALUES (127, 45);
INSERT INTO inventory VALUES (128, 70);
INSERT INTO inventory VALUES (129, 35);
INSERT INTO inventory VALUES (130, 20);
INSERT INTO inventory VALUES (131, 12);
INSERT INTO inventory VALUES (132, 50);
INSERT INTO inventory VALUES (133, 90);
INSERT INTO inventory VALUES (134, 18);
INSERT INTO inventory VALUES (135, 60);
INSERT INTO inventory VALUES (136, 30);




INSERT INTO menu_items VALUES (1101, 'Brewed Tazo Tea', 'Hot Beverage', 8, 'Enjoy a comforting cup of Brewed Tazo Tea.', 103);
INSERT INTO menu_items VALUES (1102, 'Brewed Coffee', 'Hot Beverage', 4, 'Classic and aromatic Brewed Coffee.', 102);
INSERT INTO menu_items VALUES (1103, 'Caffe Americano', 'Hot Beverage', 10, 'Experience the boldness of Caffe Americano.', 101);
INSERT INTO menu_items VALUES (1104, 'Nonfat Cappuccino', 'Hot Beverage', 60, 'Indulge in a rich and frothy Nonfat Cappuccino.', 133);
INSERT INTO menu_items VALUES (1106, 'Nonfat Caramel Macchiato', 'Hot Beverage', 140, 'A delightful caramel macchiato made with nonfat milk.', 115);
INSERT INTO menu_items VALUES (1107, 'Caffe Latte', 'Hot Beverage', 150, 'A classic and smooth caffe latte with a perfect balance of espresso and steamed milk.', 116);
INSERT INTO menu_items VALUES (1108, 'Nonfat Vanilla Crème – Hold the Whip', 'Hot Beverage', 150, 'A creamy and nonfat vanilla creme, skip the whipped cream for a lighter option.', 117);
INSERT INTO menu_items VALUES (1109, 'Tazo Full-Leaf Tea Lattes', 'Hot Beverage', 140, 'Indulge in the rich and aromatic Tazo full-leaf tea latte experience.', 115);
INSERT INTO menu_items VALUES (1110, 'Nonfat Caffe Mocha – Hold the Whip', 'Hot Beverage', 170, 'A nonfat caffè mocha with a rich chocolatey flavor, without the whipped cream.', 118);
INSERT INTO menu_items VALUES (1111, 'Soy Tazo Chai Tea Latte', 'Hot Beverage', 160, 'Soy Tazo Chai Tea Latte', 119);
INSERT INTO menu_items VALUES (1112, 'Steamed Apple Juice', 'Hot Beverage', 170, 'Steamed Apple Juice', 120);
INSERT INTO menu_items VALUES (1113, 'Shaken Iced Tazo Passion Tea (Unsweetened)', 'Cold Beverage', 120, 'Refresh with the invigorating Shaken Iced Tazo Passion Tea, unsweetened.', 121);
INSERT INTO menu_items VALUES (1114, 'Iced Brewed Coffee (with Classic Syrup)', 'Cold Beverage', 60, 'Iced Brewed Coffee sweetened with classic syrup.', 122);
INSERT INTO menu_items VALUES (1115, 'Iced Skinny Latte', 'Cold Beverage', 60, 'Iced Skinny Latte for a guilt-free indulgence.', 123);
INSERT INTO menu_items VALUES (1116, 'Caramel Frappuccino Light Blended Coffee', 'Cold Beverage', 100, 'Indulge in the light and delicious Caramel Frappuccino Blended Coffee.', 124);
INSERT INTO menu_items VALUES (1117, 'Shaken Iced Tazo Tea Lemonade', 'Cold Beverage', 100, 'Savor the zesty Shaken Iced Tazo Tea Lemonade.', 126);
INSERT INTO menu_items VALUES (1118, 'Iced Vanilla Latte', 'Cold Beverage', 140, 'Cool down with the Iced Vanilla Latte.', 125);
INSERT INTO menu_items VALUES (1119, 'Nonfat Iced Caramel Macchiato', 'Cold Beverage', 140, 'A nonfat and refreshing Iced Caramel Macchiato.', 127);
INSERT INTO menu_items VALUES (1120, 'Coffee Frappuccino Blended Coffee', 'Cold Beverage', 180, 'Enjoy the rich and blended Coffee Frappuccino.', 128);
INSERT INTO menu_items VALUES (1121, 'Various Handcrafted Options', 'Delicious Sips', 200, 'Explore our various handcrafted beverage options.', 129);
INSERT INTO menu_items VALUES (1122, 'Espresso', 'Caffeine Content', 75, 'Get a quick caffeine boost with our Espresso.', 130);
INSERT INTO menu_items VALUES (1123, 'Frappuccino Blended Beverage', 'Caffeine Content', 197, 'Indulge in the creamy Frappuccino Blended Beverage.', 131);
INSERT INTO menu_items VALUES (1124, 'Caffe Latte', 'Classic Espresso Drinks', 95, 'Classic Caffe Latte for a timeless coffee experience.', 132);
INSERT INTO menu_items VALUES (1126, 'Caffe Americano', 'Classic Espresso Drinks', 150, 'Experience the boldness of Caffe Americano.', 133);
INSERT INTO menu_items VALUES (1127, 'Cappuccino', 'Classic Espresso Drinks', 75, 'Savor the frothy goodness of a classic Cappuccino.', 134);
INSERT INTO menu_items VALUES (1128, 'Espresso', 'Classic Espresso Drinks', 179, 'An intense shot of Espresso for true coffee enthusiasts.', 135);
INSERT INTO menu_items VALUES (1129, 'Skinny Latte (Any Flavour)', 'Classic Espresso Drinks', 120, 'Enjoy a Skinny Latte with your favorite flavor.', 136);
INSERT INTO menu_items VALUES (1130, 'Caramel Macchiato (Without Whipped Cream)', 'Classic Espresso Drinks', 180, 'Classic Caramel Macchiato without the whipped cream.', 136);
INSERT INTO menu_items VALUES (1131, 'Skinny Cinnamon Dolce Latte', 'Hot Beverage', 110, 'Indulge in the Skinny Cinnamon Dolce Latte.', 132);
INSERT INTO menu_items VALUES (1132, 'Cheese Pasta', 'Appetizer', 250, 'Satisfy your cravings with our delectable Cheese Pasta appetizer.', 133);
INSERT INTO menu_items VALUES (1133, 'Avocado Salad', 'Appetizer', 180, 'Refresh with our Avocado Salad appetizer.', 134);
INSERT INTO menu_items VALUES (1134, 'Tomato Basil Bites', 'Appetizer', 300, 'Savor the flavorful Tomato Basil Bites appetizer.', 135);



INSERT INTO orders VALUES (1001, 111, '2023-11-23 08:00:00', 15.99, 'Pending');
INSERT INTO orders VALUES (1002, 223, '2023-11-23 08:00:00', 25.49, 'Completed');
INSERT INTO orders VALUES (1003, 312, '2023-11-23 08:00:00', 18.75, 'Pending');
INSERT INTO orders VALUES (1004, 423, '2023-11-23 08:00:00', 30.00, 'Pending');
INSERT INTO orders VALUES (1005, 509, '2023-11-23 08:00:00', 12.99, 'Pending');
INSERT INTO orders VALUES (1006, 600, '2023-11-23 08:00:00', 22.95, 'Completed');
INSERT INTO orders VALUES (1007, 637, '2023-11-23 08:00:00', 28.50, 'Pending');
INSERT INTO orders VALUES (1008, 898, '2023-11-23 08:00:00', 19.99, 'Pending');
INSERT INTO orders VALUES (1009, 971, '2023-11-23 08:00:00', 10.49, 'Pending');
INSERT INTO orders VALUES (1010, 110, '2023-11-23 08:00:00', 35.25, 'Completed');
INSERT INTO orders VALUES (1011, 171, '2023-11-23 08:00:00', 40.50, 'Pending');
INSERT INTO orders VALUES (1012, 812, '2023-11-23 08:00:00', 15.75, 'Completed');
INSERT INTO orders VALUES (1013, 139, '2023-11-23 08:00:00', 27.25, 'Pending');
INSERT INTO orders VALUES (1014, 714, '2023-11-23 08:00:00', 33.50, 'Pending');
INSERT INTO orders VALUES (1015, 105, '2023-11-23 08:00:00', 18.99, 'Pending');
INSERT INTO orders VALUES (1016, 165, '2023-11-23 08:00:00', 20.95, 'Completed');
INSERT INTO orders VALUES (1017, 417, '2023-11-23 08:00:00', 24.50, 'Pending');
INSERT INTO orders VALUES (1018, 188, '2023-11-23 08:00:00', 29.99, 'Pending');
INSERT INTO orders VALUES (1019, 119, '2023-11-23 08:00:00', 14.49, 'Pending');
INSERT INTO orders VALUES (1020, 320, '2023-11-23 08:00:00', 37.75, 'Completed');
INSERT INTO orders VALUES (1021, 800, '2023-02-16 08:00:00', 145, 'Completed');
INSERT INTO orders VALUES (1022, 666, '2023-07-25 08:00:00', 220, 'Pending');
INSERT INTO orders VALUES (1023, 728, '2023-04-08 08:00:00', 370, 'Completed');
INSERT INTO orders VALUES (1024, 387, '2023-09-17 08:00:00', 410, 'Pending');
INSERT INTO orders VALUES (1025, 829, '2023-03-27 08:00:00', 199, 'Pending');




INSERT INTO order_items VALUES (602, 1001, 1101, 200);
INSERT INTO order_items VALUES (600, 1002, 1102, 100);
INSERT INTO order_items VALUES (627, 1003, 1103, 35);
INSERT INTO order_items VALUES (628, 1004, 1104, 7);
INSERT INTO order_items VALUES (630, 1006, 1106, 9);
INSERT INTO order_items VALUES (631, 1007, 1107, 1);
INSERT INTO order_items VALUES (632, 1008, 1108, 2);
INSERT INTO order_items VALUES (633, 1009, 1109, 3);
INSERT INTO order_items VALUES (634, 1010, 1110, 40);
INSERT INTO order_items VALUES (635, 1011, 1111, 5);
INSERT INTO order_items VALUES (636, 1012, 1112, 60);
INSERT INTO order_items VALUES (637, 1013, 1113, 75);
INSERT INTO order_items VALUES (638, 1014, 1114, 8);
INSERT INTO order_items VALUES (639, 1015, 1115, 90);
INSERT INTO order_items VALUES (640, 1016, 1116, 21);
INSERT INTO order_items VALUES (641, 1017, 1117, 22);
INSERT INTO order_items VALUES (642, 1018, 1118, 23);
INSERT INTO order_items VALUES (643, 1019, 1119, 24);
INSERT INTO order_items VALUES (644, 1020, 1120, 25);
INSERT INTO order_items VALUES (645, 1021, 1121, 26);
INSERT INTO order_items VALUES (646, 1022, 1122, 27);
INSERT INTO order_items VALUES (647, 1023, 1123, 28);
INSERT INTO order_items VALUES (648, 1024, 1124, 29);
INSERT INTO order_items VALUES (649, 1025, 1126, 30);



INSERT INTO promotions VALUES ('1', 'Weekend Special', 'Enjoy special discounts on weekends!', '2023-01-01', '2023-01-15', 150);
INSERT INTO promotions VALUES ('2', 'Happy Hour', 'Discounts on selected drinks from 5 PM to 7 PM', '2023-02-01', '2023-02-28', 100);
INSERT INTO promotions VALUES ('3', 'Loyalty Rewards', 'Earn points for every purchase and get discounts', '2023-03-01', '2023-03-31', 200);
INSERT INTO promotions VALUES ('4', 'Holiday Bonanza', 'Celebrate the holidays with special discounts', '2023-04-01', '2023-04-15', 250);
INSERT INTO promotions VALUES ('5', 'Summer Delights', 'Cool off with refreshing discounts all summer', '2023-05-01', '2023-05-31', 120);
INSERT INTO promotions VALUES ('6', 'Student Discount', 'Exclusive discounts for students with valid ID', '2023-06-01', '2023-06-30', 150);
INSERT INTO promotions VALUES ('7', 'Early Bird Special', 'Get discounts on breakfast items before 9 AM', '2023-07-01', '2023-07-15', 100);
INSERT INTO promotions VALUES ('8', 'Anniversary Celebration', 'Celebrate our anniversary with special offers', '2023-08-01', '2023-08-31', 300);
INSERT INTO promotions VALUES ('9', 'Family Bundle', 'Discounts on family-sized meals', '2023-09-01', '2023-09-30', 180);
INSERT INTO promotions VALUES ('10', 'Grand Opening', 'Special promotions for our grand opening', '2023-10-01', '2023-10-15', 250);
INSERT INTO promotions VALUES ('11', 'Fall Festivities', 'Enjoy discounts on fall-themed treats', '2023-11-01', '2023-11-15', 150);
INSERT INTO promotions VALUES ('12', 'Winter Warm-Up', 'Stay cozy with discounts on hot beverages', '2023-12-01', '2023-12-31', 120);
INSERT INTO promotions VALUES ('13', 'New Year Cheers', 'Celebrate the new year with special discounts', '2024-01-01', '2024-01-15', 200);
INSERT INTO promotions VALUES ('14', 'Valentine Day Special', 'Share the love with discounts on romantic treats', '2024-02-01', '2024-02-14', 140);
INSERT INTO promotions VALUES ('15', 'Spring Fling', 'Welcome spring with discounts on fresh delights', '2024-03-01', '2024-03-31', 180);
INSERT INTO promotions VALUES ('16', 'Easter Treats', 'Hop into savings with Easter-themed discounts', '2024-04-01', '2024-04-15', 150);
INSERT INTO promotions VALUES ('17', 'May Day Delights', 'Celebrate May Day with special offers', '2024-05-01', '2024-05-15', 220);
INSERT INTO promotions VALUES ('18', 'Summer Sizzle', 'Beat the heat with hot discounts', '2024-06-01', '2024-06-30', 250);
INSERT INTO promotions VALUES ('19', 'Independence Day Bash', 'Celebrate freedom with special discounts', '2024-07-01', '2024-07-15', 200);
INSERT INTO promotions VALUES ('20', 'Back-to-School Savings', 'Gear up for school with discounted treats', '2024-08-01', '2024-08-31', 150);
INSERT INTO promotions VALUES ('21', 'Labor Day Weekend', 'Enjoy the long weekend with special discounts', '2024-09-01', '2024-09-30', 180);




INSERT INTO customer_reviews VALUES (71, 111, 'Great coffee and atmosphere!', 5, '2022-11-21');
INSERT INTO customer_reviews VALUES (72, 223, 'Excellent service and delicious pastries.', 4, '2023-10-02');
INSERT INTO customer_reviews VALUES (73, 312, 'The staff is friendly, but the wait times can be long.', 3, '2021-01-23');
INSERT INTO customer_reviews VALUES (74, 423, 'Amazing experience! Will definitely come back.', 5, '2021-09-24');
INSERT INTO customer_reviews VALUES (75, 509, 'Good variety of menu items, but prices are a bit high.', 3, '2022-12-25');
INSERT INTO customer_reviews VALUES (76, 600, 'Fast service and quality food. Love it!', 5, '2023-11-26');
INSERT INTO customer_reviews VALUES (77, 637, 'The coffee could be better, but the desserts are fantastic.', 4, '2019-08-27');
INSERT INTO customer_reviews VALUES (78, 898, 'Friendly staff, but the seating area is a bit cramped.', 3, '2018-03-18');
INSERT INTO customer_reviews VALUES (79, 971, 'Delicious and affordable. A hidden gem!', 5, '2023-11-29');
INSERT INTO customer_reviews VALUES (80, 110, 'The ambiance is nice, but the menu could use more options.', 3, '2012-05-10');
INSERT INTO customer_reviews VALUES (81, 171, 'Fantastic place! Highly recommended.', 5, '2014-12-01');
INSERT INTO customer_reviews VALUES (82, 812, 'Decent food, but the service could be improved.', 3, '2015-12-02');
INSERT INTO customer_reviews VALUES (83, 139, 'Lovely atmosphere and friendly staff.', 4, '2016-12-03');
INSERT INTO customer_reviews VALUES (84, 714, 'Good place to hang out with friends. Enjoyed the music.', 4, '2018-08-04');
INSERT INTO customer_reviews VALUES (85, 105, 'Average experience. Nothing special.', 2, '2013-12-05');




INSERT INTO order_promotions VALUES (1001, 11);
INSERT INTO order_promotions VALUES (1002, 12);
INSERT INTO order_promotions VALUES (1003, 13);
INSERT INTO order_promotions VALUES (1004, 14);
INSERT INTO order_promotions VALUES (1005, 15);
INSERT INTO order_promotions VALUES (1006, 16);
INSERT INTO order_promotions VALUES (1007, 17);
INSERT INTO order_promotions VALUES (1008, 18);
INSERT INTO order_promotions VALUES (1009, 19);
INSERT INTO order_promotions VALUES (1010, 10);





DELIMITER //
CREATE TRIGGER trig_orders
AFTER INSERT ON orders FOR EACH ROW
BEGIN
   INSERT INTO customers VALUES (customer_id, name, email, phone_number, loyalty_points);
   INSERT INTO menu_items VALUES (item_id, name, category, price, description, ingredient_id);
   INSERT INTO order_items VALUES (order_item_id,order_id, item_id, quantity);
   
   UPDATE customers SET name = '', email = '', phone_number = '', loyalty_points = ''
    WHERE customer_id = NEW.customer_id;
	UPDATE order_items SET order_item_id = '', order_id = '', item_id = '', quantity = ''
    WHERE order_id = NEW.order_id;

   END;
//
DELIMITER ;

 INSERT INTO customers VALUES (2001, 'Ira Gunay', 'ira.gunay@gmail.com', '888-921-8736', 173);
 INSERT INTO menu_items VALUES (3000, 'Choclate Latte', 'Hot Beverage', 1901, 'Enjoy a warm cup of hot beverage .', 117);
 INSERT INTO orders VALUES (1026, 2001, '2023-10-02 09:00:00', '69.89', 'Completed');
 INSERT INTO order_items VALUES (1478,1025, 3000, 579);
   
 


DROP TRIGGER IF EXISTS trig_orders;




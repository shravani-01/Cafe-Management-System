

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
    (111, 'John Doe', 'john.doe@gmail.com', '123-456-7890', 100),
    (223, 'Jane Smith', 'jane.smith@gmail.com', '987-654-3210', 50),
    (312, 'Bob Johnson', 'bob.johnson@gmail.com', '555-123-4567', 75),
    (423, 'Alice Williams', 'alice.williams@gmail.com', '222-333-4444', 120),
    (509, 'Charlie Brown', 'charlie.brown@gmail.com', '999-888-7777', 25),
    (600, 'Eva Davis', 'eva.davis@gmail.com', '111-222-3333', 80),
    (637, 'Frank White', 'frank.white@gmail.com', '444-555-6666', 60),
    (898, 'Grace Lee', 'grace.lee@gmail.com', '777-666-5555', 90),
    (971, 'Henry Miller', 'henry.miller@gmail.com', '666-777-8888', 110),
    (110, 'Ivy Robinson', 'ivy.robinson@gmail.com', '888-999-0000', 30),
    (171, 'Jack Anderson', 'jack.anderson@gmail.com', '111-222-3333', 75),
    (012, 'Lily Chen', 'lily.chen@gmail.com', '555-666-7777', 40),
    (139, 'Mike Evans', 'mike.evans@gmail.com', '777-888-9999', 95),
    (714, 'Natalie Foster', 'natalie.foster@gmail.com', '444-333-2222', 80),
    (105, 'Oliver Garcia', 'oliver.garcia@gmail.com', '999-888-7777', 20),
    (165, 'Pamela Harris', 'pamela.harris@gmail.com', '123-456-7890', 60),
    (417, 'Quincy Irwin', 'quincy.irwin@gmail.com', '666-555-4444', 110),
    (188, 'Rachel Johnson', 'rachel.johnson@gmail.com', '777-666-5555', 30),
    (119, 'Samuel Kim', 'samuel.kim@gmail.com', '222-333-4444', 85),
    (320, 'Tina Lopez', 'tina.lopez@gmail.com', '888-777-6666', 50);
    
    
    INSERT INTO staff (staff_id, name, position) VALUES
    (1, 'Mark Thompson', 'Barista'),
    (2, 'Ella Turner', 'Waiter'),
    (3, 'Samuel Parker', 'Chef'),
    (4, 'Olivia Foster', 'Cashier'),
    (5, 'William Brooks', 'Manager'),
    (6, 'Sophie Clark', 'Server'),
    (7, 'Henry Davis', 'Barista'),
    (8, 'Grace Mitchell', 'Waiter'),
    (9, 'Jackson Reed', 'Chef'),
    (10, 'Chloe Evans', 'Cashier'),
    (11, 'Max Bennett', 'Barista'),
    (12, 'Lily Turner', 'Server'),
    (13, 'Oscar Martinez', 'Chef'),
    (14, 'Zoe Harrison', 'Waiter'),
    (15, 'Nathan Carter', 'Cashier'),
    (16, 'Sophia Evans', 'Manager'),
    (17, 'Ryan Johnson', 'Barista'),
    (18, 'Aria Thompson', 'Server'),
    (19, 'Ethan Davis', 'Chef'),
    (20, 'Ava Miller', 'Waiter');




INSERT INTO ingredients (ingredient_id, name, category) VALUES
    (101, 'Espresso Beans', 'Coffee'),
    (102, 'Milk', 'Dairy'),
    (103, 'Sugar', 'Sweetener'),
    (104, 'All-Purpose Flour', 'Baking'),
    (105, 'Chocolate Chips', 'Sweetener'),
    (106, 'Green Tea Leaves', 'Tea'),
    (107, 'Eggs', 'Dairy'),
    (108, 'Vanilla Extract', 'Flavoring'),
    (109, 'Chicken Breast', 'Meat'),
    (110, 'Mixed Vegetables', 'Produce'),
    (111, 'Cocoa Powder', 'Baking'),
    (112, 'Honey', 'Sweetener'),
    (113, 'Olive Oil', 'Condiment'),
    (114, 'Tomatoes', 'Produce'),
    (115, 'Basil', 'Herb'),
    (116, 'Cheese', 'Dairy'),
    (117, 'Lemon Juice', 'Flavoring'),
    (118, 'Salmon Fillet', 'Seafood'),
    (119, 'Pasta', 'Grains'),
    (120, 'Avocado', 'Produce');



INSERT INTO inventory (ingredient_id, quantity) VALUES
    (101, 200),   
    (102, 500),  
    (103, 100),  
    (104, 50),   
    (105, 200),   
    (106, 150),   
    (107, 300),   
    (108, 50),    
    (109, 75),    
    (110, 120),  
    (111, 80),   
    (112, 150),  
    (113, 200),  
    (114, 100),  
    (115, 30),   
    (116, 80),   
    (117, 40),   
    (118, 60),   
    (119, 90),   
    (120, 25);   



INSERT INTO menu_items (item_id, name, category, price, description, ingredient_id) VALUES
    (01, 'Espresso', 'Coffee', 2.99, 'Single shot of espresso', 101),
    (02, 'Cappuccino', 'Coffee', 3.99, 'Espresso with steamed milk foam', 102),
    (03, 'Chocolate Chip Muffin', 'Bakery', 2.49, 'Freshly baked muffin with chocolate chips', 105),
    (04, 'Green Tea Latte', 'Tea', 4.49, 'Matcha green tea with steamed milk', 106),
    (05, 'Chicken Caesar Salad', 'Entree', 8.99, 'Classic Caesar salad with grilled chicken', 109),
    (06, 'Vegetarian Pizza', 'Entree', 10.99, 'Pizza with assorted vegetables', 110),
    (07, 'Vanilla Cupcake', 'Bakery', 1.99, 'Moist vanilla cupcake with buttercream frosting', 108),
    (08, 'Egg Sandwich', 'Breakfast', 5.49, 'Fried egg with cheese on a toasted bun', 107),
    (09, 'Iced Coffee', 'Coffee', 3.49, 'Chilled coffee served over ice', 101),
    (10, 'Fruit Smoothie', 'Beverage', 4.99, 'Blended smoothie with assorted fruits', NULL),
    (11, 'Mocha', 'Coffee', 4.49, 'Espresso with chocolate and steamed milk', 105),
    (12, 'Blueberry Muffin', 'Bakery', 2.99, 'Freshly baked muffin with blueberries', 105),
    (13, 'Chai Latte', 'Tea', 3.99, 'Spiced tea with steamed milk', 106),
    (14, 'Caesar Wrap', 'Entree', 7.99, 'Caesar salad wrapped in a tortilla', 109),
    (15, 'Margherita Pizza', 'Entree', 11.99, 'Classic pizza with tomato, mozzarella, and basil', 110),
    (16, 'Chocolate Cake', 'Dessert', 6.99, 'Rich chocolate cake with ganache', 105),
    (17, 'Bagel with Cream Cheese', 'Breakfast', 4.49, 'Toasted bagel with cream cheese', 107),
    (18, 'Cold Brew', 'Coffee', 3.99, 'Smooth cold brew coffee', 101),
    (19, 'Berry Blast Smoothie', 'Beverage', 5.99, 'Smoothie with mixed berries', NULL),
    (20, 'Hazelnut Latte', 'Coffee', 4.99, 'Espresso with hazelnut flavor and steamed milk', 102);


INSERT INTO orders (order_id, customer_id, total_amount, status)
VALUES
    (1001, 111, 15.99, 'Pending'),
    (1002, 223, 25.49, 'Completed'),
    (1003, 312, 18.75, 'Pending'),
    (1004, 423, 30.00, 'Shipped'),
    (1005, 509, 12.99, 'Pending'),
    (1006, 600, 22.95, 'Completed'),
    (1007, 637, 28.50, 'Pending'),
    (1008, 898, 19.99, 'Shipped'),
    (1009, 971, 10.49, 'Pending'),
    (1010, 110, 35.25, 'Completed'),
    (1011, 171, 40.50, 'Pending'),
    (1012, 012, 15.75, 'Completed'),
    (1013,139, 27.25, 'Pending'),
    (1014, 714, 33.50, 'Shipped'),
    (1015, 105, 18.99, 'Pending'),
    (1016,165,  20.95, 'Completed'),
    (1017, 417, 24.50, 'Pending'),
    (1018, 188,  29.99, 'Shipped'),
    (1019, 119, 14.49, 'Pending'),
    (1020, 320, 37.75, 'Completed');

INSERT INTO order_items (order_item_id, order_id, item_id, quantity)
VALUES
    (602, 1001, 01, 2),
    (600, 1002, 02, 1),
    (627, 1003, 03, 3),
    (628, 1004, 04, 7),
    (629, 1005, 05, 8),
    (630, 1006, 06, 9),
    (631, 1007, 07, 1),
    (632, 1008, 08, 2),
    (633, 1009, 09, 3),
    (634, 1010, 10, 4),
    (635, 1011, 11, 5),
    (636, 1012, 12, 6),
    (637, 1013, 13, 7),
    (638, 1014, 14, 8),
    (639, 1015, 15, 9),
    (640, 1016, 16, 21),
    (641, 1017, 17, 22),
    (642, 1018, 18, 23),
    (643, 1019, 19, 24),
    (644, 1020, 20, 25);


INSERT INTO promotions (name, description, start_date, end_date, discount_percentage)
VALUES
    ('Weekend Special', 'Enjoy special discounts on weekends!', '2023-01-01', '2023-01-15', 15),
    ('Happy Hour', 'Discounts on selected drinks from 5 PM to 7 PM', '2023-02-01', '2023-02-28', 10),
    ('Loyalty Rewards', 'Earn points for every purchase and get discounts', '2023-03-01', '2023-03-31', 20),
    ('Holiday Bonanza', 'Celebrate the holidays with special discounts', '2023-04-01', '2023-04-15', 25),
    ('Summer Delights', 'Cool off with refreshing discounts all summer', '2023-05-01', '2023-05-31', 12),
    ('Student Discount', 'Exclusive discounts for students with valid ID', '2023-06-01', '2023-06-30', 15),
    ('Early Bird Special', 'Get discounts on breakfast items before 9 AM', '2023-07-01', '2023-07-15', 10),
    ('Anniversary Celebration', 'Celebrate our anniversary with special offers', '2023-08-01', '2023-08-31', 30),
    ('Family Bundle', 'Discounts on family-sized meals', '2023-09-01', '2023-09-30', 18),
    ('Grand Opening', 'Special promotions for our grand opening', '2023-10-01', '2023-10-15', 25),
    ('Fall Festivities', 'Enjoy discounts on fall-themed treats', '2023-11-01', '2023-11-15', 15),
    ('Winter Warm-Up', 'Stay cozy with discounts on hot beverages', '2023-12-01', '2023-12-31', 12),
    ('New Year Cheers', 'Celebrate the new year with special discounts', '2024-01-01', '2024-01-15', 20),
    ('Valentine Day Special', 'Share the love with discounts on romantic treats', '2024-02-01', '2024-02-14', 14),
    ('Spring Fling', 'Welcome spring with discounts on fresh delights', '2024-03-01', '2024-03-31', 18),
    ('Easter Treats', 'Hop into savings with Easter-themed discounts', '2024-04-01', '2024-04-15', 15),
    ('May Day Delights', 'Celebrate May Day with special offers', '2024-05-01', '2024-05-15', 22),
    ('Summer Sizzle', 'Beat the heat with hot discounts', '2024-06-01', '2024-06-30', 25),
    ('Independence Day Bash', 'Celebrate freedom with special discounts', '2024-07-01', '2024-07-15', 20),
    ('Back-to-School Savings', 'Gear up for school with discounted treats', '2024-08-01', '2024-08-31', 15),
    ('Labor Day Weekend', 'Enjoy the long weekend with special discounts', '2024-09-01', '2024-09-30', 18);


INSERT INTO customer_reviews (review_id, customer_id, review_text, rating, review_date)
VALUES
    (71, 111, 'Great coffee and atmosphere!', 5, '2022-11-21'),
    (72, 223, 'Excellent service and delicious pastries.', 4, '2023-10-02'),
    (73, 312, 'The staff is friendly, but the wait times can be long.', 3, '2021-01-23'),
    (74, 423, 'Amazing experience! Will definitely come back.', 5, '2021-09-24'),
    (75, 509, 'Good variety of menu items, but prices are a bit high.', 3, '2022-12-25'),
    (76, 600, 'Fast service and quality food. Love it!', 5, '2023-11-26'),
    (77, 637, 'The coffee could be better, but the desserts are fantastic.', 4, '2019-08-27'),
    (78, 898, 'Friendly staff, but the seating area is a bit cramped.', 3, '2018-03-18'),
    (79, 971, 'Delicious and affordable. A hidden gem!', 5, '2023-11-29'),
    (80, 110, 'The ambiance is nice, but the menu could use more options.', 3, '2012-05-10'),
    (81, 171, 'Fantastic place! Highly recommended.', 5, '2014-12-01'),
    (82, 12, 'Decent food, but the service could be improved.', 3, '2015-12-02'),
    (83, 139, 'Lovely atmosphere and friendly staff.', 4, '2016-12-03'),
    (84, 714, 'Good place to hang out with friends. Enjoyed the music.', 4, '2018-08-04'),
    (85, 105, 'Average experience. Nothing special.', 2, '2013-12-05');
    
    
    INSERT INTO order_promotions (order_id, promotion_id)
VALUES
    (1001, 011),
    (1002, 012),
    (1003, 013),
    (1004, 014),
    (1005, 015),
    (1006, 016),
    (1007, 017),
    (1008, 018),
    (1009, 019),
    (1010, 010);




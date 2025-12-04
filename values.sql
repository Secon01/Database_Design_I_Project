USE ht25_1_1dl301_group_74;

-- ==========================================
-- DEPARTMENT
-- ==========================================

INSERT INTO Department (DepartmentID, Title, ShortDescription, Description, ParentDepartmentID) VALUES
(1, 'AltOnline', 'Sweden''s Premier Online Store', 'Welcome to AltOnline AB. Inspired by leading e-commerce giants.', NULL);

-- Level 1
INSERT INTO Department (DepartmentID, Title, ShortDescription, Description, ParentDepartmentID) VALUES
(2, 'Electronics', 'Electronic products', 'Phones, computers, gadgets, and home entertainment.', 1),
(3, 'Home & Living', 'Furniture and interior essentials', 'Products for modern Scandinavian homes.', 1);

-- Level 2 (Electronics)
INSERT INTO Department (DepartmentID, Title, ShortDescription, Description, ParentDepartmentID) VALUES
(4, 'Computers and tablets', 'Computers & mobile devices', 'Desktops, laptops, tablets, and accessories.', 2),
(5, 'TV and video', 'Screens & projection', 'Televisions, projectors, and home cinema equipment.', 2),
(6, 'Audio & HiFi', 'Sound systems', 'Headphones, speakers, and audio equipment.', 2);

-- Level 2 (Home & Living)
INSERT INTO Department (DepartmentID, Title, ShortDescription, Description, ParentDepartmentID) VALUES
(7, 'Furniture', 'Seating & tables', 'Chairs, sofas, and home furnishings.', 3),
(8, 'Kitchenware', 'Cooking essentials', 'Cookware and dining products.', 3),
(9, 'Lighting', 'Lamps & LEDs', 'Home and office lighting solutions.', 3);

-- Level 3 (Computers and tablets)
INSERT INTO Department (DepartmentID, Title, ShortDescription, Description, ParentDepartmentID) VALUES
(10, 'Desktops', 'Stationary PCs', 'Fixed computers for office, home, and gaming.', 4),
(11, 'Laptops', 'Portable computers', 'Lightweight and powerful laptops.', 4),
(12, 'Tablets', 'Touchscreen devices', 'Mobile tablets for work and entertainment.', 4),
(13, 'Accessories', 'Computer accessories', 'Add-ons and extensions for computers and tablets.', 4);

-- Level 4 (Accessories under Computers and tablets)
INSERT INTO Department (DepartmentID, Title, ShortDescription, Description, ParentDepartmentID) VALUES
(14, 'For desktops', 'Desktop accessories', 'Keyboards, mice, and desktop-specific add-ons.', 13),
(15, 'For laptops', 'Laptop accessories', 'Laptop bags, chargers, and upgrades.', 13),
(16, 'For tablets', 'Tablet accessories', 'Styluses, cases, protectors.', 13);

-- Level 3 (TV and video)
INSERT INTO Department (DepartmentID, Title, ShortDescription, Description, ParentDepartmentID) VALUES
(17, 'TVs', 'Televisions', 'LED, OLED, and smart TV units.', 5),
(18, 'Projectors', 'Projection devices', 'Short throw and home cinema projectors.', 5);

-- Level 3 (Audio & HiFi)
INSERT INTO Department (DepartmentID, Title, ShortDescription, Description, ParentDepartmentID) VALUES
(19, 'Headsets', 'Personal audio', 'Wired and wireless headphones.', 6),
(20, 'Loudspeakers', 'Speakers', 'Home and portable loudspeakers.', 6);

-- Level 3 (Furniture)
INSERT INTO Department (DepartmentID, Title, ShortDescription, Description, ParentDepartmentID) VALUES
(21, 'Seating', 'Chairs', 'Ergonomic office and home chairs.', 7),
(22, 'Sofas', 'Lounge seating', 'Comfortable sofas and loungers.', 7);

-- Level 3 (Kitchenware)
INSERT INTO Department (DepartmentID, Title, ShortDescription, Description, ParentDepartmentID) VALUES
(23, 'Pots & Pans', 'Cookware', 'High-quality stainless steel and cast iron pans.', 8);

-- Level 3 (Lighting)
INSERT INTO Department (DepartmentID, Title, ShortDescription, Description, ParentDepartmentID) VALUES
(24, 'Task Lighting', 'Desk lamps', 'Focused lighting for workspaces.', 9),
(25, 'Ambient Lighting', 'Room lighting', 'General-purpose ceiling and wall lights.', 9);

-- ==========================================
-- PRODUCT
-- ==========================================
INSERT INTO Product (ProductID, Title, ShortDescription, Description, BasePriceNet, VATPercent, DiscountPercent, StockQuantity, IsFeatured, DepartmentID) VALUES
-- Desktops (10)
(1, 'Office Mini-PC Pro', 'Compact Desktop', 'Silent, small form-factor PC perfect for reception desks.', 5500.00, 25.00, 0.00, 15, 0, 10),
(2, 'Hydra Gaming Tower', 'RTX 4080 PC', 'Water-cooled gaming rig with extreme performance.', 22000.00, 25.00, 5.00, 5, 1, 10),
-- Laptops (11)
(3, 'EduBook Air 13', 'Student Ultrabook', '13-inch lightweight laptop with all-day battery life.', 7500.00, 25.00, 10.00, 50, 1, 11),
(4, 'WorkBook Pro 16', 'Dev Laptop', '32GB RAM, 1TB SSD powerhouse for developers.', 18000.00, 25.00, 0.00, 10, 0, 11),
-- Tablets (12)
(5, 'Galaxy Tab S9', 'Android Flagship', 'AMOLED screen tablet perfect for media.', 6000.00, 25.00, 0.00, 20, 0, 12),
-- Laptop Acc (13->15)
(6, 'Nordic Commuter Backpack', 'Waterproof Bag', 'Minimalist grey backpack with laptop compartment.', 850.00, 25.00, 0.00, 40, 0, 13),
-- TVs (17)
(7, 'OLED Cinema 65"', '4K OLED TV', 'Perfect blacks and infinite contrast for movies.', 15000.00, 25.00, 20.00, 8, 1, 17),
-- Projectors (18)
(8, 'Portable Mini Beamer', '1080p Projector', 'Battery-powered projector for camping or simple setups.', 3500.00, 25.00, 0.00, 12, 0, 18),
-- Headphones (19)
(9, 'SonicBoom Noise Cancel', 'ANC Headphones', 'Industry-leading active noise cancellation.', 2800.00, 25.00, 15.00, 100, 1, 19),
-- Speakers (20)
(10, 'BassTube Waterproof', 'BT Speaker', 'Rugged outdoor speaker, IP67 rated.', 1100.00, 25.00, 0.00, 45, 0, 20),
-- Chairs (21)
(11, 'ErgoMaster 3000', 'Mesh Chair', 'Breathable mesh back with headrest.', 3500.00, 25.00, 0.00, 25, 1, 21),
-- Lighting (25)
(12, 'Architect Desk Lamp', 'Classic Design', 'Metal body lamp with vintage aesthetic.', 600.00, 25.00, 0.00, 30, 0, 25),
-- Input Devices (14)
(13, 'MechKey RGB TKL', 'Mechanical Keyboard', 'Red switches for fast typing, tenkeyless layout.', 1400.00, 25.00, 5.00, 60, 1, 14),
(14, 'Precision Wireless Mouse', 'Laser Mouse', '4000 DPI sensor with multi-device switching.', 800.00, 25.00, 0.00, 50, 0, 14),
-- Laptop Gear (15)
(15, 'GaN Fast Charger 100W', 'Universal Charger', 'Charges laptops and phones simultaneously.', 600.00, 25.00, 0.00, 150, 0, 15),
(16, 'Neoprene Sleeve 13"', 'Soft Case', 'Basic protection against scratches.', 250.00, 25.00, 0.00, 80, 0, 15),
-- Tablet Gear (16)
(17, 'Active Stylus Gen 2', 'Digital Pencil', 'Tilt sensitivity for digital art.', 900.00, 25.00, 0.00, 30, 0, 16),
(18, 'Folio Keyboard Case', 'Tablet Cover', 'Magnetic keyboard cover.', 1200.00, 25.00, 10.00, 25, 0, 16),
-- Sofas (22)
(19, 'Scandinavian 3-Seater', 'Grey Sofa', 'Modern design with oak legs.', 9500.00, 25.00, 25.00, 4, 1, 22),
(20, 'Reading Armchair', 'Wingback Chair', 'Classic yellow fabric armchair.', 4500.00, 25.00, 0.00, 6, 0, 22),
-- Cookware (23)
(21, 'Cast Iron Skillet', '28cm Pan', 'Pre-seasoned heavy duty skillet.', 700.00, 25.00, 0.00, 40, 1, 23),
(22, 'Stainless Pot Set', '3-Pot Set', 'Induction compatible steel pots.', 1800.00, 25.00, 10.00, 15, 0, 23),
-- Lamps (24)
(23, 'Clamp Monitor Light', 'ScreenBar', 'Saves desk space, no screen glare.', 800.00, 25.00, 0.00, 50, 0, 24),
-- Ceiling Lights (25)
(24, 'Rattan Pendant', 'Boho Lamp', 'Natural material hanging lamp.', 1100.00, 25.00, 0.00, 20, 0, 25),
-- Misc
(25, 'Gift Card 500 SEK', 'Digital Voucher', 'Valid for 1 year.', 500.00, 0.00, 0.00, 9999, 0, 1),
(26, 'Microfiber Cloth XL', 'Cleaning Cloth', 'For screens and glasses.', 99.00, 25.00, 0.00, 300, 0, 2),
(27, 'Zigbee Smart Hub', 'IoT Gateway', 'Connects all smart devices locally.', 800.00, 25.00, 0.00, 30, 1, 3),
(28, 'Compressed Air Can', 'Duster', 'Clean out keyboard dust.', 89.00, 25.00, 0.00, 100, 0, 4),
(29, 'HDMI 2.1 Cable', '8K Cable', 'High speed cable for PS5/Xbox.', 299.00, 25.00, 0.00, 200, 0, 5),
(30, 'RCA to Aux Adapter', 'Audio Adapter', 'Connect old amps to phones.', 149.00, 25.00, 0.00, 150, 0, 6),
(31, 'Allen Key Set', 'Assembly Tool', 'Hex keys for furniture.', 129.00, 25.00, 0.00, 80, 0, 7),
(32, 'Oven Mitts Silicon', 'Heat Protection', 'Heat resistant up to 300C.', 199.00, 25.00, 0.00, 60, 0, 8),
(33, 'Smart RGB Bulb E27', 'Color Bulb', '16 million colors via app.', 199.00, 25.00, 15.00, 200, 1, 9);

-- ==========================================
-- USERS
-- Changes: Table Name -> Users, Name -> UserName, Password -> UserPassword
-- ==========================================
INSERT INTO Users (UserID, Phone, Email, Personnummer, UserName, UserPassword, NewsletterPermission, Street, City, PostalCode) VALUES
(1, '+46701234567', 'anders.s@gmail.com', '199001011234', 'Anders Svensson', 'hash_anders', 1, 'Luthagsesplanaden 12', 'Uppsala', '75225'),
(2, '+46709876543', 'maria.lind@outlook.com', '198505059876', 'Maria Lindberg', 'hash_maria', 1, 'Sysslomansgatan 8', 'Uppsala', '75311'),
(3, '+46735551122', 'johan.k@telia.se', '199512124567', 'Johan Karlsson', 'hash_johan', 0, 'Storgatan 1', 'Uppsala', '75331'),
(4, '+46761112233', 'sofia.e@hotmail.com', '199203031111', 'Sofia Ek', 'hash_sofia', 1, 'Flogstavägen 88', 'Uppsala', '75263'),
(5, '+46702223344', 'mohammed.a@gmail.com', '199807072222', 'Mohammed Ali', 'hash_mohammed', 0, 'Kantornsvägen 20', 'Uppsala', '75421'),
(6, '+46703334455', 'elin.n@yahoo.se', '200109093333', 'Elin Nilsson', 'hash_elin', 1, 'Rackarbergsgatan 50', 'Uppsala', '75232'),
(7, '+46704445566', 'kristina.b@live.com', '198004044444', 'Kristina Berg', 'hash_kristina', 1, 'Drottninggatan 10', 'Stockholm', '11151'),
(8, '+46705556677', 'lars.g@gmail.com', '197511115555', 'Lars Gustavsson', 'hash_lars', 0, 'Vaksalagatan 30', 'Uppsala', '75331'),
(9, '+46706667788', 'emma.l@outlook.com', '199902026666', 'Emma Lund', 'hash_emma', 1, 'Sernanders Väg 4', 'Uppsala', '75261'),
(10, '+46707778899', 'oskar.p@gmail.com', '199608087777', 'Oskar Pettersson', 'hash_oskar', 0, 'Dobelnsgatan 2', 'Uppsala', '75237'),
(11, '+46708889900', 'hugo.s@telia.se', '199310108888', 'Hugo Sjögren', 'hash_hugo', 1, 'Kungsgatan 55', 'Uppsala', '75321'),
(12, '+46709990011', 'alice.w@gmail.com', '200201019999', 'Alice Wallin', 'hash_alice', 1, 'Villavägen 5', 'Uppsala', '75236'),
(13, '+46701122334', 'noah.h@hotmail.com', '199406060000', 'Noah Holm', 'hash_noah', 0, 'Svartbäcksgatan 15', 'Uppsala', '75332'),
(14, '+46702233445', 'klara.f@outlook.com', '198812121212', 'Klara Forsberg', 'hash_klara', 1, 'Årstagatan 7', 'Uppsala', '75434'),
(15, '+46703344556', 'viktor.d@gmail.com', '199105053434', 'Viktor Dahlberg', 'hash_viktor', 0, 'Götgatan 12', 'Uppsala', '75222');

-- ==========================================
-- KEYWORD
-- ==========================================
INSERT INTO Keyword (KeywordID, KeywordText) VALUES
(1, 'computer'),
(2, 'portable'),
(3, 'touchscreen'),
(4, 'cinema'),
(5, 'sound'),
(6, 'ergonomic'),
(7, 'illumination'),
(8, 'gamer'),
(9, 'cordless'),
(10, 'bluetooth'),
(11, 'iot'),
(12, 'add-on'),
(13, 'livingroom'),
(14, 'cooking'),
(15, 'bulb'),
(16, 'decor'),
(17, 'uhd'),
(18, 'maintenance');

-- ==========================================
-- PRODUCT_KEYWORD
-- Change: Table Name -> Product_Keyword
-- ==========================================
INSERT INTO Product_Keyword (ProductID, KeywordID) VALUES
-- Desktops (1, 2)
(1, 1), (1, 6), -- Mini PC (Computer, Ergonomic/Office)
(2, 1), (2, 8), -- Gaming Tower (Computer, Gamer)
-- Laptops (3, 4)
(3, 2), (3, 1), -- EduBook (Portable, Computer)
(4, 2), (4, 1), -- WorkBook (Portable, Computer)
-- Tablets (5)
(5, 3), (5, 2), -- Tablet (Touch, Portable)
-- Backpack (6)
(6, 12), (6, 2), -- Backpack (Add-on, Portable)
-- TV (7)
(7, 4), (7, 17), (7, 11), -- TV (Cinema, UHD, IoT)
-- Projector (8)
(8, 4), (8, 2), -- Projector (Cinema, Portable)
-- Headphones (9)
(9, 5), (9, 9), (9, 10), -- Headphones (Sound, Cordless, Bluetooth)
-- Speaker (10)
(10, 5), (10, 9), (10, 2), -- Speaker (Sound, Cordless, Portable)
-- Chair (11)
(11, 6), (11, 16), -- Chair (Ergonomic, Decor)
-- Lamp (12)
(12, 7), (12, 16), -- Lamp (Illumination, Decor)
-- Keyboard (13)
(13, 8), (13, 12), -- KB (Gamer, Add-on)
-- Mouse (14)
(14, 9), (14, 12), -- Mouse (Cordless, Add-on)
-- Charger/Sleeve (15, 16)
(15, 12), (16, 12),
-- Stylus/Case (17, 18)
(17, 3), (18, 12),
-- Sofa/Armchair (19, 20)
(19, 13), (19, 16),
(20, 13), (20, 16),
-- Kitchen (21, 22)
(21, 14), (22, 14),
-- Lights (23, 24)
(23, 7), (24, 7), (24, 13),
-- Misc
(25, 12), (26, 18), (27, 11), (28, 18), (29, 4), (30, 5), (31, 16), (32, 14),
-- Smart Bulb (33)
(33, 11), (33, 7), (33, 15);

-- ==========================================
-- USER_PRODUCT
-- Change: Table Name -> User_Product
-- ==========================================
INSERT INTO User_Product (UserID, ProductID, Stars, ReviewText, ReviewDateTime) VALUES
(1, 9, 5, 'The noise cancellation is magic on the bus.', NOW()),
(2, 9, 3, 'Good sound but they get hot on the ears.', NOW()),
(3, 2, 5, 'Finally I can play at 144Hz without lag!', NOW()),
(1, 7, 5, 'OLED is a game changer. Black is actually black.', NOW()),
(3, 7, 2, 'Burn-in worries me, and the menu is sluggish.', NOW()),
(4, 11, 4, 'My back hurts less after 8 hours of coding.', NOW()),
(6, 3, 5, 'Perfect for lectures at Ångström. Battery lasts all day.', NOW()),
(6, 6, 3, 'Stylish, but not enough padding for the laptop.', NOW()),
(8, 2, 4, 'Expensive, but you get what you pay for.', NOW()),
(9, 21, 5, 'Nothing sticks to this pan. Heavy but great.', NOW()),
(1, 21, 4, 'Sears steaks perfectly.', NOW()),
(12, 19, 4, 'Delivery was slow, but the sofa is beautiful.', NOW()),
(15, 33, 1, 'Won''t connect to my WiFi. Useless.', NOW()),
(2, 33, 5, 'Love the sunrise mode for waking up!', NOW()),
(7, 9, 2, 'Plastic feels cheap for the price.', NOW()),
(14, 11, 5, 'Best investment for my home office.', NOW());

-- ==========================================
-- ORDERS
-- Changes: Table Name -> Orders, Status -> OrderStatus
--          TrackingNumber -> Replaced NULL with '-' because column is NOT NULL
-- ==========================================
INSERT INTO Orders (OrderID, OrderDate, OrderStatus, LastChangeDate, PaymentReference, TrackingNumber, Street, City, PostalCode, UserID) VALUES
(1, NOW(), 'new', NOW(), 'PAY-ANDERS-001', '-', 'Luthagsesplanaden 12', 'Uppsala', '75225', 1),
(2, NOW(), 'open', NOW(), 'PAY-MARIA-002', 'PN-SE-1002', 'Sysslomansgatan 8', 'Uppsala', '75311', 2),
(3, NOW(), 'new', NOW(), 'PAY-JOHAN-003', '-', 'Storgatan 1', 'Uppsala', '75331', 3),
(4, NOW(), 'dispatched', NOW(), 'PAY-SOFIA-004', 'PN-SE-1004', 'Flogstavägen 88', 'Uppsala', '75263', 4),
(5, NOW(), 'dispatched', NOW(), 'PAY-ELIN-005', 'PN-SE-1005', 'Rackarbergsgatan 50', 'Uppsala', '75232', 6),
(6, NOW(), 'new', NOW(), 'PAY-LARS-006', '-', 'Vaksalagatan 30', 'Uppsala', '75331', 8),
(7, NOW(), 'dispatched', NOW(), 'PAY-EMMA-007', 'PN-SE-1007', 'Sernanders Väg 4', 'Uppsala', '75261', 9),
(8, NOW(), 'open', NOW(), 'PAY-ANDERS-008', 'PN-SE-1008', 'Luthagsesplanaden 12', 'Uppsala', '75225', 1),
(9, NOW(), 'dispatched', NOW(), 'PAY-VIKTOR-009', 'PN-SE-1009', 'Götgatan 12', 'Uppsala', '75222', 15),
(10, NOW(), 'new', NOW(), 'PAY-KRISTINA-010', '-', 'Drottninggatan 10', 'Stockholm', '11151', 7),
(11, NOW(), 'dispatched', NOW(), 'PAY-ALICE-011', 'PN-SE-1011', 'Villavägen 5', 'Uppsala', '75236', 12),
(12, NOW(), 'open', NOW(), 'PAY-MARIA-012', 'PN-SE-1012', 'Sysslomansgatan 8', 'Uppsala', '75311', 2),
(13, NOW(), 'new', NOW(), 'PAY-MOHAMMED-013', '-', 'Kantornsvägen 20', 'Uppsala', '75421', 5),
(14, NOW(), 'new', NOW(), 'PAY-OSKAR-014', '-', 'Dobelnsgatan 2', 'Uppsala', '75237', 10);

-- ==========================================
-- ORDER_PRODUCT
-- Change: Table Name -> Order_Product
-- ==========================================
INSERT INTO Order_Product (OrderID, ProductID, Quantity, DiscountPercentAtOrderTime, UnitPriceNetAtOrderTime, VATPercentAtOrderTime) VALUES
-- Order 1: Student Laptop (3) + Headphones (9)
(1, 3, 1, 10.00, 7500.00, 25.00),
(1, 9, 1, 15.00, 2800.00, 25.00),

-- Order 2: OLED TV (7) + 2 Speakers (10)
(2, 7, 1, 20.00, 15000.00, 25.00),
(2, 10, 2, 0.00, 1100.00, 25.00),

-- Order 3: Student Laptop (3)
(3, 3, 1, 10.00, 7500.00, 25.00),

-- Order 4: Desk Lamp (12) + Chair (11)
(4, 12, 1, 0.00, 600.00, 25.00),
(4, 11, 1, 0.00, 3500.00, 25.00),

-- Order 5: Laptop (3) + Backpack (6)
(5, 3, 1, 10.00, 7500.00, 25.00),
(5, 6, 1, 0.00, 850.00, 25.00),

-- Order 6: Gaming PC (2)
(6, 2, 1, 5.00, 22000.00, 25.00),

-- Order 7: Pan (21) + Mitts (32)
(7, 21, 1, 0.00, 700.00, 25.00),
(7, 32, 1, 0.00, 199.00, 25.00),

-- Order 8: Charger (15) + Adapter (30)
(8, 15, 1, 0.00, 600.00, 25.00),
(8, 30, 2, 0.00, 149.00, 25.00),

-- Order 9: 3 Smart Bulbs (33)
(9, 33, 3, 15.00, 199.00, 25.00),

-- Order 10: Tablet (5) + Stylus (17) + Cover (18)
(10, 5, 1, 0.00, 6000.00, 25.00),
(10, 17, 1, 0.00, 900.00, 25.00),
(10, 18, 1, 10.00, 1200.00, 25.00),

-- Order 11: Sofa (19)
(11, 19, 1, 25.00, 9500.00, 25.00),

-- Order 12: Mini PC (1) + Chair (11)
(12, 1, 1, 0.00, 5500.00, 25.00),
(12, 11, 1, 0.00, 3500.00, 25.00),

-- Order 13: Smart Hub (27) + 2 Bulbs (33)
(13, 27, 1, 0.00, 800.00, 25.00),
(13, 33, 2, 15.00, 199.00, 25.00),

-- Order 14: TV (7) + Cable (29) + 2 Speakers (10)
(14, 7, 1, 20.00, 15000.00, 25.00),
(14, 29, 1, 0.00, 299.00, 25.00),
(14, 10, 2, 0.00, 1100.00, 25.00);
CREATE DATABASE SAMFOOD

use samfood
CREATE TABLE Users (
    User_Id INT PRIMARY KEY,
    password VARCHAR(100),
    username VARCHAR(100),
    phone_number VARCHAR(20),
    email VARCHAR(255)
);

CREATE TABLE Driver (
    driver_id BIGINT PRIMARY KEY,
    driver_name VARCHAR(50),
    phone_driver VARCHAR(15),
    license_plate VARCHAR(20)
);

CREATE TABLE Restaurant  (
    restaurant_id BIGINT PRIMARY KEY,
    restaurant_name VARCHAR(100),
    restaurant_address VARCHAR(255)
);

CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    time_order VARCHAR(25),
    order_status VARCHAR(20),
    User_Id INT,
    driver_id BIGINT,
    amounts INT,
    FOREIGN KEY (User_Id) REFERENCES Users(User_Id),
    FOREIGN KEY (driver_id) REFERENCES Driver(driver_id)
);


CREATE TABLE Food (
    food_id BIGINT PRIMARY KEY,
    price INT not null,
    image VARCHAR(20),
    food_name VARCHAR(255),
    restaurant_id BIGINT,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurant(restaurant_id)
);


CREATE TABLE Detail_Pesanan (
    order_id INT,
    food_id BIGINT
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (food_id) REFERENCES food(food_id)
);

CREATE TABLE Payment(
    order_id INT,
    payment_id INT PRIMARY KEY,
    fee_driver FLOAT,
    price_order FLOAT
	FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

CREATE TABLE Method_Payment (
    payment_id INT,
    method VARCHAR(20)
	FOREIGN KEY (payment_id) REFERENCES Payment(payment_id)
);

INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (1, 'putriunyu', 'punyaputri', 81111111111, 'punyaputri@gmail.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (2, 'farahkyut', 'punyafarah', 81111111112, 'punyafarah@gmail.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (3, 'adyscomel', 'punyagladys', 81111111113, 'punyagladys@gmail.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (4, 'afifahmanis', 'punyaifah', 81111111114, 'punyaifah@gmail.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (5, 'awulkyaa', 'punyaaul', 81111111115, 'punyaaulia@gmail.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (6, 'nadaass', 'nadalima', 81111111116, 'nadalima@gmail.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (7, 'alexius', 'alexima', 81111111117, 'alexima@gmail.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (8, 'abiika', 'abimadua', 81111111118, 'abimadua@gmail.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (9, 'androma', 'andromeda', 81111111119, 'andromeda@gmail.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (10, 'adamas', 'adamsatu', 81111111120, 'adamsatu@gmail.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (11, 'selvinaa', 'selviana', 81111111121, 'selviana@gmail.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (12, 'cacama', 'cacacan', 81111111122, 'cacacan@gmail.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (13, 'bram', 'bramii', 81111111123, 'bramii@gmail.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (14, 'batik123', 'aguspratama', 81234560001, 'agus.pratama@gmail.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (15, 'nusantara45', 'dewirahma', 81234560002, 'dewi.rahma@yahoo.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (16, 'pancasila1945', 'budiutomo', 81234560003, 'budi.utomo@outlook.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (17, 'semangat2023', 'citramulia', 81234560004, 'citra.mulia@gmail.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (18, 'merahputih77', 'fauziananda', 81234560005, 'fauzi.ananda@yahoo.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (19, 'garuda88', 'intansari', 81234560006, 'intan.sari@icloud.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (20, 'kembangdesa12', 'yanuarhartono', 81234560007, 'yanuar.hartono@gmail.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (21, 'wayang456', 'syahruliman', 81234560008, 'syahrul.iman@gmail.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (22, 'rendang123', 'anitaputri', 81234560009, 'anita.putri@yahoo.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (23, 'keris999', 'wulandari', 81234560010, 'wulan.dari@gmail.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (24, 'angklung890', 'setiawanjaya', 81234560011, 'setiawan.jaya@gmail.com');
INSERT INTO  Users (User_Id , password, username, phone_number, email) VALUES (25, 'lautbiru33', 'fitrimulia', 81234560012, 'fitri.mulia@yahoo.com');


INSERT INTO  Driver (driver_id, driver_name, phone_driver, license_plate) VALUES (9999991, 'Akbar', 81199999991, 'W 1234 NFK');
INSERT INTO  Driver (driver_id, driver_name, phone_driver, license_plate) VALUES (9999992, 'Danish', 81199999992, 'BK 1234 MDN');
INSERT INTO  Driver (driver_id, driver_name, phone_driver, license_plate) VALUES (9999993, 'Harris', 81199999993, 'H 1234 SMRG');
INSERT INTO  Driver (driver_id, driver_name, phone_driver, license_plate) VALUES (9999994, 'Hubub', 81199999994, 'BA 1234 PDG');
INSERT INTO  Driver (driver_id, driver_name, phone_driver, license_plate) VALUES (9999995, 'Fai', 81199999995, 'AD 1234 STIS');
INSERT INTO  Driver (driver_id, driver_name, phone_driver, license_plate) VALUES (9999996, 'Reza', 81199999996, 'L 1235 BK');
INSERT INTO  Driver (driver_id, driver_name, phone_driver, license_plate) VALUES (9999997, 'Azzam', 81199999997, 'N 2235 PW');
INSERT INTO  Driver (driver_id, driver_name, phone_driver, license_plate) VALUES (9999998, 'Rifqi', 81199999998, 'AB 6589 KL');
INSERT INTO  Driver (driver_id, driver_name, phone_driver, license_plate) VALUES (9999999, 'Haykal', 81199999999, 'D 7569 JK');
INSERT INTO  Driver (driver_id, driver_name, phone_driver, license_plate) VALUES (9999910, 'Fadhil', 81199999910, 'B 4589 MN');
INSERT INTO  Driver (driver_id, driver_name, phone_driver, license_plate) VALUES (9999911, 'Putri', 81199999911, 'AG 2314 JH');
INSERT INTO  Driver (driver_id, driver_name, phone_driver, license_plate) VALUES (9999912, 'Gladis', 81199999912, 'DK 5469 FG');
INSERT INTO  Driver (driver_id, driver_name, phone_driver, license_plate) VALUES (9999913, 'Aul', 81199999913, 'EB 2358 TY');
INSERT INTO  Driver (driver_id, driver_name, phone_driver, license_plate) VALUES (9999914, 'Ifah', 81199999914, 'BP 2511 BM');
INSERT INTO  Driver (driver_id, driver_name, phone_driver, license_plate) VALUES (9999915, 'Meta', 81199999915, 'S 5678 IO');

INSERT INTO  Restaurant  (restaurant_id, restaurant_name, restaurant_address) VALUES (8888888880, 'Mie Gacoan', 'Jl. Surabaya no. 17');
INSERT INTO  Restaurant  (restaurant_id, restaurant_name, restaurant_address) VALUES (8888888881, 'Sego Cokot', 'Jl. Jakarta no. 4');
INSERT INTO  Restaurant  (restaurant_id, restaurant_name, restaurant_address) VALUES (8888888882, 'Nasi Goreng 69', 'Jl. Bandung no. 11');
INSERT INTO  Restaurant  (restaurant_id, restaurant_name, restaurant_address) VALUES (8888888883, 'Umayumcha', 'Jl. Semarang no. 23');
INSERT INTO  Restaurant  (restaurant_id, restaurant_name, restaurant_address) VALUES (8888888884, 'Geprek Kak Rose', 'Jl. Medan no. 8');
INSERT INTO  Restaurant  (restaurant_id, restaurant_name, restaurant_address) VALUES (8888888885, 'Mang Ujo', 'Jl. Malang no. 9');

INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15001, '23:02', 'Pending', 17, 9999991, 1);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15002, '16:34', 'Pending', 2, 9999992, 12);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15003, '06:28', 'Pending', 15, 9999993, 3);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15004, '12:41', 'Cancelled', 12, 9999991, 14);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15005, '01:27', 'Done', 12, 9999993, 14);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15006, '10:59', 'Pending', 5, 9999994, 5);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15007, '15:48', 'Done', 1, 9999991, 6);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15008, '01:32', 'Cancelled', 14, 9999994, 12);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15009, '20:52', 'Pending', 3, 9999992, 14);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15010, '12:55', 'Cancelled', 8, 9999994, 6);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15011, '15:26', 'Cancelled', 9, 9999991, 15);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15012, '14:40', 'Done', 2, 9999995, 2);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15013, '06:24', 'Pending', 2, 9999998, 11);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15014, '10:43', 'Pending', 23, 9999996, 5);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15015, '03:53', 'Pending', 23, 9999994, 12);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15016, '06:24', 'Cancelled', 16, 9999993, 6);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15017, '18:07', 'Done', 17, 9999991, 9);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15018, '22:14', 'Cancelled', 14, 9999992, 1);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15019, '11:17', 'Pending', 20, 9999993, 7);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15020, '21:31', 'Done', 12, 9999997, 2);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15021, '03:22', 'Pending', 5, 9999991, 1);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15022, '11:56', 'Cancelled', 22, 9999996, 11);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15023, '02:31', 'Cancelled', 19, 9999999, 9);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15024, '18:12', 'Pending', 9, 9999995, 2);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15025, '20:06', 'Pending', 25, 9999991, 8);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15026, '13:49', 'Pending', 2, 9999994, 7);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15027, '22:48', 'Done', 13, 9999992, 4);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15028, '07:53', 'Pending', 20, 9999993, 5);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15029, '20:52', 'Done', 7, 9999997, 6);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15030, '18:35', 'Cancelled', 18, 9999991, 13);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15031, '19:14', 'Cancelled', 7, 9999992, 8);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15032, '11:26', 'Pending', 5, 9999998, 1);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15033, '09:01', 'Done', 4, 9999910, 10);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15034, '03:52', 'Pending', 11, 9999994, 1);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15035, '15:27', 'Cancelled', 5, 9999911, 8);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15036, '14:48', 'Pending', 15, 9999994, 13);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15037, '03:14', 'Pending', 18, 9999991, 15);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15038, '22:17', 'Pending', 9, 9999912, 2);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15039, '08:57', 'Cancelled', 1, 9999999, 15);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15040, '18:56', 'Cancelled', 10, 9999913, 7);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15041, '20:59', 'Pending', 24, 9999915, 7);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15042, '09:38', 'Done', 14, 9999991, 3);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15043, '05:26', 'Cancelled', 23, 9999911, 8);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15044, '05:07', 'Pending', 12, 9999999, 15);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15045, '16:53', 'Pending', 2, 9999992, 13);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15046, '09:13', 'Cancelled', 7, 9999913, 5);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15047, '11:47', 'Pending', 23, 9999910, 8);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15048, '05:01', 'Done', 1, 9999914, 8);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15049, '10:05', 'Cancelled', 13, 9999991, 15);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15050, '07:13', 'Pending', 11, 9999914, 13);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15051, '01:49', 'Pending', 16, 9999998, 15);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15052, '20:21', 'Pending', 16, 9999915, 1);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15053, '00:39', 'Pending', 11, 9999995, 14);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15054, '19:50', 'Pending', 6, 9999991, 15);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15055, '06:46', 'Done', 11, 9999993, 9);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15056, '03:23', 'Done', 18, 9999915, 14);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15057, '16:23', 'Cancelled', 17, 9999997, 12);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15058, '18:20', 'Pending', 3, 9999915, 10);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15059, '16:57', 'Pending', 7, 9999910, 7);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15060, '04:03', 'Cancelled', 2, 9999914, 10);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15061, '14:34', 'Pending', 14, 9999991, 7);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15062, '09:46', 'Done', 15, 9999914, 14);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15063, '08:35', 'Cancelled', 5, 9999998, 5);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15064, '16:40', 'Pending', 22, 9999992, 6);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15065, '18:34', 'Done', 21, 9999997, 1);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15066, '16:35', 'Cancelled', 6, 9999912, 3);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15067, '13:51', 'Done', 17, 9999915, 1);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15068, '03:01', 'Done', 23, 9999991, 9);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15069, '06:21', 'Done', 11, 9999914, 11);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15070, '15:53', 'Pending', 1, 9999913, 4);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15071, '08:13', 'Done', 22, 9999997, 1);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15072, '03:08', 'Done', 13, 9999992, 11);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15073, '22:52', 'Pending', 19, 9999999, 5);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15074, '20:50', 'Pending', 21, 9999994, 11);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15075, '13:03', 'Pending', 4, 9999993, 6);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15076, '23:29', 'Done', 5, 9999991, 10);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15077, '00:08', 'Done', 21, 9999998, 14);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15078, '20:58', 'Done', 14, 9999996, 14);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15079, '05:18', 'Pending', 24, 9999993, 13);
INSERT INTO  orders (order_id , time_order, order_status, User_Id , driver_id , amounts) VALUES (15080, '06:33', 'Pending', 17, 9999992, 15);


INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222221, 9000, 'imgfood_01', 'Udang Keju', 8888888880);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222211, 9000, 'imgfood_01a', 'Mie Gacoan', 8888888880);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222220, 9000, 'imgfood_01b', 'Lumpia Udang', 8888888880);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222231, 9000, 'imgfood_01c', 'Udang Keju', 8888888880);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222241, 9000, 'imgfood_01d', 'Mie Hompimpa', 8888888880);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222251, 4000, 'imgfood_01e', 'Teh', 8888888880);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222261, 4000, 'imgfood_01f', 'Air Mineral', 8888888880);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222271, 5000, 'imgfood_01g', 'Teh Tarik', 8888888880);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222281, 6000, 'imgfood_01h', 'Es Buah', 8888888880);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222291, 9000, 'imgfood_01i', 'Siomay', 8888888880);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222101, 9000, 'imgfood_01j', 'Mie Suit', 8888888880);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222111, 6000, 'imgfood_01k', 'Lemon Tea', 8888888880);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222121, 8000, 'imgfood_01k', 'Vanila latte', 8888888880);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222131, 8000, 'imgfood_01l', 'Thai Tea', 8888888880);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222141, 8000, 'imgfood_01m', 'Green Tea', 8888888880);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222151, 8000, 'imgfood_01n', 'Milo', 8888888880);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222202, 6000, 'imgfood_02', 'Ayam Bakar Suwir', 8888888881);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222212, 7000, 'imgfood_02a', 'Kulit', 8888888881);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222222, 6000, 'imgfood_02b', 'Ayam Pedas Kemangi', 8888888881);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222232, 6000, 'imgfood_02c', 'Ayam Kecap Ori', 8888888881);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222242, 6000, 'imgfood_02d', 'Ayam Kecap Pedas', 8888888881);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222252, 6000, 'imgfood_02e', 'Ayam Pepes Kemangi', 8888888881);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222262, 6000, 'imgfood_02f', 'Ayam Oseng Mercon', 8888888881);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222272, 6000, 'imgfood_02g', 'Ayam Krengsengan', 8888888881);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222282, 6000, 'imgfood_2h', 'Ayam Opor', 8888888881);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222292, 8000, 'imgfood_2i', 'Tongkol Suwir', 8888888881);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222102, 7000, 'imgfood_2j', 'Usus', 8888888881);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222112, 7000, 'imgfood_2k', 'Ati', 8888888881);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222122, 6000, 'imgfood_2l', 'Jamur Pedas', 8888888881);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222132, 6000, 'imgfood_2m', 'Jamur Tidak Pedas', 8888888881);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222142, 1000, 'imgfood_2n', 'Kerupuk', 8888888881);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222152, 6000, 'imgfood_2o', 'Ayam Rica-Rica', 8888888881);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222203, 32000, 'imgfood_02', 'Nasi Goreng Mix', 8888888882);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222213, 20000, 'imgfood_03a', 'Nasi Goreng Baso', 8888888882);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222223, 23000, 'imgfood_03b', 'Nasi Goreng Seafood', 8888888882);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222233, 21500, 'imgfood_03c', 'Nasi Capcay', 8888888882);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222243, 21000, 'imgfood_03d', 'Nasi Goreng Ikan Asin', 8888888882);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222253, 21000, 'imgfood_03e', 'Nasi Goreng Ayam', 8888888882);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222263, 20000, 'imgfood_03f', 'Nasi Goreng Pete', 8888888882);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222273, 20000, 'imgfood_03g', 'Nasi Mawut', 8888888882);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222283, 20000, 'imgfood_03h', 'Nasi Goreng Jawa', 8888888882);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222293, 22000, 'imgfood_03i', 'Mie Goreng Ayam', 8888888882);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222103, 22000, 'imgfood_03j', 'Mie Capcay', 8888888882);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222113, 24000, 'imgfood_03k', 'Mie Goreng Spesial', 8888888882);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222123, 16000, 'imgfood_03l', 'Nasi Goreng Kabita', 8888888882);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222204, 3000, 'imgfood_04a', 'Dimsum Wortel', 8888888883);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222214, 3000, 'imgfood_04b', 'Dimsum Jamur', 8888888883);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222224, 5000, 'imgfood_04c', 'Dimsum Mix', 8888888883);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222234, 4000, 'imgfood_04d', 'Dimsum Mozarella', 8888888883);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222244, 4000, 'imgfood_04e', 'Dimsum Telur Puyuh', 8888888883);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222254, 3000, 'imgfood_04f', 'Dimsum Nori', 8888888883);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222264, 3000, 'imgfood_04g', 'Dimsum Mercon', 8888888883);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222274, 3000, 'imgfood_04h', 'Dimsum Ayam', 8888888883);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222284, 4000, 'imgfood_04i', 'Dimsum Udang', 8888888883);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222294, 3000, 'imgfood_04j', 'Dimsum Sosis', 8888888883);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222104, 2000, 'imgfood_04k', 'Dimsum Original', 8888888883);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222114, 4000, 'imgfood_04l', 'Lumpia Kulit Tahu', 8888888883);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222124, 10000, 'imgfood_04m', 'Gyoza', 8888888883);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222134, 5000, 'imgfood_04n', 'Bapau Coklat', 8888888883);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222144, 16000, 'imgfood_04o', 'Es Krim Coklat', 8888888883);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222154, 5000, 'imgfood_04p', 'Es Jeruk', 8888888883);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222164, 4000, 'imgfood_04q', 'Air Mineral', 8888888883);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222174, 3000, 'imgfood_04r', 'Es Teh', 8888888883);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222225, 19000, 'imgfood_05', 'Geprek ayam mozarella', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222205, 15000, 'imgfood_05a', 'Geprek Ayam Sambal Terasi', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222215, 15000, 'imgfood_05b', 'Geprek AyamSambal Matah', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222925, 20000, 'imgfood_05c', 'Geprek Ayam Saus Keju', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222235, 15000, 'imgfood_05d', 'Geprek Ayam Sambal Tomat', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222245, 16000, 'imgfood_05e', 'Geprek Ayam Sambal ijo', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222255, 12000, 'imgfood_05f', 'Geprek Jamur', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222265, 12000, 'imgfood_05g', 'Geprek Bakso', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222275, 10000, 'imgfood_05h', 'Geprek Terong', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222285, 10000, 'imgfood_05i', 'Geprek Tahu', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222295, 10000, 'imgfood_05j', 'Geprek Tempe', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222105, 10000, 'imgfood_05k', 'Geprek Telur', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222115, 7000, 'imgfood_05l', 'Geprek Kol', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222125, 7000, 'imgfood_05m', 'Mie Goreng', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222135, 4000, 'imgfood_05n', 'Nasi Putih', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222145, 2000, 'imgfood_05o', 'Kerupuk', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222155, 4000, 'imgfood_05p', 'Teh Manis', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222175, 3000, 'imgfood_05q', 'Air Mineral', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222185, 5000, 'imgfood_05r', 'Es Jeruk', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222195, 7000, 'imgfood_05s', 'Susu', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220205, 7000, 'imgfood_05t', 'Lemon Tea', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220215, 8000, 'imgfood_05u', 'Green Tea', 8888888884);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220206, 21000, 'imgfood_06a', 'Mie Dok-Dok', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222216, 25000, 'imgfood_06b', 'Magelangan Spesial', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222226, 21000, 'imgfood_06c', 'Mie Tek-Tek', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222236, 23000, 'imgfood_06d', 'Nasi Orak-Arik', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222246, 25000, 'imgfood_06e', 'Magelangan Rendang', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222256, 26000, 'imgfood_06f', 'Mie Bangladesh', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222266, 23000, 'imgfood_06g', 'Magelangan Biasa', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222276, 22000, 'imgfood_06h', 'Nasi Goreng Biasa', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222286, 20000, 'imgfood_06i', 'Nasi Goreng Mentega', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222296, 22000, 'imgfood_06j', 'Nasi Goreng Sosis', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222106, 23000, 'imgfood_06k', 'Nasi Goreng Ayam', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222116, 26000, 'imgfood_06l', 'Nasi Goreng Komplit', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222126, 20000, 'imgfood_06m', 'Mie Orak - Arik', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222136, 25000, 'imgfood_06n', 'Mie Orak - ArikJumbo', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222146, 10000, 'imgfood_06o', 'Indomie Goreng', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222156, 10000, 'imgfood_06p', 'Indomie RebusAyam Bawang', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222166, 20000, 'imgfood_06q', 'Indomie GorengDouble', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222176, 20000, 'imgfood_06r', 'Indomie Rebus Ayam Bawang Double', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222186, 21000, 'imgfood_06s', 'Nasi Omelete Mie', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222222196, 16000, 'imgfood_06t', 'Nasi Telur Sosis', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220207, 22000, 'imgfood_06u', 'Nasi Orak-Arik Jumbo', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220216, 7000, 'imgfood_06v', 'Kopi Hitam', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220226, 6000, 'imgfood_06w', 'Nutrisari Dingin', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220236, 9000, 'imgfood_06x', 'Nutrisari Susu', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220246, 7000, 'imgfood_06y', 'Jahe', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220256, 9000, 'imgfood_06z', 'Good Day Cappucino Dingin', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220266, 7000, 'imgfood_06aa', 'Good Day Cappucino Hangat', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220276, 9000, 'imgfood_06bb', 'Milo Dingin', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220286, 7000, 'imgfood_06cc', 'Milo Hangat', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220296, 3000, 'imgfood_06dd', 'Teh Tawar Hangat ', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220306, 6000, 'imgfood_06ee', 'Teh Manis Dingin', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220316, 5000, 'imgfood_06ff', 'Teh Manis Hangat', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220326, 7000, 'imgfood_06gg', 'Jeruk Dingin', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220336, 6000, 'imgfood_06hh', 'Jeruk Hangat', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220346, 7000, 'imgfood_06ii', 'Extra Joss', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220356, 7000, 'imgfood_06jj', 'Dancow Coklat', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220366, 7000, 'imgfood_06kk', 'Dancow Putih', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220376, 7000, 'imgfood_06ll', 'Beng-Beng Dingin', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220386, 15000, 'imgfood_06mm', 'Omelete Tok', 8888888885);
INSERT INTO  Food (food_id , price, image, food_name, restaurant_id ) VALUES (2222220396, 7000, 'imgfood_06nn', 'Nasi Putih', 8888888885);

INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15001, 2222222221);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15002, 2222222211);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15003, 2222222221);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15004, 2222222231);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15004, 2222222241);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15005, 2222222251);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15005, 2222222261);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15005, 2222222271);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15005, 2222222281);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15007, 2222222291);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15008, 2222222101);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15008, 2222222111);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15008, 2222222121);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15009, 2222222131);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15009, 2222222141);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15009, 2222222151);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15010, 2222222222);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15011, 2222222212);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15012, 2222222222);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15013, 2222222232);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15013, 2222222242);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15014, 2222222252);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15015, 2222222262);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15015, 2222222272);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15015, 2222222282);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15016, 2222222282);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15016, 2222222102);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15016, 2222222112);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15017, 2222220276);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15017, 2222222166);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15018, 2222222195);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15019, 2222222245);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15020, 2222222291);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15021, 2222222292);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15022, 2222222205);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15022, 2222222215);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15022, 2222222245);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15023, 2222222296);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15023, 2222222126);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15024, 2222222213);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15025, 2222222141);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15026, 2222222292);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15027, 2222222293);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15028, 2222222285);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15029, 2222222196);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15030, 2222220376);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15030, 2222220386);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15030, 2222220326);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15031, 2222220266);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15032, 2222222174);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15033, 2222222225);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15033, 2222222245);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15033, 2222222255);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15034, 2222222213);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15035, 2222222263);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15036, 2222222221);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15037, 2222222211);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15037, 2222222261);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15038, 2222222222);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15039, 2222220266);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15039, 2222220296);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15039, 2222220306);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15040, 2222222245);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15041, 2222222235);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15042, 2222222103);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15043, 2222222273);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15043, 2222222283);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15044, 2222222234);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15044, 2222222244);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15044, 2222222254);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15044, 2222222264);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15045, 2222222274);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15045, 2222222204);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15045, 2222222214);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15045, 2222222224);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15045, 2222222234);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15046, 2222222211);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15046, 2222222221);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15047, 2222222292);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15047, 2222222102);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15047, 2222222112);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15047, 2222222122);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15048, 2222222202);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15048, 2222222212);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15048, 2222222222);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15048, 2222222232);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15049, 2222222221);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15049, 2222222211);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15049, 2222222221);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15049, 2222222231);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15049, 2222222241);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15049, 2222222251);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15049, 2222222291);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15049, 2222222101);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15050, 2222222296);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15050, 2222222106);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15050, 2222222116);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15050, 2222222126);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15050, 2222222136);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15050, 2222222146);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15050, 2222222156);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15050, 2222220256);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15051, 2222222125);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15051, 2222222285);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15051, 2222222185);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15052, 2222222286);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15052, 2222222116);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15052, 2222222286);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15052, 2222222166);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15053, 2222220376);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15054, 2222222135);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15055, 2222222223);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15056, 2222222242);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15057, 2222222223);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15058, 2222222271);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15059, 2222222221);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15059, 2222222241);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15060, 2222222141);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15061, 2222222273);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15062, 2222222266);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15062, 2222222216);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15062, 2222222226);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15063, 2222222195);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15064, 2222220215);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15065, 2222222214);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15066, 2222222132);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15067, 2222222136);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15068, 2222222225);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15068, 2222222205);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15068, 2222222215);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15068, 2222222225);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15068, 2222222235);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15069, 2222222245);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15069, 2222222204);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15069, 2222222214);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15069, 2222222224);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15069, 2222222234);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15069, 2222222244);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15069, 2222222254);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15069, 2222222264);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15069, 2222222274);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15070, 2222222221);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15070, 2222222211);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15070, 2222222221);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15070, 2222222241);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15071, 2222222243);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15072, 2222222255);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15072, 2222222265);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15072, 2222222275);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15072, 2222222285);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15072, 2222222295);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15072, 2222222105);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15072, 2222222115);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15072, 2222222125);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15072, 2222222135);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15073, 2222222152);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15073, 2222222203);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15073, 2222222213);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15074, 2222222296);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15074, 2222222276);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15074, 2222222226);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15074, 2222222246);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15075, 2222222152);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15075, 2222222142);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15075, 2222222232);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15075, 2222222252);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15076, 2222222263);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15076, 2222222273);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15077, 2222222244);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15077, 2222222264);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15078, 2222222255);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15078, 2222222235);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15078, 2222222205);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15079, 2222222185);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15080, 2222222106);
INSERT INTO Detail_Pesanan (order_id, food_id) VALUES (15080, 2222220266);

INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15001.0, 5001.0, 20.84, 460.62);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15002.0, 5002.0, 14.57, 92.3);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15003.0, 5003.0, 37.04, 304.72);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15004.0, 5004.0, 11.01, 387.53);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15005.0, 5005.0, 19.08, 30.38);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15006.0, 5006.0, 32.45, 459.03);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15007.0, 5007.0, 47.55, 138.35);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15008.0, 5008.0, 21.27, 187.24);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15009.0, 5009.0, 27.28, 220.24);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15010.0, 5010.0, 25.35, 33.27);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15011.0, 5011.0, 36.6, 196.56);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15012.0, 5012.0, 25.27, 75.65);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15013.0, 5013.0, 11.03, 232.75);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15014.0, 5014.0, 45.46, 215.87);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15015.0, 5015.0, 11.47, 264.34);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15016.0, 5016.0, 25.38, 307.43);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15017.0, 5017.0, 9.58, 470.8);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15018.0, 5018.0, 9.06, 130.41);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15019.0, 5019.0, 16.64, 89.7);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15020.0, 5020.0, 38.13, 252.52);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15021.0, 5021.0, 35.5, 123.66);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15022.0, 5022.0, 25.37, 96.77);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15023.0, 5023.0, 26.17, 98.6);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15024.0, 5024.0, 43.96, 183.63);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15025.0, 5025.0, 7.6, 360.63);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15026.0, 5026.0, 37.15, 305.9);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15027.0, 5027.0, 26.78, 122.25);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15028.0, 5028.0, 24.97, 370.73);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15029.0, 5029.0, 5.19, 279.88);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15030.0, 5030.0, 37.48, 272.68);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15031.0, 5031.0, 4.68, 484.4);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15032.0, 5032.0, 43.1, 55.94);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15033.0, 5033.0, 10.32, 397.67);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15034.0, 5034.0, 35.97, 383.11);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15035.0, 5035.0, 25.4, 432.96);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15036.0, 5036.0, 23.77, 482.9);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15037.0, 5037.0, 49.05, 189.39);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15038.0, 5038.0, 6.56, 179.58);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15039.0, 5039.0, 2.63, 468.28);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15040.0, 5040.0, 2.72, 287.71);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15041.0, 5041.0, 30.88, 162.76);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15042.0, 5042.0, 2.42, 122.8);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15043.0, 5043.0, 10.83, 14.07);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15044.0, 5044.0, 40.36, 109.99);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15045.0, 5045.0, 49.06, 47.61);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15046.0, 5046.0, 37.7, 386.34);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15047.0, 5047.0, 7.53, 98.56);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15048.0, 5048.0, 35.35, 366.84);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15049.0, 5049.0, 4.62, 207.39);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15050.0, 5050.0, 16.51, 322.58);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15051.0, 5051.0, 41.72, 182.25);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15052.0, 5052.0, 48.01, 449.84);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15053.0, 5053.0, 34.19, 346.25);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15054.0, 5054.0, 47.37, 331.72);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15055.0, 5055.0, 14.93, 286.83);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15056.0, 5056.0, 23.46, 32.81);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15057.0, 5057.0, 47.61, 491.84);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15058.0, 5058.0, 38.87, 192.4);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15059.0, 5059.0, 20.7, 125.48);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15060.0, 5060.0, 38.32, 140.79);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15061.0, 5061.0, 40.41, 501.72);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15062.0, 5062.0, 43.11, 406.77);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15063.0, 5063.0, 28.4, 218.52);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15064.0, 5064.0, 21.46, 161.33);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15065.0, 5065.0, 47.02, 490.73);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15066.0, 5066.0, 26.23, 351.51);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15067.0, 5067.0, 37.55, 477.85);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15068.0, 5068.0, 38.1, 159.84);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15069.0, 5069.0, 40.75, 286.57);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15070.0, 5070.0, 4.04, 483.34);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15071.0, 5071.0, 31.66, 366.44);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15072.0, 5072.0, 38.9, 369.11);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15073.0, 5073.0, 46.02, 358.1);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15074.0, 5074.0, 7.84, 433.35);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15075.0, 5075.0, 44.01, 379.13);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15076.0, 5076.0, 20.43, 101.63);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15077.0, 5077.0, 18.2, 166.75);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15078.0, 5078.0, 5.87, 165.94);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15079.0, 5079.0, 15.76, 116.96);
INSERT INTO  Payment  (order_id , payment_id, fee_driver, price_order) VALUES (15080.0, 5080.0, 25.1, 87.13);

INSERT INTO  Method_Payment (payment_id , method) VALUES (5001, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5002, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5003, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5004, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5005, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5006, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5007, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5008, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5009, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5010, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5011, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5012, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5013, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5014, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5015, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5016, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5017, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5018, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5019, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5020, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5021, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5022, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5023, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5024, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5025, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5026, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5027, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5028, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5029, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5030, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5031, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5032, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5033, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5034, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5035, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5036, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5037, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5038, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5039, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5040, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5041, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5042, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5043, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5044, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5045, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5046, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5047, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5048, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5049, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5050, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5051, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5052, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5053, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5054, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5055, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5056, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5057, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5058, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5059, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5060, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5061, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5062, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5063, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5064, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5065, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5066, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5067, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5068, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5069, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5070, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5071, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5072, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5073, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5074, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5075, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5076, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5077, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5078, 'Cash ');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5079, 'Qris');
INSERT INTO  Method_Payment (payment_id , method) VALUES (5080, 'Cash ');

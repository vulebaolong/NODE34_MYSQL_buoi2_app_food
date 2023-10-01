# Xóa table
DROP TABLE user

# Create Data
INSERT INTO user(user_id, full_name, email, password) VALUES
				(1, 'vulebaolong', 'vulebaolong@gmail.com', '123456');
				

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(50),
    email VARCHAR(50),
    password VARCHAR(50)
);

CREATE TABLE food_type (
    type_id INT PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(50)
);

CREATE TABLE food (
    food_id INT PRIMARY KEY AUTO_INCREMENT,
    food_name VARCHAR(50),
    image VARCHAR(255),
    price FLOAT,
    desciption VARCHAR(255),
    type_id INT,
    FOREIGN KEY (type_id) REFERENCES food_type(type_id) ON DELETE CASCADE
);

CREATE TABLE orders (
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    food_id INT,
    FOREIGN KEY (food_id) REFERENCES food(food_id),
    amount INT,
    code VARCHAR(50),
    arr_sub_id VARCHAR(255)
);

CREATE TABLE sub_food (
    sub_id INT PRIMARY KEY AUTO_INCREMENT,
    sub_name VARCHAR(50),
    sub_price FLOAT,
    food_id INT,
    FOREIGN KEY (food_id) REFERENCES food(food_id)
);
CREATE TABLE rate_res (
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    res_id INT,
    FOREIGN KEY (res_id) REFERENCES restaurant(res_id),
    amount INT,
    date_rate DATETIME
);

CREATE TABLE restaurant (
	res_id INT PRIMARY KEY AUTO_INCREMENT,
    res_name VARCHAR(50),
    image VARCHAR(255),
    desciption VARCHAR(255)
);

CREATE TABLE like_res (
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    res_id INT,
    FOREIGN KEY (res_id) REFERENCES restaurant(res_id),
    date_like DATETIME
);

# tìm ra 5 người dùng đã "like" nhiều nhất trong bảng "like_res"
SELECT user_id, COUNT(*) AS like_count
FROM like_res
GROUP BY user_id
ORDER BY like_count DESC
LIMIT 5;

# Tìm ra 2 nhà hàng có lượt "like" nhiều nhất trong bảng "like_res"
SELECT res_id, COUNT(*) AS like_count
FROM like_res
GROUP BY res_id
ORDER BY like_count DESC
LIMIT 2;

# Tìm người đã đặt hàng nhiều nhất trong bảng "orders"
SELECT user_id, COUNT(*) AS order_count
FROM orders
GROUP BY user_id
ORDER BY order_count DESC
LIMIT 1;

# Tìm người dùng không hoạt động trong hệ thống (không đặt hàng, không like, không đánh giá nhà hàng)
SELECT users.user_id, users.full_name, users.email
FROM users
LEFT JOIN orders ON users.user_id = orders.user_id
LEFT JOIN like_res ON users.user_id = like_res.user_id
LEFT JOIN rate_res ON users.user_id = rate_res.user_id
WHERE orders.user_id IS NULL AND like_res.user_id IS NULL AND rate_res.user_id IS NULL;


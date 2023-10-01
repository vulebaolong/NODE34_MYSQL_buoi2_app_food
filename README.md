* 1 - Open docker
* 2 - Open table plus
* 3 - Create new a database in table plus
* 4 - Right click Tables =>  import => From SQL dump.. => select file **db_appfood.sql**
* 5 - Copy and paste code from file app_food.sql to SQL query


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
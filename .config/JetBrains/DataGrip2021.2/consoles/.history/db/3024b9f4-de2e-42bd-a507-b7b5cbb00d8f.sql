USE social;
;-- -. . -..- - / . -. - .-. -.--
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY '1234';
;-- -. . -..- - / . -. - .-. -.--
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234';
;-- -. . -..- - / . -. - .-. -.--
SELECT plugin FROM mysql.user WHERE User = 'root';
;-- -. . -..- - / . -. - .-. -.--
SELECT `User`.`first_name` AS `User_first_name`, `User`.`last_name` AS `User_last_name`, `User`.`id` AS `User_id` FROM `users` `User`;
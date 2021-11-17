SELECT COUNT(*) FROM release_note_user;
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*) FROM users;
;-- -. . -..- - / . -. - .-. -.--
select * from release_note_user where release_note_id = 41;
;-- -. . -..- - / . -. - .-. -.--
select * from release_note_user where release_note_id = 107;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM release_note_user GROUP BY release_note_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*) FROM release_note_user GROUP BY release_note_id;
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*), release_note_id FROM release_note_user GROUP BY release_note_id;
;-- -. . -..- - / . -. - .-. -.--
, release_note_id
FROM release_no;
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*), release_note_id
FROM release_note_user GROUP BY release_note_id;
;-- -. . -..- - / . -. - .-. -.--
# SELECT COUNT(*), release_note_id
# FROM release_note_user
# GROUP BY release_note_id;
;
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(id) FROM users;
;-- -. . -..- - / . -. - .-. -.--
SELECT COUNT(*), release_note_id
FROM release_note_user
GROUP BY release_note_id;
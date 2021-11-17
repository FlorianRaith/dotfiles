SELECT * FROM configurations WHERE project_id <> NULL;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM configurations WHERE project_id <> 0;
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM configurations WHERE project_id <> 0 AND NOT EXISTS (
    SELECT 1 FROM kwl_configurations WHERE configurations.id = kwl_configurations.id
    );
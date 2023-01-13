-- Stored procedure AddBonus that adds a new correction for a student.

DROP PROCEDURE IF EXISTS AddBonus;
DELIMITER $$
CREATE PROCEDURE AddBonus(user_id INT,project_name VARCHAR(255),score FLOAT)
BEGIN
    DECLARE project_id INT;
    DECLARE project_count INT;

    SELECT COUNT(id) INTO project_count FROM projects WHERE name = project_name;
    IF project_count IS NULL THEN
        INSERT INTO projects(name) VALUES (project_name);
    END IF;
    SELECT id
        INTO project_id
        FROM projects
        WHERE name = project_name;
    INSERT INTO corrections(user_id, project_id, score) VALUES (user_id, project_id, score);
END $$
DELIMITER ;

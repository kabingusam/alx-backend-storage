-- a stored procedure ComputeAverageScoreForUser that computes and store the average score for a student

DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;
DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser(user_id INT)
BEGIN
    DECLARE total_score INT;
    DECLARE projects_count INT;


    SELECT SUM(score) INTO total_score FROM corrections WHERE corrections.user_id = user_id;
    SELECT COUNT(*) INTO projects_count FROM corrections WHERE corrections.user_id = user_id;

    UPDATE users;
        

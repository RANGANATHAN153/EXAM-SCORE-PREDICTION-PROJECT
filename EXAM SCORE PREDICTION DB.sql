CREATE DATABASE exam_score_db;
USE exam_score_db;

CREATE TABLE exam_score_prediction (
    student_id INT PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    course VARCHAR(20),
    study_hours DECIMAL(5,2),
    class_attendance DECIMAL(5,2),
    internet_access VARCHAR(5),
    sleep_hours DECIMAL(4,1),
    sleep_quality VARCHAR(10),
    study_method VARCHAR(20),
    facility_rating VARCHAR(10),
    exam_difficulty VARCHAR(10),
    exam_score DECIMAL(5,2)
);

INSERT INTO exam_score_prediction
(student_id, age, gender, course, study_hours, class_attendance,
 internet_access, sleep_hours, sleep_quality, study_method,
 facility_rating, exam_difficulty, exam_score)
VALUES
(201, 20, 'Male',   'Science',   3.5, 80.0, 'Yes', 7.0, 'Average', 'Self Study',  'Good',      'Medium', 72.5),
(202, 21, 'Female', 'Commerce',  6.0, 92.0, 'Yes', 8.0, 'Good',    'Group Study', 'Excellent', 'Easy',   88.0),
(203, 19, 'Male',   'Arts',      2.0, 68.0, 'No',  6.0, 'Poor',    'Self Study',  'Average',   'Hard',   64.0),
(204, 22, 'Female', 'Science',   5.5, 95.0, 'Yes', 7.5, 'Good',    'Online',      'Good',      'Medium', 84.0),
(205, 20, 'Male',   'Commerce',  4.0, 85.0, 'Yes', 7.0, 'Average', 'Self Study',  'Good',      'Medium', 76.0),
(206, 21, 'Female', 'Arts',      3.0, 72.0, 'No',  6.5, 'Poor',    'Group Study', 'Average',   'Hard',   69.0),
(207, 23, 'Male',   'Science',   7.0, 98.0, 'Yes', 8.5, 'Good',    'Online',      'Excellent', 'Easy',   91.0),
(208, 19, 'Female', 'Commerce',  2.5, 65.0, 'No',  6.0, 'Poor',    'Self Study',  'Average',   'Hard',   62.0),
(209, 22, 'Male',   'Arts',      4.5, 88.0, 'Yes', 7.5, 'Good',    'Group Study', 'Good',      'Medium', 79.0),
(210, 20, 'Female', 'Science',   6.5, 94.0, 'Yes', 8.0, 'Good',    'Self Study',  'Excellent', 'Easy',   90.0);

select *
from exam_score_prediction
where student_id between 201 and 210;

select * from exam_score_prediction;

select count(*) as total_students from exam_score_prediction;

SELECT AVG(exam_score) AS avg_score
FROM exam_score_prediction;

SELECT course, AVG(exam_score) AS avg_score
FROM exam_score_prediction
GROUP BY course;

SELECT *
FROM exam_score_prediction
WHERE exam_score > 80;

SET SQL_SAFE_UPDATES = 0;

UPDATE exam_score_prediction
SET exam_score = exam_score + 5
WHERE exam_score > 80;

UPDATE exam_score_prediction
SET sleep_quality = 'Good'
WHERE sleep_hours >= 8;

UPDATE exam_score_prediction
SET exam_score = exam_score - 3
WHERE sleep_quality = 'Poor';

SELECT student_id, exam_score, sleep_quality
FROM exam_score_prediction;

DELETE FROM exam_score_prediction
WHERE student_id = 101;

SELECT
    CASE
        WHEN study_hours < 2 THEN 'Low'
        WHEN study_hours BETWEEN 2 AND 5 THEN 'Medium'
        ELSE 'High'
    END AS study_level,
    AVG(exam_score) AS avg_score
FROM exam_score_prediction
GROUP BY study_level;

SELECT
    AVG(class_attendance) AS avg_attendance,
    AVG(exam_score) AS avg_score
FROM exam_score_prediction;

show databases;

show tables;
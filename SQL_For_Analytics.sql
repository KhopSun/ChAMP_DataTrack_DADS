-- Did this in DBeaver

-- 0) Create Tables

CREATE OR REPLACE TABLE Traffy_Cases AS
SELECT *
FROM READ_CSV_AUTO('/Users/khophersunthonkun/Desktop/Ch/DataTrack/Traffy_Cases_from_2022-05-22_to_2024-12-11.csv', ignore_errors=TRUE);

CREATE OR REPLACE TABLE Log_Traffy_Cases AS
SELECT * 
FROM READ_CSV_AUTO('/Users/khophersunthonkun/Desktop/Ch/DataTrack/Log_from_2022-05-22_to_2024-12-11.csv', ignore_errors=TRUE);


-- 1) Basic

SELECT *
FROM Traffy_Cases
WHERE state = 'finish' AND district = 'หลักสี่'
LIMIT 10


-- 2) Conditionals

SELECT *
,CASE
	WHEN star >= 4 THEN 'Happy'
	WHEN star < 4 THEN 'Not Happy'
	ELSE 'Unknown'
END AS 'happy_lv'
FROM Traffy_Cases
WHERE state = 'finish';

SELECT *
FROM Log_Traffy_Cases
WHERE (state = 'reported' OR state = 'finished')
AND timestamp > TIMESTAMP '2024-01-01 00:00:00';


-- 3) Grouping

SELECT district, COUNT(DISTINCT ticket_id) AS ticket_count
FROM Traffy_Cases
GROUP BY district

SELECT [type], SUM(STAR) AS sum_star, MAX(STAR) AS max_star
FROM Traffy_Cases
GROUP BY [type];

-- 4) Ordering

SELECT district, COUNT(DISTINCT ticket_id) AS ticket_count
FROM Traffy_Cases
GROUP BY district
ORDER BY ticket_count DESC;

SELECT * 
FROM 
(
    SELECT district, COUNT(DISTINCT ticket_id) AS ticket_count 
    FROM Traffy_Cases 
    GROUP BY district
) 
AS CNT_TICKET
WHERE ticket_count > 100;


-- 5) Join

WITH CASES AS (SELECT * FROM Traffy_Cases), LOG AS (SELECT * FROM Log_Traffy_Cases)
SELECT *
FROM CASES c
LEFT JOIN LOG t
ON c.ticket_id = t.ticket_id


-- 6) Challenge
-- Look at the status and timestamp columns. 
-- What are the durations between each status?
-- Create a table with the derived columns.

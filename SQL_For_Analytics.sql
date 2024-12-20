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

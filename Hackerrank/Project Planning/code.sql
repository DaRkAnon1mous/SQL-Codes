SET @project_id = 0;
SET @prev_end_date = NULL;

CREATE TEMPORARY TABLE ProjectGroups AS
SELECT 
    Task_ID,
    Start_Date,
    End_Date,
    @project_id := IF(Start_Date = @prev_end_date, @project_id, @project_id + 1) AS Project_ID,
    @prev_end_date := End_Date AS prev_end
FROM Projects
ORDER BY Start_Date;

SELECT 
    MIN(Start_Date) AS Project_Start, 
    MAX(End_Date) AS Project_End
FROM ProjectGroups
GROUP BY Project_ID
ORDER BY DATEDIFF(MAX(End_Date), MIN(Start_Date)), Project_Start;

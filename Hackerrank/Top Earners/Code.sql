SELECT 
    MAX(salary * months) AS Max_Earnings,
    COUNT(*) AS Employee_Count
FROM Employee
WHERE salary * months = (SELECT MAX(salary * months) FROM Employee);

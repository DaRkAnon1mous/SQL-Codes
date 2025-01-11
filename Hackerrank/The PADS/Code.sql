/*
Enter your query here.
*/
Select 
  concat(Name ,'(',LEFT(Occupation, 1),')') as formatted_name 
from 
  Occupations 
order by 
    Name ASC; 

SELECT 
    CONCAT('There are a total of ', COUNT(*), ' ', LOWER(occupation), 's.') AS result
FROM 
    OCCUPATIONS
GROUP BY 
    occupation
ORDER BY 
    COUNT(*) ASC, LOWER(occupation) ASC;

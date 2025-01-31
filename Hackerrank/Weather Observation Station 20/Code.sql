/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.

Works only for postgrrsql, oracle or sql server
*/


SELECT ROUND(
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY LAT_N), 4
) AS median_value
FROM STATION;

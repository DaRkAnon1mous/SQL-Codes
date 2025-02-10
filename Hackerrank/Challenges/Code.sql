/*
Enter your query here.
*/
WITH ChallengeCounts AS (
    SELECT c.hacker_id, h.name, COUNT(c.challenge_id) AS total_challenges
    FROM Challenges c
    JOIN Hackers h ON c.hacker_id = h.hacker_id
    GROUP BY c.hacker_id, h.name
)
SELECT hacker_id, name, total_challenges
FROM ChallengeCounts
WHERE total_challenges = (SELECT MAX(total_challenges) FROM ChallengeCounts)
   OR total_challenges NOT IN (
       SELECT total_challenges 
       FROM ChallengeCounts 
       GROUP BY total_challenges 
       HAVING COUNT(*) > 1
   )
ORDER BY total_challenges DESC, hacker_id;

/**
* 182. Duplicate Emails
* https://leetcode.com/problems/duplicate-emails/
*/

SELECT Email
FROM (SELECT Email, COUNT(*) as 'Count' FROM Person GROUP BY Email) as t
WHERE t.Count > 1;
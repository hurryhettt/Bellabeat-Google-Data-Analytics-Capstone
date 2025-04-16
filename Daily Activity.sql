##Checking for Null Values
SELECT ID
FROM `bellabeat-456305.DailyActivity.Daily Activity`
WHERE ID IS NULL;


##Checking the number of users
SELECT COUNT(DISTINCT ID) as ID_count
FROM `bellabeat-456305.DailyActivity.Daily Activity`;


##Checking the number of users
SELECT num_active_days, COUNT(num_active_days)
FROM 
  (SELECT ID, COUNT(ActivityDate) AS num_active_days
  FROM `bellabeat-456305.DailyActivity.Daily Activity`
  GROUP BY ID) AS active_days
GROUP BY num_active_days
ORDER BY num_active_days DESC;

##Checking the average steps
SELECT ROUND(AVG(totalsteps),2) AS avg_steps,ROUND(AVG(totaldistance),2) AS avg_distance
FROM `bellabeat-456305.DailyActivity.Daily Activity`;

##Checking the average steps per day
SELECT FORMAT_DATE('%A',ActivityDate) AS day, ROUND(AVG(totalsteps),2) AS avg_steps, 
FROM `bellabeat-456305.DailyActivity.Daily Activity`
GROUP BY day
ORDER BY CASE 
    WHEN day = 'Sunday' THEN 1
    WHEN day = 'Monday' THEN 2
    WHEN day = 'Tuesday' THEN 3
    WHEN day = 'Wednesday' THEN 4
    WHEN day = 'Thursday' THEN 5
    WHEN day = 'Friday' THEN 6
    WHEN day = 'Saturday' THEN 7
  END;


##Checking the average distance
SELECT ROUND(AVG(totaldistance),2) AS avg_distance
FROM `bellabeat-456305.DailyActivity.Daily Activity`;


##average of active minutes
SELECT ROUND(AVG(veryactiveminutes),2) AS Avg_Very_Active,
ROUND(AVG(fairlyactiveminutes),2) AS Avg_Fairly_Active,
ROUND(AVG(lightlyactiveminutes),2) AS Avg_Lightly_Active,
ROUND(AVG(sedentaryminutes),2) AS Avg_Sedentary
FROM `bellabeat-456305.DailyActivity.Daily Activity`;






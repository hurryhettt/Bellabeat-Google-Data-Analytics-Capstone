#Checking for Null Values
SELECT ID
FROM `bellabeat-456305.DailyActivity.Hourly Steps`
WHERE ID IS NULL;


##Checking the number of users
SELECT COUNT(DISTINCT ID) as ID_count
FROM `bellabeat-456305.DailyActivity.Hourly Steps`;



##average step per hour
SELECT FORMAT_TIMESTAMP('%H:00',activityhour) AS hour,ROUND(AVG(steptotal),2) AS avg_step
FROM `bellabeat-456305.DailyActivity.Hourly Steps`
GROUP BY hour;


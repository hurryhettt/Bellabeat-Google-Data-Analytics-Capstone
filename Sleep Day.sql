#Checking for Null Values
SELECT ID
FROM `bellabeat-456305.DailyActivity.Sleep Day`
WHERE ID IS NULL;


##Checking the number of users
SELECT COUNT(DISTINCT ID) as ID_count
FROM `bellabeat-456305.DailyActivity.Sleep Day`;


##Average hour of sleep per day
SELECT FORMAT_DATE('%A',sleepday) AS day, ROUND(AVG(totalminutesasleep)/60,0) AS avg_hour_of_sleep
FROM `bellabeat-456305.DailyActivity.Sleep Day`
GROUP BY Day
ORDER BY
  CASE day
      WHEN 'Sunday' THEN 1
      WHEN 'Monday' THEN 2
      WHEN 'Tuesday' THEN 3
      WHEN 'Wednesday' THEN 4
      WHEN 'Thursday' THEN 5
      WHEN 'Friday' THEN 6 
      WHEN 'Saturday' THEN 7
  END;


#sleep log
SELECT day_number, COUNT(day_number) AS num_of_users
FROM 
  (SELECT ID, APPROX_COUNT_DISTINCT(sleepday) AS day_number
FROM `bellabeat-456305.DailyActivity.Sleep Day`
GROUP BY ID)
GROUP BY day_number
ORDER by day_number DESC;
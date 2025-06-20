SELECT 
    displayname,
    MAX(s) AS max_speed
FROM 
    `nfl-440315.nfl_big_data_bowl.cleaned_tracking_week_1`
GROUP BY 
    displayname
ORDER BY 
    max_speed DESC
LIMIT 10;

SELECT 
    offenseformation,
    AVG(yardsgained) AS avg_yards_gained
FROM 
    `nfl-440315.nfl_big_data_bowl.cleaned_plays`
GROUP BY 
    offenseformation
ORDER BY 
    avg_yards_gained DESC
LIMIT 10;

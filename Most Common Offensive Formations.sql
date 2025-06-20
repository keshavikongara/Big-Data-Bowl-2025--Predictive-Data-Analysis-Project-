SELECT 
    offenseformation,
    COUNT(*) AS formation_count
FROM 
    `nfl-440315.nfl_big_data_bowl.cleaned_plays`
GROUP BY 
    offenseformation
ORDER BY 
    formation_count DESC
LIMIT 5;


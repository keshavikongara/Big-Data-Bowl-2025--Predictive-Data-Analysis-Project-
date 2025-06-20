SELECT 
    quarter,
    AVG(yardstogo) AS avg_yards_to_go
FROM 
    `nfl-440315.nfl_big_data_bowl.cleaned_plays`
GROUP BY 
    quarter
ORDER BY 
    quarter;

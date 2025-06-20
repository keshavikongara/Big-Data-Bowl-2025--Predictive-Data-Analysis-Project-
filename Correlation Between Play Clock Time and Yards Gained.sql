SELECT 
    ROUND(playclockatsnap) AS play_clock,
    AVG(yardsgained) AS avg_yards_gained
FROM 
    `nfl-440315.nfl_big_data_bowl.cleaned_plays`
GROUP BY 
    play_clock
ORDER BY 
    play_clock DESC;

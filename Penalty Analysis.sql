SELECT 
    penaltynames AS penalty_type,
    COUNT(*) AS penalty_count,
    AVG(penaltyyards) AS avg_penalty_yards
FROM 
    `nfl-440315.nfl_big_data_bowl.Cleaned_player_play`
WHERE 
    penaltynames IS NOT NULL
GROUP BY 
    penalty_type
ORDER BY 
    penalty_count DESC
LIMIT 5;

WITH Player_Distances AS (
    SELECT 
        gameid,
        nflid,
        SUM(dis) AS total_distance
    FROM 
        `nfl-440315.nfl_big_data_bowl.cleaned_tracking_week_*`  -- Uses wildcard to cover weeks 1 to 8
    GROUP BY 
        gameid, nflid
)

SELECT 
    p.displayname AS player_name,
    AVG(pd.total_distance) AS avg_distance_per_game
FROM 
    Player_Distances AS pd
JOIN 
    `nfl-440315.nfl_big_data_bowl.cleaned_players` AS p
ON 
    pd.nflid = p.nflid
GROUP BY 
    player_name
ORDER BY 
    avg_distance_per_game DESC
LIMIT 10;

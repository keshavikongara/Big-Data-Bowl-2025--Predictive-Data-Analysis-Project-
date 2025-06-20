SELECT 
    p.displayname AS player_name,
    AVG(t.s) AS avg_speed,
    AVG(t.a) AS avg_acceleration
FROM 
    `nfl-440315.nfl_big_data_bowl.cleaned_tracking_week_*` AS t
JOIN 
    `nfl-440315.nfl_big_data_bowl.cleaned_players` AS p
ON 
    t.nflid = p.nflid
GROUP BY 
    player_name
ORDER BY 
    avg_speed DESC, avg_acceleration DESC
LIMIT 10;

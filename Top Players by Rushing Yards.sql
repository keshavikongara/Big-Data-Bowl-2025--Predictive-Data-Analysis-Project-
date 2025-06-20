SELECT 
    p.displayname,
    SUM(pp.rushingyards) AS total_rushing_yards
FROM 
    `nfl-440315.nfl_big_data_bowl.Cleaned_player_play` AS pp
JOIN 
    `nfl-440315.nfl_big_data_bowl.cleaned_players` AS p
ON 
    pp.nflid = p.nflid
GROUP BY 
    p.displayname
ORDER BY 
    total_rushing_yards DESC
LIMIT 10;

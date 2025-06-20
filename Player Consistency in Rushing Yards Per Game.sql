SELECT 
    p.displayname AS player_name,
    AVG(pp.rushingyards) AS avg_rushing_yards,
    STDDEV(pp.rushingyards) AS rushing_yards_stddev
FROM 
    `nfl-440315.nfl_big_data_bowl.Cleaned_player_play` AS pp
JOIN 
    `nfl-440315.nfl_big_data_bowl.cleaned_players` AS p
ON 
    pp.nflid = p.nflid
GROUP BY 
    player_name
ORDER BY 
    rushing_yards_stddev ASC, avg_rushing_yards DESC
LIMIT 10;

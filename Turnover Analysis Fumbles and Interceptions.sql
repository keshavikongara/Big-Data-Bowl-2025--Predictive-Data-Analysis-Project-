SELECT 
    p.displayname AS player_name,
    SUM(pp.fumbles) AS total_fumbles,
    SUM(pp.hadinterception) AS total_interceptions
FROM 
    `nfl-440315.nfl_big_data_bowl.Cleaned_player_play` AS pp
JOIN 
    `nfl-440315.nfl_big_data_bowl.cleaned_players` AS p
ON 
    pp.nflid = p.nflid
GROUP BY 
    player_name
ORDER BY 
    total_fumbles DESC, total_interceptions DESC
LIMIT 10;

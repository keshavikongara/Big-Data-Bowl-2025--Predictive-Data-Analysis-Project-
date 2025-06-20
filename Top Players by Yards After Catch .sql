SELECT 
    p.displayname AS player_name,
    SUM(pp.yardagegainedafterthecatch) AS total_yac
FROM 
    `nfl-440315.nfl_big_data_bowl.Cleaned_player_play` AS pp
JOIN 
    `nfl-440315.nfl_big_data_bowl.cleaned_players` AS p
ON 
    pp.nflid = p.nflid
GROUP BY 
    player_name
ORDER BY 
    total_yac DESC
LIMIT 10;

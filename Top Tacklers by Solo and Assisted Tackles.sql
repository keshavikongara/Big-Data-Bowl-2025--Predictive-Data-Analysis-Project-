SELECT 
    p.displayname AS player_name,
    SUM(pp.solotackle) AS total_solo_tackles,
    SUM(pp.tackleassist) AS total_assisted_tackles
FROM 
    `nfl-440315.nfl_big_data_bowl.Cleaned_player_play` AS pp
JOIN 
    `nfl-440315.nfl_big_data_bowl.cleaned_players` AS p
ON 
    pp.nflid = p.nflid
GROUP BY 
    player_name
ORDER BY 
    total_solo_tackles DESC, total_assisted_tackles DESC
LIMIT 10;


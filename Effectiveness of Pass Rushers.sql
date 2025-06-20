SELECT 
    p.displayname AS pass_rusher,
    AVG(pp.timetopressureaspassrusher) AS avg_time_to_pressure
FROM 
    `nfl-440315.nfl_big_data_bowl.Cleaned_player_play` AS pp
JOIN 
    `nfl-440315.nfl_big_data_bowl.cleaned_players` AS p
ON 
    pp.nflid = p.nflid
WHERE 
    pp.wasinitialpassrusher = 1
GROUP BY 
    pass_rusher
ORDER BY 
    avg_time_to_pressure ASC
LIMIT 10;

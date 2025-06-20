SELECT 
    p.displayname AS quarterback,
    COUNTIF(pp.causedpressure = TRUE) AS total_pressures,
    SUM(CAST(pp.sackyardsasoffense AS INT64)) AS total_sack_yards_lost
FROM 
    `nfl-440315.nfl_big_data_bowl.Cleaned_player_play` AS pp
JOIN 
    `nfl-440315.nfl_big_data_bowl.cleaned_players` AS p
ON 
    pp.nflid = p.nflid
GROUP BY 
    quarterback
ORDER BY 
    total_pressures DESC, total_sack_yards_lost DESC
LIMIT 10;


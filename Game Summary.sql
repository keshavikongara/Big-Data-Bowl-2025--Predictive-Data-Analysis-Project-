SELECT
    gameid,
    week,
    hometeamabbr AS home_team,
    visitorteamabbr AS visitor_team,
    homefinalscore AS home_score,
    visitorfinalscore AS visitor_score
FROM
    `nfl-440315.nfl_big_data_bowl.Cleaned_games`
ORDER BY
    week, gameid;
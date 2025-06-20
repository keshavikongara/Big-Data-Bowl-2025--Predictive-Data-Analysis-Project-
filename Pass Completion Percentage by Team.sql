SELECT 
    possessionteam AS team,
    COUNTIF(passresult = 'C') / COUNT(passresult) * 100 AS pass_completion_percentage
FROM 
    `nfl-440315.nfl_big_data_bowl.cleaned_plays`
GROUP BY 
    team
ORDER BY 
    pass_completion_percentage DESC;

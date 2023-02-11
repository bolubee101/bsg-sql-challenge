SELECT wc_players.club, COALESCE(COUNT(galacticos.club), 0) AS galacticos
FROM (
  SELECT DISTINCT club
  FROM wc_players
) AS wc_players
LEFT JOIN (
  SELECT club
  FROM wc_players
  WHERE 
    goals_scored ~ E'^[1-9]\\d*$' AND 
    appearances ~ E'^[1-9]\\d*$' AND 
    CAST(goals_scored AS integer) / CAST(appearances AS integer) >= 0.25
) AS galacticos
ON wc_players.club = galacticos.club
GROUP BY wc_players.club
ORDER BY galacticos DESC;

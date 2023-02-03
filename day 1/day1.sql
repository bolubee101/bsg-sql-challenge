SELECT *
FROM wc_players
ORDER BY player_name ASC, position ASC;

-- Bonus.
-- SELECT *,
-- ROW_NUMBER() OVER(ORDER BY player_name ASC, position ASC) AS SN
-- FROM wc_players
-- ORDER BY player_name ASC, position ASC;
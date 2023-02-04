WITH goal_scorer AS (
  SELECT 
    CONCAT('{"id":', id, ', "nationality":"', nationality, '", "fifa_ranking":', fifa_ranking, ', "national_team_kit_sponsor":"', national_team_kit_sponsor, '", "position":"', position, '", "national_team_jersey_number":', national_team_jersey_number, ', "player_dob":"', player_dob, '", "club":"', club, '", "player_name":"', player_name, '", "appearances":', appearances, ', "goals_scored":', goals_scored, ', "assists_provided":', assists_provided, ', "dribbles_per_90":', dribbles_per_90, ', "interceptions_per_90":', interceptions_per_90, ', "tackles_per_90":', tackles_per_90, ', "total_duels_won_per_90":', total_duels_won_per_90, ', "save_percentage":', save_percentage, ', "clean_sheets":', clean_sheets, ', "brand_sponsorbrand_used":"', brand_sponsorbrand_used, '"}') AS player
  FROM wc_players
  ORDER BY goals_scored DESC
  LIMIT 1
), assist_provider AS (
  SELECT 
    CONCAT('{"id":', id, ', "nationality":"', nationality, '", "fifa_ranking":', fifa_ranking, ', "national_team_kit_sponsor":"', national_team_kit_sponsor, '", "position":"', position, '", "national_team_jersey_number":', national_team_jersey_number, ', "player_dob":"', player_dob, '", "club":"', club, '", "player_name":"', player_name, '", "appearances":', appearances, ', "goals_scored":', goals_scored, ', "assists_provided":', assists_provided, ', "dribbles_per_90":', dribbles_per_90, ', "interceptions_per_90":', interceptions_per_90, ', "tackles_per_90":', tackles_per_90, ', "total_duels_won_per_90":', total_duels_won_per_90, ', "save_percentage":', save_percentage, ', "clean_sheets":', clean_sheets, ', "brand_sponsorbrand_used":"', brand_sponsorbrand_used, '"}') AS player
  FROM wc_players
  ORDER BY assists_provided DESC
  LIMIT 1
)
SELECT 'highest_goal_scorer' AS title, goal_scorer.* FROM goal_scorer
UNION
SELECT 'highest_assist_provider' AS title, assist_provider.* FROM assist_provider;

-- pgsql specific
-- WITH goal_scorer AS (
--     SELECT to_jsonb(wc_players.*) AS player
--     FROM wc_players
--     ORDER BY goals_scored DESC
--     LIMIT 1
-- ), assist_provider AS (
--     SELECT to_jsonb(wc_players.*) AS player
--     FROM wc_players
--     ORDER BY assists_provided DESC
--     LIMIT 1
-- )
-- SELECT 'highest_goal_scorer' AS title, goal_scorer.* FROM goal_scorer
-- UNION
-- SELECT 'highest_assist_provider' AS title, assist_provider.* FROM assist_provider;
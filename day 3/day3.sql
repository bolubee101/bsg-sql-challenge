SELECT 
  position,  
  date_part('year', age(current_date, MIN(player_dob))) - date_part('year', age(current_date, MAX(player_dob))) AS range
FROM 
  wc_players 
GROUP BY 
  position;

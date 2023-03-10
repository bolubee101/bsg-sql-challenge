SELECT league, COUNT(*) AS player_count, array_agg(player_name) AS player_names
FROM wc_players
GROUP BY league

-- Update clubs with respsctive legue PGsql

-- DO $$
-- BEGIN
--   BEGIN
--     ALTER TABLE wc_players ADD COLUMN league VARCHAR(255);
--   EXCEPTION
--     WHEN duplicate_column THEN
--       RAISE NOTICE 'Column league already exists in table wc_players.';
--   END;
-- END $$;

-- UPDATE wc_players
-- SET league =
--   CASE
--     WHEN LOWER(club) = ANY(ARRAY[
--       LOWER('Arsenal'),
--       LOWER('Aston Villa'),
--       LOWER('Brighton & Hove Albion'),
--       LOWER('Brighton'),
--       LOWER('Burnley'),
--       LOWER('Chelsea'),
--       LOWER('Crystal Palace'),
--       LOWER('Everton'),
--       LOWER('Leeds United'),
--       LOWER('Leeds'),
--       LOWER('Leicester City'),
--       LOWER('Leicester'),
--       LOWER('Liverpool'),
--       LOWER('Manchester City'),
--       LOWER('Manchester United'),
--       LOWER('Newcastle United'),
--       LOWER('Newcastle'),
--       LOWER('Norwich City'),
--       LOWER('Southampton'),
--       LOWER('Tottenham Hotspur'),
--       LOWER('Tottenham'),
--       LOWER('Watford'),
--       LOWER('West Ham United'),
--       LOWER('Wolverhampton Wanderers'),
--       LOWER('Wolves')
--     ]) THEN 'English Premier League'

--     WHEN LOWER(club) = ANY(ARRAY[
--       LOWER('Athletic Bilbao'),
--       LOWER('Atlético Madrid'),
--       LOWER('Atletico'),
--       LOWER('Barcelona'),
--       LOWER('Barca'),
--       LOWER('Celta Vigo'),
--       LOWER('Eibar'),
--       LOWER('Elche'),
--       LOWER('Getafe'),
--       LOWER('Granada'),
--       LOWER('Huesca'),
--       LOWER('Levante'),
--       LOWER('Osasuna'),
--       LOWER('Real Betis'),
--       LOWER('Real Madrid'),
--       LOWER('Los Blancos'),
--       LOWER('Real Sociedad'),
--       LOWER('La Real'),
--       LOWER('Sevilla'),
--       LOWER('Valencia'),
--       LOWER('Los Che'),
--       LOWER('Valladolid'),
--       LOWER('Villarreal'),
--       LOWER('The Yellow Submarine')
--     ]) THEN 'La Liga'

--     WHEN LOWER(club) = ANY(ARRAY[
--       LOWER('Atalanta'),
--       LOWER('Benevento'),
--       LOWER('Bologna'),
--       LOWER('Cagliari'),
--       LOWER('Crotone'),
--       LOWER('Fiorentina'),
--       LOWER('La Viola'),
--       LOWER('Genoa'),
--       LOWER('Inter Milan'),
--       LOWER('Inter'),
--       LOWER('Juventus'),
--       LOWER('Juve'),
--       LOWER('Lazio'),
--       LOWER('Milan'),
--       LOWER('Rossoneri'),
--       LOWER('Napoli'),
--       LOWER('Partenopei'),
--       LOWER('Parma'),
--       LOWER('Roma'),
--       LOWER('Giallorossi'),
--       LOWER('Sampdoria'),
--       LOWER('Sassuolo'),
--       LOWER('Spezia'),
--       LOWER('Torino'),
--       LOWER('Il Toro'),
--       LOWER('Udinese')
--     ]) THEN 'Serie A'

-- WHEN LOWER(club) = ANY(ARRAY[
--     LOWER('Angers'), 
--     LOWER('Bordeaux'), 
--     LOWER('Brest'), 
--     LOWER('Dijon'), 
--     LOWER('Lens'), 
--     LOWER('Lille'), 
--     LOWER('Losc'), 
--     LOWER('Lorient'), 
--     LOWER('Marseille'), 
--     LOWER('OM'), 
--     LOWER('Metz'), 
--     LOWER('Monaco'), 
--     LOWER('ASM'), 
--     LOWER('Montpellier'), 
--     LOWER('Nantes'), 
--     LOWER('Nice'), 
--     LOWER('Nimes'), 
--     LOWER('Paris Saint-Germain'), 
--     LOWER('PSG'), LOWER('Rennes'), 
--     LOWER('Saint-Etienne'), 
--     LOWER('ASSE'), 
--     LOWER('Strasbourg'), 
--     LOWER('Toulouse')]) 
--     THEN 'Ligue 1'
--     ELSE 'others'
--   END


SELECT
pass.ID,
pass.game_ID,
(
	SELECT common_name 
	FROM players
	WHERE ID = pass.player_ID) AS passer,
(
	SELECT name
	FROM teams
	WHERE ID = pass.team_ID) AS team,
(
	SELECT common_name 
	FROM players
	WHERE ID = pass.receiver) AS receiver,
pass.start_pos_x AS start_x,
pass.start_pos_y AS start_y,
pass.end_pos_x AS end_x,
pass.end_pos_y AS end_y,
pass.successful
FROM passes as pass;
--v232 每个时代从固定40回合改为35~45回合波动
UPDATE Eras_XP1 SET GameEraMinimumTurns = 35, GameEraMaximumTurns = 45 	WHERE EraType = 'ERA_ANCIENT';			
UPDATE Eras_XP1 SET GameEraMinimumTurns = 35, GameEraMaximumTurns = 45 	WHERE EraType = 'ERA_CLASSICAL';		
UPDATE Eras_XP1 SET GameEraMinimumTurns = 35, GameEraMaximumTurns = 45 	WHERE EraType = 'ERA_MEDIEVAL';			
UPDATE Eras_XP1 SET GameEraMinimumTurns = 35, GameEraMaximumTurns = 45 	WHERE EraType = 'ERA_RENAISSANCE';		
UPDATE Eras_XP1 SET GameEraMinimumTurns = 35, GameEraMaximumTurns = 45 	WHERE EraType = 'ERA_INDUSTRIAL';		
UPDATE Eras_XP1 SET GameEraMinimumTurns = 35, GameEraMaximumTurns = 45 	WHERE EraType = 'ERA_MODERN';			
UPDATE Eras_XP1 SET GameEraMinimumTurns = 35, GameEraMaximumTurns = 45 	WHERE EraType = 'ERA_ATOMIC';			
UPDATE Eras_XP1 SET GameEraMinimumTurns = 35, GameEraMaximumTurns = 45 	WHERE EraType = 'ERA_INFORMATION';
UPDATE Eras_XP1 SET GameEraMaximumTurns = Null 	WHERE EraType = 'ERA_FUTURE';	
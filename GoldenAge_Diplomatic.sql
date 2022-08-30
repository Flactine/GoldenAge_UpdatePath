--v225 间谍
UPDATE UnitOperations SET BaseProbability = 15 WHERE OperationType = 'UNITOPERATION_SPY_RECRUIT_PARTISANS';
UPDATE UnitOperations SET BaseProbability = 13 WHERE OperationType = 'UNITOPERATION_SPY_STEAL_TECH_BOOST';
UPDATE UnitOperations SET BaseProbability = 14 WHERE OperationType = 'UNITOPERATION_SPY_DISRUPT_ROCKETRY';

--v229 删除送外交胜利点数的科技和市政
DELETE FROM TechnologyModifiers WHERE TechnologyType = 'TECH_SEASTEADS' AND ModifierId = 'TECH_SEASTEADS_DIPLOVP';
DELETE FROM CivicModifiers WHERE CivicType = 'CIVIC_GLOBAL_WARMING_MITIGATION' AND ModifierId = 'CIVIC_MITIGATION_GRANT_DIPLOVP';

--v232 平衡各个时代解放城邦后奖励使者数量
UPDATE Eras_XP1 SET LiberatedEnvoys = 2 	WHERE EraType = 'ERA_ANCIENT';			
UPDATE Eras_XP1 SET LiberatedEnvoys = 4 	WHERE EraType = 'ERA_CLASSICAL';		
UPDATE Eras_XP1 SET LiberatedEnvoys = 6 	WHERE EraType = 'ERA_MEDIEVAL';			
UPDATE Eras_XP1 SET LiberatedEnvoys = 8 	WHERE EraType = 'ERA_RENAISSANCE';		
UPDATE Eras_XP1 SET LiberatedEnvoys = 10 	WHERE EraType = 'ERA_INDUSTRIAL';		
UPDATE Eras_XP1 SET LiberatedEnvoys = 12 	WHERE EraType = 'ERA_MODERN';			
UPDATE Eras_XP1 SET LiberatedEnvoys = 14 	WHERE EraType = 'ERA_ATOMIC';			
UPDATE Eras_XP1 SET LiberatedEnvoys = 16 	WHERE EraType = 'ERA_INFORMATION';
UPDATE Eras_XP1 SET LiberatedEnvoys = 18 	WHERE EraType = 'ERA_FUTURE';	

--v236
UPDATE GlobalParameters SET Value = 40 WHERE Name = 'DIPLOMACY_DECLARED_FRIENDSHIP_TIME_LIMIT';
UPDATE GlobalParameters SET Value = 40 WHERE Name = 'DIPLOMACY_ALLIANCE_TIME_LIMIT';
UPDATE GlobalParameters SET Value = 40 WHERE Name = 'DIPLOMACY_DENOUNCE_TIME_LIMIT';
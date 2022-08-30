--V224 非专业化区域加2专家槽位 产出2粮2锤2金
UPDATE Districts SET CitizenSlots = 2 WHERE DistrictType = 'DISTRICT_GOVERNMENT';
UPDATE Districts SET CitizenSlots = 2 WHERE DistrictType = 'DISTRICT_AERODROME';
UPDATE Districts SET CitizenSlots = 2 WHERE DistrictType = 'DISTRICT_AQUEDUCT';
UPDATE Districts SET CitizenSlots = 2 WHERE DistrictType = 'DISTRICT_CANAL';
UPDATE Districts SET CitizenSlots = 2 WHERE DistrictType = 'DISTRICT_DAM';
UPDATE Districts SET CitizenSlots = 2 WHERE DistrictType = 'DISTRICT_NEIGHBORHOOD';
UPDATE Districts SET CitizenSlots = 2 WHERE DistrictType = 'DISTRICT_BATH';
UPDATE Districts SET CitizenSlots = 2 WHERE DistrictType = 'DISTRICT_MBANZA';
UPDATE Districts SET CitizenSlots = 2 WHERE DistrictType = 'DISTRICT_DIPLOMATIC_QUARTER' AND EXISTS (SELECT * FROM Districts WHERE DistrictType='DISTRICT_DIPLOMATIC_QUARTER');
UPDATE Districts SET CitizenSlots = 2 WHERE DistrictType = 'DISTRICT_PRESERVE' AND EXISTS (SELECT * FROM Districts WHERE DistrictType='DISTRICT_PRESERVE');

INSERT OR REPLACE INTO District_CitizenYieldChanges (DistrictType, YieldType, YieldChange) VALUES 
('DISTRICT_GOVERNMENT',  'YIELD_FOOD',       	2), 		
('DISTRICT_GOVERNMENT',  'YIELD_GOLD',       	2), 		 
('DISTRICT_GOVERNMENT',  'YIELD_PRODUCTION',    2),
('DISTRICT_AERODROME',   'YIELD_FOOD',       	2), 		
('DISTRICT_AERODROME',   'YIELD_GOLD',       	2), 		 
('DISTRICT_AERODROME',   'YIELD_PRODUCTION',    2),
('DISTRICT_AQUEDUCT',    'YIELD_FOOD',       	2), 		
('DISTRICT_AQUEDUCT',    'YIELD_GOLD',       	2), 		 
('DISTRICT_AQUEDUCT',    'YIELD_PRODUCTION',    2),
('DISTRICT_CANAL',  	'YIELD_FOOD',       	2), 		
('DISTRICT_CANAL',  	'YIELD_GOLD',       	2), 		 
('DISTRICT_CANAL',  	'YIELD_PRODUCTION',     2),
('DISTRICT_DAM',  		'YIELD_FOOD',       	2), 		
('DISTRICT_DAM',  		'YIELD_GOLD',       	2), 		 
('DISTRICT_DAM',  		'YIELD_PRODUCTION',     2),
('DISTRICT_NEIGHBORHOOD',  'YIELD_FOOD',       	2), 		
('DISTRICT_NEIGHBORHOOD',  'YIELD_GOLD',       	2), 		 
('DISTRICT_NEIGHBORHOOD',  'YIELD_PRODUCTION',  2),
('DISTRICT_BATH',  		'YIELD_FOOD',       	2), 		
('DISTRICT_BATH',  		'YIELD_GOLD',       	2), 		 
('DISTRICT_BATH',  		'YIELD_PRODUCTION',     2),
('DISTRICT_MBANZA',  	'YIELD_FOOD',       	2), 		
('DISTRICT_MBANZA',  	'YIELD_GOLD',       	2), 		 
('DISTRICT_MBANZA',  	'YIELD_PRODUCTION',     2); 		
INSERT OR REPLACE INTO District_CitizenYieldChanges (DistrictType, YieldType, YieldChange) SELECT 
'DISTRICT_DIPLOMATIC_QUARTER',  'YIELD_FOOD',       	2 		 WHERE EXISTS (SELECT * FROM Districts WHERE DistrictType='DISTRICT_DIPLOMATIC_QUARTER');
INSERT OR REPLACE INTO District_CitizenYieldChanges (DistrictType, YieldType, YieldChange) SELECT 
'DISTRICT_DIPLOMATIC_QUARTER',  'YIELD_GOLD',       	2 		 WHERE EXISTS (SELECT * FROM Districts WHERE DistrictType='DISTRICT_DIPLOMATIC_QUARTER');
INSERT OR REPLACE INTO District_CitizenYieldChanges (DistrictType, YieldType, YieldChange) SELECT 
'DISTRICT_DIPLOMATIC_QUARTER',  'YIELD_PRODUCTION',     2 		 WHERE EXISTS (SELECT * FROM Districts WHERE DistrictType='DISTRICT_DIPLOMATIC_QUARTER');
INSERT OR REPLACE INTO District_CitizenYieldChanges (DistrictType, YieldType, YieldChange) SELECT 
'DISTRICT_PRESERVE',  'YIELD_FOOD',       	2 		 WHERE EXISTS (SELECT * FROM Districts WHERE DistrictType='DISTRICT_PRESERVE');
INSERT OR REPLACE INTO District_CitizenYieldChanges (DistrictType, YieldType, YieldChange) SELECT 
'DISTRICT_PRESERVE',  'YIELD_GOLD',       	2 		 WHERE EXISTS (SELECT * FROM Districts WHERE DistrictType='DISTRICT_PRESERVE');
INSERT OR REPLACE INTO District_CitizenYieldChanges (DistrictType, YieldType, YieldChange) SELECT 
'DISTRICT_PRESERVE',  'YIELD_PRODUCTION',   2 		 WHERE EXISTS (SELECT * FROM Districts WHERE DistrictType='DISTRICT_PRESERVE');

--V225 新城市更多人口和单元格
INSERT OR REPLACE INTO TraitModifiers
       (TraitType ,           ModifierId)
SELECT 'TRAIT_LEADER_MAJOR_CIV' ,  'GOLDEN_NEW_CITY_CITIZEN_' ||EraType FROM Eras WHERE EraType <> 'ERA_ANCIENT';
INSERT OR REPLACE INTO TraitModifiers
       (TraitType ,           ModifierId)
SELECT 'TRAIT_LEADER_MAJOR_CIV' ,  'GOLDEN_NEW_CITY_PLOT_' ||EraType FROM Eras WHERE EraType <> 'ERA_ANCIENT';

INSERT OR REPLACE INTO Modifiers
       (ModifierId ,                                ModifierType,                                    		SubjectRequirementSetId)
SELECT 'GOLDEN_NEW_CITY_CITIZEN_' ||EraType,        'MODIFIER_PLAYER_BUILT_CITIES_GRANT_FREE_POPULATION',   'GOLDEN_GAME_ERA_ATLEAST_' ||EraType|| '_REQUIREMENTS' FROM Eras WHERE EraType <> 'ERA_ANCIENT';
INSERT OR REPLACE INTO Modifiers
       (ModifierId ,                                ModifierType,                                    		SubjectRequirementSetId)
SELECT 'GOLDEN_NEW_CITY_PLOT_' ||EraType,  			'MODIFIER_PLAYER_ADJUST_CITY_TILES',   					'GOLDEN_GAME_ERA_ATLEAST_' ||EraType|| '_REQUIREMENTS' FROM Eras WHERE EraType <> 'ERA_ANCIENT';

INSERT OR REPLACE INTO ModifierArguments
       (ModifierId , Name , Value)
SELECT ModifierId , 'Amount' , 1 FROM TraitModifiers WHERE ModifierId LIKE 'GOLDEN_NEW_CITY_CITIZEN_ERA_%';
INSERT OR REPLACE INTO ModifierArguments
       (ModifierId , Name , Value)
SELECT ModifierId , 'Amount' , 1 FROM TraitModifiers WHERE ModifierId LIKE 'GOLDEN_NEW_CITY_PLOT_ERA_%';

--V225 不同时代开局
UPDATE StartEras SET Gold=80
WHERE EraType = 'ERA_ANCIENT';
UPDATE StartEras SET Gold=300, Faith=300, StartingPopulationCapital=4, StartingAmenitiesCapital=1, StartingHousingCapital=1
WHERE EraType = 'ERA_CLASSICAL';
UPDATE StartEras SET Gold=600, Faith=600, StartingPopulationCapital=7, StartingAmenitiesCapital=2, StartingHousingCapital=5, StartingPopulationOtherCities=3, StartingAmenitiesOtherCities=2, StartingHousingOtherCities=1
WHERE EraType = 'ERA_MEDIEVAL';
UPDATE StartEras SET Gold=900, Faith=900, StartingPopulationCapital=10, StartingAmenitiesCapital=4, StartingHousingCapital=9, StartingPopulationOtherCities=4, StartingAmenitiesOtherCities=3, StartingHousingOtherCities=3
WHERE EraType = 'ERA_RENAISSANCE';
UPDATE StartEras SET Gold=1200, Faith=1200, StartingPopulationCapital=13, StartingAmenitiesCapital=5, StartingHousingCapital=13, StartingPopulationOtherCities=5, StartingAmenitiesOtherCities=3, StartingHousingOtherCities=5
WHERE EraType = 'ERA_INDUSTRIAL';
UPDATE StartEras SET Gold=1500, Faith=1500, StartingPopulationCapital=16, StartingAmenitiesCapital=6, StartingHousingCapital=17, StartingPopulationOtherCities=6, StartingAmenitiesOtherCities=4, StartingHousingOtherCities=7
WHERE EraType = 'ERA_MODERN';
UPDATE StartEras SET Gold=1800, Faith=1800, StartingPopulationCapital=19, StartingAmenitiesCapital=8, StartingHousingCapital=21, StartingPopulationOtherCities=7, StartingAmenitiesOtherCities=5, StartingHousingOtherCities=9
WHERE EraType = 'ERA_ATOMIC';
UPDATE StartEras SET Gold=2100, Faith=2100, StartingPopulationCapital=22, StartingAmenitiesCapital=9, StartingHousingCapital=24, StartingPopulationOtherCities=8, StartingAmenitiesOtherCities=5, StartingHousingOtherCities=11
WHERE EraType = 'ERA_INFORMATION';

--V225 解锁时间调整
UPDATE Districts SET PrereqTech = 'TECH_APPRENTICESHIP' WHERE DistrictType = 'DISTRICT_INDUSTRIAL_ZONE';
UPDATE Districts SET PrereqTech = 'TECH_APPRENTICESHIP' WHERE DistrictType = 'DISTRICT_HANSA';

--V225 删除额外的宜居度需求
-- DELETE FROM DistrictModifiers WHERE DistrictType='DISTRICT_CITY_CENTER' AND ModifierId='GOLDEN_CITY_AMENITIES_DEBUFF_TEN';
-- DELETE FROM DistrictModifiers WHERE DistrictType='DISTRICT_CITY_CENTER' AND ModifierId='GOLDEN_CITY_AMENITIES_DEBUFF_TWENTY';
-- DELETE FROM DistrictModifiers WHERE DistrictType='DISTRICT_CITY_CENTER' AND ModifierId='GOLDEN_CITY_AMENITIES_DEBUFF_THIRTY';
-- DELETE FROM DistrictModifiers WHERE DistrictType='DISTRICT_CITY_CENTER' AND ModifierId='GOLDEN_CITY_AMENITIES_DEBUFF_FOURTY';
-- DELETE FROM DistrictModifiers WHERE DistrictType='DISTRICT_CITY_CENTER' AND ModifierId='GOLDEN_CITY_AMENITIES_DEBUFF_FIFTY';
--V230 增加60、70、80 人口额外宜居度需求
INSERT OR REPLACE INTO DistrictModifiers (DistrictType,					ModifierId) VALUES	
('DISTRICT_CITY_CENTER',	'GOLDEN_CITY_AMENITIES_DEBUFF_SIXTY'),
('DISTRICT_CITY_CENTER',	'GOLDEN_CITY_AMENITIES_DEBUFF_SEVENTY'),
('DISTRICT_CITY_CENTER',	'GOLDEN_CITY_AMENITIES_DEBUFF_EIGHTY');

INSERT OR REPLACE INTO Modifiers 
(ModifierId,								        ModifierType,													SubjectRequirementSetId) VALUES
('GOLDEN_CITY_AMENITIES_DEBUFF_SIXTY',	            'MODIFIER_SINGLE_CITY_ATTACH_MODIFIER',	                		'GOLDEN_CITY_HAS_SIXTY_POPULATION_REQUIREMENTS'),
('GOLDEN_CITY_AMENITIES_DEBUFF_SIXTY_MODIFIER',		'GOLDEN_MODIFIER_PLAYER_DISTRICT_ADJUST_EXTRA_ENTERTAINMENT',	'GOLDEN_DISTRICT_IS_DISTRICT_CITY_CENTER_REQUIREMENTS'),
('GOLDEN_CITY_AMENITIES_DEBUFF_SEVENTY',	        'MODIFIER_SINGLE_CITY_ATTACH_MODIFIER',	                		'GOLDEN_CITY_HAS_SEVENTY_POPULATION_REQUIREMENTS'),
('GOLDEN_CITY_AMENITIES_DEBUFF_SEVENTY_MODIFIER',	'GOLDEN_MODIFIER_PLAYER_DISTRICT_ADJUST_EXTRA_ENTERTAINMENT',	'GOLDEN_DISTRICT_IS_DISTRICT_CITY_CENTER_REQUIREMENTS'),
('GOLDEN_CITY_AMENITIES_DEBUFF_EIGHTY',	            'MODIFIER_SINGLE_CITY_ATTACH_MODIFIER',	                		'GOLDEN_CITY_HAS_EIGHTY_POPULATION_REQUIREMENTS'),
('GOLDEN_CITY_AMENITIES_DEBUFF_EIGHTY_MODIFIER',	'GOLDEN_MODIFIER_PLAYER_DISTRICT_ADJUST_EXTRA_ENTERTAINMENT',	'GOLDEN_DISTRICT_IS_DISTRICT_CITY_CENTER_REQUIREMENTS');

INSERT OR REPLACE INTO ModifierArguments 
(ModifierId,							            Name,		    Value) VALUES
('GOLDEN_CITY_AMENITIES_DEBUFF_SIXTY',	            'ModifierId',   'GOLDEN_CITY_AMENITIES_DEBUFF_SIXTY_MODIFIER'),
('GOLDEN_CITY_AMENITIES_DEBUFF_SIXTY_MODIFIER',		'Amount',	    -1),
('GOLDEN_CITY_AMENITIES_DEBUFF_SEVENTY',	        'ModifierId',   'GOLDEN_CITY_AMENITIES_DEBUFF_SEVENTY_MODIFIER'),
('GOLDEN_CITY_AMENITIES_DEBUFF_SEVENTY_MODIFIER',	'Amount',	    -1),
('GOLDEN_CITY_AMENITIES_DEBUFF_EIGHTY',	            'ModifierId',   'GOLDEN_CITY_AMENITIES_DEBUFF_EIGHTY_MODIFIER'),
('GOLDEN_CITY_AMENITIES_DEBUFF_EIGHTY_MODIFIER',	'Amount',	    -1);
--V230 增加60、70、80 人口 消耗额外的电力
INSERT OR REPLACE INTO DistrictModifiers (DistrictType,					ModifierId) VALUES	
('DISTRICT_CITY_CENTER',	'GOLDEN_CITY_POWER_SIXTY'),
('DISTRICT_CITY_CENTER',	'GOLDEN_CITY_POWER_SEVENTY'),
('DISTRICT_CITY_CENTER',	'GOLDEN_CITY_POWER_EIGHTY');

INSERT OR REPLACE INTO Modifiers 
(ModifierId,								ModifierType,										SubjectRequirementSetId) VALUES
('GOLDEN_CITY_POWER_SIXTY',	            	'MODIFIER_SINGLE_CITY_ADJUST_REQUIRED_POWER',	    'GOLDEN_CITY_HAS_SIXTY_POPULATION_REQUIREMENTS'),
('GOLDEN_CITY_POWER_SEVENTY',	            'MODIFIER_SINGLE_CITY_ADJUST_REQUIRED_POWER',	    'GOLDEN_CITY_HAS_SEVENTY_POPULATION_REQUIREMENTS'),
('GOLDEN_CITY_POWER_EIGHTY',	            'MODIFIER_SINGLE_CITY_ADJUST_REQUIRED_POWER',	    'GOLDEN_CITY_HAS_EIGHTY_POPULATION_REQUIREMENTS');

INSERT OR REPLACE INTO ModifierArguments 
(ModifierId,						Name,		    Value) VALUES
('GOLDEN_CITY_POWER_SIXTY',	    	'Amount',	    1),
('GOLDEN_CITY_POWER_SEVENTY',	    'Amount',	    1),
('GOLDEN_CITY_POWER_EIGHTY',	    'Amount',	    1);

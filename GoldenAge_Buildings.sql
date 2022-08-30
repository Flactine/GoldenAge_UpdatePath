--非远古时代开局不再送专业区域建筑
DELETE FROM StartingBuildings WHERE Era <> 'ERA_ANCIENT';

--未建筑拓展的建筑
--学院
UPDATE Buildings SET Cost = 100, Maintenance = 2, RegionalRange = 3, CitizenSlots = 1, Description = 'LOC_BUILDING_LIBRARY_DESCRIPTION' WHERE BuildingType = 'BUILDING_LIBRARY';
UPDATE Buildings SET Cost = 360, Maintenance = 3, RegionalRange = 4, CitizenSlots = 1, Description = 'LOC_BUILDING_UNIVERSITY_DESCRIPTION', Housing = 0 WHERE BuildingType = 'BUILDING_UNIVERSITY';
-- UPDATE Buildings SET Cost = 180, Maintenance = 3, RegionalRange = 4, CitizenSlots = 1, Housing = 0 WHERE BuildingType = 'BUILDING_MADRASA';--UB
UPDATE Buildings SET Cost = 180, Maintenance = 3, RegionalRange = 4, CitizenSlots = 1, Housing = 0 WHERE BuildingType = 'BUILDING_ALCHEMICAL_SOCIETY' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_ALCHEMICAL_SOCIETY');
-- UPDATE Buildings SET Cost = 180, Maintenance = 3, RegionalRange = 4, CitizenSlots = 1, Housing = 0 WHERE BuildingType = 'BUILDING_NAVIGATION_SCHOOL' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NAVIGATION_SCHOOL');--UB
UPDATE Buildings SET Cost = 800, Maintenance = 4, RegionalRange = 5, CitizenSlots = 1, Description = 'LOC_BUILDING_RESEARCH_LAB_DESCRIPTION', PrereqTech="TECH_SANITATION" WHERE BuildingType = 'BUILDING_RESEARCH_LAB';
--工业区
UPDATE Buildings SET Cost = 240, Maintenance = 2, RegionalRange = 3, CitizenSlots = 1 WHERE BuildingType = 'BUILDING_WORKSHOP';
UPDATE Buildings SET Cost = 600, Maintenance = 3, RegionalRange = 4, CitizenSlots = 1 WHERE BuildingType = 'BUILDING_FACTORY';
-- UPDATE Buildings SET Cost = 300, Maintenance = 3, RegionalRange = 4, CitizenSlots = 1 WHERE BuildingType = 'BUILDING_ELECTRONICS_FACTORY';--UB
UPDATE Buildings SET Cost = 1000, Maintenance = 4, RegionalRange = 5, CitizenSlots = 1, PrereqTech="TECH_STEAM_POWER" WHERE BuildingType = 'BUILDING_COAL_POWER_PLANT';
UPDATE Buildings SET Cost = 1000, Maintenance = 4, RegionalRange = 5, CitizenSlots = 1 WHERE BuildingType = 'BUILDING_FOSSIL_FUEL_POWER_PLANT';
UPDATE Buildings SET Cost = 1000, Maintenance = 4, RegionalRange = 5, CitizenSlots = 1 WHERE BuildingType = 'BUILDING_POWER_PLANT';
--剧院
UPDATE Buildings SET Cost = 160, Maintenance = 2, RegionalRange = 3, CitizenSlots = 1, Description = 'LOC_BUILDING_AMPHITHEATER_DESCRIPTION' WHERE BuildingType = 'BUILDING_AMPHITHEATER';
-- UPDATE Buildings SET Cost = 80, Maintenance = 2, RegionalRange = 3, CitizenSlots = 1 WHERE BuildingType = 'BUILDING_MARAE';--UB
UPDATE Buildings SET Cost = 480, Maintenance = 3, RegionalRange = 4, CitizenSlots = 1 WHERE BuildingType = 'BUILDING_MUSEUM_ART';
UPDATE Buildings SET Cost = 480, Maintenance = 3, RegionalRange = 4, CitizenSlots = 1 WHERE BuildingType = 'BUILDING_MUSEUM_ARTIFACT';
UPDATE Buildings SET Cost = 1000, Maintenance = 4, RegionalRange = 5, CitizenSlots = 1, Description = 'LOC_BUILDING_BROADCAST_CENTER_DESCRIPTION' WHERE BuildingType = 'BUILDING_BROADCAST_CENTER';
-- UPDATE Buildings SET Cost = 500, Maintenance = 4, RegionalRange = 5, CitizenSlots = 1 WHERE BuildingType = 'BUILDING_FILM_STUDIO';--UB
--商业
UPDATE Buildings SET Cost = 160, Maintenance = 2, RegionalRange = 3, CitizenSlots = 1 WHERE BuildingType = 'BUILDING_MARKET';
-- UPDATE Buildings SET Cost = 80, Maintenance = 2, RegionalRange = 3, CitizenSlots = 1 WHERE BuildingType = 'BUILDING_SUKIENNICE' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_SUKIENNICE');--UB
UPDATE Buildings SET Cost = 480, Maintenance = 3, RegionalRange = 4, CitizenSlots = 1 WHERE BuildingType = 'BUILDING_BANK';
-- UPDATE Buildings SET Cost = 240, Maintenance = 3, RegionalRange = 4, CitizenSlots = 1 WHERE BuildingType = 'BUILDING_GRAND_BAZAAR';--UB
UPDATE Buildings SET Cost = 240, Maintenance = 3, RegionalRange = 4, CitizenSlots = 1 WHERE BuildingType = 'BUILDING_GILDED_VAULT' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_GILDED_VAULT');
UPDATE Buildings SET Cost = 800, Maintenance = 4, RegionalRange = 5, CitizenSlots = 1 WHERE BuildingType = 'BUILDING_STOCK_EXCHANGE';
--圣地
UPDATE Buildings SET Cost = 100, Maintenance = 2, RegionalRange = 3, CitizenSlots = 1 WHERE BuildingType = 'BUILDING_SHRINE';
UPDATE Buildings SET Cost = 200, Maintenance = 3, RegionalRange = 4, CitizenSlots = 1 WHERE BuildingType = 'BUILDING_TEMPLE';
-- UPDATE Buildings SET Cost = 100, Maintenance = 3, RegionalRange = 4, CitizenSlots = 1 WHERE BuildingType = 'BUILDING_STAVE_CHURCH';--UB
-- UPDATE Buildings SET Cost = 100, Maintenance = 3, RegionalRange = 4, CitizenSlots = 1 WHERE BuildingType = 'BUILDING_PRASAT' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_PRASAT');--UB
UPDATE Buildings SET Cost = 500, Maintenance = 4, RegionalRange = 5, CitizenSlots = 1 WHERE EnabledByReligion = 1;--WORSHIP
--港口
UPDATE Buildings SET Cost = 160, Maintenance = 2, CitizenSlots = 1, Housing = 0 WHERE BuildingType = 'BUILDING_LIGHTHOUSE';
UPDATE Buildings SET Cost = 540, Maintenance = 3, CitizenSlots = 1 WHERE BuildingType = 'BUILDING_SHIPYARD';
UPDATE Buildings SET Cost = 1000, Maintenance = 4, CitizenSlots = 1, Housing = 0 WHERE BuildingType = 'BUILDING_SEAPORT';
--军营
UPDATE Buildings SET Cost = 100, Maintenance = 2, CitizenSlots = 1, Housing = 2 WHERE BuildingType = 'BUILDING_BARRACKS';
UPDATE Buildings SET Cost = 100, Maintenance = 2, CitizenSlots = 1, Housing = 2 WHERE BuildingType = 'BUILDING_STABLE';
-- UPDATE Buildings SET Cost = 50, Maintenance = 2, CitizenSlots = 1, Housing = 2 WHERE BuildingType = 'BUILDING_ORDU';--UB
-- UPDATE Buildings SET Cost = 50, Maintenance = 2, CitizenSlots = 1, Housing = 2 WHERE BuildingType = 'BUILDING_BASILIKOI_PAIDES' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_BASILIKOI_PAIDES');--UB
UPDATE Buildings SET Cost = 360, Maintenance = 3, CitizenSlots = 1, Housing = 3 WHERE BuildingType = 'BUILDING_ARMORY';
UPDATE Buildings SET Cost = 800, Maintenance = 4, CitizenSlots = 1, Housing = 4 WHERE BuildingType = 'BUILDING_MILITARY_ACADEMY';
--娱乐
UPDATE Buildings SET Cost = 160, Maintenance = 2, RegionalRange = 3, CitizenSlots = 1, Entertainment = 1 WHERE BuildingType = 'BUILDING_ARENA';
-- UPDATE Buildings SET Cost = 80, Maintenance = 2, RegionalRange = 3, CitizenSlots = 1, Entertainment = 1 WHERE BuildingType = 'BUILDING_TLACHTLI' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_TLACHTLI');--UB
UPDATE Buildings SET Cost = 500, Maintenance = 3, RegionalRange = 4, CitizenSlots = 1, Entertainment = 2, PrereqCivic = 'CIVIC_THE_ENLIGHTENMENT' WHERE BuildingType = 'BUILDING_ZOO';
-- UPDATE Buildings SET Cost = 250, Maintenance = 3, RegionalRange = 4, CitizenSlots = 1, Entertainment = 2 WHERE BuildingType = 'BUILDING_THERMAL_BATH';--UB
UPDATE Buildings SET Cost = 1200, Maintenance = 4, RegionalRange = 5, CitizenSlots = 1, Entertainment = 3 WHERE BuildingType = 'BUILDING_STADIUM';
UPDATE Buildings SET Cost = 160, Maintenance = 2, RegionalRange = 3, CitizenSlots = 1, Entertainment = 1, PrereqCivic="CIVIC_COLONIALISM" WHERE BuildingType = 'BUILDING_FERRIS_WHEEL';
UPDATE Buildings SET Cost = 500, Maintenance = 3, RegionalRange = 4, CitizenSlots = 1, Entertainment = 2 WHERE BuildingType = 'BUILDING_AQUARIUM';
UPDATE Buildings SET Cost = 1200, Maintenance = 4, RegionalRange = 5, CitizenSlots = 1, Entertainment = 3 WHERE BuildingType = 'BUILDING_AQUATICS_CENTER';

--国家奇观
UPDATE Buildings SET Cost = 150 WHERE BuildingType = 'BUILDING_NATIONAL_LIBRARY' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_LIBRARY');
UPDATE Buildings SET Cost = 540 WHERE BuildingType = 'BUILDING_NATIONAL_UNIVERSITY' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_UNIVERSITY');
UPDATE Buildings SET Cost = 1200 WHERE BuildingType = 'BUILDING_NATIONAL_RESEARCH_LAB' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_RESEARCH_LAB');

UPDATE Buildings SET Cost = 240 WHERE BuildingType = 'BUILDING_NATIONAL_MARKET' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_MARKET');
UPDATE Buildings SET Cost = 720 WHERE BuildingType = 'BUILDING_NATIONAL_BANK' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_BANK');
UPDATE Buildings SET Cost = 1200 WHERE BuildingType = 'BUILDING_NATIONAL_STOCK_EXCHANGE' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_STOCK_EXCHANGE');

UPDATE Buildings SET Cost = 360 WHERE BuildingType = 'BUILDING_NATIONAL_WORKSHOP' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_WORKSHOP');
UPDATE Buildings SET Cost = 900 WHERE BuildingType = 'BUILDING_NATIONAL_FACTORY' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_FACTORY');
UPDATE Buildings SET Cost = 1500 WHERE BuildingType = 'BUILDING_NATIONAL_POWER_STATION' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_POWER_STATION');

UPDATE Buildings SET Cost = 240 WHERE BuildingType = 'BUILDING_NATIONAL_AMPHITHEATER' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_AMPHITHEATER');
UPDATE Buildings SET Cost = 720 WHERE BuildingType = 'BUILDING_NATIONAL_MUSEUM' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_MUSEUM');
UPDATE Buildings SET Cost = 1200 WHERE BuildingType = 'BUILDING_NATIONAL_BROADCAST_CENTER' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_BROADCAST_CENTER');

UPDATE Buildings SET Cost = 150 WHERE BuildingType = 'BUILDING_NATIONAL_SHRINE' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_SHRINE');
UPDATE Buildings SET Cost = 300 WHERE BuildingType = 'BUILDING_NATIONAL_TEMPLE' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_TEMPLE');
UPDATE Buildings SET Cost = 750 WHERE BuildingType = 'BUILDING_NATIONAL_CATHEDRAL' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_CATHEDRAL');

UPDATE Buildings SET Cost = 240 WHERE BuildingType = 'BUILDING_NATIONAL_ARENA' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_ARENA');
UPDATE Buildings SET Cost = 750, PrereqCivic = 'CIVIC_THE_ENLIGHTENMENT' WHERE BuildingType = 'BUILDING_NATIONAL_ZOO' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_ZOO');
UPDATE Buildings SET Cost = 1800 WHERE BuildingType = 'BUILDING_NATIONAL_STADIUM' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_STADIUM');

UPDATE Buildings SET Cost = 240 WHERE BuildingType = 'BUILDING_NATIONAL_LIGHTHOUSE' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_LIGHTHOUSE');
UPDATE Buildings SET Cost = 800 WHERE BuildingType = 'BUILDING_NATIONAL_SHIPYARD' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_SHIPYARD');
UPDATE Buildings SET Cost = 1500 WHERE BuildingType = 'BUILDING_NATIONAL_SEAPORT' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_SEAPORT');

UPDATE Buildings SET Cost = 150 WHERE BuildingType = 'BUILDING_NATIONAL_BARRACKS' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_BARRACKS');
UPDATE Buildings SET Cost = 540 WHERE BuildingType = 'BUILDING_NATIONAL_ARMORY' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_ARMORY');
UPDATE Buildings SET Cost = 1200 WHERE BuildingType = 'BUILDING_NATIONAL_MILITARY_ACADEMY' AND EXISTS (SELECT * FROM Buildings WHERE BuildingType='BUILDING_NATIONAL_MILITARY_ACADEMY');


--V226, 235 市政广场建筑调整
--祠堂（缓解一级爆铺惩罚的代码在GoldenAge_City_levels.sql）
DELETE FROM BuildingModifiers WHERE BuildingType='BUILDING_GOV_WIDE';
INSERT OR REPLACE INTO BuildingModifiers (BuildingType,					ModifierId) VALUES	
('BUILDING_GOV_WIDE',	'GOV_SETTLER_GRANT_BUILDER'),
('BUILDING_GOV_WIDE',	'GA_GOV_WIDE_LESS_DISTRICT');
INSERT OR REPLACE INTO Modifiers 
(ModifierId,								        ModifierType,											SubjectRequirementSetId) VALUES
('GA_GOV_WIDE_LESS_DISTRICT',	            	'MODIFIER_PLAYER_CITIES_EXTRA_DISTRICT',	               NULL);
INSERT OR REPLACE INTO ModifierArguments 
(ModifierId,							            Name,		    Value) VALUES
('GA_GOV_WIDE_LESS_DISTRICT',	    'Amount',	    -1);
--军阀宝座
DELETE FROM BuildingModifiers WHERE BuildingType='BUILDING_GOV_CONQUEST';
INSERT OR REPLACE INTO BuildingModifiers (BuildingType,					ModifierId) SELECT	
'BUILDING_GOV_CONQUEST',	'GA_GOV_CONQUEST_CAPTURED_' ||YieldType FROM Yields;	
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType) SELECT	
'GA_GOV_CONQUEST_CAPTURED_' ||YieldType,	'MODIFIER_PLAYER_ADD_DIPLOMATIC_YIELD_MODIFIER' FROM Yields;	
INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value) SELECT	
'GA_GOV_CONQUEST_CAPTURED_' ||YieldType,	'DiplomaticYieldSource', 'CITY_CAPTURED' 	FROM Yields;	
INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value) SELECT	
'GA_GOV_CONQUEST_CAPTURED_' ||YieldType,	'YieldType', YieldType 						FROM Yields;		
INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value) SELECT	
'GA_GOV_CONQUEST_CAPTURED_' ||YieldType,	'Amount', 10 								FROM Yields;	
INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value) SELECT	
'GA_GOV_CONQUEST_CAPTURED_' ||YieldType,	'TurnsActive', 10 							FROM Yields;	
INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value) SELECT	
'GA_GOV_CONQUEST_CAPTURED_' ||YieldType,	'StackWithOtherDiploYieldModifiers', 1 		FROM Yields;

INSERT OR REPLACE INTO BuildingModifiers (BuildingType,					ModifierId) VALUES	
('BUILDING_GOV_CONQUEST',	'GA_GOV_CONQUEST_CAPTURED_LOYALTY');
INSERT OR REPLACE INTO Modifiers 
(ModifierId,								        ModifierType,											SubjectRequirementSetId) VALUES
('GA_GOV_CONQUEST_CAPTURED_LOYALTY',	        'MODIFIER_PLAYER_CITIES_ADJUST_IDENTITY_PER_TURN',	    'GOLDEN_CITY_IS_NOT_ORIGINAL_OWNER_REQUIREMENTS');
INSERT OR REPLACE INTO ModifierArguments 
(ModifierId,							            Name,		    Value) VALUES
('GA_GOV_CONQUEST_CAPTURED_LOYALTY',	    	'Amount',	    8);

INSERT OR REPLACE INTO BuildingModifiers (BuildingType,					ModifierId) VALUES	
('BUILDING_GOV_CONQUEST',	'GA_GOV_CONQUEST_BORDER_EXPANSION');
INSERT OR REPLACE INTO Modifiers 
(ModifierId,								    ModifierType) VALUES
('GA_GOV_CONQUEST_BORDER_EXPANSION',	        'GOLDEN_MODIFIER_PLAYER_CITIES_CULTURE_BORDER_EXPANSION');
INSERT OR REPLACE INTO ModifierArguments 
(ModifierId,							            Name,		    Value) VALUES
('GA_GOV_CONQUEST_BORDER_EXPANSION',	    	'Amount',	    -20);
--谒见厅
DELETE FROM BuildingModifiers WHERE BuildingType='BUILDING_GOV_TALL';

INSERT OR REPLACE INTO BuildingModifiers (BuildingType,					ModifierId) VALUES	
('BUILDING_GOV_TALL',	'GOV_TALL_AMENITY_BUFF');

INSERT OR REPLACE INTO BuildingModifiers (BuildingType,					ModifierId) SELECT	
'BUILDING_GOV_TALL',	'GA_GOV_TALL_PER_GOVERNOR_TITLE_' ||YieldType 													FROM Yields WHERE YieldType <> 'YIELD_FOOD';	
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType) SELECT	
'GA_GOV_TALL_PER_GOVERNOR_TITLE_' ||YieldType,	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_MODIFIER_PER_GOVERNOR_TITLE' 	FROM Yields WHERE YieldType <> 'YIELD_FOOD';	
INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value) SELECT	
'GA_GOV_TALL_PER_GOVERNOR_TITLE_' ||YieldType,	'YieldType', YieldType 													FROM Yields WHERE YieldType <> 'YIELD_FOOD';			
INSERT OR REPLACE INTO ModifierArguments (ModifierId, Name, Value) SELECT	
'GA_GOV_TALL_PER_GOVERNOR_TITLE_' ||YieldType,	'Amount', 5 															FROM Yields WHERE YieldType <> 'YIELD_FOOD';		

INSERT OR REPLACE INTO BuildingModifiers (BuildingType,					ModifierId) VALUES	
('BUILDING_GOV_TALL',	'GA_GOV_TALL_ALL_YIELDS');
INSERT OR REPLACE INTO Modifiers 
(ModifierId,								        ModifierType,											SubjectRequirementSetId) VALUES
('GA_GOV_TALL_ALL_YIELDS',	        'MODIFIER_PLAYER_CITIES_ADJUST_CITY_ALL_YIELDS_CHANGE',	    'CITY_HAS_GOVERNOR_REQUIREMENTS');
INSERT OR REPLACE INTO ModifierArguments 
(ModifierId,							            Name,		    Value) VALUES
('GA_GOV_TALL_ALL_YIELDS',	    	'Amount',	    2);

INSERT OR REPLACE INTO BuildingModifiers (BuildingType,					ModifierId) VALUES	
('BUILDING_GOV_TALL',	'GA_GOV_TALL_LOYALTY_DEBUFF');
INSERT OR REPLACE INTO Modifiers 
(ModifierId,								        ModifierType,											SubjectRequirementSetId) VALUES
('GA_GOV_TALL_LOYALTY_DEBUFF',	        'MODIFIER_PLAYER_CITIES_ADJUST_IDENTITY_PER_TURN',	    'CITY_HAS_NO_GOVERNOR_REQUIREMENTS');
INSERT OR REPLACE INTO ModifierArguments 
(ModifierId,							            Name,		    Value) VALUES
('GA_GOV_TALL_LOYALTY_DEBUFF',	    	'Amount',	    -5);

--V231 宫殿金币
UPDATE Building_YieldChanges SET YieldChange = 5 WHERE BuildingType = 'BUILDING_PALACE' AND YieldType = 'YIELD_GOLD';

--电力
UPDATE Resource_Consumption SET PowerProvided = 6 WHERE ResourceType = 'RESOURCE_COAL';
UPDATE Resource_Consumption SET PowerProvided = 9 WHERE ResourceType = 'RESOURCE_OIL';
UPDATE Resource_Consumption SET PowerProvided = 12 WHERE ResourceType = 'RESOURCE_URANIUM';
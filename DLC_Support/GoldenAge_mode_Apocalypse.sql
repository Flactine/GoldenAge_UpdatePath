--------------------------------------------------------------
--Units
--------------------------------------------------------------
UPDATE Units SET Cost = 200, DisasterCharges = 1, BaseMoves = 4
WHERE UnitType = 'UNIT_SOOTHSAYER';
--------------------------------------------------------------
--Features
--------------------------------------------------------------
UPDATE Features SET DoubleAdjacentTerrainYield = 1
WHERE FeatureType = 'FEATURE_COMET_LAKE';
--------------------------------------------------------------
--Feature_YieldChanges
--------------------------------------------------------------
-- INSERT OR REPLACE INTO Feature_YieldChanges
-- (FeatureType,						YieldType,					YieldChange) VALUES
-- ('FEATURE_COMET_LAKE',			    'YIELD_FOOD',	            1),
-- ('FEATURE_COMET_LAKE',			    'YIELD_PRODUCTION',	        1),
-- ('FEATURE_COMET_LAKE',			    'YIELD_SCIENCE',	        1),
-- ('FEATURE_COMET_LAKE',			    'YIELD_CULTURE',	        1),
-- ('FEATURE_COMET_LAKE',			    'YIELD_FAITH',	            1),
-- ('FEATURE_COMET_LAKE',			    'YIELD_GOLD',	            1);
--------------------------------------------------------------
--RealismSettings
--------------------------------------------------------------
UPDATE RealismSettings SET PercentVolcanoesActive = 90, ClimateChangePoints = 0
WHERE RealismSettingType = 'REALISM_SETTING_MEGADISASTERS';
UPDATE RealismSettings SET ClimateChangePoints = 0
WHERE RealismSettingType = 'REALISM_SETTING_APOCALYPSE';
--------------------------------------------------------------
--RandomEvents
--------------------------------------------------------------
UPDATE RandomEvents SET Hexes = 1 WHERE RandomEventType = 'RANDOM_EVENT_COMET_STRIKE';
 
UPDATE RandomEvents SET Spacing = 15, Duration = 8 WHERE RandomEventType = 'RANDOM_EVENT_BLIZZARD_TRIGGERED';
UPDATE RandomEvents SET Spacing = 15, Duration = 8 WHERE RandomEventType = 'RANDOM_EVENT_DUST_STORM_TRIGGERED';
UPDATE RandomEvents SET Duration = 20 WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE_TRIGGERED';
UPDATE RandomEvents SET Duration = 20 WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE_TRIGGERED';
--------------------------------------------------------------
--RandomEvent_Notifications
--------------------------------------------------------------
UPDATE RandomEvent_Notifications SET MinTurn = 8, MaxTurn = 8
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE_TRIGGERED' AND Title = 'LOC_FIRE_CONTINUED';
UPDATE RandomEvent_Notifications SET MinTurn = 19, MaxTurn = 19
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE_TRIGGERED' AND Title = 'LOC_FIRE_JUNGLE_OVER';
UPDATE RandomEvent_Notifications SET MinTurn = 8, MaxTurn = 8
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE_TRIGGERED' AND Title = 'LOC_FIRE_CONTINUED';
UPDATE RandomEvent_Notifications SET MinTurn = 19, MaxTurn = 19
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE_TRIGGERED' AND Title = 'LOC_FIRE_FOREST_OVER';
--------------------------------------------------------------
--RandomEvent_Damages
--------------------------------------------------------------
UPDATE RandomEvent_Damages SET Percentage = 99
WHERE RandomEventType = 'RANDOM_EVENT_FLOOD_TRIGGERED' AND DamageType = 'IMPROVEMENT_DESTROYED';
UPDATE RandomEvent_Damages SET Percentage = 99
WHERE RandomEventType = 'RANDOM_EVENT_FLOOD_TRIGGERED' AND DamageType = 'DISTRICT_PILLAGED';
UPDATE RandomEvent_Damages SET Percentage = 99
WHERE RandomEventType = 'RANDOM_EVENT_FLOOD_TRIGGERED' AND DamageType = 'POPULATION_LOSS';
UPDATE RandomEvent_Damages SET Percentage = 99
WHERE RandomEventType = 'RANDOM_EVENT_FLOOD_TRIGGERED' AND DamageType = 'UNIT_KILLED_CIVILIAN';
UPDATE RandomEvent_Damages SET MinHP = 76, MaxHP = 99
WHERE RandomEventType = 'RANDOM_EVENT_FLOOD_TRIGGERED' AND DamageType = 'UNIT_DAMAGE_LAND';
UPDATE RandomEvent_Damages SET MinHP = 151, MaxHP = 199
WHERE RandomEventType = 'RANDOM_EVENT_FLOOD_TRIGGERED' AND DamageType = 'CITY_GARRISON';
UPDATE RandomEvent_Damages SET MinHP = 151, MaxHP = 199
WHERE RandomEventType = 'RANDOM_EVENT_FLOOD_TRIGGERED' AND DamageType = 'CITY_WALLS';

UPDATE RandomEvent_Damages SET Percentage = 99, ExtraRangePercentage = 100
WHERE RandomEventType = 'RANDOM_EVENT_VOLCANO_TRIGGERED' AND DamageType = 'IMPROVEMENT_DESTROYED';
UPDATE RandomEvent_Damages SET Percentage = 99, ExtraRangePercentage = 100
WHERE RandomEventType = 'RANDOM_EVENT_VOLCANO_TRIGGERED' AND DamageType = 'DISTRICT_PILLAGED';
UPDATE RandomEvent_Damages SET Percentage = 99, ExtraRangePercentage = 100
WHERE RandomEventType = 'RANDOM_EVENT_VOLCANO_TRIGGERED' AND DamageType = 'POPULATION_LOSS';
UPDATE RandomEvent_Damages SET Percentage = 99, ExtraRangePercentage = 100
WHERE RandomEventType = 'RANDOM_EVENT_VOLCANO_TRIGGERED' AND DamageType = 'UNIT_KILLED_CIVILIAN';
UPDATE RandomEvent_Damages SET MinHP = 76, MaxHP = 99, ExtraRangePercentage = 100
WHERE RandomEventType = 'RANDOM_EVENT_VOLCANO_TRIGGERED' AND DamageType = 'UNIT_DAMAGE_LAND';
UPDATE RandomEvent_Damages SET MinHP = 151, MaxHP = 199, ExtraRangePercentage = 100
WHERE RandomEventType = 'RANDOM_EVENT_VOLCANO_TRIGGERED' AND DamageType = 'CITY_GARRISON';
UPDATE RandomEvent_Damages SET MinHP = 151, MaxHP = 199, ExtraRangePercentage = 100
WHERE RandomEventType = 'RANDOM_EVENT_VOLCANO_TRIGGERED' AND DamageType = 'CITY_WALLS';

UPDATE RandomEvent_Damages SET Percentage = 99
WHERE RandomEventType = 'RANDOM_EVENT_BLIZZARD_TRIGGERED' AND DamageType = 'IMPROVEMENT_DESTROYED';
UPDATE RandomEvent_Damages SET Percentage = 99
WHERE RandomEventType = 'RANDOM_EVENT_BLIZZARD_TRIGGERED' AND DamageType = 'DISTRICT_PILLAGED';
UPDATE RandomEvent_Damages SET Percentage = 99
WHERE RandomEventType = 'RANDOM_EVENT_BLIZZARD_TRIGGERED' AND DamageType = 'POPULATION_LOSS';
UPDATE RandomEvent_Damages SET Percentage = 99
WHERE RandomEventType = 'RANDOM_EVENT_BLIZZARD_TRIGGERED' AND DamageType = 'UNIT_KILLED_CIVILIAN';
UPDATE RandomEvent_Damages SET MinHP = 67, MaxHP = 99
WHERE RandomEventType = 'RANDOM_EVENT_BLIZZARD_TRIGGERED' AND DamageType = 'UNIT_DAMAGE_LAND';
UPDATE RandomEvent_Damages SET Percentage = 100, MinHP = 67, MaxHP = 99
WHERE RandomEventType = 'RANDOM_EVENT_BLIZZARD_TRIGGERED' AND DamageType = 'UNIT_DAMAGE_NAVAL';

UPDATE RandomEvent_Damages SET Percentage = 99
WHERE RandomEventType = 'RANDOM_EVENT_DUST_STORM_TRIGGERED' AND DamageType = 'IMPROVEMENT_DESTROYED';
UPDATE RandomEvent_Damages SET Percentage = 99
WHERE RandomEventType = 'RANDOM_EVENT_DUST_STORM_TRIGGERED' AND DamageType = 'DISTRICT_PILLAGED';
UPDATE RandomEvent_Damages SET Percentage = 99
WHERE RandomEventType = 'RANDOM_EVENT_DUST_STORM_TRIGGERED' AND DamageType = 'POPULATION_LOSS';
UPDATE RandomEvent_Damages SET Percentage = 99
WHERE RandomEventType = 'RANDOM_EVENT_DUST_STORM_TRIGGERED' AND DamageType = 'UNIT_KILLED_CIVILIAN';
UPDATE RandomEvent_Damages SET MinHP = 67, MaxHP = 99
WHERE RandomEventType = 'RANDOM_EVENT_DUST_STORM_TRIGGERED' AND DamageType = 'UNIT_DAMAGE_LAND';
UPDATE RandomEvent_Damages SET Percentage = 100, MinHP = 67, MaxHP = 99
WHERE RandomEventType = 'RANDOM_EVENT_DUST_STORM_TRIGGERED' AND DamageType = 'UNIT_DAMAGE_NAVAL';

UPDATE RandomEvent_Damages SET DamageType = 'IMPROVEMENT_DESTROYED', MaxTurn = 8
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE_TRIGGERED' AND DamageType = 'IMPROVEMENT_PILLAGED';
UPDATE RandomEvent_Damages SET MaxTurn = 8
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE_TRIGGERED' AND DamageType = 'DISTRICT_PILLAGED';
UPDATE RandomEvent_Damages SET MaxTurn = 8
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE_TRIGGERED' AND DamageType = 'POPULATION_LOSS';
UPDATE RandomEvent_Damages SET MaxTurn = 8
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE_TRIGGERED' AND DamageType = 'UNIT_KILLED_CIVILIAN';
UPDATE RandomEvent_Damages SET MaxTurn = 8, MinHP = 67, MaxHP = 99
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE_TRIGGERED' AND DamageType = 'UNIT_DAMAGE_LAND';
UPDATE RandomEvent_Damages SET MinTurn =1, MaxTurn = 7
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE_TRIGGERED' AND DamageType = 'SPREAD';
UPDATE RandomEvent_Damages SET DamageType = 'IMPROVEMENT_DESTROYED', MaxTurn = 8
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE_TRIGGERED' AND DamageType = 'IMPROVEMENT_PILLAGED';
UPDATE RandomEvent_Damages SET MaxTurn = 8
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE_TRIGGERED' AND DamageType = 'DISTRICT_PILLAGED';
UPDATE RandomEvent_Damages SET MaxTurn = 8
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE_TRIGGERED' AND DamageType = 'POPULATION_LOSS';
UPDATE RandomEvent_Damages SET MaxTurn = 8
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE_TRIGGERED' AND DamageType = 'UNIT_KILLED_CIVILIAN';
UPDATE RandomEvent_Damages SET MaxTurn = 8, MinHP = 67, MaxHP = 99
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE_TRIGGERED' AND DamageType = 'UNIT_DAMAGE_LAND';
UPDATE RandomEvent_Damages SET MinTurn =1, MaxTurn = 7
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE_TRIGGERED' AND DamageType = 'SPREAD';

INSERT OR REPLACE INTO RandomEvent_Damages
(RandomEventType,						DamageType,					Percentage,    MinHP,    MaxHP) VALUES
('RANDOM_EVENT_BLIZZARD_TRIGGERED',		'CITY_GARRISON',	        100,           1,        199),
('RANDOM_EVENT_BLIZZARD_TRIGGERED',		'CITY_WALLS',	            100,           1,        199),
('RANDOM_EVENT_DUST_STORM_TRIGGERED',	'CITY_GARRISON',	        100,           1,        199),
('RANDOM_EVENT_DUST_STORM_TRIGGERED',	'CITY_WALLS',	            100,           1,        199);
--------------------------------------------------------------
--RandomEvent_Frequencies 
--------------------------------------------------------------	
INSERT OR REPLACE INTO RandomEvent_Frequencies
(RandomEventType,						RealismSettingType,					OccurrencesPerGame) VALUES
('RANDOM_EVENT_FLOOD_MODERATE',			'REALISM_SETTING_MEGADISASTERS',	3.5),
('RANDOM_EVENT_FLOOD_MAJOR',			'REALISM_SETTING_MEGADISASTERS',	3),
('RANDOM_EVENT_FLOOD_1000_YEAR',		'REALISM_SETTING_MEGADISASTERS',	2.5),
('RANDOM_EVENT_VOLCANO_GENTLE',			'REALISM_SETTING_MEGADISASTERS',	7),
('RANDOM_EVENT_VOLCANO_CATASTROPHIC',	'REALISM_SETTING_MEGADISASTERS',	6),
('RANDOM_EVENT_VOLCANO_MEGACOLOSSAL',	'REALISM_SETTING_MEGADISASTERS',	5),
('RANDOM_EVENT_BLIZZARD_SIGNIFICANT',	'REALISM_SETTING_MEGADISASTERS',	12),
('RANDOM_EVENT_BLIZZARD_CRIPPLING',	    'REALISM_SETTING_MEGADISASTERS',	8),
('RANDOM_EVENT_DUST_STORM_GRADIENT',	'REALISM_SETTING_MEGADISASTERS',	12),
('RANDOM_EVENT_DUST_STORM_HABOOB',	    'REALISM_SETTING_MEGADISASTERS',	8),
('RANDOM_EVENT_TORNADO_FAMILY',	        'REALISM_SETTING_MEGADISASTERS',	24),
('RANDOM_EVENT_TORNADO_OUTBREAK',	    'REALISM_SETTING_MEGADISASTERS',	16),
('RANDOM_EVENT_HURRICANE_CAT_4',	    'REALISM_SETTING_MEGADISASTERS',	24),
('RANDOM_EVENT_HURRICANE_CAT_5',	    'REALISM_SETTING_MEGADISASTERS',	16),
('RANDOM_EVENT_DROUGHT_MAJOR',	        'REALISM_SETTING_MEGADISASTERS',	45),
('RANDOM_EVENT_DROUGHT_EXTREME',	    'REALISM_SETTING_MEGADISASTERS',	15),
('RANDOM_EVENT_JUNGLE_FIRE',	        'REALISM_SETTING_MEGADISASTERS',	18),
('RANDOM_EVENT_FOREST_FIRE',	        'REALISM_SETTING_MEGADISASTERS',	18),
('RANDOM_EVENT_COMET_STRIKE',			'REALISM_SETTING_MEGADISASTERS',	25),
-- ('RANDOM_EVENT_COMET_STRIKE_TARGETED',	'REALISM_SETTING_MEGADISASTERS',	5),
('RANDOM_EVENT_FLOOD_MODERATE',			'REALISM_SETTING_APOCALYPSE',	    4),
('RANDOM_EVENT_FLOOD_MAJOR',			'REALISM_SETTING_APOCALYPSE',	    3.5),
('RANDOM_EVENT_FLOOD_1000_YEAR',		'REALISM_SETTING_APOCALYPSE',	    3),
('RANDOM_EVENT_VOLCANO_GENTLE',			'REALISM_SETTING_APOCALYPSE',	    8),
('RANDOM_EVENT_VOLCANO_CATASTROPHIC',	'REALISM_SETTING_APOCALYPSE',	    7),
('RANDOM_EVENT_VOLCANO_MEGACOLOSSAL',	'REALISM_SETTING_APOCALYPSE',	    6),
('RANDOM_EVENT_BLIZZARD_SIGNIFICANT',	'REALISM_SETTING_APOCALYPSE',	    14),
('RANDOM_EVENT_BLIZZARD_CRIPPLING',	    'REALISM_SETTING_APOCALYPSE',	    10),
('RANDOM_EVENT_DUST_STORM_GRADIENT',	'REALISM_SETTING_APOCALYPSE',	    14),
('RANDOM_EVENT_DUST_STORM_HABOOB',	    'REALISM_SETTING_APOCALYPSE',	    10),
('RANDOM_EVENT_TORNADO_FAMILY',	        'REALISM_SETTING_APOCALYPSE',	    28),
('RANDOM_EVENT_TORNADO_OUTBREAK',	    'REALISM_SETTING_APOCALYPSE',	    20),
('RANDOM_EVENT_HURRICANE_CAT_4',	    'REALISM_SETTING_APOCALYPSE',	    28),
('RANDOM_EVENT_HURRICANE_CAT_5',	    'REALISM_SETTING_APOCALYPSE',	    20),
('RANDOM_EVENT_DROUGHT_MAJOR',	        'REALISM_SETTING_APOCALYPSE',	    60),
('RANDOM_EVENT_DROUGHT_EXTREME',	    'REALISM_SETTING_APOCALYPSE',	    20),
('RANDOM_EVENT_JUNGLE_FIRE',	        'REALISM_SETTING_APOCALYPSE',	    21),
('RANDOM_EVENT_FOREST_FIRE',	        'REALISM_SETTING_APOCALYPSE',	    21),
('RANDOM_EVENT_COMET_STRIKE',			'REALISM_SETTING_APOCALYPSE',		100),
('RANDOM_EVENT_COMET_STRIKE_TARGETED',	'REALISM_SETTING_APOCALYPSE',		50);
--------------------------------------------------------------
--RandomEvent_Yields
--------------------------------------------------------------
--预言家无法增加地块产出
UPDATE RandomEvent_Yields SET Percentage = 1
WHERE RandomEventType = 'RANDOM_EVENT_BLIZZARD_TRIGGERED' AND YieldType = 'YIELD_FOOD';
UPDATE RandomEvent_Yields SET Percentage = 1
WHERE RandomEventType = 'RANDOM_EVENT_DUST_STORM_TRIGGERED' AND YieldType = 'YIELD_FOOD';
UPDATE RandomEvent_Yields SET Percentage = 1
WHERE RandomEventType = 'RANDOM_EVENT_DUST_STORM_TRIGGERED' AND YieldType = 'YIELD_PRODUCTION';

UPDATE RandomEvent_Yields SET Amount = 0, Turn = 8
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE_TRIGGERED' AND FeatureType = 'FEATURE_BURNT_JUNGLE';
UPDATE RandomEvent_Yields SET Amount = 0, Turn = 19
WHERE RandomEventType = 'RANDOM_EVENT_JUNGLE_FIRE_TRIGGERED' AND FeatureType = 'FEATURE_JUNGLE';
UPDATE RandomEvent_Yields SET Amount = 0, Turn = 8
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE_TRIGGERED' AND FeatureType = 'FEATURE_BURNT_FOREST';
UPDATE RandomEvent_Yields SET Amount = 0, Turn = 19
WHERE RandomEventType = 'RANDOM_EVENT_FOREST_FIRE_TRIGGERED' AND FeatureType = 'FEATURE_FOREST';

--V231 移除太阳耀斑对建筑和区域的影响
DELETE FROM RandomEvent_PillagedDistricts WHERE RandomEventType='RANDOM_EVENT_SOLAR_FLARE';
DELETE FROM RandomEvent_PillagedBuildings WHERE RandomEventType='RANDOM_EVENT_SOLAR_FLARE';
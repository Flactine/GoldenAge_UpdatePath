--V225 删除扶壁科技的泛滥平原加成
DELETE FROM TechnologyModifiers WHERE TechnologyType='TECH_BUTTRESS' AND ModifierId='GOLDEN_FLOODPLAINS_FOOD';
DELETE FROM TechnologyModifiers WHERE TechnologyType='TECH_BUTTRESS' AND ModifierId='GOLDEN_FLOODPLAINS_GRASSLAND_FOOD';
DELETE FROM TechnologyModifiers WHERE TechnologyType='TECH_BUTTRESS' AND ModifierId='GOLDEN_FLOODPLAINS_PLAINS_FOOD';
DELETE FROM TechnologyModifiers WHERE TechnologyType='TECH_BUTTRESS' AND ModifierId='GOLDEN_FLOODPLAINS_TUNDRA_FOOD';

--v232 后调森林森林和雨林雨林相邻额外产出
DELETE FROM TechnologyModifiers WHERE TechnologyType='TECH_APPRENTICESHIP' AND ModifierId='GOLDEN_FOREST_PRODUCTION';
DELETE FROM TechnologyModifiers WHERE TechnologyType='TECH_APPRENTICESHIP' AND ModifierId='GOLDEN_JUNGLE_FOOD';
INSERT OR REPLACE INTO CivicModifiers(CivicType, ModifierId) VALUES
('CIVIC_SCORCHED_EARTH', 	'GOLDEN_FOREST_PRODUCTION'),
('CIVIC_SCORCHED_EARTH', 	'GOLDEN_JUNGLE_FOOD');

--v233 礁石
DELETE FROM Feature_YieldChanges WHERE FeatureType='FEATURE_REEF';
INSERT OR REPLACE INTO Feature_YieldChanges
(FeatureType,					YieldType,	   YieldChange) VALUES	
('FEATURE_REEF',	'YIELD_FOOD',   -2),
('FEATURE_REEF',	'YIELD_GOLD',   -1),
('FEATURE_REEF',	'YIELD_PRODUCTION',  4);

--v234 沙漠森林
INSERT OR REPLACE INTO Feature_ValidTerrains
(FeatureType,					TerrainType) VALUES	
('FEATURE_FOREST',				'TERRAIN_DESERT'),
('FEATURE_FOREST',				'TERRAIN_DESERT_HILLS');


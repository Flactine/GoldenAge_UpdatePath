------------------------------------
UPDATE Features	SET Appeal = 1, DefenseModifier = 2	WHERE FeatureType = 'FEATURE_SUK_KELP';

DELETE FROM Feature_YieldChanges WHERE FeatureType='FEATURE_SUK_KELP';
INSERT OR REPLACE INTO Feature_YieldChanges
(FeatureType,					YieldType,	   YieldChange) VALUES	
('FEATURE_SUK_KELP',	'YIELD_FOOD',  2),
('FEATURE_SUK_KELP',	'YIELD_GOLD',   -1);

------------------------------------
INSERT OR REPLACE INTO Improvement_YieldChanges
(ImprovementType,					YieldType,	   YieldChange) VALUES	
('IMPROVEMENT_FISHERY',				'YIELD_GOLD',  1);

DELETE FROM ImprovementModifiers WHERE ImprovementType='IMPROVEMENT_FISHING_BOATS' AND ModifierId='SUK_FISHERY_FOOD';
DELETE FROM ImprovementModifiers WHERE ImprovementType='IMPROVEMENT_FISHING_BOATS' AND ModifierId='SUK_FISHERY_PRODUCTION';

------------------------------------
DELETE FROM DistrictModifiers WHERE DistrictType='DISTRICT_WATER_ENTERTAINMENT_COMPLEX' AND ModifierId='SUK_OCEANS_WATER_PARK_AMENITIES';

DELETE FROM BuildingModifiers WHERE BuildingType='BUILDING_AQUARIUM' AND ModifierId='SUK_OCEANS_AQUARIUM_SCIENCE';
DELETE FROM BuildingModifiers WHERE BuildingType='BUILDING_AQUARIUM' AND ModifierId='SUK_OCEANS_AQUARIUM_ADJACENT_SCIENCE';
DELETE FROM BuildingModifiers WHERE BuildingType='BUILDING_AQUATICS_CENTER' AND ModifierId='SUK_OCEANS_AQUATIC_CENTER_TOURISM';
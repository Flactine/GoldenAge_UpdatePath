--V229 空军偏好
UPDATE PseudoYields SET DefaultValue=10 WHERE PseudoYieldType="PSEUDOYIELD_UNIT_AIR_COMBAT"; --DefaultValue=2

--V229 产出偏好
UPDATE AiFavoredItems SET Value = 20 WHERE ListType="DefaultYieldBias" AND Item="YIELD_PRODUCTION";--was 25
UPDATE AiFavoredItems SET Value = 15 WHERE ListType="DefaultYieldBias" AND Item="YIELD_SCIENCE";--was 10
UPDATE AiFavoredItems SET Value = 15 WHERE ListType="DefaultYieldBias" AND Item="YIELD_CULTURE";--was 10
UPDATE AiFavoredItems SET Value = 25 WHERE ListType="DefaultYieldBias" AND Item="YIELD_GOLD";--was 20
UPDATE AiFavoredItems SET Value = 10 WHERE ListType="DefaultYieldBias" AND Item="YIELD_FAITH";--was -25

--V229 飞天项目偏好
INSERT OR REPLACE INTO AiListTypes
(ListType)  VALUES 
('GOLDEN_PROJECT_LAUNCH_EARTH_SATELLITE'), 
('GOLDEN_PROJECT_LAUNCH_MOON_LANDING'), 
('GOLDEN_PROJECT_LAUNCH_MARS_BASE'), 
('GOLDEN_PROJECT_LAUNCH_EXOPLANET_EXPEDITION');

INSERT OR REPLACE INTO AiFavoredItems
(ListType, Item, Favored)  VALUES 
('GOLDEN_PROJECT_LAUNCH_EARTH_SATELLITE',           'PROJECT_LAUNCH_EARTH_SATELLITE', 		1), 
('GOLDEN_PROJECT_LAUNCH_MOON_LANDING',             	'PROJECT_LAUNCH_MOON_LANDING', 			1), 
('GOLDEN_PROJECT_LAUNCH_MARS_BASE',        			'PROJECT_LAUNCH_MARS_BASE', 			1), 
('GOLDEN_PROJECT_LAUNCH_EXOPLANET_EXPEDITION',      'PROJECT_LAUNCH_EXOPLANET_EXPEDITION', 	1);

INSERT OR REPLACE INTO AiLists
(ListType, LeaderType, System)  VALUES 
('GOLDEN_PROJECT_LAUNCH_EARTH_SATELLITE',              	'TRAIT_LEADER_MAJOR_CIV', 'Projects'),
('GOLDEN_PROJECT_LAUNCH_MOON_LANDING',             		'TRAIT_LEADER_MAJOR_CIV', 'Projects'),
('GOLDEN_PROJECT_LAUNCH_MARS_BASE',        				'TRAIT_LEADER_MAJOR_CIV', 'Projects'),
('GOLDEN_PROJECT_LAUNCH_EXOPLANET_EXPEDITION',          'TRAIT_LEADER_MAJOR_CIV', 'Projects');

--V229 世界奇观偏好
DELETE FROM AiListTypes 	WHERE ListType LIKE '%Wonders';
DELETE FROM AiFavoredItems 	WHERE ListType LIKE '%Wonders';
DELETE FROM AiLists 		WHERE ListType LIKE '%Wonders';

INSERT OR REPLACE INTO AiListTypes (ListType) SELECT	 
'GOLDEN_AI_LIKE_WORLD_WONDER_' || BuildingType 
FROM Buildings WHERE IsWonder = 1;

INSERT OR REPLACE INTO AiFavoredItems (ListType, Item, Favored)  SELECT 
'GOLDEN_AI_LIKE_WORLD_WONDER_' || BuildingType, BuildingType, 1
FROM Buildings WHERE IsWonder = 1;

INSERT OR REPLACE INTO AiLists (ListType, LeaderType, System) SELECT
'GOLDEN_AI_LIKE_WORLD_WONDER_' || BuildingType, 'TRAIT_LEADER_MAJOR_CIV', 'Buildings'
FROM Buildings WHERE IsWonder = 1;
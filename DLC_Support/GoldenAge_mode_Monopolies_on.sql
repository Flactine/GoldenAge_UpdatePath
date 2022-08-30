--文化胜利--GA通用改动
--旅游业绩与国外游客
UPDATE GlobalParameters SET Value = 150 		WHERE Name = 'TOURISM_TOURISM_TO_MOVE_CITIZEN';--200
--文化值与国内游客
UPDATE GlobalParameters SET Value = 150 		WHERE Name = 'TOURISM_CULTURE_PER_CITIZEN';--100
--以下皆为v226
--相邻加成
INSERT OR REPLACE INTO District_Adjacencies 
(DistrictType, 				YieldChangeId) VALUES
('DISTRICT_COMMERCIAL_HUB',			'COMMERCIAL_HUB_INDUSTRY'),
('DISTRICT_COMMERCIAL_HUB',			'COMMERCIAL_HUB_CORPORATION'),
('DISTRICT_SUGUBA',					'COMMERCIAL_HUB_INDUSTRY'),
('DISTRICT_SUGUBA',					'COMMERCIAL_HUB_CORPORATION'),
('DISTRICT_HARBOR',					'COMMERCIAL_HUB_INDUSTRY'),
('DISTRICT_HARBOR',					'COMMERCIAL_HUB_CORPORATION'),
('DISTRICT_ROYAL_NAVY_DOCKYARD',	'COMMERCIAL_HUB_INDUSTRY'),
('DISTRICT_ROYAL_NAVY_DOCKYARD',	'COMMERCIAL_HUB_CORPORATION'),
('DISTRICT_COTHON',					'COMMERCIAL_HUB_INDUSTRY'),
('DISTRICT_COTHON',					'COMMERCIAL_HUB_CORPORATION');

INSERT OR REPLACE INTO Adjacency_YieldChanges 
(ID, 							Description, 						YieldType, 		YieldChange, 	TilesRequired, 	AdjacentImprovement) VALUES
('COMMERCIAL_HUB_INDUSTRY', 	'LOC_COMMERCIAL_HUB_INDUSTRY', 		'YIELD_GOLD', 	3, 				1, 				'IMPROVEMENT_INDUSTRY'),
('COMMERCIAL_HUB_CORPORATION', 	'LOC_COMMERCIAL_HUB_CORPORATION', 	'YIELD_GOLD', 	5, 				1, 				'IMPROVEMENT_CORPORATION');

--Investor
UPDATE Improvements SET PrereqTech = 'TECH_MATHEMATICS' WHERE ImprovementType = 'IMPROVEMENT_INDUSTRY';

INSERT OR REPLACE INTO Types
(Type,						Kind) VALUES	
('UNIT_INVESTOR',			'KIND_UNIT');

INSERT OR REPLACE INTO Units
(UnitType,			Name,						Description,							BaseSightRange,	BaseMoves,	Domain,			FormationClass,				Cost,	CostProgressionModel,					CostProgressionParam1,	BuildCharges,	PurchaseYield,   MustPurchase,	PrereqTech)  VALUES	
('UNIT_INVESTOR',	'LOC_UNIT_INVESTOR_NAME',	'LOC_UNIT_INVESTOR_DESCRIPTION',		1,				2, 			'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN',	150,	'COST_PROGRESSION_PREVIOUS_COPIES',		50,						1,				'YIELD_GOLD',	 1,				'TECH_MATHEMATICS');

INSERT OR REPLACE INTO TypeTags
(Type,				Tag) VALUES	
('UNIT_INVESTOR',		'CLASS_BUILDER'),
('UNIT_INVESTOR',		'CLASS_LANDCIVILIAN');

INSERT OR REPLACE INTO UnitCaptures
(CapturedUnitType,	BecomesUnitType) VALUES	
('UNIT_INVESTOR',		'UNIT_INVESTOR');

DELETE FROM Improvement_ValidBuildUnits WHERE ImprovementType='IMPROVEMENT_INDUSTRY';
DELETE FROM Improvement_ValidBuildUnits WHERE ImprovementType='IMPROVEMENT_CORPORATION';
INSERT OR REPLACE INTO Improvement_ValidBuildUnits
(ImprovementType,				UnitType) VALUES	
('IMPROVEMENT_INDUSTRY',		'UNIT_INVESTOR'),
('IMPROVEMENT_CORPORATION',		'UNIT_INVESTOR');
	
INSERT OR REPLACE INTO UnitAiInfos
(UnitType,			AiType)  VALUES	
('UNIT_INVESTOR',		'UNITAI_BUILD'),
('UNIT_INVESTOR',		'UNITTYPE_CIVILIAN');

INSERT OR REPLACE INTO AiFavoredItems
(ListType,					Item,				Value) VALUES	
('UnitPriorityBoosts',		'UNIT_INVESTOR',		50);

--AI free units by era
-- INSERT OR REPLACE INTO TraitModifiers
       -- (TraitType ,           ModifierId)
-- SELECT 'TRAIT_LEADER_MAJOR_CIV' ,  'GOLDEN_AI_UNIT_INVESTOR_' ||EraType 
-- FROM Eras WHERE ChronologyIndex = 3 OR ChronologyIndex = 5 OR ChronologyIndex = 7;

-- INSERT OR REPLACE INTO Modifiers
       -- (ModifierId ,                                ModifierType,                                    		SubjectRequirementSetId)
-- SELECT 'GOLDEN_AI_UNIT_INVESTOR_' ||EraType,        	'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',   				'GOLDEN_AI_IS_GAME_ERA_ATLEAST_' ||EraType|| '_REQUIREMENTS' 
-- FROM Eras WHERE ChronologyIndex = 3 OR ChronologyIndex = 5 OR ChronologyIndex = 7;

-- INSERT OR REPLACE INTO ModifierArguments
       -- (ModifierId , Name , Value)
-- SELECT ModifierId , 'Amount' , 		1 FROM TraitModifiers WHERE ModifierId LIKE 'GOLDEN_AI_UNIT_INVESTOR_%';
-- INSERT OR REPLACE INTO ModifierArguments
       -- (ModifierId , Name , Value)
-- SELECT ModifierId , 'UnitType' , 	'UNIT_INVESTOR' FROM TraitModifiers WHERE ModifierId LIKE 'GOLDEN_AI_UNIT_INVESTOR_%';

--Exchange
UPDATE ResourceIndustries SET ResourceEffect = 'INDUSTRY_BUILDING_DISCOUNT', ResourceEffectText = 'LOC_INDUSTRY_BUILDING_DISCOUNT_DESCRIPTION' WHERE ResourceType = 'RESOURCE_FURS';
UPDATE ResourceCorporations SET ResourceEffect = 'CORPORATION_BUILDING_DISCOUNT', ResourceEffectText = 'LOC_CORPORATION_BUILDING_DISCOUNT_DESCRIPTION' WHERE ResourceType = 'RESOURCE_FURS';
DELETE FROM GreatWorkModifiers WHERE GreatWorkType='GREATWORK_PRODUCT_FURS_1';
DELETE FROM GreatWorkModifiers WHERE GreatWorkType='GREATWORK_PRODUCT_FURS_2';
DELETE FROM GreatWorkModifiers WHERE GreatWorkType='GREATWORK_PRODUCT_FURS_3';
DELETE FROM GreatWorkModifiers WHERE GreatWorkType='GREATWORK_PRODUCT_FURS_4';
DELETE FROM GreatWorkModifiers WHERE GreatWorkType='GREATWORK_PRODUCT_FURS_5';
INSERT OR REPLACE INTO GreatWorkModifiers
(GreatWorkType,						ModifierId)  VALUES	
('GREATWORK_PRODUCT_FURS_1',		'PRODUCT_BUILDING_DISCOUNT_MARBLE'),
('GREATWORK_PRODUCT_FURS_2',		'PRODUCT_BUILDING_DISCOUNT_MARBLE'),
('GREATWORK_PRODUCT_FURS_3',		'PRODUCT_BUILDING_DISCOUNT_MARBLE'),
('GREATWORK_PRODUCT_FURS_4',		'PRODUCT_BUILDING_DISCOUNT_MARBLE'),
('GREATWORK_PRODUCT_FURS_5',		'PRODUCT_BUILDING_DISCOUNT_MARBLE');
UPDATE ResourceIndustries SET ResourceEffect = 'INDUSTRY_SCIENCE_YIELD_BONUS', ResourceEffectText = 'LOC_INDUSTRY_SCIENCE_YIELD_BONUS_DESCRIPTION' WHERE ResourceType = 'RESOURCE_WHALES';
UPDATE ResourceCorporations SET ResourceEffect = 'CORPORATION_SCIENCE_YIELD_BONUS', ResourceEffectText = 'LOC_CORPORATION_SCIENCE_YIELD_BONUS_DESCRIPTION' WHERE ResourceType = 'RESOURCE_WHALES';
DELETE FROM GreatWorkModifiers WHERE GreatWorkType='GREATWORK_PRODUCT_WHALES_1';
DELETE FROM GreatWorkModifiers WHERE GreatWorkType='GREATWORK_PRODUCT_WHALES_2';
DELETE FROM GreatWorkModifiers WHERE GreatWorkType='GREATWORK_PRODUCT_WHALES_3';
DELETE FROM GreatWorkModifiers WHERE GreatWorkType='GREATWORK_PRODUCT_WHALES_4';
DELETE FROM GreatWorkModifiers WHERE GreatWorkType='GREATWORK_PRODUCT_WHALES_5';
INSERT OR REPLACE INTO GreatWorkModifiers
(GreatWorkType,						ModifierId)  VALUES	
('GREATWORK_PRODUCT_FURS_1',		'PRODUCT_SCIENCE_YIELD_BONUS_MERCURY'),
('GREATWORK_PRODUCT_FURS_2',		'PRODUCT_SCIENCE_YIELD_BONUS_MERCURY'),
('GREATWORK_PRODUCT_FURS_3',		'PRODUCT_SCIENCE_YIELD_BONUS_MERCURY'),
('GREATWORK_PRODUCT_FURS_4',		'PRODUCT_SCIENCE_YIELD_BONUS_MERCURY'),
('GREATWORK_PRODUCT_FURS_5',		'PRODUCT_SCIENCE_YIELD_BONUS_MERCURY');
UPDATE ResourceIndustries SET ResourceEffect = 'INDUSTRY_BUILDING_DISCOUNT', ResourceEffectText = 'LOC_INDUSTRY_BUILDING_DISCOUNT_DESCRIPTION' WHERE ResourceType = 'RESOURCE_OLIVES';
UPDATE ResourceCorporations SET ResourceEffect = 'CORPORATION_BUILDING_DISCOUNT', ResourceEffectText = 'LOC_CORPORATION_BUILDING_DISCOUNT_DESCRIPTION' WHERE ResourceType = 'RESOURCE_OLIVES';
DELETE FROM GreatWorkModifiers WHERE GreatWorkType='GREATWORK_PRODUCT_OLIVES_1';
DELETE FROM GreatWorkModifiers WHERE GreatWorkType='GREATWORK_PRODUCT_OLIVES_2';
DELETE FROM GreatWorkModifiers WHERE GreatWorkType='GREATWORK_PRODUCT_OLIVES_3';
DELETE FROM GreatWorkModifiers WHERE GreatWorkType='GREATWORK_PRODUCT_OLIVES_4';
DELETE FROM GreatWorkModifiers WHERE GreatWorkType='GREATWORK_PRODUCT_OLIVES_5';
INSERT OR REPLACE INTO GreatWorkModifiers
(GreatWorkType,						ModifierId)  VALUES	
('GREATWORK_PRODUCT_OLIVES_1',		'PRODUCT_BUILDING_DISCOUNT_MARBLE'),
('GREATWORK_PRODUCT_OLIVES_2',		'PRODUCT_BUILDING_DISCOUNT_MARBLE'),
('GREATWORK_PRODUCT_OLIVES_3',		'PRODUCT_BUILDING_DISCOUNT_MARBLE'),
('GREATWORK_PRODUCT_OLIVES_4',		'PRODUCT_BUILDING_DISCOUNT_MARBLE'),
('GREATWORK_PRODUCT_OLIVES_5',		'PRODUCT_BUILDING_DISCOUNT_MARBLE');

UPDATE Modifiers SET SubjectRequirementSetId = 'GA_REQUIRES_MILITARY_DISCOUNT_RESOURCE' WHERE ModifierId = 'INDUSTRY_MILITARY_UNIT_DISCOUNT';
UPDATE Modifiers SET SubjectRequirementSetId = 'GA_REQUIRES_MILITARY_DISCOUNT_RESOURCE' WHERE ModifierId = 'CORPORATION_MILITARY_UNIT_DISCOUNT';
UPDATE Modifiers SET SubjectRequirementSetId = 'GA_REQUIRES_BUILDING_DISCOUNT_RESOURCE' WHERE ModifierId = 'INDUSTRY_BUILDING_DISCOUNT';
UPDATE Modifiers SET SubjectRequirementSetId = 'GA_REQUIRES_BUILDING_DISCOUNT_RESOURCE' WHERE ModifierId = 'CORPORATION_BUILDING_DISCOUNT';
UPDATE Modifiers SET SubjectRequirementSetId = 'GA_REQUIRES_SCIENCE_BONUS_RESOURCE' WHERE ModifierId = 'INDUSTRY_SCIENCE_YIELD_BONUS';
UPDATE Modifiers SET SubjectRequirementSetId = 'GA_REQUIRES_SCIENCE_BONUS_RESOURCE' WHERE ModifierId = 'CORPORATION_SCIENCE_YIELD_BONUS';
INSERT OR REPLACE INTO RequirementSets 				
(RequirementSetId ,     RequirementSetType) 	VALUES 		
('GA_REQUIRES_MILITARY_DISCOUNT_RESOURCE' , 		'REQUIREMENTSET_TEST_ANY'),
('GA_REQUIRES_BUILDING_DISCOUNT_RESOURCE' , 		'REQUIREMENTSET_TEST_ANY'),
('GA_REQUIRES_SCIENCE_BONUS_RESOURCE' , 			'REQUIREMENTSET_TEST_ANY');	
INSERT OR REPLACE INTO RequirementSetRequirements 	
(RequirementSetId ,     RequirementId) 			VALUES 		
('GA_REQUIRES_MILITARY_DISCOUNT_RESOURCE' , 		'GOLDEN_REQUIRES_PLOT_HAS_RESOURCE_CITRUS'),
('GA_REQUIRES_MILITARY_DISCOUNT_RESOURCE' , 		'GOLDEN_REQUIRES_PLOT_HAS_RESOURCE_COTTON'),
('GA_REQUIRES_MILITARY_DISCOUNT_RESOURCE' , 		'GOLDEN_REQUIRES_PLOT_HAS_RESOURCE_TOBACCO'),	
('GA_REQUIRES_MILITARY_DISCOUNT_RESOURCE' , 		'GOLDEN_REQUIRES_PLOT_HAS_RESOURCE_IVORY'),
('GA_REQUIRES_BUILDING_DISCOUNT_RESOURCE' , 		'GOLDEN_REQUIRES_PLOT_HAS_RESOURCE_GYPSUM'),
('GA_REQUIRES_BUILDING_DISCOUNT_RESOURCE' , 		'GOLDEN_REQUIRES_PLOT_HAS_RESOURCE_MARBLE'),
('GA_REQUIRES_BUILDING_DISCOUNT_RESOURCE' , 		'GOLDEN_REQUIRES_PLOT_HAS_RESOURCE_FURS'),	
('GA_REQUIRES_BUILDING_DISCOUNT_RESOURCE' , 		'GOLDEN_REQUIRES_PLOT_HAS_RESOURCE_OLIVES'),
('GA_REQUIRES_SCIENCE_BONUS_RESOURCE' , 			'GOLDEN_REQUIRES_PLOT_HAS_RESOURCE_MERCURY'),
('GA_REQUIRES_SCIENCE_BONUS_RESOURCE' , 			'GOLDEN_REQUIRES_PLOT_HAS_RESOURCE_TEA'),
('GA_REQUIRES_SCIENCE_BONUS_RESOURCE' , 			'GOLDEN_REQUIRES_PLOT_HAS_RESOURCE_TURTLES'),--?
('GA_REQUIRES_SCIENCE_BONUS_RESOURCE' , 			'GOLDEN_REQUIRES_PLOT_HAS_RESOURCE_WHALES');
INSERT OR REPLACE INTO 	Requirements (RequirementId,				                    RequirementType) VALUES						
('GOLDEN_REQUIRES_PLOT_HAS_RESOURCE_TURTLES',			    'REQUIREMENT_PLOT_RESOURCE_TYPE_MATCHES'),
('GOLDEN_REQUIRES_PLOT_HAS_RESOURCE_WHALES',			    'REQUIREMENT_PLOT_RESOURCE_TYPE_MATCHES');		
--RequirementArguments	
INSERT OR REPLACE INTO 	RequirementArguments (RequirementId,		                Name,			    Value) VALUES						
('GOLDEN_REQUIRES_PLOT_HAS_RESOURCE_TURTLES',			    'ResourceType',		'RESOURCE_TURTLES'),	
('GOLDEN_REQUIRES_PLOT_HAS_RESOURCE_WHALES',			    'ResourceType',		'RESOURCE_WHALES');

--Nerf
UPDATE ModifierArguments SET Value = 2 WHERE ModifierId = 'INDUSTRY_CITY_GROWTH_HOUSING' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 4 WHERE ModifierId = 'CORPORATION_CITY_GROWTH_HOUSING' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 2 WHERE ModifierId LIKE 'PRODUCT_CITY_GROWTH_HOUSING_%' AND Name = 'Amount';

UPDATE ModifierArguments SET Value = 20 WHERE ModifierId = 'INDUSTRY_MILITARY_UNIT_DISCOUNT' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 40 WHERE ModifierId = 'CORPORATION_MILITARY_UNIT_DISCOUNT' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 20 WHERE ModifierId LIKE 'PRODUCT_MILITARY_UNIT_DISCOUNT_%' AND Name = 'Amount';

UPDATE ModifierArguments SET Value = 20 WHERE ModifierId = 'INDUSTRY_BUILDING_DISCOUNT' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 40 WHERE ModifierId = 'CORPORATION_BUILDING_DISCOUNT' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 20 WHERE ModifierId LIKE 'PRODUCT_BUILDING_DISCOUNT_%' AND Name = 'Amount';

UPDATE ModifierArguments SET Value = 10 WHERE ModifierId = 'INDUSTRY_GOLD_YIELD_BONUS' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 20 WHERE ModifierId = 'CORPORATION_GOLD_YIELD_BONUS' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 10 WHERE ModifierId LIKE 'PRODUCT_GOLD_YIELD_BONUS_%' AND Name = 'Amount';

UPDATE ModifierArguments SET Value = 10 WHERE ModifierId = 'INDUSTRY_FAITH_YIELD_BONUS' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 20 WHERE ModifierId = 'CORPORATION_FAITH_YIELD_BONUS' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 10 WHERE ModifierId LIKE 'PRODUCT_FAITH_YIELD_BONUS_%' AND Name = 'Amount';

UPDATE ModifierArguments SET Value = 10 WHERE ModifierId = 'INDUSTRY_SCIENCE_YIELD_BONUS' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 20 WHERE ModifierId = 'CORPORATION_SCIENCE_YIELD_BONUS' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 10 WHERE ModifierId LIKE 'PRODUCT_SCIENCE_YIELD_BONUS_%' AND Name = 'Amount';

UPDATE ModifierArguments SET Value = 10 WHERE ModifierId = 'INDUSTRY_CULTURE_YIELD_BONUS' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 20 WHERE ModifierId = 'CORPORATION_CULTURE_YIELD_BONUS' AND Name = 'Amount';
UPDATE ModifierArguments SET Value = 10 WHERE ModifierId LIKE 'PRODUCT_CULTURE_YIELD_BONUS_%' AND Name = 'Amount';

--垄断需求
INSERT OR REPLACE INTO GlobalParameters
		(Name,														Value)
VALUES	('MONOPOLY_REQUIRED_RESOURCE_CONTROL_PERCENTAGE',			80),
		('MONOPOLY_REQUIRED_RESOURCE_CONTROL_PERCENTAGE_MED',		90),
		('MONOPOLY_REQUIRED_RESOURCE_CONTROL_PERCENTAGE_MAX',		100);
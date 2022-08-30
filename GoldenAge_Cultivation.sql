--v226 	农场和矿山现在要在资源上才能建造
DELETE FROM Improvement_ValidTerrains WHERE ImprovementType='IMPROVEMENT_FARM';
DELETE FROM Improvement_ValidTerrains WHERE ImprovementType='IMPROVEMENT_MINE';

--资源培育 Credit to 'Resource Cultivation' by Zegangani.
INSERT OR REPLACE INTO Types
(Type,						Kind) VALUES	
('UNIT_FARMER',		'KIND_UNIT'),
('UNIT_HERDMAN',	'KIND_UNIT'),
('UNIT_FISHER',		'KIND_UNIT'),
('UNIT_MINER',		'KIND_UNIT');

INSERT OR REPLACE INTO Units
(UnitType,			Name,						Description,						BaseSightRange,	BaseMoves,	Domain,			FormationClass,				Cost,	CostProgressionModel,						CostProgressionParam1,	BuildCharges,	PurchaseYield,   MustPurchase,	PrereqTech)  VALUES	
('UNIT_FARMER',		'LOC_UNIT_FARMER_NAME',		'LOC_UNIT_FARMER_DESCRIPTION',		1,				 2, 		'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN',	100,		'COST_PROGRESSION_PREVIOUS_COPIES',		25,					2,				'YIELD_GOLD',	 1,				'TECH_MATHEMATICS'),
('UNIT_HERDMAN',	'LOC_UNIT_HERDMAN_NAME',	'LOC_UNIT_HERDMAN_DESCRIPTION',		1,				 2, 		'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN',	100,		'COST_PROGRESSION_PREVIOUS_COPIES',		25,					2,				'YIELD_GOLD',	 1, 			'TECH_HORSEBACK_RIDING'),
('UNIT_FISHER',		'LOC_UNIT_FISHER_NAME',		'LOC_UNIT_FISHER_DESCRIPTION',		1,				 2, 		'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN',	100,		'COST_PROGRESSION_PREVIOUS_COPIES',		25,					2,				'YIELD_GOLD',	 1, 			'TECH_SHIPBUILDING'),
('UNIT_MINER',		'LOC_UNIT_MINER_NAME',		'LOC_UNIT_MINER_DESCRIPTION',		1,				 2, 		'DOMAIN_LAND', 'FORMATION_CLASS_CIVILIAN',	100,		'COST_PROGRESSION_PREVIOUS_COPIES',		25,					2,				'YIELD_GOLD',	 1, 			'TECH_CONSTRUCTION');

INSERT OR REPLACE INTO TypeTags
(Type,				Tag) VALUES	
('UNIT_FARMER',		'CLASS_BUILDER'),
('UNIT_FARMER',		'CLASS_LANDCIVILIAN'),
('UNIT_HERDMAN',	'CLASS_BUILDER'),
('UNIT_HERDMAN',	'CLASS_LANDCIVILIAN'),
('UNIT_FISHER',		'CLASS_BUILDER'),
('UNIT_FISHER',		'CLASS_LANDCIVILIAN'),
('UNIT_MINER',		'CLASS_BUILDER'),
('UNIT_MINER',		'CLASS_LANDCIVILIAN');

INSERT OR REPLACE INTO UnitCaptures
(CapturedUnitType,	BecomesUnitType) VALUES	
('UNIT_FARMER',		'UNIT_FARMER'),
('UNIT_HERDMAN',	'UNIT_HERDMAN'),
('UNIT_FISHER',		'UNIT_FISHER'),
('UNIT_MINER',		'UNIT_MINER');

INSERT OR REPLACE INTO Improvement_ValidBuildUnits
(ImprovementType,				UnitType) VALUES	
('IMPROVEMENT_FARM',			'UNIT_FARMER'),
('IMPROVEMENT_PLANTATION',		'UNIT_FARMER'),
('IMPROVEMENT_PASTURE',			'UNIT_HERDMAN'),
('IMPROVEMENT_CAMP',			'UNIT_HERDMAN'),
('IMPROVEMENT_FISHING_BOATS',	'UNIT_FISHER'),
('IMPROVEMENT_FISHERY',			'UNIT_FISHER'),
('IMPROVEMENT_MINE',			'UNIT_MINER'),
('IMPROVEMENT_QUARRY',			'UNIT_MINER');
	
INSERT OR REPLACE INTO UnitAiInfos
(UnitType,			AiType)  VALUES	
('UNIT_FARMER',		'UNITAI_BUILD'),
('UNIT_FARMER',		'UNITTYPE_CIVILIAN'),
('UNIT_HERDMAN',	'UNITAI_BUILD'),
('UNIT_HERDMAN',	'UNITTYPE_CIVILIAN'),
('UNIT_FISHER',		'UNITAI_BUILD'),
('UNIT_FISHER',		'UNITTYPE_CIVILIAN'),
('UNIT_MINER',		'UNITAI_BUILD'),
('UNIT_MINER',		'UNITTYPE_CIVILIAN');

INSERT OR REPLACE INTO AiFavoredItems
(ListType,					Item,				Value) VALUES	
('UnitPriorityBoosts',		'UNIT_FARMER',		50),
('UnitPriorityBoosts',		'UNIT_HERDMAN',		50),
('UnitPriorityBoosts',		'UNIT_FISHER',		50),
('UnitPriorityBoosts',		'UNIT_MINER',		50);

--==========================================================================================================================
--AI free units by era
-- INSERT OR REPLACE INTO TraitModifiers
       -- (TraitType ,           ModifierId)
-- SELECT 'TRAIT_LEADER_MAJOR_CIV' ,  'GOLDEN_AI_UNIT_FARMER_' ||EraType 
-- FROM Eras WHERE ChronologyIndex = 3 OR ChronologyIndex = 5 OR ChronologyIndex = 7;
-- INSERT OR REPLACE INTO TraitModifiers
       -- (TraitType ,           ModifierId)
-- SELECT 'TRAIT_LEADER_MAJOR_CIV' ,  'GOLDEN_AI_UNIT_HERDMAN_' ||EraType 
-- FROM Eras WHERE ChronologyIndex = 3 OR ChronologyIndex = 5 OR ChronologyIndex = 7;
-- INSERT OR REPLACE INTO TraitModifiers
       -- (TraitType ,           ModifierId)
-- SELECT 'TRAIT_LEADER_MAJOR_CIV' ,  'GOLDEN_AI_UNIT_FISHER_' ||EraType 
-- FROM Eras WHERE ChronologyIndex = 3 OR ChronologyIndex = 5 OR ChronologyIndex = 7;
-- INSERT OR REPLACE INTO TraitModifiers
       -- (TraitType ,           ModifierId)
-- SELECT 'TRAIT_LEADER_MAJOR_CIV' ,  'GOLDEN_AI_UNIT_MINER_' ||EraType 
-- FROM Eras WHERE ChronologyIndex = 3 OR ChronologyIndex = 5 OR ChronologyIndex = 7;

-- INSERT OR REPLACE INTO Modifiers
       -- (ModifierId ,                                ModifierType,                                    		SubjectRequirementSetId)
-- SELECT 'GOLDEN_AI_UNIT_FARMER_' ||EraType,        	'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',   				'GOLDEN_AI_IS_GAME_ERA_ATLEAST_' ||EraType|| '_REQUIREMENTS' 
-- FROM Eras WHERE ChronologyIndex = 3 OR ChronologyIndex = 5 OR ChronologyIndex = 7;
-- INSERT OR REPLACE INTO Modifiers
       -- (ModifierId ,                                ModifierType,                                    		SubjectRequirementSetId)
-- SELECT 'GOLDEN_AI_UNIT_HERDMAN_' ||EraType,        	'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',   				'GOLDEN_AI_IS_GAME_ERA_ATLEAST_' ||EraType|| '_REQUIREMENTS' 
-- FROM Eras WHERE ChronologyIndex = 3 OR ChronologyIndex = 5 OR ChronologyIndex = 7;
-- INSERT OR REPLACE INTO Modifiers
       -- (ModifierId ,                                ModifierType,                                    		SubjectRequirementSetId)
-- SELECT 'GOLDEN_AI_UNIT_FISHER_' ||EraType,        	'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',   				'GOLDEN_AI_IS_GAME_ERA_ATLEAST_' ||EraType|| '_REQUIREMENTS' 
-- FROM Eras WHERE ChronologyIndex = 3 OR ChronologyIndex = 5 OR ChronologyIndex = 7;
-- INSERT OR REPLACE INTO Modifiers
       -- (ModifierId ,                                ModifierType,                                    		SubjectRequirementSetId)
-- SELECT 'GOLDEN_AI_UNIT_MINER_' ||EraType,        	'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',   				'GOLDEN_AI_IS_GAME_ERA_ATLEAST_' ||EraType|| '_REQUIREMENTS' 
-- FROM Eras WHERE ChronologyIndex = 3 OR ChronologyIndex = 5 OR ChronologyIndex = 7;

-- INSERT OR REPLACE INTO ModifierArguments
       -- (ModifierId , Name , Value)
-- SELECT ModifierId , 'Amount' , 		1 FROM TraitModifiers WHERE ModifierId LIKE 'GOLDEN_AI_UNIT_FARMER_%';
-- INSERT OR REPLACE INTO ModifierArguments
       -- (ModifierId , Name , Value)
-- SELECT ModifierId , 'UnitType' , 	'UNIT_FARMER' FROM TraitModifiers WHERE ModifierId LIKE 'GOLDEN_AI_UNIT_FARMER_%';
-- INSERT OR REPLACE INTO ModifierArguments
       -- (ModifierId , Name , Value)
-- SELECT ModifierId , 'Amount' , 		1 FROM TraitModifiers WHERE ModifierId LIKE 'GOLDEN_AI_UNIT_HERDMAN_%';
-- INSERT OR REPLACE INTO ModifierArguments
       -- (ModifierId , Name , Value)
-- SELECT ModifierId , 'UnitType' , 	'UNIT_HERDMAN' FROM TraitModifiers WHERE ModifierId LIKE 'GOLDEN_AI_UNIT_HERDMAN_%';
-- INSERT OR REPLACE INTO ModifierArguments
       -- (ModifierId , Name , Value)
-- SELECT ModifierId , 'Amount' , 		1 FROM TraitModifiers WHERE ModifierId LIKE 'GOLDEN_AI_UNIT_FISHER_%';
-- INSERT OR REPLACE INTO ModifierArguments
       -- (ModifierId , Name , Value)
-- SELECT ModifierId , 'UnitType' , 	'UNIT_FISHER' FROM TraitModifiers WHERE ModifierId LIKE 'GOLDEN_AI_UNIT_FISHER_%';
-- INSERT OR REPLACE INTO ModifierArguments
       -- (ModifierId , Name , Value)
-- SELECT ModifierId , 'Amount' , 		1 FROM TraitModifiers WHERE ModifierId LIKE 'GOLDEN_AI_UNIT_MINER_%';
-- INSERT OR REPLACE INTO ModifierArguments
       -- (ModifierId , Name , Value)
-- SELECT ModifierId , 'UnitType' , 	'UNIT_MINER' FROM TraitModifiers WHERE ModifierId LIKE 'GOLDEN_AI_UNIT_MINER_%';
--==========================================================================================================================
CREATE TABLE GA_Resource_Cultivation(
	ResourceType 			varchar(100),
	ResourceClassType 		varchar(100),
	UnitType 				varchar(100) NULL,
	ImprovementType 		varchar(100) NULL,
	PrereqTech        		varchar(100) NULL,
    PrereqCivic       		varchar(100) NULL,
	ResourceCultivation     varchar(100) NOT NULL CHECK (ResourceCultivation IN (0, 1) ) DEFAULT 0,
	Icon        			varchar(100) NULL,
	ValidImprovementType    varchar(100) NULL,
	TraitType        		varchar(100) NULL,
	Housing        			varchar(100) NOT NULL DEFAULT 0,
	TilesRequired        	varchar(100) NOT NULL DEFAULT 0,
	Domain 					varchar(100) NOT NULL DEFAULT 'DOMAIN_LAND',
	PRIMARY KEY (UnitType, ImprovementType)
);

INSERT OR IGNORE INTO GA_Resource_Cultivation(ResourceType, ResourceClassType)
SELECT ResourceType, ResourceClassType FROM Resources WHERE ResourceType IN
(
	--Plant based resources
	'RESOURCE_RICE',
	'RESOURCE_WHEAT',
	'RESOURCE_MAIZE',	
	'RESOURCE_BANANAS',
	'RESOURCE_CITRUS',
	'RESOURCE_COCOA',
	'RESOURCE_COFFEE',
	'RESOURCE_COTTON',
	'RESOURCE_DYES',
	'RESOURCE_INCENSE', 
	'RESOURCE_SILK',
	'RESOURCE_SPICES',
	'RESOURCE_SUGAR',
	'RESOURCE_TEA',
	'RESOURCE_TOBACCO',
	'RESOURCE_WINE',
	'RESOURCE_OLIVES',
	--Mine Resources
	'RESOURCE_COPPER',
	'RESOURCE_STONE',
	'RESOURCE_DIAMONDS',
	'RESOURCE_GYPSUM',
	'RESOURCE_JADE',
	'RESOURCE_MARBLE',
	'RESOURCE_MERCURY',
	'RESOURCE_SALT',
	'RESOURCE_SILVER',
	'RESOURCE_AMBER',
	--Water Resources
	'RESOURCE_CRABS',
	'RESOURCE_FISH',
	'RESOURCE_WHALES',
	'RESOURCE_PEARLS',
	'RESOURCE_TURTLES',
	--Animal Resources
	'RESOURCE_CATTLE',
	'RESOURCE_SHEEP',
	'RESOURCE_DEER',
	'RESOURCE_FURS',
	'RESOURCE_IVORY',
	'RESOURCE_TRUFFLES',
	'RESOURCE_HONEY',
	--Sukritact's Resources
	'RESOURCE_SUK_CAMEL',
	'RESOURCE_SUK_CHEESE',
	'RESOURCE_SUK_OBSIDIAN',
	'RESOURCE_SUK_SHARK',
	'RESOURCE_GOLD',
	'RESOURCE_DLV_BISON',
	--CIVITAS Resources
	'RESOURCE_P0K_PENGUINS',
	'RESOURCE_P0K_OPAL',	
	'RESOURCE_CVS_POMEGRANATES',
	'RESOURCE_P0K_PAPYRUS',		
	'RESOURCE_P0K_MAPLE',				
	'RESOURCE_P0K_PLUMS',
	--Latin American Resources
	'RESOURCE_LEU_P0K_POTATOES',	
	'RESOURCE_LEU_P0K_CAPYBARAS',	
	'RESOURCE_LEU_P0K_COCA',		
	'RESOURCE_LEU_P0K_LLAMAS',		
	'RESOURCE_LEU_P0K_QUINOA',		
	'RESOURCE_LEU_P0K_YERBAMATE',
	--Sukritact's Oceans
	'RESOURCE_SUK_SQUID',		
	'RESOURCE_SUK_SEALS',			
	'RESOURCE_SUK_CORAL',			
	'RESOURCE_SUK_LOBSTER',	
	'RESOURCE_SUK_CAVIAR'
);
----------------------------------------------------------------------------------------------------------------------------
-- Setting the Icons (just reusing the colored Icons of the Resources)
----------------------------------------------------------------------------------------------------------------------------
UPDATE GA_Resource_Cultivation SET Icon =  'ICON_'|| ResourceType;
----------------------------------------------------------------------------------------------------------------------------
-- Types
----------------------------------------------------------------------------------------------------------------------------
INSERT OR IGNORE INTO Types(Type, Kind) 
VALUES	('TRAIT_BONUS_RESOURCE_CULTIVATION', 'KIND_TRAIT'),
		('TRAIT_LUXURY_RESOURCE_CULTIVATION', 'KIND_TRAIT');
----------------------------------------------------------------------------------------------------------------------------
-- Traits
----------------------------------------------------------------------------------------------------------------------------
INSERT OR IGNORE INTO Traits(TraitType, Name) 
VALUES	('TRAIT_BONUS_RESOURCE_CULTIVATION', 'LOC_TRAIT_BONUS_RESOURCE_CULTIVATION_NAME'),
		('TRAIT_LUXURY_RESOURCE_CULTIVATION', 'LOC_TRAIT_LUXURY_RESOURCE_CULTIVATION_NAME');
----------------------------------------------------------------------------------------------------------------------------
-- Valid Build Unit/ImprovementType, TraitType --Base Game Resources
----------------------------------------------------------------------------------------------------------------------------
--Plant Based Resources
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_FARM', TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION' 
WHERE ResourceType = 'RESOURCE_WHEAT';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_FARM', TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION' 
WHERE ResourceType = 'RESOURCE_RICE';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_FARM', TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION' 
WHERE ResourceType = 'RESOURCE_MAIZE' AND EXISTS (SELECT 1 FROM Resources WHERE ResourceType = 'RESOURCE_MAIZE');
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_PLANTATION', TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_BANANAS';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_PLANTATION', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_CITRUS';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_PLANTATION', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_COCOA';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_PLANTATION', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_COFFEE';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_PLANTATION', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_COTTON';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_PLANTATION', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION' 
WHERE ResourceType = 'RESOURCE_DYES';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_PLANTATION', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_INCENSE';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_PLANTATION', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION' 
WHERE ResourceType = 'RESOURCE_OLIVES';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_PLANTATION', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION' 
WHERE ResourceType = 'RESOURCE_SILK';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_PLANTATION', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_SPICES';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_PLANTATION', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION' 
WHERE ResourceType = 'RESOURCE_SUGAR';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_PLANTATION', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_TEA';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_PLANTATION', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION' 
WHERE ResourceType = 'RESOURCE_TOBACCO';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_PLANTATION', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION' 
WHERE ResourceType = 'RESOURCE_WINE';
--Mine Resources
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_MINER', ValidImprovementType = 'IMPROVEMENT_MINE', TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_COPPER';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_MINER', ValidImprovementType = 'IMPROVEMENT_QUARRY', TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_STONE';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_MINER', ValidImprovementType = 'IMPROVEMENT_QUARRY', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_DIAMONDS';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_MINER', ValidImprovementType = 'IMPROVEMENT_QUARRY', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_GYPSUM';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_MINER', ValidImprovementType = 'IMPROVEMENT_QUARRY', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_JADE';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_MINER', ValidImprovementType = 'IMPROVEMENT_QUARRY', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_MARBLE';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_MINER', ValidImprovementType = 'IMPROVEMENT_MINE', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_MERCURY';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_MINER', ValidImprovementType = 'IMPROVEMENT_MINE', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_SALT';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_MINER', ValidImprovementType = 'IMPROVEMENT_MINE', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_SILVER';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_MINER', ValidImprovementType = 'IMPROVEMENT_MINE', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_AMBER';
--Water Resources
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FISHER', ValidImprovementType = 'IMPROVEMENT_FISHING_BOATS', TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION', Domain = 'DOMAIN_SEA'
WHERE ResourceType = 'RESOURCE_CRABS';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FISHER', ValidImprovementType = 'IMPROVEMENT_FISHING_BOATS', TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION', Domain = 'DOMAIN_SEA'
WHERE ResourceType = 'RESOURCE_FISH';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FISHER', ValidImprovementType = 'IMPROVEMENT_FISHING_BOATS', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION', Domain = 'DOMAIN_SEA'
WHERE ResourceType = 'RESOURCE_WHALES';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FISHER', ValidImprovementType = 'IMPROVEMENT_FISHING_BOATS', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION', Domain = 'DOMAIN_SEA'
WHERE ResourceType = 'RESOURCE_PEARLS';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FISHER', ValidImprovementType = 'IMPROVEMENT_FISHING_BOATS', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION', Domain = 'DOMAIN_SEA'
WHERE ResourceType = 'RESOURCE_TURTLES';
--Domestic Animal Resources
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_HERDMAN', ValidImprovementType = 'IMPROVEMENT_PASTURE', TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION' 
WHERE ResourceType = 'RESOURCE_CATTLE';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_HERDMAN', ValidImprovementType = 'IMPROVEMENT_PASTURE', TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION' 
WHERE ResourceType = 'RESOURCE_SHEEP';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_HERDMAN', ValidImprovementType = 'IMPROVEMENT_CAMP', TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION' 
WHERE ResourceType = 'RESOURCE_DEER';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_HERDMAN', ValidImprovementType = 'IMPROVEMENT_CAMP', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION' 
WHERE ResourceType = 'RESOURCE_FURS';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_HERDMAN', ValidImprovementType = 'IMPROVEMENT_CAMP', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION' 
WHERE ResourceType = 'RESOURCE_IVORY';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_HERDMAN', ValidImprovementType = 'IMPROVEMENT_CAMP', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION' 
WHERE ResourceType = 'RESOURCE_TRUFFLES';
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_HERDMAN', ValidImprovementType = 'IMPROVEMENT_CAMP', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_HONEY' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_HONEY');
--Sukritact's Resources
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_HERDMAN', ValidImprovementType = 'IMPROVEMENT_PASTURE', TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_SUK_CAMEL' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_SUK_CAMEL');
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_HERDMAN', ValidImprovementType = 'IMPROVEMENT_CAMP', TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_DLV_BISON' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_DLV_BISON');	
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_HERDMAN', ValidImprovementType = 'IMPROVEMENT_PASTURE', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_SUK_CHEESE' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_SUK_CHEESE');
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_MINER', ValidImprovementType = 'IMPROVEMENT_QUARRY', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_SUK_OBSIDIAN' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_SUK_OBSIDIAN');
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FISHER', ValidImprovementType = 'IMPROVEMENT_FISHING_BOATS', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION', Domain = 'DOMAIN_SEA'
WHERE ResourceType = 'RESOURCE_SUK_SHARK' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_SUK_SHARK');
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_MINER', ValidImprovementType = 'IMPROVEMENT_MINE', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_GOLD' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_GOLD');	
--CIVITAS Resources
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_HERDMAN', ValidImprovementType = 'IMPROVEMENT_CAMP', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_P0K_PENGUINS' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_P0K_PENGUINS');
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_MINER', ValidImprovementType = 'IMPROVEMENT_MINE', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_P0K_OPAL' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_P0K_OPAL');	
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_PLANTATION', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_CVS_POMEGRANATES' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_CVS_POMEGRANATES');
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_PLANTATION', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_P0K_PAPYRUS' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_P0K_PAPYRUS');
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_PLANTATION', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_P0K_MAPLE' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_P0K_MAPLE');
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_PLANTATION', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_P0K_PLUMS' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_P0K_PLUMS');	
--Latin American Resources
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_FARM', TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_LEU_P0K_POTATOES' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_LEU_P0K_POTATOES');
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_FARM', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_LEU_P0K_QUINOA' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_LEU_P0K_QUINOA');
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_HERDMAN', ValidImprovementType = 'IMPROVEMENT_CAMP', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_LEU_P0K_CAPYBARAS' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_LEU_P0K_CAPYBARAS');	
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_HERDMAN', ValidImprovementType = 'IMPROVEMENT_PASTURE', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_LEU_P0K_LLAMAS' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_LEU_P0K_LLAMAS');
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_PLANTATION', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_LEU_P0K_COCA' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_LEU_P0K_COCA');
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FARMER', ValidImprovementType = 'IMPROVEMENT_PLANTATION', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION'
WHERE ResourceType = 'RESOURCE_LEU_P0K_YERBAMATE' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_LEU_P0K_YERBAMATE');	
--Sukritact's Oceans
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FISHER', ValidImprovementType = 'IMPROVEMENT_FISHING_BOATS', TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION', Domain = 'DOMAIN_SEA'
WHERE ResourceType = 'RESOURCE_SUK_SQUID' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_SUK_SQUID');
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FISHER', ValidImprovementType = 'IMPROVEMENT_FISHING_BOATS', TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION', Domain = 'DOMAIN_SEA'
WHERE ResourceType = 'RESOURCE_SUK_SEALS' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_SUK_SEALS');
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FISHER', ValidImprovementType = 'IMPROVEMENT_FISHING_BOATS', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION', Domain = 'DOMAIN_SEA'
WHERE ResourceType = 'RESOURCE_SUK_CORAL' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_SUK_CORAL');
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FISHER', ValidImprovementType = 'IMPROVEMENT_FISHING_BOATS', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION', Domain = 'DOMAIN_SEA'
WHERE ResourceType = 'RESOURCE_SUK_LOBSTER' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_SUK_LOBSTER');
UPDATE GA_Resource_Cultivation SET UnitType =  'UNIT_FISHER', ValidImprovementType = 'IMPROVEMENT_FISHING_BOATS', TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION', Domain = 'DOMAIN_SEA'
WHERE ResourceType = 'RESOURCE_SUK_CAVIAR' AND EXISTS (SELECT * FROM Resources WHERE ResourceType = 'RESOURCE_SUK_CAVIAR');

--==========================================================================================================================
----------------------------------------------------------------------------------------------------------------------------
-- Setting the Improvement Type of the Resources
----------------------------------------------------------------------------------------------------------------------------
UPDATE GA_Resource_Cultivation SET ImprovementType =  'IMPROVEMENT_CULTIVATE_'|| REPLACE(ResourceType, 'RESOURCE_','') WHERE ResourceCultivation =  0;
----------------------------------------------------------------------------------------------------------------------------

-- Types
----------------------------------------------------------------------------------------------------------------------------
INSERT OR IGNORE INTO Types(Type,Kind) 
SELECT 
ImprovementType as Type,
'KIND_IMPROVEMENT' as Kind
FROM 
GA_Resource_Cultivation;
----------------------------------------------------------------------------------------------------------------------------
-- Improvements
----------------------------------------------------------------------------------------------------------------------------
INSERT OR IGNORE INTO Improvements(ImprovementType,	Name,	PrereqTech,	PrereqCivic,	Buildable,	Description,	PlunderType,	Icon,	TraitType,	Housing,	TilesRequired,	CanBuildOutsideTerritory, Domain)
SELECT
ImprovementType,
'LOC_'|| ImprovementType ||'_NAME' AS Name,
PrereqTech,
PrereqCivic,
1 AS Buildable,
'LOC_'|| ImprovementType ||'_DESCRIPTION' AS Description,
'PLUNDER_NONE' AS PlunderType,
Icon,
TraitType,
Housing,
TilesRequired,
0 AS CanBuildOutsideTerritory,
Domain
FROM GA_Resource_Cultivation;
----------------------------------------------------------------------------------------------------------------------------
-- Improvement_ValidBuildUnits
----------------------------------------------------------------------------------------------------------------------------
INSERT OR IGNORE INTO Improvement_ValidBuildUnits(ImprovementType,UnitType)
SELECT 
ImprovementType,
UnitType
FROM GA_Resource_Cultivation;
----------------------------------------------------------------------------------------------------------------------------
-- Improvement_ValidTerrains
----------------------------------------------------------------------------------------------------------------------------
INSERT OR IGNORE INTO Improvement_ValidTerrains(ImprovementType, TerrainType)
SELECT
	DISTINCT
	fg.ImprovementType,
	vt.TerrainType
FROM GA_Resource_Cultivation fg
JOIN  Resource_ValidTerrains vt ON fg.ResourceType = vt.ResourceType;
----------------------------------------------------------------------------------------------------------------------------
-- Improvement_ValidFeatures
----------------------------------------------------------------------------------------------------------------------------
INSERT OR IGNORE INTO Improvement_ValidFeatures(ImprovementType, FeatureType)
SELECT
	DISTINCT
	fg.ImprovementType,
	vf.FeatureType
FROM GA_Resource_Cultivation fg
JOIN  Resource_ValidFeatures vf ON fg.ResourceType = vf.ResourceType;
----------------------------------------------------------------------------------------------------------------------------
-- Improvement_YieldChanges
----------------------------------------------------------------------------------------------------------------------------
INSERT OR IGNORE INTO Improvement_YieldChanges(ImprovementType, YieldType, YieldChange)
SELECT
	DISTINCT
	fg.ImprovementType,
	yg.YieldType,
	yg.YieldChange
FROM GA_Resource_Cultivation AS fg
JOIN  Resource_YieldChanges AS yg ON fg.ResourceType = yg.ResourceType;

--==========================================================================================================================
----------------------------------------------------------------------------------------------------------------------------
-- DistrictModifiers
----------------------------------------------------------------------------------------------------------------------------
INSERT OR IGNORE INTO DistrictModifiers(DistrictType,	ModifierId)
SELECT
'DISTRICT_CITY_CENTER' AS DistrictType,
'GA_CITIES_CAN_CULTIVATE_'|| REPLACE(ResourceType, 'RESOURCE_','') AS ModifierId
FROM GA_Resource_Cultivation WHERE ResourceCultivation =  0 AND TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION';

INSERT OR IGNORE INTO DistrictModifiers(DistrictType,	ModifierId)
SELECT
'DISTRICT_CITY_CENTER' AS DistrictType,
'GA_CITY_CAN_CULTIVATE_'|| REPLACE(ResourceType, 'RESOURCE_','') AS ModifierId
FROM GA_Resource_Cultivation WHERE ResourceCultivation =  0 AND TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION';

----------------------------------------------------------------------------------------------------------------------------
-- Modifiers
----------------------------------------------------------------------------------------------------------------------------
--Bonus Resources Everywhere Resource per City
INSERT OR IGNORE INTO Modifiers(ModifierID,	ModifierType,	RunOnce,	Permanent,	OwnerRequirementSetId)
SELECT
'GA_CITIES_CAN_CULTIVATE_'|| REPLACE(ResourceType, 'RESOURCE_','') AS ModifierId,
'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER' AS ModifierType,
0,
1,
'GA_PLAYER_HAS_IMPROVED_'|| REPLACE(ResourceType, 'RESOURCE_','') AS OwnerRequirementSetId
FROM GA_Resource_Cultivation WHERE ResourceCultivation =  0 AND TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION';

INSERT OR IGNORE INTO Modifiers(ModifierID,	ModifierType,	Permanent)
SELECT
'GA_CITY_CAN_CULTIVATE_'|| REPLACE(ResourceType, 'RESOURCE_','') AS ModifierId,
'MODIFIER_CITY_ADJUST_ALLOWED_IMPROVEMENT' AS ModifierType,
1
FROM GA_Resource_Cultivation WHERE ResourceCultivation =  0 AND TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION';

--One City Luxury Resource Specialization
INSERT OR IGNORE INTO Modifiers(ModifierID,	ModifierType,	RunOnce,	Permanent,	SubjectRequirementSetId)
SELECT
'GA_CITY_CAN_CULTIVATE_'|| REPLACE(ResourceType, 'RESOURCE_','') AS ModifierId,
'MODIFIER_CITY_ADJUST_ALLOWED_IMPROVEMENT' AS ModifierType,
0,
0,
'GA_CITY_HAS_IMPROVED_'|| REPLACE(ResourceType, 'RESOURCE_','') ||'_PROPERTY_REQUIREMENTS' AS SubjectRequirementSetId
FROM GA_Resource_Cultivation WHERE ResourceCultivation =  0 AND TraitType = 'TRAIT_LUXURY_RESOURCE_CULTIVATION';

----------------------------------------------------------------------------------------------------------------------------
-- ModifierArguments
----------------------------------------------------------------------------------------------------------------------------
INSERT OR IGNORE INTO ModifierArguments(ModifierID,	Name,	Value)
SELECT
'GA_CITIES_CAN_CULTIVATE_'|| REPLACE(ResourceType, 'RESOURCE_','') AS ModifierId,
'ModifierId' AS Name,
'GA_CITY_CAN_CULTIVATE_'|| REPLACE(ResourceType, 'RESOURCE_','') AS Value
FROM GA_Resource_Cultivation WHERE ResourceCultivation =  0 AND TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION';

INSERT OR IGNORE INTO ModifierArguments(ModifierID,	Name,	Value)
SELECT
'GA_CITY_CAN_CULTIVATE_'|| REPLACE(ResourceType, 'RESOURCE_','') AS ModifierId,
'ImprovementType' AS Name,
ImprovementType
FROM GA_Resource_Cultivation WHERE ResourceCultivation =  0;

----------------------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements 
----------------------------------------------------------------------------------------------------------------------------
INSERT OR IGNORE INTO RequirementSetRequirements(RequirementSetId,	RequirementId)
SELECT
'GA_PLAYER_HAS_IMPROVED_'|| REPLACE(ResourceType, 'RESOURCE_','') AS RequirementSetId,
'GA_REQUIRES_PLAYER_HAS_IMPROVED_'|| REPLACE(ResourceType, 'RESOURCE_','') AS RequirementId
FROM GA_Resource_Cultivation;

INSERT OR IGNORE INTO RequirementSetRequirements(RequirementSetId,	RequirementId)
SELECT
'GA_CITY_HAS_IMPROVED_'|| REPLACE(ResourceType, 'RESOURCE_','') ||'_PROPERTY_REQUIREMENTS' AS RequirementSetId,
'REQUIRES_GA_'|| REPLACE(ResourceType, 'RESOURCE_','') ||'_PROPERTY' AS RequirementId
FROM GA_Resource_Cultivation WHERE NOT TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION';

INSERT OR IGNORE INTO RequirementSetRequirements(RequirementSetId,	RequirementId)
SELECT
'GA_CITY_HAS_IMPROVED_'|| REPLACE(ResourceType, 'RESOURCE_','') ||'_PROPERTY_REQUIREMENTS' AS RequirementSetId,
'GA_REQUIRES_PLAYER_HAS_IMPROVED_'|| REPLACE(ResourceType, 'RESOURCE_','') AS RequirementId
FROM GA_Resource_Cultivation WHERE NOT TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION';

----------------------------------------------------------------------------------------------------------------------------
-- RequirementSets
----------------------------------------------------------------------------------------------------------------------------
INSERT OR IGNORE INTO RequirementSets(RequirementSetId,	RequirementSetType)
SELECT
'GA_PLAYER_HAS_IMPROVED_'|| REPLACE(ResourceType, 'RESOURCE_','') AS RequirementSetId,
'REQUIREMENTSET_TEST_ALL' AS RequirementSetType
FROM GA_Resource_Cultivation;

INSERT OR IGNORE INTO RequirementSets(RequirementSetId,	RequirementSetType)
SELECT
'GA_CITY_HAS_IMPROVED_'|| REPLACE(ResourceType, 'RESOURCE_','') ||'_PROPERTY_REQUIREMENTS' AS RequirementSetId,
'REQUIREMENTSET_TEST_ALL' AS RequirementSetType
FROM GA_Resource_Cultivation WHERE NOT TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION';

----------------------------------------------------------------------------------------------------------------------------
-- Requirements 
----------------------------------------------------------------------------------------------------------------------------
INSERT OR IGNORE INTO Requirements(RequirementId,	RequirementType)
SELECT
'GA_REQUIRES_PLAYER_HAS_IMPROVED_'|| REPLACE(ResourceType, 'RESOURCE_','') AS RequirementId,
'REQUIREMENT_PLAYER_HAS_RESOURCE_IMPROVED' AS RequirementType
FROM GA_Resource_Cultivation;

INSERT OR IGNORE INTO Requirements(RequirementId,	RequirementType)
SELECT
'GA_REQUIRES_CITY_HAS_IMPROVED_'|| REPLACE(ResourceType, 'RESOURCE_','') ||'_PROPERTY_REQUIREMENTS_MET' AS RequirementSetId,
'REQUIREMENT_REQUIREMENTSET_IS_MET' AS RequirementType
FROM GA_Resource_Cultivation WHERE NOT TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION';

INSERT OR IGNORE INTO Requirements(RequirementId,	RequirementType)
SELECT
'REQUIRES_GA_'|| REPLACE(ResourceType, 'RESOURCE_','') ||'_PROPERTY' AS RequirementSetId,
'REQUIREMENT_PLOT_PROPERTY_MATCHES' AS RequirementType
FROM GA_Resource_Cultivation WHERE NOT TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION';

----------------------------------------------------------------------------------------------------------------------------
-- RequirementArguments
----------------------------------------------------------------------------------------------------------------------------
INSERT OR IGNORE INTO RequirementArguments(RequirementId,	Name, Value)
SELECT
'GA_REQUIRES_PLAYER_HAS_IMPROVED_'|| REPLACE(ResourceType, 'RESOURCE_','') AS RequirementId,
'ResourceType' AS Name,
ResourceType
FROM GA_Resource_Cultivation;

INSERT OR IGNORE INTO RequirementArguments(RequirementId,	Name, Value)
SELECT
'GA_REQUIRES_CITY_HAS_IMPROVED_'|| REPLACE(ResourceType, 'RESOURCE_','') ||'_PROPERTY_REQUIREMENTS_MET' AS RequirementId,
'RequirementSetId' AS Name,
'GA_'|| REPLACE(ResourceType, 'RESOURCE_','') ||'_PROPERTY_REQUIREMENTS' AS Value
FROM GA_Resource_Cultivation WHERE NOT TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION';

INSERT OR IGNORE INTO RequirementArguments(RequirementId,	Name, Value)
SELECT
'REQUIRES_GA_'|| REPLACE(ResourceType, 'RESOURCE_','') ||'_PROPERTY' AS RequirementSetId,
'PropertyName' AS Name,
'GA_PLAYER_'|| REPLACE(ResourceType, 'RESOURCE_','') ||'_MAX_AMOUNT' AS Value
FROM GA_Resource_Cultivation WHERE NOT TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION';

INSERT OR IGNORE INTO RequirementArguments(RequirementId,	Name, Value)
SELECT
'REQUIRES_GA_'|| REPLACE(ResourceType, 'RESOURCE_','') ||'_PROPERTY' AS RequirementSetId,
'PropertyMinimum' AS Name,
1 AS Value
FROM GA_Resource_Cultivation WHERE NOT TraitType = 'TRAIT_BONUS_RESOURCE_CULTIVATION';

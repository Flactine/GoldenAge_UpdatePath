--=====
--Types
--=====
INSERT INTO Types	
(Type,					Kind)
VALUES
('UNIT_GA_STEALTH_1',	'KIND_UNIT'),
('UNIT_GA_STEALTH_2',	'KIND_UNIT');
--=====
--Units
--=====
INSERT INTO Units
(UnitType,				Name, 							Description, 							Cost,	Maintenance,	BaseMoves,	BaseSightRange,		ZoneOfControl, 	Domain,			PromotionClass,					FormationClass,				PurchaseYield,		PrereqTech)
VALUES                                                                                                                                                                                                                                                                             
('UNIT_GA_STEALTH_1',	'LOC_UNIT_GA_STEALTH_1_NAME',	'LOC_UNIT_GA_STEALTH_1_DESCRIPTION',	60,		1,				2,			1,					0,				'DOMAIN_LAND', 	'PROMOTION_CLASS_SUPPORT',		'FORMATION_CLASS_SUPPORT',	'YIELD_GOLD',		'TECH_IRON_WORKING'),
('UNIT_GA_STEALTH_2',	'LOC_UNIT_GA_STEALTH_2_NAME',	'LOC_UNIT_GA_STEALTH_2_DESCRIPTION',	400,	3,				3,			1,					0,				'DOMAIN_LAND', 	'PROMOTION_CLASS_SUPPORT',		'FORMATION_CLASS_SUPPORT',	'YIELD_GOLD',		'TECH_COMPUTERS');
--=====
--TypeTags
--=====
INSERT INTO TypeTags
(Type,						Tag)
VALUES
('UNIT_GA_STEALTH_1',		'CLASS_SUPPORT'),
('UNIT_GA_STEALTH_2',		'CLASS_SUPPORT');
--=====
--UnitUpgrades
--=====
INSERT INTO UnitUpgrades
(Unit,					UpgradeUnit)
VALUES
('UNIT_GA_STEALTH_1',	'UNIT_GA_STEALTH_2');
--=====
--Units_XP2
--=====
INSERT INTO Units_XP2
(UnitType,					CanEarnExperience,	CanFormMilitaryFormation)
VALUES 
('UNIT_GA_STEALTH_1',		0,					0),
('UNIT_GA_STEALTH_2',		0,					0);
--=====
--Types
--=====
INSERT INTO Types	
(Type,						Kind)
VALUES
('ABILITY_GA_STEALTH_1',	'KIND_ABILITY'),
('ABILITY_GA_STEALTH_2',	'KIND_ABILITY'),
('ABILITY_GA_STEALTHED',	'KIND_ABILITY');
--=====
--Tags
--=====
INSERT INTO Tags
(Tag,						Vocabulary)
VALUES
('CLASS_GA_STEALTH_1',		'ABILITY_CLASS'),
('CLASS_GA_STEALTH_2',		'ABILITY_CLASS'),
('ABILITY_GA_STEALTHED',	'ABILITY_CLASS');
--=====
--TypeTags
--=====
INSERT INTO TypeTags
(Type,						Tag)
VALUES 	
('UNIT_GA_STEALTH_1',		'CLASS_GA_STEALTH_1'),
('UNIT_GA_STEALTH_2',		'CLASS_GA_STEALTH_2'),
('ABILITY_GA_STEALTH_1',	'CLASS_GA_STEALTH_1'),
('ABILITY_GA_STEALTH_2',	'CLASS_GA_STEALTH_2'),
('ABILITY_GA_STEALTHED',	'CLASS_ALL_UNITS');
--=====
--UnitAbilities
--=====
INSERT INTO UnitAbilities	
(UnitAbilityType,			Name,									Description,							Inactive)
VALUES
('ABILITY_GA_STEALTH_1',	'LOC_ABILITY_GA_STEALTH_1_NAME',		'LOC_ABILITY_GA_STEALTH_1_DESCRIPTION',	0),
('ABILITY_GA_STEALTH_2',	'LOC_ABILITY_GA_STEALTH_2_NAME',		'LOC_ABILITY_GA_STEALTH_2_DESCRIPTION',	0),
('ABILITY_GA_STEALTHED',	'LOC_ABILITY_GA_STEALTHED_NAME',		'LOC_ABILITY_GA_STEALTHED_DESCRIPTION',	1);
--=====
--UnitAbilityModifiers
--=====
INSERT INTO UnitAbilityModifiers	
(UnitAbilityType,				ModifierId)
VALUES
('ABILITY_GA_STEALTH_1',		'MODIFIER_GA_STEALTH_1'),
('ABILITY_GA_STEALTH_2',		'MODIFIER_GA_STEALTH_2'),
('ABILITY_GA_STEALTHED',		'MODIFIER_GA_STEALTHED');
--=====
--Modifiers
--=====
INSERT INTO Modifiers
(ModifierId,					ModifierType,										SubjectRequirementSetId)
VALUES
('MODIFIER_GA_STEALTH_1',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				'REQSET_GA_STEALTH_1'),
('MODIFIER_GA_STEALTH_2',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				'REQSET_GA_STEALTH_2'),
('MODIFIER_GA_STEALTHED',		'MODIFIER_PLAYER_UNIT_ADJUST_HIDDEN_VISIBILITY',	Null);
--=====
--Modifiers
--=====
INSERT INTO ModifierArguments
(ModifierId,					Name,						Value)
VALUES
('MODIFIER_GA_STEALTH_1',		'AbilityType',				'ABILITY_GA_STEALTHED'),
('MODIFIER_GA_STEALTH_2',		'AbilityType',				'ABILITY_GA_STEALTHED'),
('MODIFIER_GA_STEALTHED',		'Hidden',					1);
--=====
--RequirementSets
--=====
INSERT INTO RequirementSets
(RequirementSetId,		RequirementSetType)
VALUES
('REQSET_GA_STEALTH_1',	'REQUIREMENTSET_TEST_ALL'),
('REQSET_GA_STEALTH_2',	'REQUIREMENTSET_TEST_ALL');
--=====
--RequirementSetRequirements
--=====
INSERT INTO RequirementSetRequirements
(RequirementSetId,		RequirementId)
VALUES
('REQSET_GA_STEALTH_1',	'REQ_GA_STEALTH_1_RANGE'),
('REQSET_GA_STEALTH_1',	'REQ_UNIT_IS_NOT_GA_STEALTH_1'),
('REQSET_GA_STEALTH_1',	'REQ_UNIT_IS_NOT_GA_STEALTH_2'),
('REQSET_GA_STEALTH_2',	'REQ_GA_STEALTH_2_RANGE'),
('REQSET_GA_STEALTH_2',	'REQ_UNIT_IS_NOT_GA_STEALTH_1'),
('REQSET_GA_STEALTH_2',	'REQ_UNIT_IS_NOT_GA_STEALTH_2');
--=====
--Requirements
--=====
INSERT INTO Requirements
(RequirementId,						RequirementType,						Inverse)
VALUES
('REQ_GA_STEALTH_1_RANGE',			'REQUIREMENT_PLOT_ADJACENT_TO_OWNER',	0),
('REQ_GA_STEALTH_2_RANGE',			'REQUIREMENT_PLOT_ADJACENT_TO_OWNER',	0),
('REQ_UNIT_IS_NOT_GA_STEALTH_1',	'REQUIREMENT_UNIT_TYPE_MATCHES',		1),
('REQ_UNIT_IS_NOT_GA_STEALTH_2',	'REQUIREMENT_UNIT_TYPE_MATCHES',		1);
--=====
--RequirementArguments
--=====
INSERT INTO RequirementArguments
(RequirementId,						Name,			Value)
VALUES
('REQ_GA_STEALTH_1_RANGE',			'MinDistance',	0),
('REQ_GA_STEALTH_1_RANGE',			'MaxDistance',	1),
('REQ_GA_STEALTH_2_RANGE',			'MinDistance',	0),
('REQ_GA_STEALTH_2_RANGE',			'MaxDistance',	2),
('REQ_UNIT_IS_NOT_GA_STEALTH_1',	'UnitType',		'UNIT_GA_STEALTH_1'),
('REQ_UNIT_IS_NOT_GA_STEALTH_2',	'UnitType',		'UNIT_GA_STEALTH_2');
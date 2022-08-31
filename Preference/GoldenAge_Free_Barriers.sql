-- GoldenAge_Free_Barriers
-- Author: Flactine
-- DateCreated: 8/31/2022 11:25:36 AM
--------------------------------------------------------------
--SpecialThanks: Adriaman

INSERT INTO Types 
(Type, 									Kind)
VALUES
('MODTYPE_GA_GRANT_BUILDING_IN_CITY',	'KIND_MODIFIER');

INSERT INTO DynamicModifiers 
(ModifierType, 							CollectionType, 			EffectType)
VALUES
('MODTYPE_GA_GRANT_BUILDING_IN_CITY',	'COLLECTION_PLAYER_CITIES',	'EFFECT_GRANT_BUILDING_IN_CITY_IGNORE');

INSERT INTO TraitModifiers 
(TraitType, 				ModifierId)
VALUES
('TRAIT_LEADER_MAJOR_CIV', 'GA_HUMAN_FREE_FLOOD_BARRIER');

INSERT INTO Modifiers 
(ModifierId, 					ModifierType,							OwnerRequirementSetId)	
VALUES
('GA_HUMAN_FREE_FLOOD_BARRIER', 'MODTYPE_GA_GRANT_BUILDING_IN_CITY',	'PLAYER_IS_HUMAN');

INSERT INTO ModifierArguments 
(ModifierId,					Name,			Value)
VALUES
('GA_HUMAN_FREE_FLOOD_BARRIER',	'BuildingType',	'BUILDING_FLOOD_BARRIER');

-- GA_Guarante_Prophet
-- Author: Flactine
-- DateCreated: 8/31/2022 11:06:59 AM
--------------------------------------------------------------
INSERT OR REPLACE INTO TraitModifiers 
(TraitType,						ModifierId) 
VALUES	
('TRAIT_LEADER_MAJOR_CIV',		'GOLDEN_HUMAN_PROPHET');

INSERT OR REPLACE INTO Modifiers
(ModifierId,					ModifierType,										OwnerRequirementSetId)
VALUES
('GOLDEN_HUMAN_PROPHET',		'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_GUARANTEE',	'PLAYER_IS_HUMAN');

INSERT OR REPLACE INTO ModifierArguments 
(ModifierId,					Name,						Value) 
VALUES	
('GOLDEN_HUMAN_PROPHET',		'GreatPersonClassType',		'GREAT_PERSON_CLASS_PROPHET');

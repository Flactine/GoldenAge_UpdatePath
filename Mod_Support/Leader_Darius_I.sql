------
--LA--
------
--TraitModifiers
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_LEADER_CVS_DARIUS_UA';
INSERT OR REPLACE INTO TraitModifiers (TraitType, 			ModifierId) VALUES	
('TRAIT_LEADER_CVS_DARIUS_UA',	'GOLDEN_TRAIT_INFRASTRUCTURE_QUEST'),--v223 GoldenAge
('TRAIT_LEADER_CVS_DARIUS_UA',	'GOLDEN_TRAIT_DARIUS_GOLDENAGE_GOLD'),
('TRAIT_LEADER_CVS_DARIUS_UA',	'GOLDEN_TRAIT_DARIUS_GOLDENAGE_COMBAT');

----Modifiers
INSERT OR REPLACE INTO Modifiers (ModifierId, 					ModifierType, 											RunOnce, 	Permanent, 	SubjectRequirementSetId) VALUES
('GOLDEN_TRAIT_DARIUS_GOLDENAGE_GOLD',							'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',					0,			0,			'PLAYER_HAS_GOLDEN_AGE'),
('GOLDEN_TRAIT_DARIUS_GOLDENAGE_COMBAT',						'MODIFIER_PLAYER_UNITS_ADJUST_COMBAT_STRENGTH',			0,			0,			'PLAYER_HAS_GOLDEN_AGE');

--ModifierArguments
INSERT OR REPLACE INTO ModifierArguments (ModifierId,				    	Name,		    Value) VALUES
('GOLDEN_TRAIT_DARIUS_GOLDENAGE_GOLD',		'YieldType',	'YIELD_GOLD'),
('GOLDEN_TRAIT_DARIUS_GOLDENAGE_GOLD',		'Amount',		1),
('GOLDEN_TRAIT_DARIUS_GOLDENAGE_COMBAT',	'Amount',		10);
--ModifierStrings
INSERT OR REPLACE INTO ModifierStrings (ModifierId,			Context,						Text) VALUES
('GOLDEN_TRAIT_DARIUS_GOLDENAGE_COMBAT',					'Preview',       				'LOC_GOLDEN_TRAIT_DARIUS_GOLDENAGE_COMBAT');
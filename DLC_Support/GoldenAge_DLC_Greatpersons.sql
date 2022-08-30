--Scientist
--伊本赫勒敦
UPDATE GreatPersonIndividuals SET ActionCharges = 2, ActionRequiresCompletedDistrictType = "DISTRICT_THEATER", ActionEffectTextOverride = "LOC_GREATPERSON_IBN_KHALDUN"
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_IBN_KHALDUN';

DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_IBN_KHALDUN';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_IBN_KHALDUN',	       		'GA_IBN_KHALDUN_CULTURE',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE'),
('GREAT_PERSON_INDIVIDUAL_IBN_KHALDUN',	       		'GA_IBN_KHALDUN_SCIENCE',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');

INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('GA_IBN_KHALDUN_CULTURE',     			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',  0, 1, 'GOLDEN_PLOT_ADJACENT_TO_OWNER_REQUIREMENTS'),
('GA_IBN_KHALDUN_SCIENCE',     			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',  0, 1, 'GOLDEN_PLOT_ADJACENT_TO_OWNER_REQUIREMENTS');

INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
('GA_IBN_KHALDUN_CULTURE',			'YieldType',	    'YIELD_CULTURE'),
('GA_IBN_KHALDUN_CULTURE',			'Amount',	        2),
('GA_IBN_KHALDUN_SCIENCE',			'YieldType',	    'YIELD_SCIENCE'),
('GA_IBN_KHALDUN_SCIENCE',			'Amount',	        2);

--玛格丽特米德
UPDATE GreatPersonIndividuals SET ActionCharges = 1, ActionRequiresCompletedDistrictType = "DISTRICT_CAMPUS", ActionEffectTextOverride = "LOC_GREATPERSON_MARGARET_MEAD", ActionRequiresOwnedTile = 1, ActionRequiresNonHostileTerritory = 0
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_MARGARET_MEAD';

DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_MARGARET_MEAD';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_MARGARET_MEAD',	       		'GA_MARGARET_MEAD_TECH',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE'),
('GREAT_PERSON_INDIVIDUAL_MARGARET_MEAD',	       		'GA_MARGARET_MEAD_CIVIC',       'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('GA_MARGARET_MEAD_TECH',     			'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY',  1, 1, NULL),
('GA_MARGARET_MEAD_CIVIC',     			'MODIFIER_PLAYER_GRANT_RANDOM_CIVIC',  		1, 1, NULL);
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
('GA_MARGARET_MEAD_TECH',			'Amount',	    2),
('GA_MARGARET_MEAD_CIVIC',			'Amount',	    2);


--大工程师
--沙贾汉
UPDATE GreatPersonIndividuals SET ActionCharges = 1, ActionRequiresCompletedDistrictType = "DISTRICT_COMMERCIAL_HUB", ActionEffectTextOverride = "LOC_GREATPERSON_SHAH_JAHAN", ActionRequiresIncompleteWonder = 0
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_SHAH_JAHAN';
DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_SHAH_JAHAN';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_SHAH_JAHAN',	       		'GA_SHAH_JAHAN_RANGE',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE'),
('GREAT_PERSON_INDIVIDUAL_SHAH_JAHAN',	       		'GA_SHAH_JAHAN_YIELD',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
INSERT OR REPLACE INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent, SubjectRequirementSetId) VALUES	
('GA_SHAH_JAHAN_RANGE',     			'MODIFIER_PLAYER_DISTRICT_ADJUST_EXTRA_REGIONAL_RANGE',  		1, 1, NULL),
('GA_SHAH_JAHAN_YIELD',     			'MODIFIER_PLAYER_DISTRICT_ADJUST_EXTRA_REGIONAL_YIELD',  		1, 1, NULL);
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        Value) VALUES
('GA_SHAH_JAHAN_RANGE',			'Amount',	    	3),
('GA_SHAH_JAHAN_YIELD',			'Amount',	    	2),
('GA_SHAH_JAHAN_YIELD',			'YieldType',	    'YIELD_GOLD');

--伊姆霍特普
UPDATE GreatPersonIndividuals SET ActionCharges = 1, ActionRequiresCompletedDistrictType = "DISTRICT_INDUSTRIAL_ZONE", ActionEffectTextOverride = "LOC_GREATPERSON_IMHOTEP", ActionRequiresIncompleteWonder = 0
WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_IMHOTEP';
DELETE FROM GreatPersonIndividualActionModifiers WHERE GreatPersonIndividualType = 'GREAT_PERSON_INDIVIDUAL_IMHOTEP';
INSERT OR REPLACE INTO GreatPersonIndividualActionModifiers (GreatPersonIndividualType, 			ModifierId, AttachmentTargetType) VALUES	
('GREAT_PERSON_INDIVIDUAL_IMHOTEP',	       		'GREATPERSON_CULTURE_BOMB_TRIGGER_INDUSTRIAL_ZONE',        'GREAT_PERSON_ACTION_ATTACHMENT_TARGET_DISTRICT_IN_TILE');
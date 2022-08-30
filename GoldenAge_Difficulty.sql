--V229 AI ATTACK DISTRICT BONUS
INSERT OR REPLACE INTO TraitModifiers (TraitType,						ModifierId) SELECT	
'TRAIT_LEADER_MAJOR_CIV',		'GOLDEN_AI_FREE_DISTRICT_COMBAT_BONUS_' ||DifficultyType FROM Difficulties WHERE DifficultyType <> 'DIFFICULTY_SETTLER';
INSERT OR REPLACE INTO Modifiers 
(ModifierId,													ModifierType,													SubjectRequirementSetId) SELECT	
'GOLDEN_AI_FREE_DISTRICT_COMBAT_BONUS_' ||DifficultyType,	    'MODIFIER_GOVERNOR_ADJUST_DISTRICT_COMBAT_BONUS',			    'GOLDEN_PLAYER_IS_' ||DifficultyType|| '_AI' FROM Difficulties WHERE DifficultyType <> 'DIFFICULTY_SETTLER';
INSERT OR REPLACE INTO ModifierArguments 
(ModifierId,		                                        					Name,			Value) SELECT	
'GOLDEN_AI_FREE_DISTRICT_COMBAT_BONUS_' ||DifficultyType,	                    'Amount',		1            FROM Difficulties WHERE DifficultyType <> 'DIFFICULTY_SETTLER';

--V229 AI SCIENTIFIC VICTORY BONUS
INSERT OR REPLACE INTO ProjectCompletionModifiers (ProjectType,						ModifierId) SELECT	
'PROJECT_LAUNCH_EXOPLANET_EXPEDITION',		'GOLDEN_AI_SCIENTIFIC_VICTORY_BONUS_' ||DifficultyType FROM Difficulties WHERE DifficultyType <> 'DIFFICULTY_SETTLER';
INSERT OR REPLACE INTO Modifiers 
(ModifierId,												ModifierType,													SubjectRequirementSetId) SELECT	
'GOLDEN_AI_SCIENTIFIC_VICTORY_BONUS_' ||DifficultyType,	    'MODIFIER_PLAYER_ADJUST_SCIENCE_VICTORY_POINTS_PER_TURN',		'GOLDEN_PLAYER_IS_' ||DifficultyType|| '_AI' FROM Difficulties WHERE DifficultyType <> 'DIFFICULTY_SETTLER';
INSERT OR REPLACE INTO ModifierArguments 
(ModifierId,		                                        				Name,			Value) SELECT	
'GOLDEN_AI_SCIENTIFIC_VICTORY_BONUS_' ||DifficultyType,	                    'Amount',		1            FROM Difficulties WHERE DifficultyType <> 'DIFFICULTY_SETTLER';

--V229 AI DIPLOMIATIC VICTORY BONUS
INSERT OR REPLACE INTO TraitModifiers (TraitType,						ModifierId) SELECT	
'TRAIT_LEADER_MAJOR_CIV',		'GOLDEN_AI_FREE_DIPLOMIATIC_VICTORY_BONUS_' ||DifficultyType FROM Difficulties WHERE DifficultyType <> 'DIFFICULTY_SETTLER';
INSERT OR REPLACE INTO Modifiers 
(ModifierId,													ModifierType,													SubjectRequirementSetId) SELECT	
'GOLDEN_AI_FREE_DIPLOMIATIC_VICTORY_BONUS_' ||DifficultyType,	    'MODIFIER_PLAYER_ADJUST_DIPLOMATIC_VICTORY_POINTS',			    'GOLDEN_PLAYER_IS_' ||DifficultyType|| '_AI' FROM Difficulties WHERE DifficultyType <> 'DIFFICULTY_SETTLER';
INSERT OR REPLACE INTO ModifierArguments 
(ModifierId,		                                        					Name,			Value) SELECT	
'GOLDEN_AI_FREE_DIPLOMIATIC_VICTORY_BONUS_' ||DifficultyType,	                'Amount',		1            FROM Difficulties WHERE DifficultyType <> 'DIFFICULTY_SETTLER';
INSERT OR REPLACE INTO ModifierArguments 
(ModifierId,		                                        					Name,			Value) SELECT	
'GOLDEN_AI_FREE_DIPLOMIATIC_VICTORY_BONUS_' ||DifficultyType,	                'Tooltip',		'LOC_DVP_TOOLTIP_DIFFICULTIES'            FROM Difficulties WHERE DifficultyType <> 'DIFFICULTY_SETTLER';

--AI free builder units by era
-- INSERT OR REPLACE INTO TraitModifiers
       -- (TraitType ,           ModifierId)
-- SELECT 'TRAIT_LEADER_MAJOR_CIV' ,  'GOLDEN_AI_UNIT_BUILDER_' ||EraType FROM Eras WHERE ChronologyIndex > 2;

-- INSERT OR REPLACE INTO Modifiers
       -- (ModifierId ,                                ModifierType,                                    		SubjectRequirementSetId)
-- SELECT 'GOLDEN_AI_UNIT_BUILDER_' ||EraType,        	'MODIFIER_PLAYER_GRANT_UNIT_IN_CAPITAL',   				'GOLDEN_AI_IS_GAME_ERA_ATLEAST_' ||EraType|| '_REQUIREMENTS' FROM Eras WHERE ChronologyIndex > 1;

-- INSERT OR REPLACE INTO ModifierArguments
       -- (ModifierId , Name , Value)
-- SELECT ModifierId , 'Amount' , 		2 FROM TraitModifiers WHERE ModifierId LIKE 'GOLDEN_AI_UNIT_BUILDER_%';
-- INSERT OR REPLACE INTO ModifierArguments
       -- (ModifierId , Name , Value)
-- SELECT ModifierId , 'UnitType' , 	'UNIT_BUILDER' FROM TraitModifiers WHERE ModifierId LIKE 'GOLDEN_AI_UNIT_BUILDER_%';
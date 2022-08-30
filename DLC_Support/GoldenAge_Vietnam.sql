--V225 解除巴比伦DLC绑定
INSERT OR REPLACE INTO Modifiers (ModifierId,		ModifierType,								                                    					SubjectRequirementSetId) VALUES	
('WOLIN_GREAT_GENERAL_POINTS',			            'GOLDEN_MODIFIER_PLAYER_ADJUST_UNITS_GREAT_PEOPLE_POINTS_PER_KILL_BY_DEFEATED_STRENGTH',		    NULL);
INSERT OR REPLACE INTO ModifierArguments (ModifierId,			Name,		        		Value) VALUES
('WOLIN_GREAT_GENERAL_POINTS',					    'Amount',	    			25),
('WOLIN_GREAT_GENERAL_POINTS',					    'GreatPersonClassType',	    'GREAT_PERSON_CLASS_GENERAL');